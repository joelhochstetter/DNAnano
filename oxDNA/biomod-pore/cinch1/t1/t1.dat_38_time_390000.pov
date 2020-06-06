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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.342693, 32.726257, 22.639669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292923, 32.782585, 23.032543>,  <43.263062, 32.816383, 23.268269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292923, 32.782585, 23.032543>,  <43.342693, 32.726257, 22.639669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292923, 32.782585, 23.032543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011617, 0.989604, -0.143353,
		-0.992161, -0.029246, -0.121494,
		-0.124423, 0.140818, 0.982186,
		43.255596, 32.824829, 23.327198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738583, 33.031338, 22.769121>,  <43.342693, 32.726257, 22.639669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738583, 33.031338, 22.769121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013771, 33.113857, 23.047443>,  <43.178883, 33.163368, 23.214436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013771, 33.113857, 23.047443>,  <42.738583, 33.031338, 22.769121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013771, 33.113857, 23.047443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027633, 0.965500, -0.258934,
		-0.725216, 0.158911, 0.669932,
		0.687967, 0.206295, 0.695805,
		43.220161, 33.175747, 23.256186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616692, 33.532410, 23.233442>,  <42.738583, 33.031338, 22.769121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616692, 33.532410, 23.233442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015030, 33.521214, 23.198784>,  <43.254032, 33.514496, 23.177990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015030, 33.521214, 23.198784>,  <42.616692, 33.532410, 23.233442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015030, 33.521214, 23.198784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000932, 0.954670, -0.297666,
		0.091047, 0.296349, 0.950730,
		0.995846, -0.027988, -0.086644,
		43.313786, 33.512817, 23.172791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646538, 34.234066, 23.394466>,  <42.616692, 33.532410, 23.233442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646538, 34.234066, 23.394466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990906, 34.155083, 23.206924>,  <43.197529, 34.107693, 23.094400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990906, 34.155083, 23.206924>,  <42.646538, 34.234066, 23.394466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990906, 34.155083, 23.206924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080838, 0.856799, -0.509275,
		0.502273, 0.476347, 0.721675,
		0.860922, -0.197457, -0.468854,
		43.249184, 34.095844, 23.066269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094795, 34.219776, 23.788939>,  <42.646538, 34.234066, 23.394466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094795, 34.219776, 23.788939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848915, 34.516239, 23.896885>,  <41.701385, 34.694118, 23.961653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848915, 34.516239, 23.896885>,  <42.094795, 34.219776, 23.788939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848915, 34.516239, 23.896885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544307, 0.150977, 0.825188,
		0.570853, 0.654132, -0.496224,
		-0.614700, 0.741159, 0.269864,
		41.664505, 34.738586, 23.977844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502495, 34.795582, 23.989311>,  <42.094795, 34.219776, 23.788939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502495, 34.795582, 23.989311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139809, 34.836712, 24.152916>,  <41.922195, 34.861389, 24.251080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139809, 34.836712, 24.152916>,  <42.502495, 34.795582, 23.989311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139809, 34.836712, 24.152916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418424, 0.340716, 0.841923,
		-0.052788, 0.934527, -0.351957,
		-0.906717, 0.102823, 0.409014,
		41.867794, 34.867558, 24.275620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470589, 35.430443, 24.267372>,  <42.502495, 34.795582, 23.989311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470589, 35.430443, 24.267372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167812, 35.286121, 24.485313>,  <41.986149, 35.199528, 24.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167812, 35.286121, 24.485313>,  <42.470589, 35.430443, 24.267372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167812, 35.286121, 24.485313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406950, 0.392103, 0.825013,
		-0.511308, 0.846211, -0.149967,
		-0.756938, -0.360807, 0.544851,
		41.940731, 35.177879, 24.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305908, 35.979401, 24.700577>,  <42.470589, 35.430443, 24.267372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305908, 35.979401, 24.700577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167629, 35.639824, 24.860474>,  <42.084663, 35.436077, 24.956411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167629, 35.639824, 24.860474>,  <42.305908, 35.979401, 24.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167629, 35.639824, 24.860474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293901, 0.306612, 0.905324,
		-0.891133, 0.430449, 0.143511,
		-0.345693, -0.848942, 0.399742,
		42.063923, 35.385139, 24.980396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044899, 36.228695, 25.350815>,  <42.305908, 35.979401, 24.700577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044899, 36.228695, 25.350815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054970, 35.830032, 25.381908>,  <42.061012, 35.590836, 25.400564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054970, 35.830032, 25.381908>,  <42.044899, 36.228695, 25.350815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054970, 35.830032, 25.381908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103171, 0.079932, 0.991447,
		-0.994345, -0.016939, 0.104839,
		0.025174, -0.996657, 0.077732,
		42.062523, 35.531036, 25.405228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538837, 36.061279, 25.804783>,  <42.044899, 36.228695, 25.350815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538837, 36.061279, 25.804783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811588, 35.768818, 25.796238>,  <41.975239, 35.593342, 25.791111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811588, 35.768818, 25.796238>,  <41.538837, 36.061279, 25.804783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811588, 35.768818, 25.796238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065946, 0.032364, 0.997298,
		-0.728484, -0.681448, 0.070285,
		0.681882, -0.731151, -0.021362,
		42.016151, 35.549473, 25.789829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434402, 35.520077, 26.400862>,  <41.538837, 36.061279, 25.804783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434402, 35.520077, 26.400862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811218, 35.463768, 26.279041>,  <42.037308, 35.429981, 26.205950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811218, 35.463768, 26.279041>,  <41.434402, 35.520077, 26.400862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811218, 35.463768, 26.279041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305239, -0.017206, 0.952120,
		-0.139277, -0.989892, 0.026762,
		0.942035, -0.140777, -0.304550,
		42.093830, 35.421535, 26.187675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723812, 34.991013, 26.890985>,  <41.434402, 35.520077, 26.400862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723812, 34.991013, 26.890985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034801, 35.173859, 26.718201>,  <42.221394, 35.283566, 26.614531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034801, 35.173859, 26.718201>,  <41.723812, 34.991013, 26.890985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034801, 35.173859, 26.718201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492717, -0.015855, 0.870045,
		0.390859, -0.889268, -0.237553,
		0.777470, 0.457111, -0.431961,
		42.268044, 35.310993, 26.588612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390942, 34.665058, 27.114094>,  <41.723812, 34.991013, 26.890985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390942, 34.665058, 27.114094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458115, 35.044689, 27.007473>,  <42.498417, 35.272469, 26.943501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458115, 35.044689, 27.007473>,  <42.390942, 34.665058, 27.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458115, 35.044689, 27.007473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615680, 0.110198, 0.780253,
		0.769894, -0.295141, -0.565822,
		0.167932, 0.949078, -0.266553,
		42.508495, 35.329414, 26.927507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994045, 34.893066, 27.562521>,  <42.390942, 34.665058, 27.114094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994045, 34.893066, 27.562521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853466, 35.242382, 27.427555>,  <42.769119, 35.451973, 27.346575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853466, 35.242382, 27.427555>,  <42.994045, 34.893066, 27.562521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853466, 35.242382, 27.427555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279225, 0.441780, 0.852563,
		0.893597, 0.205420, -0.399109,
		-0.351451, 0.873289, -0.337415,
		42.748032, 35.504368, 27.326330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517693, 35.313377, 27.650364>,  <42.994045, 34.893066, 27.562521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517693, 35.313377, 27.650364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197758, 35.549492, 27.606865>,  <43.005798, 35.691162, 27.580765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197758, 35.549492, 27.606865>,  <43.517693, 35.313377, 27.650364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197758, 35.549492, 27.606865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282205, 0.529739, 0.799836,
		0.529739, 0.609048, -0.590286,
		-0.799836, 0.590286, -0.108747,
		42.957806, 35.726578, 27.574242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785934, 35.940281, 27.746449>,  <43.517693, 35.313377, 27.650364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785934, 35.940281, 27.746449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395630, 35.981247, 27.823795>,  <43.161446, 36.005829, 27.870203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395630, 35.981247, 27.823795>,  <43.785934, 35.940281, 27.746449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395630, 35.981247, 27.823795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217052, 0.341030, 0.914651,
		0.027731, 0.934457, -0.354995,
		-0.975766, 0.102417, 0.193369,
		43.102901, 36.011971, 27.881805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744179, 36.573483, 28.017979>,  <43.785934, 35.940281, 27.746449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744179, 36.573483, 28.017979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408558, 36.400448, 28.149952>,  <43.207184, 36.296627, 28.229136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408558, 36.400448, 28.149952>,  <43.744179, 36.573483, 28.017979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408558, 36.400448, 28.149952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144974, 0.406736, 0.901969,
		-0.524373, 0.804634, -0.278561,
		-0.839056, -0.432584, 0.329933,
		43.156841, 36.270672, 28.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404526, 37.031399, 28.477287>,  <43.744179, 36.573483, 28.017979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404526, 37.031399, 28.477287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197662, 36.720497, 28.620628>,  <43.073544, 36.533955, 28.706633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197662, 36.720497, 28.620628>,  <43.404526, 37.031399, 28.477287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197662, 36.720497, 28.620628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049729, 0.390695, 0.919176,
		-0.854443, 0.493182, -0.163400,
		-0.517160, -0.777258, 0.358352,
		43.042515, 36.487320, 28.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953716, 37.408474, 28.787228>,  <43.404526, 37.031399, 28.477287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953716, 37.408474, 28.787228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952396, 37.036633, 28.934647>,  <42.951607, 36.813526, 29.023098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952396, 37.036633, 28.934647>,  <42.953716, 37.408474, 28.787228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952396, 37.036633, 28.934647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113509, 0.366516, 0.923462,
		-0.993532, -0.038789, -0.106726,
		-0.003297, -0.929603, 0.368548,
		42.951408, 36.757751, 29.045212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405857, 37.326012, 29.292183>,  <42.953716, 37.408474, 28.787228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405857, 37.326012, 29.292183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674965, 37.042740, 29.377846>,  <42.836430, 36.872776, 29.429243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674965, 37.042740, 29.377846>,  <42.405857, 37.326012, 29.292183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674965, 37.042740, 29.377846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075254, 0.353457, 0.932419,
		-0.736018, -0.611184, 0.291087,
		0.672766, -0.708183, 0.214156,
		42.876793, 36.830284, 29.442093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141026, 37.085106, 29.957420>,  <42.405857, 37.326012, 29.292183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141026, 37.085106, 29.957420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520626, 36.963177, 29.925236>,  <42.748386, 36.890018, 29.905924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520626, 36.963177, 29.925236>,  <42.141026, 37.085106, 29.957420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520626, 36.963177, 29.925236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073831, -0.033243, 0.996716,
		-0.306495, -0.951829, -0.009042,
		0.949005, -0.304821, -0.080464,
		42.805328, 36.871731, 29.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185986, 36.590519, 30.463614>,  <42.141026, 37.085106, 29.957420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185986, 36.590519, 30.463614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555241, 36.714188, 30.372192>,  <42.776794, 36.788387, 30.317339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555241, 36.714188, 30.372192>,  <42.185986, 36.590519, 30.463614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555241, 36.714188, 30.372192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167799, 0.210878, 0.963002,
		0.345931, -0.927331, 0.142790,
		0.923133, 0.309172, -0.228554,
		42.832180, 36.806938, 30.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625786, 36.157677, 30.787811>,  <42.185986, 36.590519, 30.463614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625786, 36.157677, 30.787811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788334, 36.519508, 30.736275>,  <42.885860, 36.736607, 30.705353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788334, 36.519508, 30.736275>,  <42.625786, 36.157677, 30.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788334, 36.519508, 30.736275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224857, 0.037669, 0.973664,
		0.885611, -0.424634, -0.188094,
		0.406365, 0.904581, -0.128842,
		42.910244, 36.790882, 30.697622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157661, 36.233181, 31.312147>,  <42.625786, 36.157677, 30.787811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157661, 36.233181, 31.312147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150955, 36.614361, 31.191086>,  <43.146931, 36.843071, 31.118450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150955, 36.614361, 31.191086>,  <43.157661, 36.233181, 31.312147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150955, 36.614361, 31.191086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354115, 0.288733, 0.889515,
		0.935052, -0.092261, -0.342295,
		-0.016764, 0.952954, -0.302652,
		43.145927, 36.900246, 31.100290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723072, 36.582569, 31.621977>,  <43.157661, 36.233181, 31.312147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723072, 36.582569, 31.621977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465286, 36.872696, 31.525166>,  <43.310616, 37.046772, 31.467079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465286, 36.872696, 31.525166>,  <43.723072, 36.582569, 31.621977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465286, 36.872696, 31.525166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052631, 0.357859, 0.932292,
		0.762820, 0.588091, -0.268801,
		-0.644465, 0.725318, -0.242030,
		43.271946, 37.090290, 31.452557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060345, 37.125240, 31.976976>,  <43.723072, 36.582569, 31.621977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060345, 37.125240, 31.976976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677803, 37.208202, 31.894638>,  <43.448277, 37.257980, 31.845236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677803, 37.208202, 31.894638>,  <44.060345, 37.125240, 31.976976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677803, 37.208202, 31.894638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111550, 0.391966, 0.913192,
		0.270081, 0.896297, -0.351723,
		-0.956354, 0.207401, -0.205844,
		43.390896, 37.270424, 31.832884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922707, 37.810555, 32.106709>,  <44.060345, 37.125240, 31.976976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922707, 37.810555, 32.106709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595734, 37.590298, 32.174347>,  <43.399548, 37.458145, 32.214931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595734, 37.590298, 32.174347>,  <43.922707, 37.810555, 32.106709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595734, 37.590298, 32.174347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067657, 0.383309, 0.921139,
		-0.572031, 0.741532, -0.350586,
		-0.817437, -0.550640, 0.169095,
		43.350502, 37.425106, 32.225075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193455, 38.155872, 32.326534>,  <43.922707, 37.810555, 32.106709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193455, 38.155872, 32.326534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296982, 37.804005, 32.486130>,  <43.359100, 37.592884, 32.581886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296982, 37.804005, 32.486130>,  <43.193455, 38.155872, 32.326534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296982, 37.804005, 32.486130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062139, 0.397040, 0.915695,
		-0.963924, -0.261794, 0.048101,
		0.258822, -0.879672, 0.398984,
		43.374630, 37.540104, 32.605824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784912, 37.946117, 32.856812>,  <43.193455, 38.155872, 32.326534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784912, 37.946117, 32.856812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141190, 37.781662, 32.934406>,  <43.354958, 37.682991, 32.980965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141190, 37.781662, 32.934406>,  <42.784912, 37.946117, 32.856812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141190, 37.781662, 32.934406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028186, 0.475839, 0.879081,
		-0.453728, -0.777525, 0.435415,
		0.890695, -0.411136, 0.193986,
		43.408398, 37.658321, 32.992603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685505, 37.859550, 33.562923>,  <42.784912, 37.946117, 32.856812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685505, 37.859550, 33.562923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076012, 37.823723, 33.484058>,  <43.310318, 37.802227, 33.436737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076012, 37.823723, 33.484058>,  <42.685505, 37.859550, 33.562923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076012, 37.823723, 33.484058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209724, 0.164151, 0.963883,
		-0.053965, -0.982361, 0.179039,
		0.976270, -0.089565, -0.197166,
		43.368893, 37.796852, 33.424908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043854, 37.863976, 33.136955>,  <42.685505, 37.859550, 33.562923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043854, 37.863976, 33.136955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741791, 38.014309, 33.351799>,  <41.560555, 38.104507, 33.480705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741791, 38.014309, 33.351799>,  <42.043854, 37.863976, 33.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741791, 38.014309, 33.351799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179527, 0.669450, -0.720838,
		-0.630482, -0.640772, -0.438069,
		-0.755158, 0.375830, 0.537111,
		41.515244, 38.127056, 33.512932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550236, 37.811672, 32.650372>,  <42.043854, 37.863976, 33.136955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550236, 37.811672, 32.650372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433094, 38.086979, 32.915859>,  <41.362808, 38.252163, 33.075150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433094, 38.086979, 32.915859>,  <41.550236, 37.811672, 32.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433094, 38.086979, 32.915859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677556, 0.340399, -0.651956,
		-0.674649, -0.640636, 0.366652,
		-0.292859, 0.688269, 0.663717,
		41.345238, 38.293461, 33.114975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763428, 37.722977, 32.714859>,  <41.550236, 37.811672, 32.650372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763428, 37.722977, 32.714859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928188, 38.083530, 32.768284>,  <41.027046, 38.299862, 32.800339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928188, 38.083530, 32.768284>,  <40.763428, 37.722977, 32.714859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928188, 38.083530, 32.768284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507810, 0.348770, -0.787711,
		-0.756614, 0.256636, 0.601393,
		0.411903, 0.901386, 0.133562,
		41.051758, 38.353947, 32.808353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192116, 38.168575, 32.809807>,  <40.763428, 37.722977, 32.714859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192116, 38.168575, 32.809807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511654, 38.353497, 32.655861>,  <40.703377, 38.464451, 32.563492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511654, 38.353497, 32.655861>,  <40.192116, 38.168575, 32.809807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511654, 38.353497, 32.655861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551925, 0.308873, -0.774581,
		-0.239221, 0.831185, 0.501901,
		0.798844, 0.462308, -0.384863,
		40.751308, 38.492188, 32.540401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026306, 38.769932, 32.599815>,  <40.192116, 38.168575, 32.809807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026306, 38.769932, 32.599815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343460, 38.668743, 32.378063>,  <40.533752, 38.608028, 32.245010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343460, 38.668743, 32.378063>,  <40.026306, 38.769932, 32.599815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343460, 38.668743, 32.378063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494983, 0.263265, -0.828060,
		0.355427, 0.930965, 0.083521,
		0.792883, -0.252973, -0.554383,
		40.581326, 38.592850, 32.211750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921032, 39.104877, 31.926926>,  <40.026306, 38.769932, 32.599815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921032, 39.104877, 31.926926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235428, 38.866261, 31.861988>,  <40.424065, 38.723091, 31.823027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235428, 38.866261, 31.861988>,  <39.921032, 39.104877, 31.926926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235428, 38.866261, 31.861988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113609, 0.118751, -0.986403,
		0.607706, 0.793750, 0.025565,
		0.785994, -0.596539, -0.162343,
		40.471226, 38.687298, 31.813286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187908, 39.291515, 31.324066>,  <39.921032, 39.104877, 31.926926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187908, 39.291515, 31.324066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345425, 38.926403, 31.367439>,  <40.439934, 38.707336, 31.393463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345425, 38.926403, 31.367439>,  <40.187908, 39.291515, 31.324066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345425, 38.926403, 31.367439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054742, -0.141042, -0.988489,
		0.917570, 0.383319, -0.105508,
		0.393788, -0.912783, 0.108432,
		40.463562, 38.652569, 31.399969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666080, 39.238129, 30.795692>,  <40.187908, 39.291515, 31.324066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666080, 39.238129, 30.795692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597225, 38.851418, 30.871288>,  <40.555912, 38.619392, 30.916645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597225, 38.851418, 30.871288>,  <40.666080, 39.238129, 30.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597225, 38.851418, 30.871288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104503, -0.172847, -0.979389,
		0.979514, -0.188340, -0.071277,
		-0.172138, -0.966774, 0.188988,
		40.545586, 38.561386, 30.927984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077888, 38.872681, 30.387609>,  <40.666080, 39.238129, 30.795692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077888, 38.872681, 30.387609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783615, 38.616146, 30.474739>,  <40.607052, 38.462223, 30.527018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783615, 38.616146, 30.474739>,  <41.077888, 38.872681, 30.387609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783615, 38.616146, 30.474739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039198, -0.280744, -0.958982,
		0.676187, -0.714049, 0.181401,
		-0.735687, -0.641341, 0.217824,
		40.562908, 38.423744, 30.540087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306549, 38.250408, 29.990196>,  <41.077888, 38.872681, 30.387609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306549, 38.250408, 29.990196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919117, 38.194614, 30.072563>,  <40.686657, 38.161140, 30.121983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919117, 38.194614, 30.072563>,  <41.306549, 38.250408, 29.990196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919117, 38.194614, 30.072563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125099, -0.442358, -0.888071,
		0.214959, -0.885925, 0.411010,
		-0.968578, -0.139481, 0.205917,
		40.628544, 38.152771, 30.134338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118408, 37.490410, 29.960981>,  <41.306549, 38.250408, 29.990196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118408, 37.490410, 29.960981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793907, 37.718346, 29.908600>,  <40.599205, 37.855106, 29.877171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793907, 37.718346, 29.908600>,  <41.118408, 37.490410, 29.960981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793907, 37.718346, 29.908600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114341, -0.374259, -0.920248,
		-0.573408, -0.731579, 0.368775,
		-0.811252, 0.569843, -0.130954,
		40.550533, 37.889297, 29.869314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726082, 37.004456, 29.594847>,  <41.118408, 37.490410, 29.960981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726082, 37.004456, 29.594847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593075, 37.378262, 29.544067>,  <40.513271, 37.602547, 29.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593075, 37.378262, 29.544067>,  <40.726082, 37.004456, 29.594847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593075, 37.378262, 29.544067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168237, -0.191225, -0.967021,
		-0.927971, -0.300190, 0.220805,
		-0.332513, 0.934515, -0.126948,
		40.493320, 37.658615, 29.505983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290325, 36.925365, 28.980747>,  <40.726082, 37.004456, 29.594847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290325, 36.925365, 28.980747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353745, 37.319012, 29.012707>,  <40.391796, 37.555199, 29.031883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353745, 37.319012, 29.012707>,  <40.290325, 36.925365, 28.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353745, 37.319012, 29.012707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160696, 0.105563, -0.981343,
		-0.974186, 0.142750, 0.174879,
		0.158548, 0.984113, 0.079899,
		40.401310, 37.614246, 29.036676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689980, 37.260178, 28.667477>,  <40.290325, 36.925365, 28.980747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689980, 37.260178, 28.667477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981262, 37.534317, 28.668606>,  <40.156033, 37.698803, 28.669283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981262, 37.534317, 28.668606>,  <39.689980, 37.260178, 28.667477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981262, 37.534317, 28.668606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006739, -0.003038, -0.999973,
		-0.685326, 0.728204, -0.006831,
		0.728205, 0.685353, 0.002825,
		40.199722, 37.739922, 28.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448936, 37.813709, 28.194920>,  <39.689980, 37.260178, 28.667477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448936, 37.813709, 28.194920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845604, 37.809341, 28.246265>,  <40.083603, 37.806721, 28.277073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845604, 37.809341, 28.246265>,  <39.448936, 37.813709, 28.194920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845604, 37.809341, 28.246265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128693, 0.037978, -0.990957,
		0.005947, 0.999219, 0.039066,
		0.991667, -0.010921, 0.128366,
		40.143105, 37.806065, 28.284775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746662, 38.425972, 27.837019>,  <39.448936, 37.813709, 28.194920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746662, 38.425972, 27.837019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066124, 38.186199, 27.858322>,  <40.257801, 38.042336, 27.871103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066124, 38.186199, 27.858322>,  <39.746662, 38.425972, 27.837019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066124, 38.186199, 27.858322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089269, 0.030487, -0.995541,
		0.595135, 0.799845, 0.077859,
		0.798652, -0.599432, 0.053257,
		40.305721, 38.006371, 27.874300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091656, 38.586128, 27.191259>,  <39.746662, 38.425972, 27.837019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091656, 38.586128, 27.191259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290318, 38.258236, 27.305367>,  <40.409515, 38.061501, 27.373831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290318, 38.258236, 27.305367>,  <40.091656, 38.586128, 27.191259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290318, 38.258236, 27.305367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190242, -0.217863, -0.957258,
		0.846842, 0.529698, 0.047744,
		0.496656, -0.819729, 0.285266,
		40.439316, 38.012318, 27.390947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816982, 38.609341, 26.950624>,  <40.091656, 38.586128, 27.191259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816982, 38.609341, 26.950624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726223, 38.227798, 27.029282>,  <40.671768, 37.998871, 27.076475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726223, 38.227798, 27.029282>,  <40.816982, 38.609341, 26.950624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726223, 38.227798, 27.029282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231242, -0.248898, -0.940519,
		0.946068, -0.167931, 0.277047,
		-0.226899, -0.953860, 0.196641,
		40.658154, 37.941639, 27.088274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227009, 38.253792, 26.438013>,  <40.816982, 38.609341, 26.950624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227009, 38.253792, 26.438013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946415, 37.990574, 26.547482>,  <40.778057, 37.832642, 26.613163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946415, 37.990574, 26.547482>,  <41.227009, 38.253792, 26.438013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946415, 37.990574, 26.547482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060467, -0.327663, -0.942858,
		0.710115, -0.677948, 0.190061,
		-0.701485, -0.658045, 0.273672,
		40.735970, 37.793159, 26.629583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380806, 37.538967, 26.163301>,  <41.227009, 38.253792, 26.438013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380806, 37.538967, 26.163301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986309, 37.558605, 26.226448>,  <40.749611, 37.570389, 26.264336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986309, 37.558605, 26.226448>,  <41.380806, 37.538967, 26.163301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986309, 37.558605, 26.226448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161765, -0.483599, -0.860212,
		0.034115, -0.873912, 0.484886,
		-0.986240, 0.049092, 0.157866,
		40.690437, 37.573334, 26.273808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148739, 36.800304, 25.903141>,  <41.380806, 37.538967, 26.163301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148739, 36.800304, 25.903141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817802, 37.023769, 25.926476>,  <40.619240, 37.157848, 25.940475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817802, 37.023769, 25.926476>,  <41.148739, 36.800304, 25.903141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817802, 37.023769, 25.926476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440851, -0.581466, -0.683774,
		-0.348080, -0.591430, 0.727358,
		-0.827339, 0.558665, 0.058335,
		40.569599, 37.191368, 25.943975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625721, 36.411709, 25.849636>,  <41.148739, 36.800304, 25.903141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625721, 36.411709, 25.849636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449001, 36.753494, 25.740311>,  <40.342968, 36.958565, 25.674715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449001, 36.753494, 25.740311>,  <40.625721, 36.411709, 25.849636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449001, 36.753494, 25.740311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523012, -0.492853, -0.695381,
		-0.728883, -0.164272, 0.664638,
		-0.441801, 0.854465, -0.273315,
		40.316460, 37.009834, 25.658316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974037, 36.194801, 25.821426>,  <40.625721, 36.411709, 25.849636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974037, 36.194801, 25.821426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012093, 36.530697, 25.607594>,  <40.034927, 36.732235, 25.479294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012093, 36.530697, 25.607594>,  <39.974037, 36.194801, 25.821426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012093, 36.530697, 25.607594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599216, -0.380518, -0.704376,
		-0.794914, 0.387348, 0.466984,
		0.095142, 0.839742, -0.534584,
		40.040634, 36.782619, 25.447218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353840, 36.269779, 25.603315>,  <39.974037, 36.194801, 25.821426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353840, 36.269779, 25.603315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579632, 36.495300, 25.362156>,  <39.715107, 36.630611, 25.217461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579632, 36.495300, 25.362156>,  <39.353840, 36.269779, 25.603315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579632, 36.495300, 25.362156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455517, -0.396344, -0.797130,
		-0.688377, 0.724598, 0.033090,
		0.564484, 0.563799, -0.602900,
		39.748978, 36.664440, 25.181286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882282, 36.648815, 25.207069>,  <39.353840, 36.269779, 25.603315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882282, 36.648815, 25.207069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224545, 36.648388, 25.000053>,  <39.429901, 36.648132, 24.875843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224545, 36.648388, 25.000053>,  <38.882282, 36.648815, 25.207069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224545, 36.648388, 25.000053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467694, -0.429790, -0.772362,
		-0.221609, 0.902928, -0.368253,
		0.855659, -0.001067, -0.517539,
		39.481243, 36.648067, 24.844791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779591, 36.940247, 24.585466>,  <38.882282, 36.648815, 25.207069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779591, 36.940247, 24.585466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082932, 36.680504, 24.562695>,  <39.264935, 36.524658, 24.549032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082932, 36.680504, 24.562695>,  <38.779591, 36.940247, 24.585466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082932, 36.680504, 24.562695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459521, -0.470619, -0.753232,
		0.462324, 0.597374, -0.655287,
		0.758352, -0.649355, -0.056927,
		39.310436, 36.485699, 24.545616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789543, 36.726032, 23.928417>,  <38.779591, 36.940247, 24.585466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789543, 36.726032, 23.928417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013435, 36.438046, 24.092541>,  <39.147770, 36.265255, 24.191015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013435, 36.438046, 24.092541>,  <38.789543, 36.726032, 23.928417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013435, 36.438046, 24.092541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396445, -0.667451, -0.630350,
		0.727690, 0.190162, -0.659019,
		0.559732, -0.719964, 0.410308,
		39.181355, 36.222057, 24.215633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218033, 36.386032, 23.320570>,  <38.789543, 36.726032, 23.928417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218033, 36.386032, 23.320570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133965, 36.132427, 23.618256>,  <39.083523, 35.980263, 23.796867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133965, 36.132427, 23.618256>,  <39.218033, 36.386032, 23.320570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133965, 36.132427, 23.618256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541760, -0.558129, -0.628481,
		0.813833, -0.535274, -0.226181,
		-0.210172, -0.634015, 0.744213,
		39.070911, 35.942223, 23.841520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361710, 35.662163, 23.113823>,  <39.218033, 36.386032, 23.320570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361710, 35.662163, 23.113823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080246, 35.662827, 23.398037>,  <38.911369, 35.663223, 23.568565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080246, 35.662827, 23.398037>,  <39.361710, 35.662163, 23.113823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080246, 35.662827, 23.398037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637763, -0.442331, -0.630557,
		0.313247, -0.896850, 0.312307,
		-0.703658, 0.001658, 0.710537,
		38.869148, 35.663322, 23.611198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190243, 35.036785, 23.194092>,  <39.361710, 35.662163, 23.113823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190243, 35.036785, 23.194092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891586, 35.288837, 23.279377>,  <38.712391, 35.440071, 23.330547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891586, 35.288837, 23.279377>,  <39.190243, 35.036785, 23.194092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891586, 35.288837, 23.279377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568905, -0.438726, -0.695606,
		-0.344779, -0.640668, 0.686056,
		-0.746642, 0.630131, 0.213216,
		38.667595, 35.477879, 23.343342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686977, 34.618458, 23.352335>,  <39.190243, 35.036785, 23.194092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686977, 34.618458, 23.352335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511566, 34.968082, 23.268711>,  <38.406319, 35.177856, 23.218536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511566, 34.968082, 23.268711>,  <38.686977, 34.618458, 23.352335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511566, 34.968082, 23.268711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665951, -0.472237, -0.577495,
		-0.603495, -0.114022, 0.789173,
		-0.438524, 0.874066, -0.209060,
		38.380009, 35.230301, 23.205994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989643, 34.485882, 23.219259>,  <38.686977, 34.618458, 23.352335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989643, 34.485882, 23.219259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035400, 34.850719, 23.061783>,  <38.062855, 35.069622, 22.967297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035400, 34.850719, 23.061783>,  <37.989643, 34.485882, 23.219259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035400, 34.850719, 23.061783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630359, -0.239652, -0.738386,
		-0.767829, 0.332632, 0.547535,
		0.114393, 0.912098, -0.393690,
		38.069717, 35.124348, 22.943676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467754, 34.623528, 22.878178>,  <37.989643, 34.485882, 23.219259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467754, 34.623528, 22.878178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679291, 34.899406, 22.680332>,  <37.806213, 35.064934, 22.561625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679291, 34.899406, 22.680332>,  <37.467754, 34.623528, 22.878178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679291, 34.899406, 22.680332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377410, -0.330885, -0.864914,
		-0.760190, 0.644075, 0.085314,
		0.528841, 0.689697, -0.494616,
		37.837944, 35.106316, 22.531948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968868, 35.021049, 23.249218>,  <37.467754, 34.623528, 22.878178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968868, 35.021049, 23.249218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056076, 34.924828, 22.870884>,  <37.108402, 34.867096, 22.643885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056076, 34.924828, 22.870884>,  <36.968868, 35.021049, 23.249218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056076, 34.924828, 22.870884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731505, -0.601262, 0.321535,
		-0.646040, -0.761982, 0.044879,
		0.218020, -0.240554, -0.945834,
		37.121483, 34.852661, 22.587133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813721, 34.364227, 23.412918>,  <36.968868, 35.021049, 23.249218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813721, 34.364227, 23.412918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623055, 34.496841, 23.738586>,  <36.508656, 34.576408, 23.933987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623055, 34.496841, 23.738586>,  <36.813721, 34.364227, 23.412918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623055, 34.496841, 23.738586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126414, -0.890682, 0.436698,
		0.869946, 0.311083, 0.382651,
		-0.476670, 0.331531, 0.814170,
		36.480053, 34.596302, 23.982838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280830, 34.262413, 23.967230>,  <36.813721, 34.364227, 23.412918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280830, 34.262413, 23.967230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919395, 34.289490, 24.136436>,  <36.702534, 34.305737, 24.237961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919395, 34.289490, 24.136436>,  <37.280830, 34.262413, 23.967230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919395, 34.289490, 24.136436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135550, -0.891531, 0.432203,
		0.406390, 0.447874, 0.796402,
		-0.903589, 0.067691, 0.423018,
		36.648319, 34.309795, 24.263342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340775, 34.117973, 24.668015>,  <37.280830, 34.262413, 23.967230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340775, 34.117973, 24.668015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968071, 34.040817, 24.544979>,  <36.744450, 33.994522, 24.471157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968071, 34.040817, 24.544979>,  <37.340775, 34.117973, 24.668015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968071, 34.040817, 24.544979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120374, -0.963402, 0.239515,
		-0.342534, 0.186145, 0.920880,
		-0.931762, -0.192892, -0.307591,
		36.688541, 33.982948, 24.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080257, 33.647297, 25.184956>,  <37.340775, 34.117973, 24.668015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080257, 33.647297, 25.184956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868660, 33.579052, 24.852436>,  <36.741703, 33.538105, 24.652924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868660, 33.579052, 24.852436>,  <37.080257, 33.647297, 25.184956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868660, 33.579052, 24.852436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089490, -0.985335, 0.145277,
		-0.843893, 0.002458, 0.536506,
		-0.528995, -0.170610, -0.831298,
		36.709961, 33.527870, 24.603046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803608, 33.092979, 25.365427>,  <37.080257, 33.647297, 25.184956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803608, 33.092979, 25.365427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689789, 33.089485, 24.981979>,  <36.621498, 33.087387, 24.751911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689789, 33.089485, 24.981979>,  <36.803608, 33.092979, 25.365427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689789, 33.089485, 24.981979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095092, -0.994770, 0.037291,
		-0.953933, 0.101769, 0.282234,
		-0.284552, -0.008734, -0.958621,
		36.604424, 33.086864, 24.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258644, 32.700073, 25.412498>,  <36.803608, 33.092979, 25.365427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258644, 32.700073, 25.412498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366020, 32.684185, 25.027508>,  <36.430447, 32.674652, 24.796513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366020, 32.684185, 25.027508>,  <36.258644, 32.700073, 25.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366020, 32.684185, 25.027508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049250, -0.998409, 0.027470,
		-0.962038, 0.040028, -0.269966,
		0.268437, -0.039723, -0.962478,
		36.446552, 32.672268, 24.738764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751873, 32.307713, 25.084858>,  <36.258644, 32.700073, 25.412498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751873, 32.307713, 25.084858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081921, 32.275707, 24.861153>,  <36.279949, 32.256504, 24.726929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081921, 32.275707, 24.861153>,  <35.751873, 32.307713, 25.084858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081921, 32.275707, 24.861153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075542, -0.996656, 0.031138,
		-0.559886, 0.016555, -0.828404,
		0.825119, -0.080013, -0.559264,
		36.329456, 32.251705, 24.693373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515083, 31.924841, 24.433813>,  <35.751873, 32.307713, 25.084858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515083, 31.924841, 24.433813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912930, 31.886864, 24.450390>,  <36.151638, 31.864079, 24.460335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912930, 31.886864, 24.450390>,  <35.515083, 31.924841, 24.433813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912930, 31.886864, 24.450390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082407, -0.967553, -0.238851,
		0.062773, 0.234151, -0.970171,
		0.994620, -0.094942, 0.041441,
		36.211315, 31.858381, 24.462822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683807, 31.519297, 23.933353>,  <35.515083, 31.924841, 24.433813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683807, 31.519297, 23.933353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021591, 31.469753, 24.141796>,  <36.224262, 31.440027, 24.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021591, 31.469753, 24.141796>,  <35.683807, 31.519297, 23.933353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021591, 31.469753, 24.141796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136114, -0.990582, -0.014872,
		0.518039, -0.058371, -0.853363,
		0.844457, -0.123859, 0.521105,
		36.274929, 31.432596, 24.298128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961422, 30.852261, 23.659491>,  <35.683807, 31.519297, 23.933353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961422, 30.852261, 23.659491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112663, 30.916744, 24.024139>,  <36.203407, 30.955435, 24.242928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112663, 30.916744, 24.024139>,  <35.961422, 30.852261, 23.659491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112663, 30.916744, 24.024139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044025, -0.980477, 0.191643,
		0.924717, -0.112594, -0.363621,
		0.378100, 0.161207, 0.911621,
		36.226093, 30.965107, 24.297626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213696, 30.201078, 23.813694>,  <35.961422, 30.852261, 23.659491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213696, 30.201078, 23.813694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252781, 30.385586, 24.166439>,  <36.276234, 30.496290, 24.378086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252781, 30.385586, 24.166439>,  <36.213696, 30.201078, 23.813694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252781, 30.385586, 24.166439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020702, -0.884970, 0.465187,
		0.994999, -0.063712, -0.076925,
		0.097714, 0.461268, 0.881864,
		36.282097, 30.523966, 24.430998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745903, 29.863712, 24.091656>,  <36.213696, 30.201078, 23.813694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745903, 29.863712, 24.091656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526241, 30.037560, 24.377182>,  <36.394444, 30.141869, 24.548498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526241, 30.037560, 24.377182>,  <36.745903, 29.863712, 24.091656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526241, 30.037560, 24.377182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001722, -0.854720, 0.519086,
		0.835718, 0.283830, 0.470123,
		-0.549156, 0.434619, 0.713816,
		36.361496, 30.167946, 24.591328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931168, 29.478159, 24.664663>,  <36.745903, 29.863712, 24.091656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931168, 29.478159, 24.664663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596985, 29.655643, 24.794353>,  <36.396473, 29.762135, 24.872168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596985, 29.655643, 24.794353>,  <36.931168, 29.478159, 24.664663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596985, 29.655643, 24.794353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141911, -0.744170, 0.652742,
		0.530910, 0.499329, 0.684693,
		-0.835461, 0.443713, 0.324227,
		36.346348, 29.788757, 24.891623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978668, 29.470556, 25.361265>,  <36.931168, 29.478159, 24.664663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978668, 29.470556, 25.361265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587341, 29.510559, 25.288708>,  <36.352547, 29.534561, 25.245174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587341, 29.510559, 25.288708>,  <36.978668, 29.470556, 25.361265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587341, 29.510559, 25.288708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204025, -0.616422, 0.760525,
		-0.035756, 0.781039, 0.623457,
		-0.978312, 0.100007, -0.181392,
		36.293846, 29.540562, 25.234289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667458, 29.643171, 25.938162>,  <36.978668, 29.470556, 25.361265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667458, 29.643171, 25.938162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363743, 29.491062, 25.726929>,  <36.181515, 29.399797, 25.600189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363743, 29.491062, 25.726929>,  <36.667458, 29.643171, 25.938162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363743, 29.491062, 25.726929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290363, -0.528261, 0.797891,
		-0.582380, 0.759167, 0.290686,
		-0.759291, -0.380271, -0.528083,
		36.135956, 29.376982, 25.568504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066605, 29.811132, 26.300018>,  <36.667458, 29.643171, 25.938162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066605, 29.811132, 26.300018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969074, 29.501907, 26.065781>,  <35.910557, 29.316372, 25.925238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969074, 29.501907, 26.065781>,  <36.066605, 29.811132, 26.300018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969074, 29.501907, 26.065781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248679, -0.533792, 0.808223,
		-0.937394, 0.342691, -0.062092,
		-0.243827, -0.773065, -0.585593,
		35.895927, 29.269987, 25.890102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429409, 29.548933, 26.620987>,  <36.066605, 29.811132, 26.300018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429409, 29.548933, 26.620987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561745, 29.252396, 26.387421>,  <35.641148, 29.074474, 26.247280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561745, 29.252396, 26.387421>,  <35.429409, 29.548933, 26.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561745, 29.252396, 26.387421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405117, -0.670417, 0.621628,
		-0.852305, 0.030895, -0.522131,
		0.330841, -0.741341, -0.583916,
		35.660995, 29.029993, 26.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884151, 29.115967, 26.566877>,  <35.429409, 29.548933, 26.620987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884151, 29.115967, 26.566877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208500, 28.896271, 26.486053>,  <35.403107, 28.764454, 26.437559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208500, 28.896271, 26.486053>,  <34.884151, 29.115967, 26.566877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208500, 28.896271, 26.486053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317169, -0.702594, 0.636997,
		-0.491830, -0.452434, -0.743913,
		0.810868, -0.549240, -0.202059,
		35.451759, 28.731499, 26.425436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653358, 28.447584, 26.289448>,  <34.884151, 29.115967, 26.566877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653358, 28.447584, 26.289448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025856, 28.387596, 26.422287>,  <35.249355, 28.351604, 26.501991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025856, 28.387596, 26.422287>,  <34.653358, 28.447584, 26.289448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025856, 28.387596, 26.422287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327102, -0.745663, 0.580509,
		0.160575, -0.649226, -0.743452,
		0.931247, -0.149969, 0.332098,
		35.305229, 28.342606, 26.521917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654255, 27.764860, 26.410597>,  <34.653358, 28.447584, 26.289448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654255, 27.764860, 26.410597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993488, 27.860352, 26.599812>,  <35.197029, 27.917646, 26.713341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993488, 27.860352, 26.599812>,  <34.654255, 27.764860, 26.410597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993488, 27.860352, 26.599812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217034, -0.657916, 0.721140,
		0.483376, -0.714251, -0.506155,
		0.848083, 0.238728, 0.473038,
		35.247913, 27.931971, 26.741722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953209, 27.057148, 26.671686>,  <34.654255, 27.764860, 26.410597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953209, 27.057148, 26.671686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120937, 27.334858, 26.905659>,  <35.221577, 27.501484, 27.046043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120937, 27.334858, 26.905659>,  <34.953209, 27.057148, 26.671686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120937, 27.334858, 26.905659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104962, -0.602919, 0.790868,
		0.901748, -0.393026, -0.179946,
		0.419325, 0.694276, 0.584934,
		35.246735, 27.543140, 27.081139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488155, 26.695435, 27.096434>,  <34.953209, 27.057148, 26.671686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488155, 26.695435, 27.096434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396011, 27.036961, 27.283169>,  <35.340725, 27.241877, 27.395210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396011, 27.036961, 27.283169>,  <35.488155, 26.695435, 27.096434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396011, 27.036961, 27.283169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241064, -0.514854, 0.822686,
		0.942775, 0.076973, 0.324424,
		-0.230356, 0.853815, 0.466836,
		35.326904, 27.293106, 27.423220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796036, 26.667992, 27.712328>,  <35.488155, 26.695435, 27.096434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796036, 26.667992, 27.712328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512115, 26.946873, 27.752522>,  <35.341763, 27.114201, 27.776638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512115, 26.946873, 27.752522>,  <35.796036, 26.667992, 27.712328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512115, 26.946873, 27.752522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318720, -0.445087, 0.836848,
		0.628175, 0.561968, 0.538134,
		-0.709799, 0.697201, 0.100482,
		35.299175, 27.156033, 27.782665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874474, 26.929848, 28.397123>,  <35.796036, 26.667992, 27.712328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874474, 26.929848, 28.397123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506729, 27.006310, 28.259579>,  <35.286083, 27.052187, 28.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506729, 27.006310, 28.259579>,  <35.874474, 26.929848, 28.397123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506729, 27.006310, 28.259579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390427, -0.335643, 0.857269,
		0.048458, 0.922390, 0.383209,
		-0.919358, 0.191156, -0.343862,
		35.230923, 27.063656, 28.156420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462894, 27.178228, 28.963741>,  <35.874474, 26.929848, 28.397123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462894, 27.178228, 28.963741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190704, 27.043869, 28.703243>,  <35.027390, 26.963253, 28.546944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190704, 27.043869, 28.703243>,  <35.462894, 27.178228, 28.963741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190704, 27.043869, 28.703243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491977, -0.449225, 0.745758,
		-0.543056, 0.827870, 0.140433,
		-0.680477, -0.335898, -0.651247,
		34.986561, 26.943100, 28.507870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727989, 27.422459, 29.230385>,  <35.462894, 27.178228, 28.963741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727989, 27.422459, 29.230385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669674, 27.121445, 28.973499>,  <34.634686, 26.940836, 28.819368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669674, 27.121445, 28.973499>,  <34.727989, 27.422459, 29.230385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669674, 27.121445, 28.973499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576649, -0.462834, 0.673247,
		-0.803879, 0.468486, -0.366470,
		-0.145792, -0.752533, -0.642214,
		34.625935, 26.895685, 28.780834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925106, 27.307707, 29.234356>,  <34.727989, 27.422459, 29.230385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925106, 27.307707, 29.234356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109024, 26.982037, 29.092537>,  <34.219376, 26.786634, 29.007446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109024, 26.982037, 29.092537>,  <33.925106, 27.307707, 29.234356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109024, 26.982037, 29.092537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556932, -0.575363, 0.598986,
		-0.691673, -0.077954, -0.717991,
		0.459799, -0.814175, -0.354548,
		34.246964, 26.737783, 28.986174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435684, 26.827097, 29.123571>,  <33.925106, 27.307707, 29.234356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435684, 26.827097, 29.123571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758671, 26.591263, 29.131454>,  <33.952461, 26.449762, 29.136185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758671, 26.591263, 29.131454>,  <33.435684, 26.827097, 29.123571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758671, 26.591263, 29.131454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504915, -0.673454, 0.539927,
		-0.305062, -0.445921, -0.841481,
		0.807464, -0.589588, 0.019707,
		34.000912, 26.414387, 29.137367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187321, 26.173334, 29.106142>,  <33.435684, 26.827097, 29.123571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187321, 26.173334, 29.106142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546604, 26.117577, 29.272892>,  <33.762177, 26.084122, 29.372942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546604, 26.117577, 29.272892>,  <33.187321, 26.173334, 29.106142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546604, 26.117577, 29.272892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366375, -0.761423, 0.534794,
		0.242872, -0.633091, -0.734989,
		0.898211, -0.139395, 0.416877,
		33.816067, 26.075758, 29.397955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254440, 25.418400, 29.210894>,  <33.187321, 26.173334, 29.106142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254440, 25.418400, 29.210894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556114, 25.543377, 29.441921>,  <33.737118, 25.618362, 29.580538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556114, 25.543377, 29.441921>,  <33.254440, 25.418400, 29.210894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556114, 25.543377, 29.441921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135941, -0.786212, 0.602819,
		0.642437, -0.533153, -0.550476,
		0.754185, 0.312441, 0.577569,
		33.782372, 25.637110, 29.615192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663689, 24.821251, 29.294254>,  <33.254440, 25.418400, 29.210894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663689, 24.821251, 29.294254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737247, 25.077091, 29.592808>,  <33.781384, 25.230595, 29.771940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737247, 25.077091, 29.592808>,  <33.663689, 24.821251, 29.294254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737247, 25.077091, 29.592808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070694, -0.748763, 0.659057,
		0.980400, -0.173964, -0.092480,
		0.183898, 0.639601, 0.746386,
		33.792416, 25.268972, 29.816723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924232, 24.388456, 29.706770>,  <33.663689, 24.821251, 29.294254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924232, 24.388456, 29.706770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867828, 24.706448, 29.942780>,  <33.833984, 24.897242, 30.084385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867828, 24.706448, 29.942780>,  <33.924232, 24.388456, 29.706770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867828, 24.706448, 29.942780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016739, -0.597808, 0.801464,
		0.989866, 0.103140, 0.097605,
		-0.141012, 0.794976, 0.590024,
		33.825523, 24.944941, 30.119787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463669, 24.473627, 30.222595>,  <33.924232, 24.388456, 29.706770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463669, 24.473627, 30.222595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131092, 24.641232, 30.368549>,  <33.931545, 24.741795, 30.456121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131092, 24.641232, 30.368549>,  <34.463669, 24.473627, 30.222595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131092, 24.641232, 30.368549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076534, -0.564089, 0.822160,
		0.550322, 0.711501, 0.436936,
		-0.831438, 0.419012, 0.364884,
		33.881660, 24.766935, 30.478014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545952, 24.345589, 30.943533>,  <34.463669, 24.473627, 30.222595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545952, 24.345589, 30.943533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161934, 24.452179, 30.909359>,  <33.931522, 24.516132, 30.888855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161934, 24.452179, 30.909359>,  <34.545952, 24.345589, 30.943533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161934, 24.452179, 30.909359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231155, -0.583099, 0.778822,
		0.157718, 0.767455, 0.621400,
		-0.960048, 0.266473, -0.085436,
		33.873920, 24.532122, 30.883728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319637, 24.400593, 31.610786>,  <34.545952, 24.345589, 30.943533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319637, 24.400593, 31.610786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981354, 24.369701, 31.399574>,  <33.778385, 24.351166, 31.272846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981354, 24.369701, 31.399574>,  <34.319637, 24.400593, 31.610786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981354, 24.369701, 31.399574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412322, -0.533585, 0.738429,
		-0.338778, 0.842213, 0.419413,
		-0.845707, -0.077230, -0.528030,
		33.727642, 24.346533, 31.241165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771835, 24.604139, 32.106583>,  <34.319637, 24.400593, 31.610786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771835, 24.604139, 32.106583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632465, 24.365795, 31.817154>,  <33.548843, 24.222788, 31.643497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632465, 24.365795, 31.817154>,  <33.771835, 24.604139, 32.106583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632465, 24.365795, 31.817154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472254, -0.555214, 0.684626,
		-0.809678, 0.580246, -0.087950,
		-0.348421, -0.595862, -0.723569,
		33.527939, 24.187037, 31.600082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006290, 24.661545, 32.179001>,  <33.771835, 24.604139, 32.106583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006290, 24.661545, 32.179001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114491, 24.319275, 32.002522>,  <33.179409, 24.113913, 31.896633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114491, 24.319275, 32.002522>,  <33.006290, 24.661545, 32.179001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114491, 24.319275, 32.002522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453544, -0.517504, 0.725595,
		-0.849193, 0.003833, -0.528068,
		0.270496, -0.855672, -0.441199,
		33.195641, 24.062572, 31.870161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455517, 24.280476, 32.195961>,  <33.006290, 24.661545, 32.179001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455517, 24.280476, 32.195961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724060, 23.992664, 32.124897>,  <32.885185, 23.819977, 32.082256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724060, 23.992664, 32.124897>,  <32.455517, 24.280476, 32.195961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724060, 23.992664, 32.124897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446146, -0.583773, 0.678353,
		-0.591808, -0.376152, -0.712933,
		0.671355, -0.719527, -0.177663,
		32.925465, 23.776806, 32.071598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101421, 23.595736, 31.929583>,  <32.455517, 24.280476, 32.195961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101421, 23.595736, 31.929583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449913, 23.559174, 32.122501>,  <32.659008, 23.537237, 32.238251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449913, 23.559174, 32.122501>,  <32.101421, 23.595736, 31.929583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449913, 23.559174, 32.122501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435799, -0.596224, 0.674237,
		0.225927, -0.797598, -0.559281,
		0.871227, -0.091405, 0.482295,
		32.711281, 23.531752, 32.267189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227722, 22.874851, 32.007015>,  <32.101421, 23.595736, 31.929583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227722, 22.874851, 32.007015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439129, 23.050766, 32.297466>,  <32.565971, 23.156315, 32.471737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439129, 23.050766, 32.297466>,  <32.227722, 22.874851, 32.007015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439129, 23.050766, 32.297466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402757, -0.623060, 0.670509,
		0.747303, -0.646826, -0.152168,
		0.528512, 0.439786, 0.726128,
		32.597683, 23.182701, 32.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192188, 22.306475, 32.463634>,  <32.227722, 22.874851, 32.007015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192188, 22.306475, 32.463634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374657, 22.602024, 32.662018>,  <32.484138, 22.779354, 32.781048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374657, 22.602024, 32.662018>,  <32.192188, 22.306475, 32.463634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374657, 22.602024, 32.662018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396367, -0.330280, 0.856626,
		0.796743, -0.587349, 0.142201,
		0.456172, 0.738875, 0.495955,
		32.511509, 22.823687, 32.810802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592262, 21.983345, 33.047653>,  <32.192188, 22.306475, 32.463634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592262, 21.983345, 33.047653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526039, 22.359844, 33.165394>,  <32.486305, 22.585743, 33.236038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526039, 22.359844, 33.165394>,  <32.592262, 21.983345, 33.047653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526039, 22.359844, 33.165394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230132, -0.327105, 0.916538,
		0.958973, 0.084003, 0.270767,
		-0.165561, 0.941247, 0.294353,
		32.476372, 22.642218, 33.253700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002029, 22.051914, 33.645222>,  <32.592262, 21.983345, 33.047653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002029, 22.051914, 33.645222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701191, 22.315113, 33.660156>,  <32.520687, 22.473032, 33.669117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701191, 22.315113, 33.660156>,  <33.002029, 22.051914, 33.645222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701191, 22.315113, 33.660156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197109, -0.278634, 0.939953,
		0.628891, 0.699572, 0.339256,
		-0.752093, 0.657999, 0.037338,
		32.475563, 22.512512, 33.671356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982735, 22.477142, 34.283432>,  <33.002029, 22.051914, 33.645222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982735, 22.477142, 34.283432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606762, 22.467937, 34.147194>,  <32.381180, 22.462416, 34.065449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606762, 22.467937, 34.147194>,  <32.982735, 22.477142, 34.283432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606762, 22.467937, 34.147194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327641, -0.219345, 0.918988,
		-0.095855, 0.975376, 0.198629,
		-0.939927, -0.023010, -0.340598,
		32.324783, 22.461035, 34.045013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626469, 22.556078, 34.846195>,  <32.982735, 22.477142, 34.283432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626469, 22.556078, 34.846195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358677, 22.422169, 34.580948>,  <32.198002, 22.341824, 34.421799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358677, 22.422169, 34.580948>,  <32.626469, 22.556078, 34.846195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358677, 22.422169, 34.580948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572798, -0.335728, 0.747790,
		-0.472964, 0.880463, 0.033008,
		-0.669483, -0.334771, -0.663115,
		32.157833, 22.321737, 34.382015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871700, 22.906141, 34.937679>,  <32.626469, 22.556078, 34.846195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871700, 22.906141, 34.937679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917215, 22.527767, 34.816181>,  <31.944525, 22.300743, 34.743282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917215, 22.527767, 34.816181>,  <31.871700, 22.906141, 34.937679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917215, 22.527767, 34.816181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583887, -0.311030, 0.749891,
		-0.803821, 0.092025, -0.587710,
		0.113787, -0.945935, -0.303744,
		31.951351, 22.243986, 34.725060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081608, 22.820999, 35.651539>,  <31.871700, 22.906141, 34.937679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081608, 22.820999, 35.651539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973970, 22.981117, 36.001934>,  <31.909388, 23.077188, 36.212170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973970, 22.981117, 36.001934>,  <32.081608, 22.820999, 35.651539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973970, 22.981117, 36.001934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005858, 0.908839, -0.417107,
		-0.963096, -0.117373, -0.242220,
		-0.269096, 0.400295, 0.875986,
		31.893242, 23.101206, 36.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399727, 23.131102, 35.642742>,  <32.081608, 22.820999, 35.651539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399727, 23.131102, 35.642742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648142, 23.306324, 35.902718>,  <31.797192, 23.411457, 36.058704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648142, 23.306324, 35.902718>,  <31.399727, 23.131102, 35.642742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648142, 23.306324, 35.902718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259368, 0.897377, -0.356992,
		-0.739621, 0.053133, 0.670923,
		0.621038, 0.438055, 0.649938,
		31.834454, 23.437740, 36.097698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998552, 23.753536, 35.986717>,  <31.399727, 23.131102, 35.642742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998552, 23.753536, 35.986717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393263, 23.818344, 35.984798>,  <31.630089, 23.857229, 35.983646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393263, 23.818344, 35.984798>,  <30.998552, 23.753536, 35.986717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393263, 23.818344, 35.984798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161404, 0.984876, 0.062988,
		0.014929, -0.061381, 0.998003,
		0.986776, 0.162022, -0.004796,
		31.689295, 23.866951, 35.983360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170372, 24.004244, 36.729343>,  <30.998552, 23.753536, 35.986717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170372, 24.004244, 36.729343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393951, 24.124527, 36.420242>,  <31.528099, 24.196697, 36.234779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393951, 24.124527, 36.420242>,  <31.170372, 24.004244, 36.729343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393951, 24.124527, 36.420242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188274, 0.953611, 0.234903,
		0.807544, 0.014190, 0.589637,
		0.558951, 0.300708, -0.772754,
		31.561636, 24.214739, 36.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863705, 24.323381, 36.889084>,  <31.170372, 24.004244, 36.729343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863705, 24.323381, 36.889084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654858, 24.467812, 36.580017>,  <31.529551, 24.554470, 36.394577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654858, 24.467812, 36.580017>,  <31.863705, 24.323381, 36.889084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654858, 24.467812, 36.580017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338783, 0.743614, 0.576424,
		0.782701, 0.562728, -0.265926,
		-0.522116, 0.361076, -0.772670,
		31.498222, 24.576134, 36.348217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023155, 25.112850, 36.716484>,  <31.863705, 24.323381, 36.889084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023155, 25.112850, 36.716484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663286, 25.010029, 36.575336>,  <31.447365, 24.948336, 36.490646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663286, 25.010029, 36.575336>,  <32.023155, 25.112850, 36.716484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663286, 25.010029, 36.575336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410400, 0.773616, 0.482794,
		0.148881, 0.579173, -0.801494,
		-0.899670, -0.257054, -0.352869,
		31.393385, 24.932913, 36.469475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771740, 24.889284, 35.968037>,  <32.023155, 25.112850, 36.716484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771740, 24.889284, 35.968037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840097, 24.752209, 35.598526>,  <31.881111, 24.669964, 35.376820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840097, 24.752209, 35.598526>,  <31.771740, 24.889284, 35.968037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840097, 24.752209, 35.598526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131104, 0.937139, -0.323393,
		0.976528, -0.065845, 0.205078,
		0.170893, -0.342689, -0.923775,
		31.891365, 24.649403, 35.321392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464409, 25.111324, 35.799480>,  <31.771740, 24.889284, 35.968037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464409, 25.111324, 35.799480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244850, 25.053265, 35.470203>,  <32.113113, 25.018429, 35.272636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244850, 25.053265, 35.470203>,  <32.464409, 25.111324, 35.799480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244850, 25.053265, 35.470203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181579, 0.940587, -0.286923,
		0.815930, -0.306965, -0.489930,
		-0.548897, -0.145148, -0.823192,
		32.080181, 25.009720, 35.223248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761906, 25.534908, 35.251324>,  <32.464409, 25.111324, 35.799480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761906, 25.534908, 35.251324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421200, 25.409058, 35.083752>,  <32.216778, 25.333548, 34.983208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421200, 25.409058, 35.083752>,  <32.761906, 25.534908, 35.251324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421200, 25.409058, 35.083752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060324, 0.853184, -0.518110,
		0.520440, -0.416036, -0.745692,
		-0.851765, -0.314628, -0.418934,
		32.165672, 25.314669, 34.958073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895535, 25.642933, 34.601242>,  <32.761906, 25.534908, 35.251324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895535, 25.642933, 34.601242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498005, 25.604351, 34.579300>,  <32.259487, 25.581202, 34.566135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498005, 25.604351, 34.579300>,  <32.895535, 25.642933, 34.601242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498005, 25.604351, 34.579300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030357, 0.711836, -0.701690,
		0.106728, -0.695691, -0.710368,
		-0.993825, -0.096455, -0.054854,
		32.199856, 25.575415, 34.562843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752865, 25.563948, 33.929222>,  <32.895535, 25.642933, 34.601242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752865, 25.563948, 33.929222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425617, 25.715572, 34.102188>,  <32.229267, 25.806547, 34.205971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425617, 25.715572, 34.102188>,  <32.752865, 25.563948, 33.929222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425617, 25.715572, 34.102188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020849, 0.731929, -0.681062,
		-0.574667, -0.566207, -0.590904,
		-0.818122, 0.379064, 0.432420,
		32.180180, 25.829292, 34.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404808, 25.852102, 33.476925>,  <32.752865, 25.563948, 33.929222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404808, 25.852102, 33.476925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246090, 26.053329, 33.784035>,  <32.150860, 26.174065, 33.968300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246090, 26.053329, 33.784035>,  <32.404808, 25.852102, 33.476925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246090, 26.053329, 33.784035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203520, 0.767403, -0.608007,
		-0.895060, -0.397512, -0.202119,
		-0.396797, 0.503067, 0.767773,
		32.127052, 26.204250, 34.014366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783180, 26.095724, 33.212307>,  <32.404808, 25.852102, 33.476925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783180, 26.095724, 33.212307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869486, 26.313873, 33.536285>,  <31.921270, 26.444763, 33.730671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869486, 26.313873, 33.536285>,  <31.783180, 26.095724, 33.212307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869486, 26.313873, 33.536285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238933, 0.833757, -0.497755,
		-0.946761, -0.086124, 0.310204,
		0.215766, 0.545372, 0.809947,
		31.934216, 26.477486, 33.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246792, 26.482887, 33.307823>,  <31.783180, 26.095724, 33.212307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246792, 26.482887, 33.307823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516815, 26.690701, 33.517349>,  <31.678829, 26.815388, 33.643066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516815, 26.690701, 33.517349>,  <31.246792, 26.482887, 33.307823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516815, 26.690701, 33.517349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193120, 0.809682, -0.554184,
		-0.712041, 0.272947, 0.646913,
		0.675057, 0.519534, 0.523815,
		31.719332, 26.846561, 33.674496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922268, 27.125973, 33.589691>,  <31.246792, 26.482887, 33.307823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922268, 27.125973, 33.589691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315701, 27.192680, 33.617287>,  <31.551760, 27.232704, 33.633842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315701, 27.192680, 33.617287>,  <30.922268, 27.125973, 33.589691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315701, 27.192680, 33.617287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120217, 0.890529, -0.438755,
		-0.134606, 0.423257, 0.895954,
		0.983580, 0.166768, 0.068988,
		31.610775, 27.242710, 33.637981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939619, 27.790533, 33.517788>,  <30.922268, 27.125973, 33.589691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939619, 27.790533, 33.517788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326870, 27.710770, 33.457176>,  <31.559221, 27.662910, 33.420807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326870, 27.710770, 33.457176>,  <30.939619, 27.790533, 33.517788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326870, 27.710770, 33.457176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129066, 0.915739, -0.380479,
		0.214637, 0.348795, 0.912290,
		0.968129, -0.199410, -0.151534,
		31.617308, 27.650946, 33.411716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315536, 28.355175, 33.708916>,  <30.939619, 27.790533, 33.517788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315536, 28.355175, 33.708916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560593, 28.161526, 33.459023>,  <31.707626, 28.045336, 33.309086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560593, 28.161526, 33.459023>,  <31.315536, 28.355175, 33.708916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560593, 28.161526, 33.459023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152685, 0.848048, -0.507446,
		0.775472, 0.215496, 0.593469,
		0.612643, -0.484123, -0.624735,
		31.744385, 28.016289, 33.271603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499060, 28.925140, 33.348194>,  <31.315536, 28.355175, 33.708916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499060, 28.925140, 33.348194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686026, 28.655457, 33.119473>,  <31.798206, 28.493647, 32.982239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686026, 28.655457, 33.119473>,  <31.499060, 28.925140, 33.348194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686026, 28.655457, 33.119473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282077, 0.726745, -0.626317,
		0.837827, 0.131458, 0.529872,
		0.467417, -0.674210, -0.571806,
		31.826250, 28.453194, 32.947929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230106, 29.231628, 33.250076>,  <31.499060, 28.925140, 33.348194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230106, 29.231628, 33.250076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162659, 28.953045, 32.971077>,  <32.122189, 28.785894, 32.803677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162659, 28.953045, 32.971077>,  <32.230106, 29.231628, 33.250076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162659, 28.953045, 32.971077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350376, 0.619066, -0.702847,
		0.921305, -0.362904, 0.139633,
		-0.168624, -0.696461, -0.697502,
		32.112072, 28.744106, 32.761826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918861, 28.998516, 32.771652>,  <32.230106, 29.231628, 33.250076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918861, 28.998516, 32.771652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589252, 28.898190, 32.568447>,  <32.391487, 28.837994, 32.446526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589252, 28.898190, 32.568447>,  <32.918861, 28.998516, 32.771652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589252, 28.898190, 32.568447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352373, 0.475241, -0.806213,
		0.443640, -0.843348, -0.303228,
		-0.824025, -0.250819, -0.508009,
		32.342045, 28.822945, 32.416046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156700, 28.951189, 32.100868>,  <32.918861, 28.998516, 32.771652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156700, 28.951189, 32.100868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763573, 28.962742, 32.027946>,  <32.527695, 28.969673, 31.984194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763573, 28.962742, 32.027946>,  <33.156700, 28.951189, 32.100868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763573, 28.962742, 32.027946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182333, 0.305501, -0.934571,
		0.028701, -0.951754, -0.305518,
		-0.982817, 0.028883, -0.182305,
		32.468727, 28.971407, 31.973255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101673, 28.626257, 31.396322>,  <33.156700, 28.951189, 32.100868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101673, 28.626257, 31.396322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756935, 28.821915, 31.449921>,  <32.550091, 28.939308, 31.482080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756935, 28.821915, 31.449921>,  <33.101673, 28.626257, 31.396322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756935, 28.821915, 31.449921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052852, 0.349393, -0.935484,
		-0.504404, -0.799164, -0.326976,
		-0.861849, 0.489143, 0.133997,
		32.498379, 28.968658, 31.490120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607441, 28.441942, 30.843622>,  <33.101673, 28.626257, 31.396322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607441, 28.441942, 30.843622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471443, 28.796047, 30.970566>,  <32.389843, 29.008511, 31.046732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471443, 28.796047, 30.970566>,  <32.607441, 28.441942, 30.843622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471443, 28.796047, 30.970566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118748, 0.294348, -0.948292,
		-0.932900, -0.360099, 0.005046,
		-0.339994, 0.885261, 0.317359,
		32.369446, 29.061626, 31.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957060, 28.582941, 30.473154>,  <32.607441, 28.441942, 30.843622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957060, 28.582941, 30.473154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114193, 28.920471, 30.619381>,  <32.208473, 29.122990, 30.707117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114193, 28.920471, 30.619381>,  <31.957060, 28.582941, 30.473154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114193, 28.920471, 30.619381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051563, 0.417110, -0.907392,
		-0.918163, 0.337603, 0.207365,
		0.392832, 0.843827, 0.365567,
		32.232044, 29.173618, 30.729052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530327, 29.186953, 30.144192>,  <31.957060, 28.582941, 30.473154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530327, 29.186953, 30.144192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865335, 29.345932, 30.294174>,  <32.066341, 29.441320, 30.384163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865335, 29.345932, 30.294174>,  <31.530327, 29.186953, 30.144192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865335, 29.345932, 30.294174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019076, 0.707074, -0.706882,
		-0.546071, 0.584877, 0.599772,
		0.837522, 0.397449, 0.374956,
		32.116592, 29.465166, 30.406660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362011, 29.838276, 30.420067>,  <31.530327, 29.186953, 30.144192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362011, 29.838276, 30.420067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745420, 29.813133, 30.308868>,  <31.975466, 29.798048, 30.242149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745420, 29.813133, 30.308868>,  <31.362011, 29.838276, 30.420067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745420, 29.813133, 30.308868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115892, 0.805154, -0.581633,
		0.260389, 0.589726, 0.764474,
		0.958523, -0.062855, -0.277998,
		32.032978, 29.794277, 30.225470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643129, 30.505112, 30.233103>,  <31.362011, 29.838276, 30.420067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643129, 30.505112, 30.233103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932455, 30.276501, 30.078094>,  <32.106052, 30.139334, 29.985090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932455, 30.276501, 30.078094>,  <31.643129, 30.505112, 30.233103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932455, 30.276501, 30.078094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115847, 0.653686, -0.747846,
		0.680730, 0.496036, 0.539031,
		0.723316, -0.571527, -0.387519,
		32.149448, 30.105043, 29.961838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141117, 31.003124, 30.117077>,  <31.643129, 30.505112, 30.233103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141117, 31.003124, 30.117077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205811, 30.688484, 29.878716>,  <32.244625, 30.499701, 29.735699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205811, 30.688484, 29.878716>,  <32.141117, 31.003124, 30.117077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205811, 30.688484, 29.878716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158108, 0.616707, -0.771151,
		0.974086, 0.030503, 0.224109,
		0.161732, -0.786602, -0.595903,
		32.254330, 30.452503, 29.699945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807125, 31.080914, 29.703875>,  <32.141117, 31.003124, 30.117077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807125, 31.080914, 29.703875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563374, 30.829159, 29.510990>,  <32.417122, 30.678106, 29.395260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563374, 30.829159, 29.510990>,  <32.807125, 31.080914, 29.703875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563374, 30.829159, 29.510990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107011, 0.537325, -0.836559,
		0.785623, -0.561385, -0.260084,
		-0.609381, -0.629388, -0.482209,
		32.380558, 30.640343, 29.366327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117645, 30.892963, 29.115612>,  <32.807125, 31.080914, 29.703875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117645, 30.892963, 29.115612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732159, 30.816628, 29.040966>,  <32.500866, 30.770826, 28.996178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732159, 30.816628, 29.040966>,  <33.117645, 30.892963, 29.115612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732159, 30.816628, 29.040966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107696, 0.361697, -0.926054,
		0.244227, -0.912554, -0.328022,
		-0.963719, -0.190841, -0.186615,
		32.443043, 30.759375, 28.984982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180908, 30.708069, 28.438982>,  <33.117645, 30.892963, 29.115612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180908, 30.708069, 28.438982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789440, 30.779099, 28.480309>,  <32.554558, 30.821716, 28.505104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789440, 30.779099, 28.480309>,  <33.180908, 30.708069, 28.438982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789440, 30.779099, 28.480309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030733, 0.623778, -0.780998,
		-0.203131, -0.761163, -0.615929,
		-0.978669, 0.177574, 0.103316,
		32.495838, 30.832371, 28.511303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931808, 30.698303, 27.806780>,  <33.180908, 30.708069, 28.438982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931808, 30.698303, 27.806780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621769, 30.891266, 27.970001>,  <32.435745, 31.007044, 28.067934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621769, 30.891266, 27.970001>,  <32.931808, 30.698303, 27.806780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621769, 30.891266, 27.970001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002862, 0.648493, -0.761215,
		-0.631836, -0.588848, -0.504026,
		-0.775097, 0.482405, 0.408056,
		32.389240, 31.035988, 28.092419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313377, 30.713383, 27.302481>,  <32.931808, 30.698303, 27.806780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313377, 30.713383, 27.302481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265434, 31.013458, 27.562588>,  <32.236668, 31.193504, 27.718653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265434, 31.013458, 27.562588>,  <32.313377, 30.713383, 27.302481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265434, 31.013458, 27.562588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168532, 0.630108, -0.757998,
		-0.978381, -0.200445, 0.050906,
		-0.119861, 0.750191, 0.650267,
		32.229477, 31.238516, 27.757668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762302, 31.100590, 27.005953>,  <32.313377, 30.713383, 27.302481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762302, 31.100590, 27.005953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948862, 31.344624, 27.262161>,  <32.060799, 31.491043, 27.415886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948862, 31.344624, 27.262161>,  <31.762302, 31.100590, 27.005953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948862, 31.344624, 27.262161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049530, 0.740978, -0.669701,
		-0.883187, 0.280622, 0.375808,
		0.466398, 0.610085, 0.640523,
		32.088783, 31.527649, 27.454319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399334, 31.713213, 26.985065>,  <31.762302, 31.100590, 27.005953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399334, 31.713213, 26.985065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756472, 31.811913, 27.135769>,  <31.970755, 31.871132, 27.226191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756472, 31.811913, 27.135769>,  <31.399334, 31.713213, 26.985065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756472, 31.811913, 27.135769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036498, 0.873446, -0.485551,
		-0.448888, 0.419770, 0.788855,
		0.892842, 0.246750, 0.376759,
		32.024323, 31.885937, 27.248796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352587, 32.412704, 26.968359>,  <31.399334, 31.713213, 26.985065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352587, 32.412704, 26.968359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741301, 32.413830, 27.062702>,  <31.974529, 32.414505, 27.119308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741301, 32.413830, 27.062702>,  <31.352587, 32.412704, 26.968359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741301, 32.413830, 27.062702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099704, 0.901306, -0.421553,
		-0.213765, 0.433174, 0.875594,
		0.971784, 0.002813, 0.235857,
		32.032837, 32.414673, 27.133459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553522, 33.069324, 27.268448>,  <31.352587, 32.412704, 26.968359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553522, 33.069324, 27.268448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899797, 32.930374, 27.124275>,  <32.107563, 32.847004, 27.037771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899797, 32.930374, 27.124275>,  <31.553522, 33.069324, 27.268448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899797, 32.930374, 27.124275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113730, 0.837688, -0.534176,
		0.487489, 0.421439, 0.764685,
		0.865690, -0.347372, -0.360434,
		32.159504, 32.826164, 27.016146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143501, 33.512436, 27.542875>,  <31.553522, 33.069324, 27.268448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143501, 33.512436, 27.542875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212711, 33.316898, 27.200859>,  <32.254238, 33.199577, 26.995649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212711, 33.316898, 27.200859>,  <32.143501, 33.512436, 27.542875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212711, 33.316898, 27.200859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424758, 0.820290, -0.383021,
		0.888618, -0.296913, 0.349571,
		0.173025, -0.488843, -0.855041,
		32.264618, 33.170246, 26.944347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787853, 33.682323, 27.370377>,  <32.143501, 33.512436, 27.542875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787853, 33.682323, 27.370377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673325, 33.562824, 27.006229>,  <32.604607, 33.491123, 26.787741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673325, 33.562824, 27.006229>,  <32.787853, 33.682323, 27.370377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673325, 33.562824, 27.006229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441704, 0.802001, -0.402110,
		0.850245, -0.517247, -0.097675,
		-0.286326, -0.298748, -0.910367,
		32.587425, 33.473202, 26.733120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398106, 33.850155, 26.836136>,  <32.787853, 33.682323, 27.370377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398106, 33.850155, 26.836136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080528, 33.787216, 26.601223>,  <32.889980, 33.749454, 26.460276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080528, 33.787216, 26.601223>,  <33.398106, 33.850155, 26.836136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080528, 33.787216, 26.601223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368680, 0.643483, -0.670823,
		0.483456, -0.749114, -0.452878,
		-0.793943, -0.157346, -0.587280,
		32.842346, 33.740013, 26.425039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595188, 33.857342, 26.122910>,  <33.398106, 33.850155, 26.836136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595188, 33.857342, 26.122910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202988, 33.921803, 26.077934>,  <32.967667, 33.960480, 26.050949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202988, 33.921803, 26.077934>,  <33.595188, 33.857342, 26.122910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202988, 33.921803, 26.077934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194850, 0.723457, -0.662301,
		-0.025385, -0.671298, -0.740753,
		-0.980504, 0.161148, -0.112437,
		32.908836, 33.970146, 26.044203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485558, 33.963821, 25.382439>,  <33.595188, 33.857342, 26.122910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485558, 33.963821, 25.382439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168907, 34.126858, 25.564510>,  <32.978916, 34.224682, 25.673754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168907, 34.126858, 25.564510>,  <33.485558, 33.963821, 25.382439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168907, 34.126858, 25.564510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147855, 0.850625, -0.504555,
		-0.592842, -0.332120, -0.733645,
		-0.791629, 0.407595, 0.455181,
		32.931419, 34.249138, 25.701065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016598, 34.246601, 24.844398>,  <33.485558, 33.963821, 25.382439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016598, 34.246601, 24.844398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975243, 34.450226, 25.186199>,  <32.950428, 34.572399, 25.391279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975243, 34.450226, 25.186199>,  <33.016598, 34.246601, 24.844398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975243, 34.450226, 25.186199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208302, 0.851135, -0.481851,
		-0.972585, 0.128175, -0.194037,
		-0.103390, 0.509059, 0.854500,
		32.944225, 34.602943, 25.442549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615860, 34.793289, 24.645351>,  <33.016598, 34.246601, 24.844398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615860, 34.793289, 24.645351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825974, 34.899490, 24.968731>,  <32.952042, 34.963211, 25.162758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825974, 34.899490, 24.968731>,  <32.615860, 34.793289, 24.645351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825974, 34.899490, 24.968731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147432, 0.907312, -0.393763,
		-0.838058, 0.326028, 0.437452,
		0.525283, 0.265502, 0.808447,
		32.983559, 34.979141, 25.211266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368916, 35.531277, 24.624950>,  <32.615860, 34.793289, 24.645351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368916, 35.531277, 24.624950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693398, 35.492386, 24.855598>,  <32.888088, 35.469051, 24.993988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693398, 35.492386, 24.855598>,  <32.368916, 35.531277, 24.624950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693398, 35.492386, 24.855598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372128, 0.846474, -0.380791,
		-0.451070, 0.523477, 0.722847,
		0.811207, -0.097228, 0.576620,
		32.936760, 35.463219, 25.028584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388165, 36.129044, 24.935923>,  <32.368916, 35.531277, 24.624950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388165, 36.129044, 24.935923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751900, 35.962795, 24.943592>,  <32.970142, 35.863049, 24.948195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751900, 35.962795, 24.943592>,  <32.388165, 36.129044, 24.935923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751900, 35.962795, 24.943592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404586, 0.872572, -0.273731,
		0.097036, 0.256671, 0.961615,
		0.909337, -0.415618, 0.019174,
		33.024700, 35.838108, 24.949345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750879, 36.436920, 25.284887>,  <32.388165, 36.129044, 24.935923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750879, 36.436920, 25.284887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431143, 36.392769, 25.048626>,  <31.239302, 36.366280, 24.906870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431143, 36.392769, 25.048626>,  <31.750879, 36.436920, 25.284887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431143, 36.392769, 25.048626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286066, -0.794535, 0.535612,
		-0.528412, 0.597103, 0.603531,
		-0.799342, -0.110374, -0.590652,
		31.191339, 36.359657, 24.871429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065405, 36.370354, 25.727402>,  <31.750879, 36.436920, 25.284887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065405, 36.370354, 25.727402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975771, 36.200840, 25.376358>,  <30.921991, 36.099133, 25.165731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975771, 36.200840, 25.376358>,  <31.065405, 36.370354, 25.727402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975771, 36.200840, 25.376358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644279, -0.611241, 0.459662,
		-0.731226, 0.668427, -0.136063,
		-0.224083, -0.423780, -0.877609,
		30.908546, 36.073708, 25.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394920, 36.407848, 25.669352>,  <31.065405, 36.370354, 25.727402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394920, 36.407848, 25.669352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499371, 36.117264, 25.415085>,  <30.562040, 35.942913, 25.262524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499371, 36.117264, 25.415085>,  <30.394920, 36.407848, 25.669352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499371, 36.117264, 25.415085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673485, -0.608865, 0.419168,
		-0.691544, 0.318659, -0.648247,
		0.261123, -0.726457, -0.635668,
		30.577707, 35.899326, 25.224384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767799, 36.192146, 25.385593>,  <30.394920, 36.407848, 25.669352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767799, 36.192146, 25.385593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030876, 35.895283, 25.333984>,  <30.188723, 35.717167, 25.303019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030876, 35.895283, 25.333984>,  <29.767799, 36.192146, 25.385593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030876, 35.895283, 25.333984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587176, -0.612377, 0.529357,
		-0.471877, -0.272394, -0.838531,
		0.657690, -0.742156, -0.129024,
		30.228184, 35.672634, 25.295277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428888, 35.697964, 25.685884>,  <29.767799, 36.192146, 25.385593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428888, 35.697964, 25.685884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750784, 35.469925, 25.619690>,  <29.943920, 35.333103, 25.579973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750784, 35.469925, 25.619690>,  <29.428888, 35.697964, 25.685884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750784, 35.469925, 25.619690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386622, -0.714875, 0.582647,
		-0.450467, -0.404898, -0.795699,
		0.804737, -0.570098, -0.165485,
		29.992205, 35.298897, 25.570044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151926, 34.952385, 25.720036>,  <29.428888, 35.697964, 25.685884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151926, 34.952385, 25.720036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542927, 34.965141, 25.803436>,  <29.777527, 34.972794, 25.853476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542927, 34.965141, 25.803436>,  <29.151926, 34.952385, 25.720036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542927, 34.965141, 25.803436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106017, -0.780280, 0.616379,
		0.182346, -0.624617, -0.759344,
		0.977502, 0.031891, 0.208501,
		29.836178, 34.974709, 25.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249117, 34.263447, 25.827459>,  <29.151926, 34.952385, 25.720036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249117, 34.263447, 25.827459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542955, 34.457546, 26.017155>,  <29.719259, 34.574005, 26.130972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542955, 34.457546, 26.017155>,  <29.249117, 34.263447, 25.827459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542955, 34.457546, 26.017155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056753, -0.652555, 0.755613,
		0.676128, -0.581985, -0.451825,
		0.734595, 0.485249, 0.474240,
		29.763334, 34.603119, 26.159426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703083, 33.687645, 26.011993>,  <29.249117, 34.263447, 25.827459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703083, 33.687645, 26.011993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806192, 34.004620, 26.233116>,  <29.868057, 34.194805, 26.365789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806192, 34.004620, 26.233116>,  <29.703083, 33.687645, 26.011993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806192, 34.004620, 26.233116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101559, -0.591194, 0.800110,
		0.960853, -0.150105, -0.232873,
		0.257774, 0.792438, 0.552806,
		29.883524, 34.242352, 26.398958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306038, 33.519588, 26.260435>,  <29.703083, 33.687645, 26.011993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306038, 33.519588, 26.260435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150791, 33.805782, 26.492798>,  <30.057644, 33.977497, 26.632215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150791, 33.805782, 26.492798>,  <30.306038, 33.519588, 26.260435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150791, 33.805782, 26.492798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000156, -0.630369, 0.776296,
		0.921611, 0.301202, 0.244768,
		-0.388116, 0.715480, 0.580908,
		30.034357, 34.020428, 26.667070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782263, 33.549873, 26.868784>,  <30.306038, 33.519588, 26.260435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782263, 33.549873, 26.868784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461130, 33.743874, 27.007484>,  <30.268450, 33.860271, 27.090704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461130, 33.743874, 27.007484>,  <30.782263, 33.549873, 26.868784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461130, 33.743874, 27.007484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024291, -0.607724, 0.793777,
		0.595708, 0.628848, 0.499682,
		-0.802833, 0.484997, 0.346750,
		30.220280, 33.889374, 27.111509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923861, 33.675262, 27.544659>,  <30.782263, 33.549873, 26.868784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923861, 33.675262, 27.544659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525692, 33.704529, 27.520046>,  <30.286791, 33.722088, 27.505280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525692, 33.704529, 27.520046>,  <30.923861, 33.675262, 27.544659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525692, 33.704529, 27.520046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093710, -0.619376, 0.779482,
		0.018925, 0.781678, 0.623396,
		-0.995420, 0.073170, -0.061529,
		30.227066, 33.726479, 27.501587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720661, 33.833279, 28.286516>,  <30.923861, 33.675262, 27.544659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720661, 33.833279, 28.286516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369114, 33.730545, 28.125706>,  <30.158186, 33.668903, 28.029221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369114, 33.730545, 28.125706>,  <30.720661, 33.833279, 28.286516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369114, 33.730545, 28.125706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218814, -0.531812, 0.818105,
		-0.423922, 0.806976, 0.411193,
		-0.878869, -0.256838, -0.402025,
		30.105453, 33.653492, 28.005098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341772, 33.793709, 28.827200>,  <30.720661, 33.833279, 28.286516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341772, 33.793709, 28.827200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161444, 33.550743, 28.565571>,  <30.053247, 33.404964, 28.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161444, 33.550743, 28.565571>,  <30.341772, 33.793709, 28.827200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161444, 33.550743, 28.565571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204653, -0.642907, 0.738097,
		-0.868837, 0.466608, 0.165527,
		-0.450820, -0.607411, -0.654074,
		30.026197, 33.368519, 28.369349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704905, 33.658131, 29.145309>,  <30.341772, 33.793709, 28.827200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704905, 33.658131, 29.145309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787756, 33.366989, 28.883827>,  <29.837467, 33.192307, 28.726938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787756, 33.366989, 28.883827>,  <29.704905, 33.658131, 29.145309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787756, 33.366989, 28.883827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269186, -0.684806, 0.677185,
		-0.940551, 0.035704, -0.337771,
		0.207130, -0.727850, -0.653706,
		29.849895, 33.148636, 28.687716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108418, 33.179737, 29.285809>,  <29.704905, 33.658131, 29.145309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108418, 33.179737, 29.285809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391094, 32.956783, 29.111496>,  <29.560701, 32.823009, 29.006908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391094, 32.956783, 29.111496>,  <29.108418, 33.179737, 29.285809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391094, 32.956783, 29.111496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370446, -0.816253, 0.443284,
		-0.602789, -0.151831, -0.783321,
		0.706692, -0.557385, -0.435783,
		29.603102, 32.789566, 28.980761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763603, 32.549809, 29.153624>,  <29.108418, 33.179737, 29.285809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763603, 32.549809, 29.153624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156454, 32.474518, 29.154034>,  <29.392164, 32.429344, 29.154280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156454, 32.474518, 29.154034>,  <28.763603, 32.549809, 29.153624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156454, 32.474518, 29.154034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144897, -0.752550, 0.642396,
		-0.120145, -0.631062, -0.766372,
		0.982125, -0.188225, 0.001024,
		29.451092, 32.418049, 29.154341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824232, 31.842470, 29.323357>,  <28.763603, 32.549809, 29.153624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824232, 31.842470, 29.323357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213881, 31.916248, 29.375618>,  <29.447670, 31.960514, 29.406975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213881, 31.916248, 29.375618>,  <28.824232, 31.842470, 29.323357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213881, 31.916248, 29.375618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048126, -0.734026, 0.677414,
		0.220848, -0.653595, -0.723906,
		0.974120, 0.184444, 0.130653,
		29.506117, 31.971582, 29.414814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224075, 31.136543, 29.224133>,  <28.824232, 31.842470, 29.323357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224075, 31.136543, 29.224133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402700, 31.416218, 29.447460>,  <29.509876, 31.584023, 29.581457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402700, 31.416218, 29.447460>,  <29.224075, 31.136543, 29.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402700, 31.416218, 29.447460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153545, -0.674620, 0.722020,
		0.881480, -0.236700, -0.408616,
		0.446562, 0.699186, 0.558320,
		29.536669, 31.625973, 29.614956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770832, 30.846788, 29.375160>,  <29.224075, 31.136543, 29.224133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770832, 30.846788, 29.375160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734837, 31.136585, 29.648514>,  <29.713240, 31.310463, 29.812525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734837, 31.136585, 29.648514>,  <29.770832, 30.846788, 29.375160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734837, 31.136585, 29.648514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170086, -0.664907, 0.727302,
		0.981312, 0.181682, -0.063393,
		-0.089988, 0.724493, 0.683383,
		29.707840, 31.353933, 29.853529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339596, 30.710560, 29.818943>,  <29.770832, 30.846788, 29.375160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339596, 30.710560, 29.818943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082548, 30.940388, 30.021690>,  <29.928320, 31.078283, 30.143339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082548, 30.940388, 30.021690>,  <30.339596, 30.710560, 29.818943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082548, 30.940388, 30.021690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111414, -0.584438, 0.803753,
		0.758043, 0.572978, 0.311555,
		-0.642618, 0.574568, 0.506867,
		29.889763, 31.112759, 30.173750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687954, 30.692728, 30.463926>,  <30.339596, 30.710560, 29.818943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687954, 30.692728, 30.463926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317610, 30.822220, 30.541885>,  <30.095404, 30.899914, 30.588661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317610, 30.822220, 30.541885>,  <30.687954, 30.692728, 30.463926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317610, 30.822220, 30.541885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061450, -0.637910, 0.767655,
		0.372839, 0.698764, 0.610508,
		-0.925859, 0.323728, 0.194899,
		30.039852, 30.919338, 30.600355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662262, 30.900856, 31.197958>,  <30.687954, 30.692728, 30.463926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662262, 30.900856, 31.197958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283133, 30.826447, 31.094402>,  <30.055655, 30.781801, 31.032269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283133, 30.826447, 31.094402>,  <30.662262, 30.900856, 31.197958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283133, 30.826447, 31.094402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038573, -0.739205, 0.672375,
		-0.316448, 0.647280, 0.693462,
		-0.947825, -0.186022, -0.258887,
		29.998785, 30.770639, 31.016737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296766, 30.868715, 31.832428>,  <30.662262, 30.900856, 31.197958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296766, 30.868715, 31.832428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068512, 30.674984, 31.567158>,  <29.931561, 30.558744, 31.407995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068512, 30.674984, 31.567158>,  <30.296766, 30.868715, 31.832428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068512, 30.674984, 31.567158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023296, -0.816788, 0.576468,
		-0.820874, 0.313503, 0.477369,
		-0.570634, -0.484328, -0.663176,
		29.897322, 30.529686, 31.368204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807531, 30.516951, 32.199177>,  <30.296766, 30.868715, 31.832428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807531, 30.516951, 32.199177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795670, 30.333572, 31.843887>,  <29.788553, 30.223545, 31.630713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795670, 30.333572, 31.843887>,  <29.807531, 30.516951, 32.199177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795670, 30.333572, 31.843887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003862, -0.888560, 0.458745,
		-0.999553, 0.017034, 0.024578,
		-0.029653, -0.458445, -0.888228,
		29.786774, 30.196039, 31.577419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282301, 29.911398, 32.248154>,  <29.807531, 30.516951, 32.199177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282301, 29.911398, 32.248154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483515, 29.783199, 31.927097>,  <29.604242, 29.706280, 31.734463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483515, 29.783199, 31.927097>,  <29.282301, 29.911398, 32.248154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483515, 29.783199, 31.927097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138638, -0.946597, 0.291092,
		-0.853073, -0.035152, -0.520605,
		0.503036, -0.320498, -0.802643,
		29.634426, 29.687050, 31.686304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915266, 29.379038, 32.008400>,  <29.282301, 29.911398, 32.248154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915266, 29.379038, 32.008400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278524, 29.313545, 31.854279>,  <29.496479, 29.274250, 31.761805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278524, 29.313545, 31.854279>,  <28.915266, 29.379038, 32.008400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278524, 29.313545, 31.854279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053195, -0.958019, 0.281725,
		-0.415259, -0.235351, -0.878732,
		0.908147, -0.163733, -0.385307,
		29.550968, 29.264425, 31.738686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728642, 28.800835, 31.675793>,  <28.915266, 29.379038, 32.008400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728642, 28.800835, 31.675793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121349, 28.788605, 31.750835>,  <29.356974, 28.781267, 31.795860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121349, 28.788605, 31.750835>,  <28.728642, 28.800835, 31.675793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121349, 28.788605, 31.750835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049173, -0.994233, 0.095304,
		0.183612, -0.102792, -0.977610,
		0.981768, -0.030573, 0.187608,
		29.415880, 28.779432, 31.807117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031281, 28.353125, 31.167269>,  <28.728642, 28.800835, 31.675793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031281, 28.353125, 31.167269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299755, 28.363903, 31.463589>,  <29.460840, 28.370371, 31.641380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299755, 28.363903, 31.463589>,  <29.031281, 28.353125, 31.167269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299755, 28.363903, 31.463589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009268, -0.998956, 0.044733,
		0.741231, -0.036890, -0.670236,
		0.671186, 0.026946, 0.740799,
		29.501110, 28.371986, 31.685829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495815, 27.820608, 31.015032>,  <29.031281, 28.353125, 31.167269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495815, 27.820608, 31.015032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604033, 27.895432, 31.392776>,  <29.668962, 27.940325, 31.619423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604033, 27.895432, 31.392776>,  <29.495815, 27.820608, 31.015032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604033, 27.895432, 31.392776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035768, -0.982217, 0.184309,
		0.962044, -0.016085, -0.272421,
		0.270541, 0.187057, 0.944361,
		29.685194, 27.951550, 31.676085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215828, 27.426474, 31.158947>,  <29.495815, 27.820608, 31.015032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215828, 27.426474, 31.158947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018578, 27.502991, 31.498413>,  <29.900227, 27.548901, 31.702093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018578, 27.502991, 31.498413>,  <30.215828, 27.426474, 31.158947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018578, 27.502991, 31.498413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271776, -0.892825, 0.359167,
		0.826416, 0.407762, 0.388286,
		-0.493127, 0.191295, 0.848665,
		29.870640, 27.560379, 31.753012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657581, 27.186255, 31.595858>,  <30.215828, 27.426474, 31.158947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657581, 27.186255, 31.595858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309383, 27.209236, 31.791382>,  <30.100464, 27.223024, 31.908697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309383, 27.209236, 31.791382>,  <30.657581, 27.186255, 31.595858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309383, 27.209236, 31.791382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145679, -0.918584, 0.367397,
		0.470122, 0.391027, 0.791254,
		-0.870496, 0.057452, 0.488811,
		30.048235, 27.226471, 31.938025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805525, 26.988014, 32.238239>,  <30.657581, 27.186255, 31.595858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805525, 26.988014, 32.238239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409811, 26.934101, 32.215797>,  <30.172382, 26.901752, 32.202332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409811, 26.934101, 32.215797>,  <30.805525, 26.988014, 32.238239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409811, 26.934101, 32.215797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094253, -0.883105, 0.459611,
		-0.111492, 0.449398, 0.886347,
		-0.989286, -0.134783, -0.056102,
		30.113026, 26.893665, 32.198967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481516, 26.708975, 32.922024>,  <30.805525, 26.988014, 32.238239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481516, 26.708975, 32.922024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238014, 26.603291, 32.622795>,  <30.091913, 26.539879, 32.443256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238014, 26.603291, 32.622795>,  <30.481516, 26.708975, 32.922024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238014, 26.603291, 32.622795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055313, -0.954756, 0.292200,
		-0.791429, 0.136499, 0.595825,
		-0.608753, -0.264212, -0.748072,
		30.055387, 26.524027, 32.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929199, 26.243717, 33.209438>,  <30.481516, 26.708975, 32.922024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929199, 26.243717, 33.209438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937897, 26.166660, 32.817028>,  <29.943115, 26.120426, 32.581581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937897, 26.166660, 32.817028>,  <29.929199, 26.243717, 33.209438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937897, 26.166660, 32.817028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082077, -0.977604, 0.193789,
		-0.996389, -0.084734, -0.005446,
		0.021745, -0.192642, -0.981028,
		29.944420, 26.108868, 32.522720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446741, 25.616247, 33.160820>,  <29.929199, 26.243717, 33.209438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446741, 25.616247, 33.160820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663950, 25.631046, 32.825260>,  <29.794275, 25.639925, 32.623924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663950, 25.631046, 32.825260>,  <29.446741, 25.616247, 33.160820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663950, 25.631046, 32.825260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107323, -0.993894, 0.025640,
		-0.832830, -0.103957, -0.543679,
		0.543024, 0.036996, -0.838902,
		29.826857, 25.642145, 32.573589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343271, 24.874699, 32.879532>,  <29.446741, 25.616247, 33.160820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343271, 24.874699, 32.879532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597849, 24.911819, 32.573246>,  <29.750595, 24.934092, 32.389473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597849, 24.911819, 32.573246>,  <29.343271, 24.874699, 32.879532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597849, 24.911819, 32.573246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439849, -0.859168, 0.261464,
		-0.633615, -0.503208, -0.587633,
		0.636446, 0.092802, -0.765718,
		29.788782, 24.939661, 32.343533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257769, 24.309710, 32.400101>,  <29.343271, 24.874699, 32.879532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257769, 24.309710, 32.400101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625767, 24.466244, 32.391510>,  <29.846565, 24.560163, 32.386356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625767, 24.466244, 32.391510>,  <29.257769, 24.309710, 32.400101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625767, 24.466244, 32.391510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378986, -0.874328, 0.303185,
		0.099871, -0.287067, -0.952690,
		0.919998, 0.391335, -0.021475,
		29.901766, 24.583645, 32.385067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716330, 23.872927, 32.031109>,  <29.257769, 24.309710, 32.400101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716330, 23.872927, 32.031109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916782, 24.098095, 32.294010>,  <30.037054, 24.233196, 32.451752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916782, 24.098095, 32.294010>,  <29.716330, 23.872927, 32.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916782, 24.098095, 32.294010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381721, -0.825419, 0.415900,
		0.776632, 0.042468, -0.628522,
		0.501131, 0.562921, 0.657258,
		30.067122, 24.266972, 32.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154552, 23.677567, 31.613148>,  <29.716330, 23.872927, 32.031109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154552, 23.677567, 31.613148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126348, 23.544945, 31.236828>,  <29.109426, 23.465372, 31.011036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126348, 23.544945, 31.236828>,  <29.154552, 23.677567, 31.613148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126348, 23.544945, 31.236828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028330, 0.942100, -0.334134,
		0.997109, -0.050212, -0.057034,
		-0.070510, -0.331552, -0.940798,
		29.105196, 23.445478, 30.954588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757744, 23.972836, 31.159241>,  <29.154552, 23.677567, 31.613148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757744, 23.972836, 31.159241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458876, 23.871231, 30.913570>,  <29.279554, 23.810268, 30.766169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458876, 23.871231, 30.913570>,  <29.757744, 23.972836, 31.159241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458876, 23.871231, 30.913570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080433, 0.882736, -0.462933,
		0.659747, -0.395290, -0.639124,
		-0.747171, -0.254012, -0.614178,
		29.234724, 23.795027, 30.729317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005817, 24.196873, 30.577263>,  <29.757744, 23.972836, 31.159241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005817, 24.196873, 30.577263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616259, 24.181000, 30.487862>,  <29.382524, 24.171476, 30.434221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616259, 24.181000, 30.487862>,  <30.005817, 24.196873, 30.577263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616259, 24.181000, 30.487862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123694, 0.732812, -0.669093,
		0.190337, -0.679273, -0.708774,
		-0.973895, -0.039682, -0.223504,
		29.324091, 24.169096, 30.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113821, 24.202362, 29.833035>,  <30.005817, 24.196873, 30.577263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113821, 24.202362, 29.833035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746946, 24.302578, 29.956970>,  <29.526821, 24.362707, 30.031332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746946, 24.302578, 29.956970>,  <30.113821, 24.202362, 29.833035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746946, 24.302578, 29.956970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062787, 0.858750, -0.508533,
		-0.393479, -0.446966, -0.803365,
		-0.917187, 0.250538, 0.309837,
		29.471790, 24.377739, 30.049921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723736, 24.533693, 29.243505>,  <30.113821, 24.202362, 29.833035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723736, 24.533693, 29.243505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523224, 24.660679, 29.565483>,  <29.402918, 24.736870, 29.758671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523224, 24.660679, 29.565483>,  <29.723736, 24.533693, 29.243505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523224, 24.660679, 29.565483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059962, 0.940773, -0.333693,
		-0.863206, -0.119007, -0.490625,
		-0.501278, 0.317464, 0.804945,
		29.372841, 24.755919, 29.806967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418749, 25.127579, 28.932531>,  <29.723736, 24.533693, 29.243505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418749, 25.127579, 28.932531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413294, 25.165260, 29.330715>,  <29.410021, 25.187868, 29.569626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413294, 25.165260, 29.330715>,  <29.418749, 25.127579, 28.932531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413294, 25.165260, 29.330715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264382, 0.960462, -0.087268,
		-0.964322, 0.261992, -0.038003,
		-0.013637, 0.094202, 0.995460,
		29.409203, 25.193521, 29.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955715, 25.696346, 29.007353>,  <29.418749, 25.127579, 28.932531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955715, 25.696346, 29.007353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181032, 25.649384, 29.334503>,  <29.316221, 25.621206, 29.530792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181032, 25.649384, 29.334503>,  <28.955715, 25.696346, 29.007353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181032, 25.649384, 29.334503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211601, 0.977341, -0.005435,
		-0.798704, 0.176124, 0.575371,
		0.563291, -0.117408, 0.817875,
		29.350019, 25.614161, 29.579866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845551, 26.285505, 29.376900>,  <28.955715, 25.696346, 29.007353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845551, 26.285505, 29.376900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192183, 26.146206, 29.519875>,  <29.400162, 26.062626, 29.605659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192183, 26.146206, 29.519875>,  <28.845551, 26.285505, 29.376900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192183, 26.146206, 29.519875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308899, 0.936870, 0.163878,
		-0.391943, -0.031601, 0.919447,
		0.866581, -0.348247, 0.357438,
		29.452156, 26.041731, 29.627106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986485, 26.727760, 29.908682>,  <28.845551, 26.285505, 29.376900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986485, 26.727760, 29.908682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345896, 26.583549, 29.808548>,  <29.561543, 26.497023, 29.748468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345896, 26.583549, 29.808548>,  <28.986485, 26.727760, 29.908682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345896, 26.583549, 29.808548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371736, 0.928335, -0.002701,
		0.233368, -0.090632, 0.968156,
		0.898527, -0.360529, -0.250335,
		29.615454, 26.475391, 29.733448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512360, 27.219051, 30.181133>,  <28.986485, 26.727760, 29.908682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512360, 27.219051, 30.181133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709969, 27.000568, 29.910549>,  <29.828533, 26.869478, 29.748199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709969, 27.000568, 29.910549>,  <29.512360, 27.219051, 30.181133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709969, 27.000568, 29.910549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497312, 0.815712, -0.295458,
		0.713178, -0.190449, 0.674615,
		0.494022, -0.546208, -0.676461,
		29.858175, 26.836706, 29.707611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174015, 27.506723, 30.209240>,  <29.512360, 27.219051, 30.181133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174015, 27.506723, 30.209240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162079, 27.293369, 29.871101>,  <30.154917, 27.165358, 29.668219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162079, 27.293369, 29.871101>,  <30.174015, 27.506723, 30.209240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162079, 27.293369, 29.871101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499027, 0.724834, -0.474961,
		0.866072, -0.436024, 0.244544,
		-0.029841, -0.533384, -0.845347,
		30.153126, 27.133354, 29.617496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749567, 27.629007, 29.887533>,  <30.174015, 27.506723, 30.209240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749567, 27.629007, 29.887533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529343, 27.498417, 29.580212>,  <30.397207, 27.420063, 29.395819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529343, 27.498417, 29.580212>,  <30.749567, 27.629007, 29.887533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529343, 27.498417, 29.580212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302732, 0.779620, -0.548221,
		0.777953, -0.534429, -0.330416,
		-0.550585, -0.326463, -0.768296,
		30.364174, 27.400473, 29.349720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126158, 27.760296, 29.285692>,  <30.749567, 27.629007, 29.887533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126158, 27.760296, 29.285692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744890, 27.729572, 29.168686>,  <30.516129, 27.711138, 29.098482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744890, 27.729572, 29.168686>,  <31.126158, 27.760296, 29.285692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744890, 27.729572, 29.168686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120229, 0.791258, -0.599546,
		0.277507, -0.606639, -0.744970,
		-0.953171, -0.076811, -0.292515,
		30.458939, 27.706530, 29.080931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170826, 27.992081, 28.611921>,  <31.126158, 27.760296, 29.285692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170826, 27.992081, 28.611921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786539, 28.003899, 28.722305>,  <30.555967, 28.010988, 28.788536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786539, 28.003899, 28.722305>,  <31.170826, 27.992081, 28.611921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786539, 28.003899, 28.722305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120613, 0.851071, -0.511009,
		-0.249959, -0.524219, -0.814073,
		-0.960715, 0.029543, 0.275961,
		30.498325, 28.012762, 28.805094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760935, 28.145334, 28.005001>,  <31.170826, 27.992081, 28.611921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760935, 28.145334, 28.005001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500776, 28.212799, 28.301254>,  <30.344681, 28.253277, 28.479006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500776, 28.212799, 28.301254>,  <30.760935, 28.145334, 28.005001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500776, 28.212799, 28.301254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385147, 0.767181, -0.512928,
		-0.654710, -0.618860, -0.434013,
		-0.650397, 0.168661, 0.740633,
		30.305656, 28.263397, 28.523445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194548, 28.308023, 27.690931>,  <30.760935, 28.145334, 28.005001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194548, 28.308023, 27.690931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122488, 28.453110, 28.056660>,  <30.079252, 28.540161, 28.276096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122488, 28.453110, 28.056660>,  <30.194548, 28.308023, 27.690931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122488, 28.453110, 28.056660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391061, 0.826501, -0.404928,
		-0.902561, -0.430503, -0.007051,
		-0.180150, 0.362715, 0.914321,
		30.068443, 28.561924, 28.330956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485142, 28.488590, 27.743267>,  <30.194548, 28.308023, 27.690931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485142, 28.488590, 27.743267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678961, 28.708672, 28.015293>,  <29.795252, 28.840719, 28.178509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678961, 28.708672, 28.015293>,  <29.485142, 28.488590, 27.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678961, 28.708672, 28.015293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209388, 0.827779, -0.520518,
		-0.849335, 0.109818, 0.516305,
		0.484548, 0.550202, 0.680067,
		29.824326, 28.873732, 28.219313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981466, 28.978788, 27.951382>,  <29.485142, 28.488590, 27.743267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981466, 28.978788, 27.951382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330425, 29.137482, 28.065590>,  <29.539801, 29.232698, 28.134115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330425, 29.137482, 28.065590>,  <28.981466, 28.978788, 27.951382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330425, 29.137482, 28.065590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236632, 0.853916, -0.463500,
		-0.427697, 0.336793, 0.838836,
		0.872399, 0.396733, 0.285522,
		29.592146, 29.256502, 28.151247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843409, 29.560459, 28.286423>,  <28.981466, 28.978788, 27.951382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843409, 29.560459, 28.286423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221302, 29.591637, 28.159046>,  <29.448038, 29.610344, 28.082621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221302, 29.591637, 28.159046>,  <28.843409, 29.560459, 28.286423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221302, 29.591637, 28.159046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259017, 0.772897, -0.579258,
		0.200971, 0.629725, 0.750371,
		0.944733, 0.077945, -0.318440,
		29.504723, 29.615021, 28.063515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906015, 30.199650, 28.448626>,  <28.843409, 29.560459, 28.286423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906015, 30.199650, 28.448626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200317, 30.108429, 28.193546>,  <29.376898, 30.053698, 28.040499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200317, 30.108429, 28.193546>,  <28.906015, 30.199650, 28.448626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200317, 30.108429, 28.193546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152940, 0.861330, -0.484480,
		0.659755, 0.453987, 0.598848,
		0.735753, -0.228050, -0.637699,
		29.421043, 30.040014, 28.002237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240444, 30.882334, 28.323732>,  <28.906015, 30.199650, 28.448626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240444, 30.882334, 28.323732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322035, 30.644585, 28.012577>,  <29.370989, 30.501934, 27.825884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322035, 30.644585, 28.012577>,  <29.240444, 30.882334, 28.323732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322035, 30.644585, 28.012577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145955, 0.767251, -0.624519,
		0.968034, 0.240925, 0.069750,
		0.203978, -0.594375, -0.777889,
		29.383228, 30.466272, 27.779211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820490, 31.223446, 27.991415>,  <29.240444, 30.882334, 28.323732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820490, 31.223446, 27.991415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647734, 30.990410, 27.716007>,  <29.544079, 30.850588, 27.550762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647734, 30.990410, 27.716007>,  <29.820490, 31.223446, 27.991415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647734, 30.990410, 27.716007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121595, 0.794031, -0.595592,
		0.893691, -0.173511, -0.413776,
		-0.431892, -0.582589, -0.688521,
		29.518166, 30.815634, 27.509451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128933, 31.484350, 27.334364>,  <29.820490, 31.223446, 27.991415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128933, 31.484350, 27.334364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820196, 31.247932, 27.240620>,  <29.634954, 31.106081, 27.184374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820196, 31.247932, 27.240620>,  <30.128933, 31.484350, 27.334364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820196, 31.247932, 27.240620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273946, 0.641769, -0.716301,
		0.573770, -0.488670, -0.657259,
		-0.771843, -0.591045, -0.234359,
		29.588644, 31.070620, 27.170313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137873, 31.464281, 26.669849>,  <30.128933, 31.484350, 27.334364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137873, 31.464281, 26.669849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763817, 31.391483, 26.791435>,  <29.539383, 31.347805, 26.864388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763817, 31.391483, 26.791435>,  <30.137873, 31.464281, 26.669849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763817, 31.391483, 26.791435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354003, 0.514240, -0.781178,
		-0.014139, -0.838114, -0.545312,
		-0.935138, -0.181997, 0.303966,
		29.483276, 31.336884, 26.882626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813829, 31.294792, 26.069359>,  <30.137873, 31.464281, 26.669849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813829, 31.294792, 26.069359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517815, 31.371716, 26.327152>,  <29.340206, 31.417870, 26.481829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517815, 31.371716, 26.327152>,  <29.813829, 31.294792, 26.069359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517815, 31.371716, 26.327152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510083, 0.464077, -0.724188,
		-0.438359, -0.864667, -0.245341,
		-0.740039, 0.192310, 0.644484,
		29.295803, 31.429409, 26.520498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192081, 31.159386, 25.787144>,  <29.813829, 31.294792, 26.069359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192081, 31.159386, 25.787144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084497, 31.428974, 26.062366>,  <29.019947, 31.590727, 26.227501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084497, 31.428974, 26.062366>,  <29.192081, 31.159386, 25.787144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084497, 31.428974, 26.062366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446086, 0.545971, -0.709170,
		-0.853620, -0.497671, 0.153805,
		-0.268960, 0.673972, 0.688057,
		29.003809, 31.631166, 26.268784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455086, 31.395346, 25.724771>,  <29.192081, 31.159386, 25.787144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455086, 31.395346, 25.724771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642109, 31.682190, 25.931515>,  <28.754322, 31.854296, 26.055561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642109, 31.682190, 25.931515>,  <28.455086, 31.395346, 25.724771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642109, 31.682190, 25.931515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421112, 0.694790, -0.583037,
		-0.777209, 0.054948, 0.626839,
		0.467558, 0.717111, 0.516858,
		28.782375, 31.897324, 26.086573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999660, 31.849150, 25.701897>,  <28.455086, 31.395346, 25.724771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999660, 31.849150, 25.701897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325705, 32.064743, 25.786835>,  <28.521332, 32.194099, 25.837797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325705, 32.064743, 25.786835>,  <27.999660, 31.849150, 25.701897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325705, 32.064743, 25.786835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321141, 0.725483, -0.608722,
		-0.482146, 0.427982, 0.764439,
		0.815110, 0.538985, 0.212346,
		28.570238, 32.226440, 25.850538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769363, 32.531475, 25.698317>,  <27.999660, 31.849150, 25.701897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769363, 32.531475, 25.698317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164167, 32.595589, 25.702663>,  <28.401051, 32.634056, 25.705271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164167, 32.595589, 25.702663>,  <27.769363, 32.531475, 25.698317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164167, 32.595589, 25.702663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136421, 0.871940, -0.470223,
		-0.084843, 0.462633, 0.882481,
		0.987011, 0.160284, 0.010865,
		28.460270, 32.643673, 25.705923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828123, 33.225723, 25.938555>,  <27.769363, 32.531475, 25.698317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828123, 33.225723, 25.938555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152536, 33.110180, 25.735069>,  <28.347183, 33.040855, 25.612978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152536, 33.110180, 25.735069>,  <27.828123, 33.225723, 25.938555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152536, 33.110180, 25.735069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135069, 0.753639, -0.643261,
		0.569196, 0.590417, 0.572209,
		0.811032, -0.288854, -0.508715,
		28.395845, 33.023525, 25.582455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054012, 33.809605, 25.598270>,  <27.828123, 33.225723, 25.938555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054012, 33.809605, 25.598270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237188, 33.547977, 25.357445>,  <28.347094, 33.390999, 25.212950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237188, 33.547977, 25.357445>,  <28.054012, 33.809605, 25.598270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237188, 33.547977, 25.357445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005665, 0.679384, -0.733761,
		0.888965, 0.332607, 0.314822,
		0.457939, -0.654072, -0.602064,
		28.374571, 33.351757, 25.176825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632284, 34.164421, 25.368744>,  <28.054012, 33.809605, 25.598270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632284, 34.164421, 25.368744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548147, 33.867981, 25.113708>,  <28.497665, 33.690117, 24.960688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548147, 33.867981, 25.113708>,  <28.632284, 34.164421, 25.368744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548147, 33.867981, 25.113708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054506, 0.642276, -0.764533,
		0.976107, -0.195568, -0.094704,
		-0.210344, -0.741104, -0.637589,
		28.485044, 33.645649, 24.922432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070612, 34.374928, 24.952271>,  <28.632284, 34.164421, 25.368744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070612, 34.374928, 24.952271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852488, 34.118347, 24.736427>,  <28.721613, 33.964397, 24.606922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852488, 34.118347, 24.736427>,  <29.070612, 34.374928, 24.952271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852488, 34.118347, 24.736427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006964, 0.640252, -0.768133,
		0.838206, -0.422628, -0.344668,
		-0.545309, -0.641454, -0.539606,
		28.688894, 33.925911, 24.574545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388796, 34.182667, 24.298800>,  <29.070612, 34.374928, 24.952271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388796, 34.182667, 24.298800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993378, 34.138741, 24.257378>,  <28.756126, 34.112385, 24.232525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993378, 34.138741, 24.257378>,  <29.388796, 34.182667, 24.298800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993378, 34.138741, 24.257378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037980, 0.483012, -0.874790,
		0.146082, -0.868700, -0.473307,
		-0.988543, -0.109815, -0.103553,
		28.696815, 34.105797, 24.226313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327227, 33.941242, 23.636339>,  <29.388796, 34.182667, 24.298800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327227, 33.941242, 23.636339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962591, 34.059044, 23.751072>,  <28.743809, 34.129723, 23.819912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962591, 34.059044, 23.751072>,  <29.327227, 33.941242, 23.636339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962591, 34.059044, 23.751072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134547, 0.445561, -0.885083,
		-0.388459, -0.845426, -0.366545,
		-0.911590, 0.294501, 0.286832,
		28.689114, 34.147392, 23.837122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902079, 33.820988, 22.978775>,  <29.327227, 33.941242, 23.636339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902079, 33.820988, 22.978775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737913, 34.092010, 23.222900>,  <28.639414, 34.254623, 23.369375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737913, 34.092010, 23.222900>,  <28.902079, 33.820988, 22.978775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737913, 34.092010, 23.222900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223714, 0.574012, -0.787694,
		-0.884033, -0.459814, -0.084003,
		-0.410412, 0.677555, 0.610313,
		28.614790, 34.295277, 23.405994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090712, 33.880245, 22.889809>,  <28.902079, 33.820988, 22.978775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090712, 33.880245, 22.889809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236952, 34.213573, 23.055656>,  <28.324696, 34.413570, 23.155165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236952, 34.213573, 23.055656>,  <28.090712, 33.880245, 22.889809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236952, 34.213573, 23.055656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234327, 0.513515, -0.825466,
		-0.900793, 0.204634, 0.383011,
		0.365600, 0.833323, 0.414619,
		28.346632, 34.463570, 23.180042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880741, 34.317059, 22.497210>,  <28.090712, 33.880245, 22.889809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880741, 34.317059, 22.497210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110947, 34.568779, 22.706116>,  <28.249069, 34.719810, 22.831459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110947, 34.568779, 22.706116>,  <27.880741, 34.317059, 22.497210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110947, 34.568779, 22.706116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062465, 0.670588, -0.739196,
		-0.815404, 0.392794, 0.425241,
		0.575513, 0.629305, 0.522264,
		28.283600, 34.757572, 22.862795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549192, 34.967728, 22.464699>,  <27.880741, 34.317059, 22.497210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549192, 34.967728, 22.464699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938892, 35.039104, 22.519836>,  <28.172712, 35.081932, 22.552919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938892, 35.039104, 22.519836>,  <27.549192, 34.967728, 22.464699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938892, 35.039104, 22.519836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008731, 0.640721, -0.767724,
		-0.225312, 0.746750, 0.625779,
		0.974248, 0.178441, 0.137843,
		28.231167, 35.092636, 22.561190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619808, 35.701572, 22.196590>,  <27.549192, 34.967728, 22.464699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619808, 35.701572, 22.196590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999304, 35.575356, 22.203861>,  <28.227001, 35.499626, 22.208223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999304, 35.575356, 22.203861>,  <27.619808, 35.701572, 22.196590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999304, 35.575356, 22.203861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211505, 0.591089, -0.778382,
		0.234865, 0.742326, 0.627527,
		0.948738, -0.315540, 0.018179,
		28.283926, 35.480694, 22.209314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368196, 35.531975, 21.496662>,  <27.619808, 35.701572, 22.196590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368196, 35.531975, 21.496662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396582, 35.908165, 21.363716>,  <27.413612, 36.133881, 21.283949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396582, 35.908165, 21.363716>,  <27.368196, 35.531975, 21.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396582, 35.908165, 21.363716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940583, -0.047833, -0.336177,
		-0.332065, 0.336471, 0.881204,
		0.070963, 0.940478, -0.332363,
		27.417871, 36.190308, 21.264008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659172, 35.574871, 21.304832>,  <27.368196, 35.531975, 21.496662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659172, 35.574871, 21.304832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622446, 35.199261, 21.172287>,  <26.600410, 34.973896, 21.092760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622446, 35.199261, 21.172287>,  <26.659172, 35.574871, 21.304832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622446, 35.199261, 21.172287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940981, -0.027048, 0.337377,
		-0.325768, 0.342783, -0.881121,
		-0.091815, -0.939025, -0.331363,
		26.594902, 34.917553, 21.072878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773705, 36.244244, 21.083199>,  <26.659172, 35.574871, 21.304832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773705, 36.244244, 21.083199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485929, 36.101597, 21.321606>,  <26.313265, 36.016010, 21.464649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485929, 36.101597, 21.321606>,  <26.773705, 36.244244, 21.083199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485929, 36.101597, 21.321606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653716, 0.637596, -0.407587,
		-0.234666, -0.682859, -0.691835,
		-0.719435, -0.356617, 0.596018,
		26.270100, 35.994614, 21.500410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204031, 36.254539, 20.597998>,  <26.773705, 36.244244, 21.083199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204031, 36.254539, 20.597998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020180, 36.306892, 20.949364>,  <25.909870, 36.338303, 21.160183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020180, 36.306892, 20.949364>,  <26.204031, 36.254539, 20.597998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020180, 36.306892, 20.949364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642466, 0.633885, -0.430612,
		-0.613174, -0.762273, -0.207264,
		-0.459626, 0.130880, 0.878416,
		25.882292, 36.346157, 21.212889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329523, 36.121456, 20.638380>,  <26.204031, 36.254539, 20.597998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329523, 36.121456, 20.638380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538830, 36.392078, 20.845634>,  <25.664413, 36.554451, 20.969986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538830, 36.392078, 20.845634>,  <25.329523, 36.121456, 20.638380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538830, 36.392078, 20.845634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571081, 0.729689, -0.376059,
		-0.632503, -0.099118, 0.768190,
		0.523265, 0.676557, 0.518135,
		25.695810, 36.595047, 21.001076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920301, 36.640537, 20.966274>,  <25.329523, 36.121456, 20.638380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920301, 36.640537, 20.966274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263788, 36.833424, 20.896912>,  <25.469881, 36.949158, 20.855295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263788, 36.833424, 20.896912>,  <24.920301, 36.640537, 20.966274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263788, 36.833424, 20.896912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504949, 0.738552, -0.446729,
		-0.087352, 0.471175, 0.877704,
		0.858717, 0.482218, -0.173405,
		25.521404, 36.978088, 20.844891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320412, 36.931694, 21.181641>,  <24.920301, 36.640537, 20.966274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320412, 36.931694, 21.181641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.998447, 36.876205, 21.412422>,  <23.805269, 36.842911, 21.550892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.998447, 36.876205, 21.412422>,  <24.320412, 36.931694, 21.181641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.998447, 36.876205, 21.412422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487446, -0.399905, -0.776191,
		0.338402, -0.905998, 0.254268,
		-0.804910, -0.138722, 0.576954,
		23.756975, 36.834587, 21.585508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031908, 36.299465, 20.983353>,  <24.320412, 36.931694, 21.181641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031908, 36.299465, 20.983353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.711304, 36.477051, 21.143593>,  <23.518942, 36.583603, 21.239737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.711304, 36.477051, 21.143593>,  <24.031908, 36.299465, 20.983353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.711304, 36.477051, 21.143593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519915, -0.186424, -0.833628,
		-0.295415, -0.876440, 0.380241,
		-0.801510, 0.443959, 0.400602,
		23.470850, 36.610237, 21.263773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.451380, 35.826580, 20.995211>,  <24.031908, 36.299465, 20.983353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.451380, 35.826580, 20.995211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.289333, 36.191010, 21.025738>,  <23.192106, 36.409668, 21.044054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.289333, 36.191010, 21.025738>,  <23.451380, 35.826580, 20.995211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.289333, 36.191010, 21.025738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549386, -0.175865, -0.816851,
		-0.730792, -0.372846, 0.571778,
		-0.405116, 0.911075, 0.076316,
		23.167799, 36.464333, 21.048632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.693193, 35.711060, 20.758080>,  <23.451380, 35.826580, 20.995211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.693193, 35.711060, 20.758080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.791004, 36.097004, 20.719604>,  <22.849689, 36.328571, 20.696520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.791004, 36.097004, 20.719604>,  <22.693193, 35.711060, 20.758080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791004, 36.097004, 20.719604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358347, -0.002255, -0.933586,
		-0.900997, 0.262755, 0.345204,
		0.244525, 0.964860, -0.096190,
		22.864363, 36.386463, 20.690748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074314, 36.015747, 20.662882>,  <22.693193, 35.711060, 20.758080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074314, 36.015747, 20.662882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350504, 36.271652, 20.527859>,  <22.516218, 36.425198, 20.446844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350504, 36.271652, 20.527859>,  <22.074314, 36.015747, 20.662882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350504, 36.271652, 20.527859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444870, 0.007607, -0.895563,
		-0.570383, 0.768532, 0.289865,
		0.690473, 0.639766, -0.337558,
		22.557646, 36.463581, 20.426592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711452, 36.498962, 20.333195>,  <22.074314, 36.015747, 20.662882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711452, 36.498962, 20.333195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.072741, 36.531864, 20.164707>,  <22.289515, 36.551605, 20.063616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.072741, 36.531864, 20.164707>,  <21.711452, 36.498962, 20.333195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.072741, 36.531864, 20.164707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429146, 0.162026, -0.888584,
		-0.004845, 0.983352, 0.181646,
		0.903222, 0.082258, -0.421217,
		22.343708, 36.556541, 20.038342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699938, 37.239391, 19.955067>,  <21.711452, 36.498962, 20.333195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699938, 37.239391, 19.955067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.986874, 37.005493, 19.803543>,  <22.159035, 36.865154, 19.712629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.986874, 37.005493, 19.803543>,  <21.699938, 37.239391, 19.955067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986874, 37.005493, 19.803543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298888, 0.232854, -0.925443,
		0.629357, 0.777078, -0.007739,
		0.717339, -0.584747, -0.378807,
		22.202076, 36.830070, 19.689901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732958, 37.540092, 19.317638>,  <21.699938, 37.239391, 19.955067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732958, 37.540092, 19.317638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930819, 37.194210, 19.282772>,  <22.049534, 36.986679, 19.261852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930819, 37.194210, 19.282772>,  <21.732958, 37.540092, 19.317638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930819, 37.194210, 19.282772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310576, -0.082202, -0.946988,
		0.811704, 0.495499, -0.309219,
		0.494650, -0.864710, -0.087167,
		22.079214, 36.934795, 19.256622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063387, 37.568939, 18.605862>,  <21.732958, 37.540092, 19.317638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063387, 37.568939, 18.605862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991909, 37.203152, 18.751083>,  <21.949022, 36.983677, 18.838217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991909, 37.203152, 18.751083>,  <22.063387, 37.568939, 18.605862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991909, 37.203152, 18.751083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536578, -0.218718, -0.815013,
		0.824713, -0.340445, -0.451602,
		-0.178694, -0.914472, 0.363055,
		21.938301, 36.928810, 18.860001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.411047, 37.151371, 18.095373>,  <22.063387, 37.568939, 18.605862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.411047, 37.151371, 18.095373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152384, 36.906467, 18.277348>,  <21.997185, 36.759525, 18.386532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152384, 36.906467, 18.277348>,  <22.411047, 37.151371, 18.095373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152384, 36.906467, 18.277348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452576, -0.172129, -0.874955,
		0.614009, -0.771692, -0.165785,
		-0.646660, -0.612260, 0.454938,
		21.958385, 36.722790, 18.413830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.335365, 36.483921, 17.694666>,  <22.411047, 37.151371, 18.095373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.335365, 36.483921, 17.694666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.009043, 36.505142, 17.925022>,  <21.813250, 36.517876, 18.063236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.009043, 36.505142, 17.925022>,  <22.335365, 36.483921, 17.694666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.009043, 36.505142, 17.925022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553627, -0.359546, -0.751148,
		0.167210, -0.931618, 0.322689,
		-0.815805, 0.053050, 0.575889,
		21.764301, 36.521057, 18.097788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029549, 35.854527, 17.606937>,  <22.335365, 36.483921, 17.694666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029549, 35.854527, 17.606937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735449, 36.097866, 17.726482>,  <21.558989, 36.243870, 17.798208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735449, 36.097866, 17.726482>,  <22.029549, 35.854527, 17.606937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735449, 36.097866, 17.726482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596496, -0.371377, -0.711528,
		-0.321864, -0.701424, 0.635931,
		-0.735253, 0.608346, 0.298863,
		21.514874, 36.280369, 17.816141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418798, 35.415764, 17.569620>,  <22.029549, 35.854527, 17.606937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418798, 35.415764, 17.569620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.280182, 35.790966, 17.572666>,  <21.197012, 36.016087, 17.574493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.280182, 35.790966, 17.572666>,  <21.418798, 35.415764, 17.569620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280182, 35.790966, 17.572666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823967, -0.300511, -0.480387,
		-0.448317, -0.172748, 0.877023,
		-0.346541, 0.938004, 0.007614,
		21.176220, 36.072369, 17.574951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806210, 35.327534, 17.744438>,  <21.418798, 35.415764, 17.569620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806210, 35.327534, 17.744438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785341, 35.686710, 17.569633>,  <20.772820, 35.902218, 17.464750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785341, 35.686710, 17.569633>,  <20.806210, 35.327534, 17.744438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785341, 35.686710, 17.569633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768101, -0.315743, -0.557069,
		-0.638199, 0.306604, 0.706184,
		-0.052173, 0.897942, -0.437010,
		20.769690, 35.956093, 17.438530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.010082, 35.546181, 17.647064>,  <20.806210, 35.327534, 17.744438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.010082, 35.546181, 17.647064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195829, 35.793961, 17.393879>,  <20.307278, 35.942627, 17.241968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195829, 35.793961, 17.393879>,  <20.010082, 35.546181, 17.647064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195829, 35.793961, 17.393879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756660, -0.093916, -0.647028,
		-0.460246, 0.779400, 0.425100,
		0.464370, 0.619448, -0.632965,
		20.335140, 35.979794, 17.203989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494625, 35.808659, 17.326468>,  <20.010082, 35.546181, 17.647064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494625, 35.808659, 17.326468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799082, 35.873459, 17.075256>,  <19.981756, 35.912338, 16.924530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.799082, 35.873459, 17.075256>,  <19.494625, 35.808659, 17.326468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799082, 35.873459, 17.075256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592704, -0.219473, -0.774941,
		-0.263376, 0.962075, -0.071031,
		0.761141, 0.162000, -0.628029,
		20.027424, 35.922058, 16.886848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.307554, 36.315029, 16.801868>,  <19.494625, 35.808659, 17.326468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.307554, 36.315029, 16.801868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.605387, 36.102409, 16.640350>,  <19.784086, 35.974838, 16.543440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.605387, 36.102409, 16.640350>,  <19.307554, 36.315029, 16.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605387, 36.102409, 16.640350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495075, -0.033962, -0.868186,
		0.447770, 0.846346, -0.288445,
		0.744582, -0.531549, -0.403797,
		19.828762, 35.942944, 16.519211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329939, 36.636215, 16.183363>,  <19.307554, 36.315029, 16.801868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.329939, 36.636215, 16.183363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486855, 36.268745, 16.164837>,  <19.581005, 36.048264, 16.153721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486855, 36.268745, 16.164837>,  <19.329939, 36.636215, 16.183363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486855, 36.268745, 16.164837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351112, -0.103012, -0.930650,
		0.850193, 0.381347, -0.362968,
		0.392290, -0.918675, -0.046315,
		19.604542, 35.993141, 16.150942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.612247, 36.564800, 15.529305>,  <19.329939, 36.636215, 16.183363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.612247, 36.564800, 15.529305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591965, 36.182617, 15.645597>,  <19.579796, 35.953308, 15.715371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591965, 36.182617, 15.645597>,  <19.612247, 36.564800, 15.529305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591965, 36.182617, 15.645597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363041, -0.253556, -0.896611,
		0.930392, -0.151010, -0.334015,
		-0.050706, -0.955461, 0.290729,
		19.576754, 35.895981, 15.732816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919720, 36.163414, 15.004803>,  <19.612247, 36.564800, 15.529305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919720, 36.163414, 15.004803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679003, 35.898449, 15.183267>,  <19.534573, 35.739471, 15.290345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679003, 35.898449, 15.183267>,  <19.919720, 36.163414, 15.004803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679003, 35.898449, 15.183267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375336, -0.258532, -0.890103,
		0.704959, -0.703118, -0.093044,
		-0.601793, -0.662409, 0.446160,
		19.498465, 35.699726, 15.317115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985064, 35.672882, 14.613792>,  <19.919720, 36.163414, 15.004803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985064, 35.672882, 14.613792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.642977, 35.610672, 14.811547>,  <19.437725, 35.573345, 14.930201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.642977, 35.610672, 14.811547>,  <19.985064, 35.672882, 14.613792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.642977, 35.610672, 14.811547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428156, -0.325512, -0.843045,
		0.292045, -0.932659, 0.211793,
		-0.855215, -0.155527, 0.494388,
		19.386412, 35.564014, 14.959864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659346, 35.176552, 14.235668>,  <19.985064, 35.672882, 14.613792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659346, 35.176552, 14.235668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392771, 35.394024, 14.439734>,  <19.232826, 35.524509, 14.562174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392771, 35.394024, 14.439734>,  <19.659346, 35.176552, 14.235668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392771, 35.394024, 14.439734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662608, -0.118232, -0.739576,
		-0.341778, -0.830920, 0.439044,
		-0.666437, 0.543685, 0.510165,
		19.192839, 35.557129, 14.592784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161489, 34.766937, 14.316950>,  <19.659346, 35.176552, 14.235668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161489, 34.766937, 14.316950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058384, 35.153416, 14.318622>,  <18.996521, 35.385303, 14.319625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058384, 35.153416, 14.318622>,  <19.161489, 34.766937, 14.316950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058384, 35.153416, 14.318622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622081, -0.162647, -0.765872,
		-0.739305, -0.200014, 0.642979,
		-0.257764, 0.966199, 0.004179,
		18.981054, 35.443275, 14.319876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552168, 34.319454, 14.534488>,  <19.161489, 34.766937, 14.316950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552168, 34.319454, 14.534488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791107, 34.132755, 14.273620>,  <18.934471, 34.020737, 14.117099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791107, 34.132755, 14.273620>,  <18.552168, 34.319454, 14.534488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791107, 34.132755, 14.273620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121288, -0.856420, 0.501831,
		-0.792757, -0.220669, -0.568192,
		0.597349, -0.466744, -0.652168,
		18.970312, 33.992733, 14.077969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188129, 33.768063, 14.209258>,  <18.552168, 34.319454, 14.534488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188129, 33.768063, 14.209258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573914, 33.663521, 14.193721>,  <18.805384, 33.600796, 14.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573914, 33.663521, 14.193721>,  <18.188129, 33.768063, 14.209258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573914, 33.663521, 14.193721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245854, -0.941506, 0.230483,
		-0.096810, -0.212741, -0.972301,
		0.964461, -0.261358, -0.038844,
		18.863251, 33.585114, 14.182068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811497, 33.452858, 14.763094>,  <18.188129, 33.768063, 14.209258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811497, 33.452858, 14.763094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683943, 33.591934, 14.410407>,  <17.607410, 33.675381, 14.198795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683943, 33.591934, 14.410407>,  <17.811497, 33.452858, 14.763094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683943, 33.591934, 14.410407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209828, -0.881303, -0.423411,
		-0.924276, -0.320028, 0.208079,
		-0.318884, 0.347688, -0.881718,
		17.588278, 33.696239, 14.145892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122715, 33.134914, 14.566764>,  <17.811497, 33.452858, 14.763094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122715, 33.134914, 14.566764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386860, 33.228596, 14.281367>,  <17.545347, 33.284805, 14.110129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386860, 33.228596, 14.281367>,  <17.122715, 33.134914, 14.566764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386860, 33.228596, 14.281367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074826, -0.965914, -0.247811,
		-0.747212, 0.110257, -0.655376,
		0.660360, 0.234206, -0.713493,
		17.584969, 33.298859, 14.067320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036325, 33.885105, 14.596390>,  <17.122715, 33.134914, 14.566764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.036325, 33.885105, 14.596390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736450, 33.638599, 14.692874>,  <16.556524, 33.490696, 14.750765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736450, 33.638599, 14.692874>,  <17.036325, 33.885105, 14.596390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736450, 33.638599, 14.692874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210004, 0.124112, 0.969791,
		-0.627585, 0.777698, 0.036372,
		-0.749690, -0.616265, 0.241210,
		16.511543, 33.453720, 14.765237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558348, 34.191395, 15.142081>,  <17.036325, 33.885105, 14.596390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558348, 34.191395, 15.142081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552477, 33.792179, 15.166398>,  <16.548954, 33.552650, 15.180988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552477, 33.792179, 15.166398>,  <16.558348, 34.191395, 15.142081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552477, 33.792179, 15.166398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035324, 0.060244, 0.997558,
		-0.999268, 0.016787, 0.034370,
		-0.014675, -0.998042, 0.060793,
		16.548075, 33.492767, 15.184636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935569, 33.892921, 15.455671>,  <16.558348, 34.191395, 15.142081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935569, 33.892921, 15.455671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275366, 33.688896, 15.509627>,  <16.479244, 33.566479, 15.542001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.275366, 33.688896, 15.509627>,  <15.935569, 33.892921, 15.455671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275366, 33.688896, 15.509627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040057, 0.192574, 0.980465,
		-0.526077, -0.838301, 0.143158,
		0.849493, -0.510066, 0.134889,
		16.530214, 33.535877, 15.550094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899041, 33.399895, 16.003983>,  <15.935569, 33.892921, 15.455671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899041, 33.399895, 16.003983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291353, 33.465969, 15.962447>,  <16.526741, 33.505615, 15.937526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291353, 33.465969, 15.962447>,  <15.899041, 33.399895, 16.003983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.291353, 33.465969, 15.962447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098770, 0.038625, 0.994360,
		0.168271, -0.985505, 0.021566,
		0.980780, 0.165192, -0.103838,
		16.585587, 33.515526, 15.931295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164457, 33.419003, 16.720472>,  <15.899041, 33.399895, 16.003983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164457, 33.419003, 16.720472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494429, 33.471478, 16.500549>,  <16.692411, 33.502964, 16.368595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.494429, 33.471478, 16.500549>,  <16.164457, 33.419003, 16.720472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494429, 33.471478, 16.500549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518288, 0.212591, 0.828362,
		0.225568, -0.968293, 0.107370,
		0.824923, 0.131203, -0.549808,
		16.741907, 33.510834, 16.335608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679142, 33.254604, 17.150545>,  <16.164457, 33.419003, 16.720472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679142, 33.254604, 17.150545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892054, 33.455833, 16.878193>,  <17.019800, 33.576569, 16.714781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.892054, 33.455833, 16.878193>,  <16.679142, 33.254604, 17.150545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892054, 33.455833, 16.878193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641701, 0.284837, 0.712101,
		0.552177, -0.815959, -0.171208,
		0.532279, 0.503070, -0.680882,
		17.051737, 33.606754, 16.673929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345245, 33.136654, 17.274323>,  <16.679142, 33.254604, 17.150545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345245, 33.136654, 17.274323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308847, 33.492733, 17.095768>,  <17.287008, 33.706383, 16.988634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308847, 33.492733, 17.095768>,  <17.345245, 33.136654, 17.274323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308847, 33.492733, 17.095768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669691, 0.386454, 0.634167,
		0.737045, -0.241237, -0.631324,
		-0.090994, 0.890201, -0.446388,
		17.281549, 33.759792, 16.961851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039085, 33.326817, 17.147871>,  <17.345245, 33.136654, 17.274323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039085, 33.326817, 17.147871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827118, 33.665249, 17.124783>,  <17.699938, 33.868309, 17.110929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827118, 33.665249, 17.124783>,  <18.039085, 33.326817, 17.147871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827118, 33.665249, 17.124783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696934, 0.473263, 0.538800,
		0.483184, 0.245295, -0.840454,
		-0.529920, 0.846081, -0.057719,
		17.668142, 33.919075, 17.107468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460421, 33.809765, 16.931589>,  <18.039085, 33.326817, 17.147871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460421, 33.809765, 16.931589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158598, 34.023163, 17.084442>,  <17.977505, 34.151203, 17.176153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158598, 34.023163, 17.084442>,  <18.460421, 33.809765, 16.931589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158598, 34.023163, 17.084442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604064, 0.337121, 0.722119,
		0.256425, 0.775711, -0.576644,
		-0.754555, 0.533499, 0.382133,
		17.932232, 34.183212, 17.199081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682295, 34.462090, 17.148815>,  <18.460421, 33.809765, 16.931589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682295, 34.462090, 17.148815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342451, 34.474407, 17.359421>,  <18.138544, 34.481796, 17.485785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342451, 34.474407, 17.359421>,  <18.682295, 34.462090, 17.148815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342451, 34.474407, 17.359421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521192, 0.201884, 0.829217,
		-0.080760, 0.978925, -0.187572,
		-0.849609, 0.030793, 0.526513,
		18.087568, 34.483646, 17.517374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.617367, 35.107620, 17.552546>,  <18.682295, 34.462090, 17.148815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.617367, 35.107620, 17.552546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365255, 34.866211, 17.747894>,  <18.213987, 34.721367, 17.865103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365255, 34.866211, 17.747894>,  <18.617367, 35.107620, 17.552546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365255, 34.866211, 17.747894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419072, 0.265058, 0.868402,
		-0.653548, 0.751999, 0.085859,
		-0.630280, -0.603524, 0.488370,
		18.176170, 34.685154, 17.894405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198097, 35.501278, 18.102531>,  <18.617367, 35.107620, 17.552546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198097, 35.501278, 18.102531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.200125, 35.119759, 18.222694>,  <18.201342, 34.890846, 18.294792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.200125, 35.119759, 18.222694>,  <18.198097, 35.501278, 18.102531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200125, 35.119759, 18.222694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233803, 0.293215, 0.927017,
		-0.972271, 0.065535, 0.224488,
		0.005071, -0.953798, 0.300407,
		18.201647, 34.833618, 18.312817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895721, 35.552658, 18.760044>,  <18.198097, 35.501278, 18.102531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.895721, 35.552658, 18.760044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098171, 35.207687, 18.763260>,  <18.219641, 35.000706, 18.765190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.098171, 35.207687, 18.763260>,  <17.895721, 35.552658, 18.760044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098171, 35.207687, 18.763260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414402, 0.251353, 0.874696,
		-0.756379, -0.439372, 0.484606,
		0.506124, -0.862424, 0.008041,
		18.250008, 34.948959, 18.765673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980549, 35.313026, 19.454693>,  <17.895721, 35.552658, 18.760044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.980549, 35.313026, 19.454693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.288996, 35.120842, 19.287582>,  <18.474064, 35.005531, 19.187317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.288996, 35.120842, 19.287582>,  <17.980549, 35.313026, 19.454693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288996, 35.120842, 19.287582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499143, 0.048835, 0.865142,
		-0.395262, -0.875658, 0.277474,
		0.771119, -0.480457, -0.417776,
		18.520330, 34.976704, 19.162251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171429, 34.716911, 19.897665>,  <17.980549, 35.313026, 19.454693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171429, 34.716911, 19.897665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476030, 34.812241, 19.656563>,  <18.658791, 34.869438, 19.511902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476030, 34.812241, 19.656563>,  <18.171429, 34.716911, 19.897665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476030, 34.812241, 19.656563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568531, 0.200986, 0.797732,
		0.311266, -0.950161, 0.017555,
		0.761502, 0.238326, -0.602756,
		18.704481, 34.883739, 19.475737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742990, 34.460976, 20.216082>,  <18.171429, 34.716911, 19.897665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742990, 34.460976, 20.216082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.891287, 34.734421, 19.964615>,  <18.980265, 34.898487, 19.813734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.891287, 34.734421, 19.964615>,  <18.742990, 34.460976, 20.216082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891287, 34.734421, 19.964615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554803, 0.379835, 0.740215,
		0.744812, -0.623213, -0.238452,
		0.370740, 0.683616, -0.628667,
		19.002508, 34.939507, 19.776014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430994, 34.458099, 20.387589>,  <18.742990, 34.460976, 20.216082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430994, 34.458099, 20.387589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401823, 34.806473, 20.193203>,  <19.384321, 35.015495, 20.076572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401823, 34.806473, 20.193203>,  <19.430994, 34.458099, 20.387589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401823, 34.806473, 20.193203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608992, 0.424761, 0.669856,
		0.789817, -0.247098, -0.561367,
		-0.072927, 0.870931, -0.485964,
		19.379946, 35.067753, 20.047413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125826, 34.825916, 20.350027>,  <19.430994, 34.458099, 20.387589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125826, 34.825916, 20.350027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870247, 35.125187, 20.278492>,  <19.716900, 35.304749, 20.235571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870247, 35.125187, 20.278492>,  <20.125826, 34.825916, 20.350027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870247, 35.125187, 20.278492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571910, 0.617494, 0.540019,
		0.514459, 0.242765, -0.822434,
		-0.638945, 0.748175, -0.178836,
		19.678564, 35.349640, 20.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.589514, 35.502579, 20.384735>,  <20.125826, 34.825916, 20.350027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.589514, 35.502579, 20.384735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220993, 35.652687, 20.425476>,  <19.999880, 35.742752, 20.449921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.220993, 35.652687, 20.425476>,  <20.589514, 35.502579, 20.384735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220993, 35.652687, 20.425476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368938, 0.760874, 0.533813,
		0.122825, 0.529381, -0.839446,
		-0.921303, 0.375269, 0.101854,
		19.944603, 35.765266, 20.456032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.642084, 36.198845, 20.126205>,  <20.589514, 35.502579, 20.384735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.642084, 36.198845, 20.126205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.338373, 36.169392, 20.384842>,  <20.156147, 36.151722, 20.540024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.338373, 36.169392, 20.384842>,  <20.642084, 36.198845, 20.126205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338373, 36.169392, 20.384842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461323, 0.639894, 0.614587,
		-0.459002, 0.764928, -0.451888,
		-0.759275, -0.073630, 0.646591,
		20.110590, 36.147301, 20.578819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.588688, 36.819965, 20.374834>,  <20.642084, 36.198845, 20.126205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.588688, 36.819965, 20.374834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374285, 36.612953, 20.641624>,  <20.245644, 36.488747, 20.801699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.374285, 36.612953, 20.641624>,  <20.588688, 36.819965, 20.374834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374285, 36.612953, 20.641624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306818, 0.616609, 0.725022,
		-0.786485, 0.593257, -0.171718,
		-0.536007, -0.517533, 0.666975,
		20.213482, 36.457695, 20.841717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217455, 37.307575, 20.832558>,  <20.588688, 36.819965, 20.374834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217455, 37.307575, 20.832558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.221354, 36.962753, 21.035244>,  <20.223692, 36.755859, 21.156857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.221354, 36.962753, 21.035244>,  <20.217455, 37.307575, 20.832558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.221354, 36.962753, 21.035244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378315, 0.472252, 0.796151,
		-0.925626, 0.183939, 0.330732,
		0.009745, -0.862058, 0.506716,
		20.224277, 36.704136, 21.187260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.208729, 37.551273, 21.539829>,  <20.217455, 37.307575, 20.832558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.208729, 37.551273, 21.539829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322962, 37.168804, 21.565651>,  <20.391502, 36.939323, 21.581144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322962, 37.168804, 21.565651>,  <20.208729, 37.551273, 21.539829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322962, 37.168804, 21.565651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470282, 0.198514, 0.859900,
		-0.835031, -0.215216, 0.506365,
		0.285584, -0.956177, 0.064553,
		20.408638, 36.881950, 21.585016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941668, 37.257179, 22.153633>,  <20.208729, 37.551273, 21.539829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941668, 37.257179, 22.153633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.259628, 37.039532, 22.046257>,  <20.450405, 36.908943, 21.981833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.259628, 37.039532, 22.046257>,  <19.941668, 37.257179, 22.153633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259628, 37.039532, 22.046257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388163, 0.116021, 0.914258,
		-0.466324, -0.830945, 0.303434,
		0.794904, -0.544123, -0.268439,
		20.498098, 36.876293, 21.965725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078869, 36.814301, 22.753260>,  <19.941668, 37.257179, 22.153633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078869, 36.814301, 22.753260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.413916, 36.817791, 22.534782>,  <20.614943, 36.819885, 22.403696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.413916, 36.817791, 22.534782>,  <20.078869, 36.814301, 22.753260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413916, 36.817791, 22.534782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545418, 0.042169, 0.837103,
		0.030345, -0.999072, 0.030556,
		0.837615, 0.008736, -0.546191,
		20.665199, 36.820408, 22.370926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476660, 36.384041, 23.138088>,  <20.078869, 36.814301, 22.753260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476660, 36.384041, 23.138088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.720089, 36.599930, 22.905418>,  <20.866146, 36.729462, 22.765816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.720089, 36.599930, 22.905418>,  <20.476660, 36.384041, 23.138088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.720089, 36.599930, 22.905418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549062, 0.242799, 0.799737,
		0.572863, -0.806072, -0.148579,
		0.608571, 0.539719, -0.581674,
		20.902660, 36.761845, 22.730917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991556, 35.789501, 23.010624>,  <20.476660, 36.384041, 23.138088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991556, 35.789501, 23.010624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656704, 35.731300, 23.221542>,  <19.455793, 35.696381, 23.348093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656704, 35.731300, 23.221542>,  <19.991556, 35.789501, 23.010624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656704, 35.731300, 23.221542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160902, 0.986826, 0.016859,
		-0.522803, -0.070730, -0.849514,
		-0.837130, -0.145502, 0.527296,
		19.405565, 35.687649, 23.379732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584946, 36.247532, 22.732174>,  <19.991556, 35.789501, 23.010624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584946, 36.247532, 22.732174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417807, 36.162346, 23.085457>,  <19.317524, 36.111237, 23.297426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417807, 36.162346, 23.085457>,  <19.584946, 36.247532, 22.732174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.417807, 36.162346, 23.085457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316050, 0.945493, 0.078457,
		-0.851773, -0.246354, -0.462377,
		-0.417847, -0.212961, 0.883205,
		19.292452, 36.098457, 23.350418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945095, 36.455547, 22.559174>,  <19.584946, 36.247532, 22.732174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945095, 36.455547, 22.559174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.085478, 36.471474, 22.933392>,  <19.169706, 36.481030, 23.157923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.085478, 36.471474, 22.933392>,  <18.945095, 36.455547, 22.559174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085478, 36.471474, 22.933392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164774, 0.986132, 0.019840,
		-0.921781, -0.161117, 0.352648,
		0.350954, 0.039819, 0.935545,
		19.190763, 36.483418, 23.214056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366726, 36.811569, 22.985676>,  <18.945095, 36.455547, 22.559174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366726, 36.811569, 22.985676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750469, 36.859966, 23.087654>,  <18.980715, 36.889004, 23.148842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750469, 36.859966, 23.087654>,  <18.366726, 36.811569, 22.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750469, 36.859966, 23.087654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117821, 0.992647, -0.027732,
		-0.256426, -0.003433, 0.966558,
		0.959356, 0.120992, 0.254945,
		19.038277, 36.896263, 23.164137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345114, 37.252857, 23.554802>,  <18.366726, 36.811569, 22.985676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345114, 37.252857, 23.554802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.736206, 37.275818, 23.474060>,  <18.970861, 37.289593, 23.425615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.736206, 37.275818, 23.474060>,  <18.345114, 37.252857, 23.554802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.736206, 37.275818, 23.474060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029477, 0.989894, 0.138709,
		0.207775, -0.129671, 0.969544,
		0.977733, 0.057400, -0.201853,
		19.029526, 37.293037, 23.413504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.121769, 26.180468, 25.571722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.465279, 26.174168, 25.776566>,  <32.671383, 26.170387, 25.899471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.465279, 26.174168, 25.776566>,  <32.121769, 26.180468, 25.571722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465279, 26.174168, 25.776566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413223, 0.612220, -0.674117,
		-0.302907, 0.790530, 0.532268,
		0.858775, -0.015751, 0.512111,
		32.722912, 26.169443, 25.930199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294136, 26.856646, 25.663574>,  <32.121769, 26.180468, 25.571722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294136, 26.856646, 25.663574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.651028, 26.682167, 25.710316>,  <32.865162, 26.577480, 25.738361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.651028, 26.682167, 25.710316>,  <32.294136, 26.856646, 25.663574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651028, 26.682167, 25.710316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404787, 0.657838, -0.635135,
		0.200170, 0.613990, 0.763511,
		0.892233, -0.436194, 0.116856,
		32.918697, 26.551310, 25.745373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701736, 27.311659, 25.860914>,  <32.294136, 26.856646, 25.663574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701736, 27.311659, 25.860914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950993, 27.045532, 25.696453>,  <33.100548, 26.885857, 25.597776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950993, 27.045532, 25.696453>,  <32.701736, 27.311659, 25.860914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950993, 27.045532, 25.696453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340564, 0.704066, -0.623143,
		0.704066, 0.248283, 0.665317,
		0.623143, -0.665317, -0.411153,
		33.137936, 26.845938, 25.573107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400902, 27.590158, 25.911222>,  <32.701736, 27.311659, 25.860914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400902, 27.590158, 25.911222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.397465, 27.327274, 25.609760>,  <33.395401, 27.169544, 25.428883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.397465, 27.327274, 25.609760>,  <33.400902, 27.590158, 25.911222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397465, 27.327274, 25.609760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433155, 0.676858, -0.595181,
		0.901279, -0.331564, 0.278859,
		-0.008593, -0.657213, -0.753656,
		33.394886, 27.130110, 25.383663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101246, 27.649122, 25.589283>,  <33.400902, 27.590158, 25.911222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101246, 27.649122, 25.589283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.881073, 27.456234, 25.316669>,  <33.748970, 27.340502, 25.153101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.881073, 27.456234, 25.316669>,  <34.101246, 27.649122, 25.589283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881073, 27.456234, 25.316669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244216, 0.687619, -0.683767,
		0.798362, -0.542810, -0.260722,
		-0.550434, -0.482221, -0.681532,
		33.715942, 27.311567, 25.112209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484592, 27.490191, 25.049133>,  <34.101246, 27.649122, 25.589283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484592, 27.490191, 25.049133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115715, 27.487076, 24.894470>,  <33.894390, 27.485207, 24.801672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115715, 27.487076, 24.894470>,  <34.484592, 27.490191, 25.049133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115715, 27.487076, 24.894470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291224, 0.643874, -0.707542,
		0.254466, -0.765092, -0.591508,
		-0.922191, -0.007784, -0.386657,
		33.839058, 27.484741, 24.778473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577869, 27.365404, 24.330906>,  <34.484592, 27.490191, 25.049133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577869, 27.365404, 24.330906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.218815, 27.538425, 24.364708>,  <34.003380, 27.642239, 24.384989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.218815, 27.538425, 24.364708>,  <34.577869, 27.365404, 24.330906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218815, 27.538425, 24.364708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268335, 0.688483, -0.673786,
		-0.349628, -0.582142, -0.734078,
		-0.897639, 0.432554, 0.084504,
		33.949524, 27.668192, 24.390059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415531, 27.737280, 23.657444>,  <34.577869, 27.365404, 24.330906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415531, 27.737280, 23.657444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.152153, 27.936382, 23.883255>,  <33.994125, 28.055843, 24.018742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.152153, 27.936382, 23.883255>,  <34.415531, 27.737280, 23.657444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152153, 27.936382, 23.883255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161129, 0.825911, -0.540286,
		-0.735181, -0.264785, -0.624017,
		-0.658442, 0.497755, 0.564530,
		33.954620, 28.085709, 24.052614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985252, 28.258333, 23.186403>,  <34.415531, 27.737280, 23.657444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985252, 28.258333, 23.186403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.907078, 28.379871, 23.559387>,  <33.860172, 28.452795, 23.783178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.907078, 28.379871, 23.559387>,  <33.985252, 28.258333, 23.186403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907078, 28.379871, 23.559387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000369, 0.950818, -0.309750,
		-0.980716, -0.060192, -0.185938,
		-0.195438, 0.303845, 0.932460,
		33.848446, 28.471025, 23.839125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432232, 28.662415, 23.197147>,  <33.985252, 28.258333, 23.186403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432232, 28.662415, 23.197147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613781, 28.773529, 23.535812>,  <33.722710, 28.840199, 23.739012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.613781, 28.773529, 23.535812>,  <33.432232, 28.662415, 23.197147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613781, 28.773529, 23.535812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212549, 0.956489, -0.199881,
		-0.865347, -0.089237, 0.493164,
		0.453869, 0.277787, 0.846663,
		33.749943, 28.856865, 23.789810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974415, 29.166042, 23.557405>,  <33.432232, 28.662415, 23.197147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974415, 29.166042, 23.557405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349857, 29.222347, 23.683392>,  <33.575123, 29.256130, 23.758984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.349857, 29.222347, 23.683392>,  <32.974415, 29.166042, 23.557405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349857, 29.222347, 23.683392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057683, 0.964154, -0.258998,
		-0.340132, 0.224929, 0.913081,
		0.938607, 0.140762, 0.314965,
		33.631439, 29.264576, 23.777882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962646, 29.774340, 24.011854>,  <32.974415, 29.166042, 23.557405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962646, 29.774340, 24.011854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342247, 29.755024, 23.887238>,  <33.570007, 29.743435, 23.812468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342247, 29.755024, 23.887238>,  <32.962646, 29.774340, 24.011854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342247, 29.755024, 23.887238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013145, 0.981280, -0.192137,
		0.314990, 0.186434, 0.930604,
		0.949004, -0.048288, -0.311544,
		33.626949, 29.740538, 23.793774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262909, 30.282341, 24.364662>,  <32.962646, 29.774340, 24.011854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262909, 30.282341, 24.364662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515087, 30.216362, 24.061260>,  <33.666393, 30.176775, 23.879219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515087, 30.216362, 24.061260>,  <33.262909, 30.282341, 24.364662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515087, 30.216362, 24.061260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023728, 0.980800, -0.193566,
		0.775867, 0.104036, 0.622259,
		0.630450, -0.164946, -0.758503,
		33.704224, 30.166878, 23.833710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807339, 30.703512, 24.482096>,  <33.262909, 30.282341, 24.364662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807339, 30.703512, 24.482096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806732, 30.618683, 24.091194>,  <33.806366, 30.567785, 23.856653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.806732, 30.618683, 24.091194>,  <33.807339, 30.703512, 24.482096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806732, 30.618683, 24.091194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027637, 0.976890, -0.211950,
		0.999617, 0.026687, -0.007344,
		-0.001518, -0.212071, -0.977253,
		33.806278, 30.555061, 23.798018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085022, 31.286783, 24.209059>,  <33.807339, 30.703512, 24.482096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085022, 31.286783, 24.209059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.942795, 31.125893, 23.871590>,  <33.857456, 31.029358, 23.669107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.942795, 31.125893, 23.871590>,  <34.085022, 31.286783, 24.209059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942795, 31.125893, 23.871590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207734, 0.914095, -0.348249,
		0.911264, 0.051425, -0.408598,
		-0.355589, -0.402227, -0.843665,
		33.836124, 31.005224, 23.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380699, 31.607582, 23.565477>,  <34.085022, 31.286783, 24.209059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380699, 31.607582, 23.565477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042957, 31.448200, 23.422203>,  <33.840313, 31.352571, 23.336239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042957, 31.448200, 23.422203>,  <34.380699, 31.607582, 23.565477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042957, 31.448200, 23.422203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191399, 0.848735, -0.492967,
		0.500427, -0.347684, -0.792899,
		-0.844357, -0.398454, -0.358184,
		33.789650, 31.328665, 23.314749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434605, 31.870790, 22.892673>,  <34.380699, 31.607582, 23.565477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434605, 31.870790, 22.892673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058483, 31.738079, 22.923008>,  <33.832809, 31.658451, 22.941208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058483, 31.738079, 22.923008>,  <34.434605, 31.870790, 22.892673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058483, 31.738079, 22.923008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293076, 0.676096, -0.676018,
		0.173018, -0.657887, -0.732973,
		-0.940304, -0.331780, 0.075835,
		33.776390, 31.638546, 22.945759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254349, 31.749847, 22.196430>,  <34.434605, 31.870790, 22.892673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254349, 31.749847, 22.196430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.924358, 31.800968, 22.416641>,  <33.726364, 31.831640, 22.548769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.924358, 31.800968, 22.416641>,  <34.254349, 31.749847, 22.196430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924358, 31.800968, 22.416641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295164, 0.733268, -0.612533,
		-0.481968, -0.667821, -0.567205,
		-0.824976, 0.127802, 0.550529,
		33.676865, 31.839310, 22.581800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747028, 31.873760, 21.761381>,  <34.254349, 31.749847, 22.196430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747028, 31.873760, 21.761381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.615112, 32.027306, 22.106377>,  <33.535961, 32.119434, 22.313374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.615112, 32.027306, 22.106377>,  <33.747028, 31.873760, 21.761381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615112, 32.027306, 22.106377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322763, 0.812699, -0.485122,
		-0.887165, -0.438368, -0.144124,
		-0.329791, 0.383866, 0.862488,
		33.516174, 32.142464, 22.365124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111904, 32.078648, 21.552328>,  <33.747028, 31.873760, 21.761381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111904, 32.078648, 21.552328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178463, 32.266888, 21.898933>,  <33.218399, 32.379829, 22.106897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178463, 32.266888, 21.898933>,  <33.111904, 32.078648, 21.552328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178463, 32.266888, 21.898933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503392, 0.796169, -0.335725,
		-0.847884, -0.380332, 0.369378,
		0.166400, 0.470598, 0.866515,
		33.228382, 32.408066, 22.158888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409473, 32.286625, 21.840187>,  <33.111904, 32.078648, 21.552328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409473, 32.286625, 21.840187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.690430, 32.521290, 22.001423>,  <32.859001, 32.662086, 22.098166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.690430, 32.521290, 22.001423>,  <32.409473, 32.286625, 21.840187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690430, 32.521290, 22.001423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624489, 0.779647, -0.046520,
		-0.341560, -0.219051, 0.913977,
		0.702389, 0.586658, 0.403091,
		32.901146, 32.697289, 22.122351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974005, 32.776112, 22.061150>,  <32.409473, 32.286625, 21.840187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974005, 32.776112, 22.061150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.329212, 32.957134, 22.093685>,  <32.542336, 33.065746, 22.113207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.329212, 32.957134, 22.093685>,  <31.974005, 32.776112, 22.061150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329212, 32.957134, 22.093685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441983, 0.888910, -0.120374,
		-0.126780, 0.070943, 0.989391,
		0.888019, 0.452555, 0.081340,
		32.595619, 33.092899, 22.118088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982536, 32.977551, 22.813194>,  <31.974005, 32.776112, 22.061150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982536, 32.977551, 22.813194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.659336, 33.201569, 22.739998>,  <31.465416, 33.335979, 22.696081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.659336, 33.201569, 22.739998>,  <31.982536, 32.977551, 22.813194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659336, 33.201569, 22.739998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588189, -0.784786, 0.195309,
		-0.034225, 0.265441, 0.963519,
		-0.807999, 0.560047, -0.182989,
		31.416937, 33.369583, 22.685101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551537, 33.117641, 23.459635>,  <31.982536, 32.977551, 22.813194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551537, 33.117641, 23.459635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.299967, 33.141380, 23.149555>,  <31.149025, 33.155624, 22.963507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.299967, 33.141380, 23.149555>,  <31.551537, 33.117641, 23.459635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299967, 33.141380, 23.149555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523896, -0.769064, 0.366161,
		-0.574446, 0.636410, 0.514776,
		-0.628924, 0.059349, -0.775198,
		31.111290, 33.159184, 22.916996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791889, 33.091797, 23.707922>,  <31.551537, 33.117641, 23.459635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791889, 33.091797, 23.707922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.798409, 32.967472, 23.327789>,  <30.802320, 32.892879, 23.099709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.798409, 32.967472, 23.327789>,  <30.791889, 33.091797, 23.707922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798409, 32.967472, 23.327789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239292, -0.924051, 0.298109,
		-0.970811, 0.222549, -0.089432,
		0.016296, -0.310808, -0.950333,
		30.803297, 32.874229, 23.042690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178698, 32.838943, 23.619331>,  <30.791889, 33.091797, 23.707922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178698, 32.838943, 23.619331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412205, 32.685486, 23.333107>,  <30.552309, 32.593410, 23.161371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412205, 32.685486, 23.333107>,  <30.178698, 32.838943, 23.619331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412205, 32.685486, 23.333107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400521, -0.902698, 0.157223,
		-0.706254, 0.194816, -0.680626,
		0.583770, -0.383644, -0.715562,
		30.587336, 32.570393, 23.118439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738953, 32.399471, 23.352612>,  <30.178698, 32.838943, 23.619331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738953, 32.399471, 23.352612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.078550, 32.263149, 23.191086>,  <30.282309, 32.181355, 23.094172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.078550, 32.263149, 23.191086>,  <29.738953, 32.399471, 23.352612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078550, 32.263149, 23.191086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320727, -0.939696, 0.118766,
		-0.419937, 0.028682, -0.907100,
		0.848992, -0.340806, -0.403812,
		30.333248, 32.160908, 23.069942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513556, 31.822796, 22.849659>,  <29.738953, 32.399471, 23.352612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513556, 31.822796, 22.849659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.899666, 31.753326, 22.927715>,  <30.131332, 31.711645, 22.974550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.899666, 31.753326, 22.927715>,  <29.513556, 31.822796, 22.849659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899666, 31.753326, 22.927715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237703, -0.893769, 0.380362,
		0.108354, -0.413540, -0.904016,
		0.965275, -0.173674, 0.195143,
		30.189249, 31.701225, 22.986258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614286, 31.215235, 22.465025>,  <29.513556, 31.822796, 22.849659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614286, 31.215235, 22.465025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.891930, 31.258091, 22.749767>,  <30.058516, 31.283804, 22.920612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.891930, 31.258091, 22.749767>,  <29.614286, 31.215235, 22.465025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891930, 31.258091, 22.749767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121789, -0.957130, 0.262810,
		0.709495, -0.269114, -0.651302,
		0.694106, 0.107141, 0.711855,
		30.100161, 31.290234, 22.963324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129612, 30.565231, 22.341320>,  <29.614286, 31.215235, 22.465025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129612, 30.565231, 22.341320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.136822, 30.724934, 22.707985>,  <30.141148, 30.820755, 22.927984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.136822, 30.724934, 22.707985>,  <30.129612, 30.565231, 22.341320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136822, 30.724934, 22.707985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087443, -0.913927, 0.396347,
		0.996006, 0.073012, -0.051384,
		0.018023, 0.399258, 0.916662,
		30.142229, 30.844711, 22.982983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669827, 30.154209, 22.691729>,  <30.129612, 30.565231, 22.341320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669827, 30.154209, 22.691729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.482439, 30.338467, 22.993282>,  <30.370007, 30.449020, 23.174215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.482439, 30.338467, 22.993282>,  <30.669827, 30.154209, 22.691729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482439, 30.338467, 22.993282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139418, -0.804077, 0.577947,
		0.872410, 0.375855, 0.312463,
		-0.468469, 0.460644, 0.753886,
		30.341898, 30.476660, 23.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153963, 30.026878, 23.366526>,  <30.669827, 30.154209, 22.691729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153963, 30.026878, 23.366526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.773670, 30.122684, 23.445251>,  <30.545494, 30.180168, 23.492487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.773670, 30.122684, 23.445251>,  <31.153963, 30.026878, 23.366526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773670, 30.122684, 23.445251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006328, -0.649735, 0.760134,
		0.309942, 0.721441, 0.619241,
		-0.950735, 0.239516, 0.196815,
		30.488449, 30.194540, 23.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114006, 29.958376, 24.125010>,  <31.153963, 30.026878, 23.366526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114006, 29.958376, 24.125010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.734884, 29.939404, 23.998886>,  <30.507412, 29.928020, 23.923212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.734884, 29.939404, 23.998886>,  <31.114006, 29.958376, 24.125010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734884, 29.939404, 23.998886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159551, -0.785621, 0.597782,
		-0.276065, 0.616887, 0.737047,
		-0.947803, -0.047430, -0.315308,
		30.450542, 29.925175, 23.904293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753361, 29.843475, 24.704983>,  <31.114006, 29.958376, 24.125010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753361, 29.843475, 24.704983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496040, 29.728558, 24.421116>,  <30.341648, 29.659607, 24.250795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496040, 29.728558, 24.421116>,  <30.753361, 29.843475, 24.704983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496040, 29.728558, 24.421116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184437, -0.841473, 0.507844,
		-0.743065, 0.457586, 0.488334,
		-0.643302, -0.287294, -0.709665,
		30.303049, 29.642368, 24.208216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116463, 29.690710, 24.984978>,  <30.753361, 29.843475, 24.704983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116463, 29.690710, 24.984978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.131319, 29.483414, 24.643208>,  <30.140234, 29.359035, 24.438145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.131319, 29.483414, 24.643208>,  <30.116463, 29.690710, 24.984978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131319, 29.483414, 24.643208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349390, -0.807789, 0.474766,
		-0.936241, 0.280894, -0.211072,
		0.037143, -0.518242, -0.854427,
		30.142462, 29.327942, 24.386879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462368, 29.378422, 24.947113>,  <30.116463, 29.690710, 24.984978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462368, 29.378422, 24.947113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.675274, 29.155338, 24.692348>,  <29.803019, 29.021488, 24.539490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.675274, 29.155338, 24.692348>,  <29.462368, 29.378422, 24.947113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675274, 29.155338, 24.692348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375177, -0.829818, 0.413090,
		-0.758902, 0.019079, -0.650925,
		0.532268, -0.557708, -0.636909,
		29.834953, 28.988026, 24.501276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039267, 28.894957, 24.706461>,  <29.462368, 29.378422, 24.947113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039267, 28.894957, 24.706461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.406637, 28.750851, 24.641090>,  <29.627060, 28.664387, 24.601868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.406637, 28.750851, 24.641090>,  <29.039267, 28.894957, 24.706461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406637, 28.750851, 24.641090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221612, -0.810746, 0.541829,
		-0.327696, -0.461413, -0.824447,
		0.918424, -0.360263, -0.163424,
		29.682165, 28.642773, 24.592064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018614, 28.196600, 24.530058>,  <29.039267, 28.894957, 24.706461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018614, 28.196600, 24.530058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.404646, 28.199135, 24.634811>,  <29.636265, 28.200655, 24.697664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.404646, 28.199135, 24.634811>,  <29.018614, 28.196600, 24.530058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404646, 28.199135, 24.634811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102200, -0.911383, 0.398669,
		0.241202, -0.411512, -0.878908,
		0.965079, 0.006336, 0.261884,
		29.694170, 28.201035, 24.713377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287291, 27.557535, 24.313427>,  <29.018614, 28.196600, 24.530058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287291, 27.557535, 24.313427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.575216, 27.670780, 24.566952>,  <29.747972, 27.738728, 24.719067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.575216, 27.670780, 24.566952>,  <29.287291, 27.557535, 24.313427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575216, 27.670780, 24.566952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025115, -0.901833, 0.431353,
		0.693713, -0.326413, -0.642042,
		0.719814, 0.283110, 0.633811,
		29.791161, 27.755713, 24.757095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821508, 27.065989, 24.278261>,  <29.287291, 27.557535, 24.313427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821508, 27.065989, 24.278261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844921, 27.242718, 24.636337>,  <29.858969, 27.348755, 24.851183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.844921, 27.242718, 24.636337>,  <29.821508, 27.065989, 24.278261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844921, 27.242718, 24.636337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021719, -0.897081, 0.441333,
		0.998049, -0.006388, -0.062102,
		0.058530, 0.441821, 0.895192,
		29.862480, 27.375263, 24.904896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.426136, 26.847927, 24.659409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180790, 26.988102, 24.942528>,  <30.033583, 27.072206, 25.112398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180790, 26.988102, 24.942528>,  <30.426136, 26.847927, 24.659409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180790, 26.988102, 24.942528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094351, -0.857243, 0.506194,
		0.784142, 0.377264, 0.492740,
		-0.613366, 0.350438, 0.707796,
		29.996780, 27.093233, 25.154867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752314, 26.608629, 25.275660>,  <30.426136, 26.847927, 24.659409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752314, 26.608629, 25.275660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393583, 26.716450, 25.415970>,  <30.178345, 26.781143, 25.500156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393583, 26.716450, 25.415970>,  <30.752314, 26.608629, 25.275660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393583, 26.716450, 25.415970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031301, -0.829602, 0.557477,
		0.441276, 0.488980, 0.752446,
		-0.896826, 0.269554, 0.350778,
		30.124537, 26.797316, 25.521204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753967, 26.562996, 26.076204>,  <30.752314, 26.608629, 25.275660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753967, 26.562996, 26.076204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382540, 26.545563, 25.928764>,  <30.159683, 26.535103, 25.840302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382540, 26.545563, 25.928764>,  <30.753967, 26.562996, 26.076204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382540, 26.545563, 25.928764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186932, -0.803025, 0.565869,
		-0.320656, 0.594350, 0.737515,
		-0.928567, -0.043585, -0.368598,
		30.103970, 26.532488, 25.818186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433237, 26.357542, 26.644846>,  <30.753967, 26.562996, 26.076204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433237, 26.357542, 26.644846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175964, 26.264252, 26.353115>,  <30.021601, 26.208277, 26.178076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175964, 26.264252, 26.353115>,  <30.433237, 26.357542, 26.644846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175964, 26.264252, 26.353115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113378, -0.912978, 0.391940,
		-0.757272, 0.334779, 0.560769,
		-0.643183, -0.233226, -0.729330,
		29.983009, 26.194284, 26.134315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890490, 26.154100, 26.970417>,  <30.433237, 26.357542, 26.644846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890490, 26.154100, 26.970417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.844679, 25.981426, 26.612526>,  <29.817192, 25.877823, 26.397791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.844679, 25.981426, 26.612526>,  <29.890490, 26.154100, 26.970417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844679, 25.981426, 26.612526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059544, -0.902015, 0.427579,
		-0.991634, -0.004307, 0.129008,
		-0.114525, -0.431683, -0.894725,
		29.810322, 25.851921, 26.344109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428484, 25.711298, 27.169729>,  <29.890490, 26.154100, 26.970417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428484, 25.711298, 27.169729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587505, 25.590015, 26.823315>,  <29.682919, 25.517246, 26.615465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587505, 25.590015, 26.823315>,  <29.428484, 25.711298, 27.169729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587505, 25.590015, 26.823315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042223, -0.948872, 0.312825,
		-0.916607, -0.087798, -0.390029,
		0.397553, -0.303206, -0.866036,
		29.706772, 25.499054, 26.563503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189405, 24.978689, 27.146891>,  <29.428484, 25.711298, 27.169729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189405, 24.978689, 27.146891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477793, 25.020462, 26.872868>,  <29.650826, 25.045527, 26.708454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477793, 25.020462, 26.872868>,  <29.189405, 24.978689, 27.146891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477793, 25.020462, 26.872868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202349, -0.977221, 0.063985,
		-0.662769, -0.184752, -0.725675,
		0.720966, 0.104433, -0.685056,
		29.694082, 25.051792, 26.667351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071831, 24.461790, 26.736164>,  <29.189405, 24.978689, 27.146891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071831, 24.461790, 26.736164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456635, 24.561367, 26.691326>,  <29.687517, 24.621113, 26.664423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456635, 24.561367, 26.691326>,  <29.071831, 24.461790, 26.736164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456635, 24.561367, 26.691326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255153, -0.965865, 0.044745,
		-0.097128, -0.071646, -0.992690,
		0.962010, 0.248942, -0.112093,
		29.745237, 24.636049, 26.657698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308292, 24.087339, 26.198221>,  <29.071831, 24.461790, 26.736164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308292, 24.087339, 26.198221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637932, 24.204956, 26.391884>,  <29.835714, 24.275526, 26.508081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637932, 24.204956, 26.391884>,  <29.308292, 24.087339, 26.198221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637932, 24.204956, 26.391884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285284, -0.953851, 0.093709,
		0.489366, 0.060896, -0.869950,
		0.824096, 0.294041, 0.484154,
		29.885160, 24.293169, 26.537130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917576, 23.647423, 26.012550>,  <29.308292, 24.087339, 26.198221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917576, 23.647423, 26.012550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062426, 23.808365, 26.348877>,  <30.149336, 23.904930, 26.550673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062426, 23.808365, 26.348877>,  <29.917576, 23.647423, 26.012550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062426, 23.808365, 26.348877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456574, -0.862985, 0.216326,
		0.812653, 0.305558, -0.496214,
		0.362125, 0.402356, 0.840818,
		30.171062, 23.929071, 26.601122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586817, 23.384062, 26.102898>,  <29.917576, 23.647423, 26.012550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586817, 23.384062, 26.102898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.422554, 23.481857, 26.454258>,  <30.323996, 23.540535, 26.665073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.422554, 23.481857, 26.454258>,  <30.586817, 23.384062, 26.102898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422554, 23.481857, 26.454258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336806, -0.854569, 0.395313,
		0.847303, 0.458189, 0.268590,
		-0.410657, 0.244488, 0.878400,
		30.299356, 23.555204, 26.717777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102381, 23.266424, 26.513283>,  <30.586817, 23.384062, 26.102898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102381, 23.266424, 26.513283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774176, 23.282085, 26.741398>,  <30.577253, 23.291483, 26.878267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774176, 23.282085, 26.741398>,  <31.102381, 23.266424, 26.513283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774176, 23.282085, 26.741398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262737, -0.860194, 0.437076,
		0.507669, 0.508461, 0.695514,
		-0.820513, 0.039153, 0.570286,
		30.528021, 23.293831, 26.912483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374620, 23.052410, 27.120512>,  <31.102381, 23.266424, 26.513283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374620, 23.052410, 27.120512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981604, 23.027428, 27.190613>,  <30.745794, 23.012438, 27.232674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981604, 23.027428, 27.190613>,  <31.374620, 23.052410, 27.120512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981604, 23.027428, 27.190613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158855, -0.771957, 0.615506,
		0.096847, 0.632600, 0.768400,
		-0.982540, -0.062454, 0.175254,
		30.686842, 23.008692, 27.243189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335657, 23.018572, 27.810099>,  <31.374620, 23.052410, 27.120512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335657, 23.018572, 27.810099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988754, 22.861870, 27.687202>,  <30.780613, 22.767849, 27.613464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988754, 22.861870, 27.687202>,  <31.335657, 23.018572, 27.810099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988754, 22.861870, 27.687202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038164, -0.667611, 0.743531,
		-0.496398, 0.633106, 0.593940,
		-0.867256, -0.391755, -0.307239,
		30.728577, 22.744343, 27.595030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176311, 22.648151, 28.348885>,  <31.335657, 23.018572, 27.810099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176311, 22.648151, 28.348885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880730, 22.525967, 28.108673>,  <30.703381, 22.452656, 27.964546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880730, 22.525967, 28.108673>,  <31.176311, 22.648151, 28.348885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880730, 22.525967, 28.108673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267802, -0.684723, 0.677818,
		-0.618245, 0.661701, 0.424176,
		-0.738956, -0.305462, -0.600531,
		30.659042, 22.434328, 27.928514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463886, 22.621044, 28.682291>,  <31.176311, 22.648151, 28.348885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463886, 22.621044, 28.682291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.456224, 22.348900, 28.389240>,  <30.451628, 22.185614, 28.213409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.456224, 22.348900, 28.389240>,  <30.463886, 22.621044, 28.682291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456224, 22.348900, 28.389240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413677, -0.661707, 0.625312,
		-0.910222, 0.315049, -0.268775,
		-0.019153, -0.680359, -0.732629,
		30.450478, 22.144793, 28.169451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835434, 22.201626, 28.741119>,  <30.463886, 22.621044, 28.682291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835434, 22.201626, 28.741119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079796, 21.958023, 28.538769>,  <30.226412, 21.811861, 28.417358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.079796, 21.958023, 28.538769>,  <29.835434, 22.201626, 28.741119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079796, 21.958023, 28.538769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126493, -0.705844, 0.696982,
		-0.781537, -0.361796, -0.508235,
		0.610900, -0.609006, -0.505878,
		30.263067, 21.775322, 28.387005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558376, 21.498468, 28.729002>,  <29.835434, 22.201626, 28.741119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558376, 21.498468, 28.729002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.940479, 21.417095, 28.643120>,  <30.169741, 21.368271, 28.591591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.940479, 21.417095, 28.643120>,  <29.558376, 21.498468, 28.729002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940479, 21.417095, 28.643120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018115, -0.764782, 0.644035,
		-0.295224, -0.611329, -0.734248,
		0.955256, -0.203435, -0.214707,
		30.227057, 21.356064, 28.578707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668266, 20.697727, 28.720367>,  <29.558376, 21.498468, 28.729002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668266, 20.697727, 28.720367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022287, 20.873547, 28.781662>,  <30.234699, 20.979038, 28.818438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022287, 20.873547, 28.781662>,  <29.668266, 20.697727, 28.720367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022287, 20.873547, 28.781662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159451, -0.595543, 0.787340,
		0.437332, -0.672403, -0.597172,
		0.885052, 0.439549, 0.153235,
		30.287804, 21.005411, 28.827633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152649, 20.184618, 28.725370>,  <29.668266, 20.697727, 28.720367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152649, 20.184618, 28.725370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312317, 20.485828, 28.934605>,  <30.408117, 20.666553, 29.060144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312317, 20.485828, 28.934605>,  <30.152649, 20.184618, 28.725370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312317, 20.485828, 28.934605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146127, -0.615463, 0.774501,
		0.905157, -0.232721, -0.355712,
		0.399170, 0.753024, 0.523084,
		30.432068, 20.711737, 29.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545994, 19.856462, 29.247385>,  <30.152649, 20.184618, 28.725370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545994, 19.856462, 29.247385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.531487, 20.234879, 29.376190>,  <30.522781, 20.461929, 29.453472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.531487, 20.234879, 29.376190>,  <30.545994, 19.856462, 29.247385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531487, 20.234879, 29.376190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011658, -0.322601, 0.946463,
		0.999274, 0.030573, 0.022729,
		-0.036269, 0.946041, 0.322011,
		30.520605, 20.518690, 29.472794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087029, 19.952848, 29.720201>,  <30.545994, 19.856462, 29.247385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087029, 19.952848, 29.720201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829605, 20.243744, 29.815662>,  <30.675150, 20.418282, 29.872938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829605, 20.243744, 29.815662>,  <31.087029, 19.952848, 29.720201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829605, 20.243744, 29.815662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027959, -0.289256, 0.956843,
		0.764884, 0.622459, 0.165821,
		-0.643561, 0.727238, 0.238650,
		30.636538, 20.461916, 29.887257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288477, 20.373371, 30.219563>,  <31.087029, 19.952848, 29.720201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288477, 20.373371, 30.219563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891445, 20.374390, 30.268188>,  <30.653227, 20.375000, 30.297363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891445, 20.374390, 30.268188>,  <31.288477, 20.373371, 30.219563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891445, 20.374390, 30.268188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115793, -0.285280, 0.951424,
		0.037102, 0.958441, 0.282868,
		-0.992580, 0.002546, 0.121565,
		30.593672, 20.375153, 30.304659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245474, 19.878403, 30.790970>,  <31.288477, 20.373371, 30.219563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245474, 19.878403, 30.790970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429619, 19.669277, 30.503990>,  <31.540106, 19.543802, 30.331802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429619, 19.669277, 30.503990>,  <31.245474, 19.878403, 30.790970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429619, 19.669277, 30.503990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780705, -0.146267, 0.607541,
		-0.422570, -0.839804, 0.340829,
		0.460363, -0.522815, -0.717447,
		31.567728, 19.512432, 30.288755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778849, 20.166391, 31.195826>,  <31.245474, 19.878403, 30.790970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778849, 20.166391, 31.195826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140816, 20.274090, 31.327660>,  <32.357998, 20.338709, 31.406759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140816, 20.274090, 31.327660>,  <31.778849, 20.166391, 31.195826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140816, 20.274090, 31.327660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018105, 0.749376, -0.661897,
		-0.425196, 0.604931, 0.673250,
		0.904920, 0.269247, 0.329584,
		32.412292, 20.354864, 31.426535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701479, 20.777710, 31.416145>,  <31.778849, 20.166391, 31.195826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701479, 20.777710, 31.416145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098190, 20.747005, 31.375183>,  <32.336216, 20.728582, 31.350605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098190, 20.747005, 31.375183>,  <31.701479, 20.777710, 31.416145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098190, 20.747005, 31.375183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000752, 0.796662, -0.604424,
		0.127979, 0.599531, 0.790053,
		0.991777, -0.076760, -0.102407,
		32.395721, 20.723978, 31.344461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001221, 21.416727, 31.559711>,  <31.701479, 20.777710, 31.416145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001221, 21.416727, 31.559711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284176, 21.241241, 31.338032>,  <32.453949, 21.135950, 31.205025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284176, 21.241241, 31.338032>,  <32.001221, 21.416727, 31.559711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284176, 21.241241, 31.338032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045782, 0.810857, -0.583451,
		0.705343, 0.387353, 0.593674,
		0.707386, -0.438713, -0.554198,
		32.496391, 21.109627, 31.171772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707863, 21.817659, 31.514933>,  <32.001221, 21.416727, 31.559711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707863, 21.817659, 31.514933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.782902, 21.583870, 31.199162>,  <32.827923, 21.443596, 31.009699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.782902, 21.583870, 31.199162>,  <32.707863, 21.817659, 31.514933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782902, 21.583870, 31.199162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326944, 0.795023, -0.510925,
		0.926237, -0.162252, 0.340233,
		0.187594, -0.584475, -0.789428,
		32.839180, 21.408527, 30.962334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279243, 22.093481, 31.324261>,  <32.707863, 21.817659, 31.514933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279243, 22.093481, 31.324261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180321, 21.891399, 30.993538>,  <33.120968, 21.770151, 30.795105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.180321, 21.891399, 30.993538>,  <33.279243, 22.093481, 31.324261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180321, 21.891399, 30.993538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104174, 0.834504, -0.541065,
		0.963321, -0.219940, -0.153749,
		-0.247306, -0.505202, -0.826808,
		33.106129, 21.739840, 30.745495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721180, 22.400331, 30.777256>,  <33.279243, 22.093481, 31.324261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721180, 22.400331, 30.777256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399620, 22.236561, 30.604694>,  <33.206684, 22.138298, 30.501158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399620, 22.236561, 30.604694>,  <33.721180, 22.400331, 30.777256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399620, 22.236561, 30.604694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089525, 0.800377, -0.592775,
		0.587982, -0.437914, -0.680080,
		-0.803905, -0.409425, -0.431403,
		33.158447, 22.113733, 30.475273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740337, 22.452648, 30.004145>,  <33.721180, 22.400331, 30.777256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740337, 22.452648, 30.004145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350529, 22.383949, 30.061840>,  <33.116642, 22.342730, 30.096458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350529, 22.383949, 30.061840>,  <33.740337, 22.452648, 30.004145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350529, 22.383949, 30.061840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223620, 0.694731, -0.683625,
		0.017203, -0.698464, -0.715439,
		-0.974525, -0.171747, 0.144239,
		33.058170, 22.332426, 30.105112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457623, 22.281084, 29.408466>,  <33.740337, 22.452648, 30.004145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457623, 22.281084, 29.408466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169327, 22.443390, 29.633282>,  <32.996349, 22.540773, 29.768171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169327, 22.443390, 29.633282>,  <33.457623, 22.281084, 29.408466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169327, 22.443390, 29.633282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242890, 0.611561, -0.752993,
		-0.649260, -0.679226, -0.342221,
		-0.720740, 0.405766, 0.562039,
		32.953106, 22.565119, 29.801893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865726, 22.261211, 28.959787>,  <33.457623, 22.281084, 29.408466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865726, 22.261211, 28.959787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.764076, 22.516075, 29.250839>,  <32.703087, 22.668993, 29.425470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.764076, 22.516075, 29.250839>,  <32.865726, 22.261211, 28.959787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764076, 22.516075, 29.250839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139861, 0.720212, -0.679510,
		-0.957004, -0.274450, -0.093913,
		-0.254129, 0.637159, 0.727631,
		32.687840, 22.707222, 29.469128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175194, 22.491062, 28.775629>,  <32.865726, 22.261211, 28.959787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175194, 22.491062, 28.775629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341915, 22.759140, 29.021267>,  <32.441948, 22.919987, 29.168650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.341915, 22.759140, 29.021267>,  <32.175194, 22.491062, 28.775629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341915, 22.759140, 29.021267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146436, 0.716260, -0.682296,
		-0.897123, 0.194459, 0.396682,
		0.416806, 0.670192, 0.614097,
		32.466957, 22.960197, 29.205496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719759, 23.000669, 28.644646>,  <32.175194, 22.491062, 28.775629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719759, 23.000669, 28.644646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044437, 23.174755, 28.800461>,  <32.239243, 23.279205, 28.893951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044437, 23.174755, 28.800461>,  <31.719759, 23.000669, 28.644646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044437, 23.174755, 28.800461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102401, 0.762634, -0.638673,
		-0.575035, 0.478519, 0.663592,
		0.811695, 0.435212, 0.389540,
		32.287945, 23.305319, 28.917322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553284, 23.661100, 28.675726>,  <31.719759, 23.000669, 28.644646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553284, 23.661100, 28.675726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951746, 23.686848, 28.699482>,  <32.190823, 23.702297, 28.713736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951746, 23.686848, 28.699482>,  <31.553284, 23.661100, 28.675726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951746, 23.686848, 28.699482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020981, 0.833760, -0.551728,
		-0.085034, 0.548361, 0.831907,
		0.996157, 0.064370, 0.059392,
		32.250591, 23.706160, 28.717300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627474, 24.326719, 28.803764>,  <31.553284, 23.661100, 28.675726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627474, 24.326719, 28.803764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.968748, 24.188953, 28.647072>,  <32.173512, 24.106293, 28.553057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.968748, 24.188953, 28.647072>,  <31.627474, 24.326719, 28.803764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968748, 24.188953, 28.647072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002374, 0.748435, -0.663204,
		0.521604, 0.566766, 0.637735,
		0.853184, -0.344416, -0.391732,
		32.224705, 24.085629, 28.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045589, 25.054054, 28.664103>,  <31.627474, 24.326719, 28.803764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045589, 25.054054, 28.664103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.228668, 24.756577, 28.469196>,  <32.338516, 24.578091, 28.352253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.228668, 24.756577, 28.469196>,  <32.045589, 25.054054, 28.664103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228668, 24.756577, 28.469196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108667, 0.590724, -0.799523,
		0.882441, 0.312992, 0.351190,
		0.457701, -0.743694, -0.487267,
		32.365978, 24.533468, 28.323017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763653, 25.228319, 28.344900>,  <32.045589, 25.054054, 28.664103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763653, 25.228319, 28.344900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661079, 24.905323, 28.132408>,  <32.599537, 24.711525, 28.004913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661079, 24.905323, 28.132408>,  <32.763653, 25.228319, 28.344900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661079, 24.905323, 28.132408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213219, 0.488810, -0.845933,
		0.942752, -0.330191, 0.046826,
		-0.256430, -0.807489, -0.531229,
		32.584148, 24.663076, 27.973040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303062, 25.029209, 27.862896>,  <32.763653, 25.228319, 28.344900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303062, 25.029209, 27.862896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962265, 24.885731, 27.710342>,  <32.757786, 24.799644, 27.618811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962265, 24.885731, 27.710342>,  <33.303062, 25.029209, 27.862896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962265, 24.885731, 27.710342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298462, 0.265743, -0.916679,
		0.430158, -0.894829, -0.119353,
		-0.851988, -0.358695, -0.381384,
		32.706669, 24.778122, 27.595928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554569, 24.740189, 27.293840>,  <33.303062, 25.029209, 27.862896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554569, 24.740189, 27.293840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167316, 24.805649, 27.218018>,  <32.934963, 24.844925, 27.172523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167316, 24.805649, 27.218018>,  <33.554569, 24.740189, 27.293840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167316, 24.805649, 27.218018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234904, 0.331122, -0.913881,
		-0.086790, -0.929289, -0.359013,
		-0.968136, 0.163650, -0.189556,
		32.876877, 24.854744, 27.161150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457409, 24.452555, 26.707190>,  <33.554569, 24.740189, 27.293840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457409, 24.452555, 26.707190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154228, 24.713459, 26.710571>,  <32.972321, 24.870001, 26.712601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154228, 24.713459, 26.710571>,  <33.457409, 24.452555, 26.707190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154228, 24.713459, 26.710571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265297, 0.320073, -0.909490,
		-0.595928, -0.687104, -0.415641,
		-0.757949, 0.652259, 0.008454,
		32.926842, 24.909136, 26.713108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207329, 24.487858, 26.027098>,  <33.457409, 24.452555, 26.707190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207329, 24.487858, 26.027098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071236, 24.827972, 26.187725>,  <32.989582, 25.032042, 26.284101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071236, 24.827972, 26.187725>,  <33.207329, 24.487858, 26.027098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071236, 24.827972, 26.187725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179644, 0.477951, -0.859820,
		-0.923023, -0.220397, -0.315362,
		-0.340229, 0.850287, 0.401567,
		32.969166, 25.083059, 26.308195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847702, 24.820295, 25.501186>,  <33.207329, 24.487858, 26.027098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847702, 24.820295, 25.501186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936668, 25.110817, 25.761345>,  <32.990047, 25.285130, 25.917440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936668, 25.110817, 25.761345>,  <32.847702, 24.820295, 25.501186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936668, 25.110817, 25.761345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266443, 0.596429, -0.757153,
		-0.937837, 0.341698, -0.060862,
		0.222418, 0.726302, 0.650396,
		33.003395, 25.328707, 25.956465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.268490, 35.782333, 15.191615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.511120, 35.491390, 15.063228>,  <18.656698, 35.316826, 14.986195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.511120, 35.491390, 15.063228>,  <18.268490, 35.782333, 15.191615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511120, 35.491390, 15.063228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551521, 0.094194, 0.828826,
		-0.572616, -0.679768, 0.458287,
		0.606577, -0.727354, -0.320969,
		18.693092, 35.273186, 14.966937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403362, 35.188797, 15.703879>,  <18.268490, 35.782333, 15.191615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403362, 35.188797, 15.703879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.709286, 35.263042, 15.457103>,  <18.892839, 35.307590, 15.309037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.709286, 35.263042, 15.457103>,  <18.403362, 35.188797, 15.703879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709286, 35.263042, 15.457103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607389, 0.111566, 0.786531,
		0.214821, -0.976269, -0.027412,
		0.764808, 0.185613, -0.616942,
		18.938728, 35.318726, 15.272020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806459, 34.815571, 16.042467>,  <18.403362, 35.188797, 15.703879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806459, 34.815571, 16.042467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.015055, 35.071510, 15.816672>,  <19.140211, 35.225075, 15.681195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.015055, 35.071510, 15.816672>,  <18.806459, 34.815571, 16.042467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.015055, 35.071510, 15.816672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633913, 0.152301, 0.758261,
		0.571144, -0.753259, -0.326184,
		0.521488, 0.639848, -0.564486,
		19.171501, 35.263466, 15.647326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434311, 34.703526, 16.119835>,  <18.806459, 34.815571, 16.042467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434311, 34.703526, 16.119835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.469297, 35.076527, 15.979672>,  <19.490290, 35.300327, 15.895576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.469297, 35.076527, 15.979672>,  <19.434311, 34.703526, 16.119835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469297, 35.076527, 15.979672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694678, 0.195016, 0.692381,
		0.713984, -0.303979, -0.630733,
		0.087466, 0.932505, -0.350406,
		19.495537, 35.356277, 15.874551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223803, 34.822266, 16.144955>,  <19.434311, 34.703526, 16.119835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223803, 34.822266, 16.144955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.075405, 35.193623, 16.153397>,  <19.986366, 35.416439, 16.158463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.075405, 35.193623, 16.153397>,  <20.223803, 34.822266, 16.144955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.075405, 35.193623, 16.153397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697967, 0.263778, 0.665780,
		0.612540, 0.261732, -0.745849,
		-0.370995, 0.928395, 0.021106,
		19.964108, 35.472141, 16.159729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.807041, 35.349052, 16.016665>,  <20.223803, 34.822266, 16.144955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.807041, 35.349052, 16.016665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.494068, 35.533184, 16.184425>,  <20.306284, 35.643661, 16.285082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.494068, 35.533184, 16.184425>,  <20.807041, 35.349052, 16.016665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494068, 35.533184, 16.184425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612273, 0.445717, 0.653038,
		0.113674, 0.767747, -0.630589,
		-0.782432, 0.460325, 0.419404,
		20.259338, 35.671280, 16.310247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999783, 36.110733, 16.073841>,  <20.807041, 35.349052, 16.016665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999783, 36.110733, 16.073841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.714596, 36.020561, 16.339432>,  <20.543484, 35.966457, 16.498787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.714596, 36.020561, 16.339432>,  <20.999783, 36.110733, 16.073841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714596, 36.020561, 16.339432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482794, 0.528900, 0.697979,
		-0.508519, 0.818198, -0.268253,
		-0.712965, -0.225425, 0.663977,
		20.500706, 35.952934, 16.538626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051916, 36.702141, 16.461040>,  <20.999783, 36.110733, 16.073841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051916, 36.702141, 16.461040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.807968, 36.470287, 16.677219>,  <20.661600, 36.331177, 16.806927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.807968, 36.470287, 16.677219>,  <21.051916, 36.702141, 16.461040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.807968, 36.470287, 16.677219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366412, 0.398450, 0.840821,
		-0.702709, 0.710818, -0.030618,
		-0.609870, -0.579634, 0.540447,
		20.625008, 36.296398, 16.839354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965073, 37.127831, 16.983662>,  <21.051916, 36.702141, 16.461040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965073, 37.127831, 16.983662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.880932, 36.764805, 17.129036>,  <20.830446, 36.546989, 17.216261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.880932, 36.764805, 17.129036>,  <20.965073, 37.127831, 16.983662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880932, 36.764805, 17.129036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535798, 0.203925, 0.819351,
		-0.817724, 0.367081, 0.443372,
		-0.210354, -0.907560, 0.363436,
		20.817825, 36.492538, 17.238066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.626474, 37.250687, 17.692987>,  <20.965073, 37.127831, 16.983662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.626474, 37.250687, 17.692987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795473, 36.889038, 17.667484>,  <20.896872, 36.672050, 17.652182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795473, 36.889038, 17.667484>,  <20.626474, 37.250687, 17.692987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795473, 36.889038, 17.667484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486832, 0.167033, 0.857376,
		-0.764521, -0.393278, 0.510725,
		0.422496, -0.904120, -0.063760,
		20.922222, 36.617802, 17.648355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516851, 37.010113, 18.331676>,  <20.626474, 37.250687, 17.692987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516851, 37.010113, 18.331676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.821150, 36.801224, 18.177505>,  <21.003729, 36.675892, 18.085003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.821150, 36.801224, 18.177505>,  <20.516851, 37.010113, 18.331676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821150, 36.801224, 18.177505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490880, 0.074432, 0.868042,
		-0.424620, -0.849557, 0.312971,
		0.760746, -0.522219, -0.385426,
		21.049374, 36.644558, 18.061878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.629995, 36.559719, 18.823294>,  <20.516851, 37.010113, 18.331676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.629995, 36.559719, 18.823294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968445, 36.555885, 18.610134>,  <21.171515, 36.553585, 18.482239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968445, 36.555885, 18.610134>,  <20.629995, 36.559719, 18.823294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968445, 36.555885, 18.610134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530159, 0.117979, 0.839650,
		0.054820, -0.992970, 0.104908,
		0.846125, -0.009589, -0.532899,
		21.222282, 36.553009, 18.450264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116016, 35.962784, 18.966446>,  <20.629995, 36.559719, 18.823294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116016, 35.962784, 18.966446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342651, 36.253361, 18.810879>,  <21.478632, 36.427708, 18.717539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342651, 36.253361, 18.810879>,  <21.116016, 35.962784, 18.966446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342651, 36.253361, 18.810879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463392, 0.109373, 0.879378,
		0.681357, -0.678465, -0.274660,
		0.566587, 0.726445, -0.388917,
		21.512627, 36.471294, 18.694204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792076, 35.688717, 18.990179>,  <21.116016, 35.962784, 18.966446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792076, 35.688717, 18.990179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865168, 36.081783, 18.977695>,  <21.909021, 36.317623, 18.970205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865168, 36.081783, 18.977695>,  <21.792076, 35.688717, 18.990179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865168, 36.081783, 18.977695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653713, -0.097725, 0.750406,
		0.734350, -0.157521, -0.660240,
		0.182727, 0.982668, -0.031209,
		21.919985, 36.376583, 18.968332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518944, 35.730186, 19.024364>,  <21.792076, 35.688717, 18.990179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518944, 35.730186, 19.024364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373121, 36.088158, 19.127285>,  <22.285627, 36.302940, 19.189037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373121, 36.088158, 19.127285>,  <22.518944, 35.730186, 19.024364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.373121, 36.088158, 19.127285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616650, 0.024970, 0.786842,
		0.697741, 0.445514, -0.560959,
		-0.364556, 0.894927, 0.257303,
		22.263754, 36.356636, 19.204475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.053783, 36.139484, 19.020771>,  <22.518944, 35.730186, 19.024364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.053783, 36.139484, 19.020771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.785006, 36.337009, 19.241547>,  <22.623739, 36.455524, 19.374012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.785006, 36.337009, 19.241547>,  <23.053783, 36.139484, 19.020771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.785006, 36.337009, 19.241547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604927, -0.063993, 0.793705,
		0.427261, 0.867211, -0.255720,
		-0.671946, 0.493812, 0.551941,
		22.583422, 36.485153, 19.407129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.415001, 36.723915, 19.352646>,  <23.053783, 36.139484, 19.020771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.415001, 36.723915, 19.352646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.092615, 36.644711, 19.575790>,  <22.899183, 36.597187, 19.709679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.092615, 36.644711, 19.575790>,  <23.415001, 36.723915, 19.352646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.092615, 36.644711, 19.575790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575043, -0.038182, 0.817232,
		-0.140519, 0.979456, 0.144637,
		-0.805965, -0.198009, 0.557864,
		22.850826, 36.585308, 19.743149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.541130, 37.271687, 20.002655>,  <23.415001, 36.723915, 19.352646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.541130, 37.271687, 20.002655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238800, 37.038540, 20.121986>,  <23.057402, 36.898651, 20.193584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.238800, 37.038540, 20.121986>,  <23.541130, 37.271687, 20.002655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.238800, 37.038540, 20.121986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281552, 0.122036, 0.951754,
		-0.591150, 0.803354, 0.071868,
		-0.755825, -0.582864, 0.298327,
		23.012053, 36.863682, 20.211485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225561, 37.608887, 20.565872>,  <23.541130, 37.271687, 20.002655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225561, 37.608887, 20.565872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.111155, 37.228062, 20.609283>,  <23.042511, 36.999569, 20.635330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.111155, 37.228062, 20.609283>,  <23.225561, 37.608887, 20.565872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111155, 37.228062, 20.609283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366009, -0.003876, 0.930603,
		-0.885568, 0.305890, 0.349571,
		-0.286018, -0.952059, 0.108526,
		23.025349, 36.942444, 20.641842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.830917, 37.698444, 21.204224>,  <23.225561, 37.608887, 20.565872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.830917, 37.698444, 21.204224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.942984, 37.320229, 21.137939>,  <23.010223, 37.093300, 21.098169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.942984, 37.320229, 21.137939>,  <22.830917, 37.698444, 21.204224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942984, 37.320229, 21.137939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247569, -0.095616, 0.964140,
		-0.927479, -0.311143, 0.207299,
		0.280164, -0.945541, -0.165711,
		23.027033, 37.036568, 21.088226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.423292, 37.273876, 21.596083>,  <22.830917, 37.698444, 21.204224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.423292, 37.273876, 21.596083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.774448, 37.098953, 21.518040>,  <22.985142, 36.993999, 21.471214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.774448, 37.098953, 21.518040>,  <22.423292, 37.273876, 21.596083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774448, 37.098953, 21.518040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212354, -0.009663, 0.977145,
		-0.429197, -0.899261, 0.084380,
		0.877893, -0.437306, -0.195109,
		23.037817, 36.967762, 21.459507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.865143, 37.400440, 22.083693>,  <22.423292, 37.273876, 21.596083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.865143, 37.400440, 22.083693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.624424, 37.136562, 22.263756>,  <21.479994, 36.978237, 22.371794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.624424, 37.136562, 22.263756>,  <21.865143, 37.400440, 22.083693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.624424, 37.136562, 22.263756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517779, -0.106875, -0.848813,
		0.608069, -0.743895, -0.277259,
		-0.601795, -0.659695, 0.450160,
		21.443886, 36.938652, 22.398804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778915, 36.788574, 21.725660>,  <21.865143, 37.400440, 22.083693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778915, 36.788574, 21.725660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.439049, 36.756180, 21.934086>,  <21.235128, 36.736744, 22.059141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.439049, 36.756180, 21.934086>,  <21.778915, 36.788574, 21.725660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.439049, 36.756180, 21.934086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447502, -0.411954, -0.793748,
		0.278938, -0.907598, 0.313781,
		-0.849668, -0.080989, 0.521062,
		21.184149, 36.731884, 22.090405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482931, 36.112686, 21.662781>,  <21.778915, 36.788574, 21.725660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482931, 36.112686, 21.662781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.182508, 36.357758, 21.761204>,  <21.002254, 36.504799, 21.820257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.182508, 36.357758, 21.761204>,  <21.482931, 36.112686, 21.662781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182508, 36.357758, 21.761204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514223, -0.309060, -0.800036,
		-0.414119, -0.727397, 0.547174,
		-0.751053, 0.612679, 0.246056,
		20.957191, 36.541561, 21.835022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844828, 35.731560, 21.742788>,  <21.482931, 36.112686, 21.662781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844828, 35.731560, 21.742788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.689060, 36.098408, 21.708763>,  <20.595600, 36.318516, 21.688347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.689060, 36.098408, 21.708763>,  <20.844828, 35.731560, 21.742788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689060, 36.098408, 21.708763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746823, -0.368456, -0.553621,
		-0.539082, -0.152062, 0.828413,
		-0.389418, 0.917125, -0.085065,
		20.572235, 36.373547, 21.683245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151215, 35.587318, 21.899323>,  <20.844828, 35.731560, 21.742788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151215, 35.587318, 21.899323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.184595, 35.913563, 21.670303>,  <20.204622, 36.109310, 21.532892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.184595, 35.913563, 21.670303>,  <20.151215, 35.587318, 21.899323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184595, 35.913563, 21.670303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727855, -0.342543, -0.594047,
		-0.680634, 0.466307, 0.565062,
		0.083450, 0.815612, -0.572550,
		20.209631, 36.158245, 21.498539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447529, 35.677948, 21.735018>,  <20.151215, 35.587318, 21.899323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.447529, 35.677948, 21.735018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.689667, 35.879528, 21.488571>,  <19.834949, 36.000477, 21.340704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.689667, 35.879528, 21.488571>,  <19.447529, 35.677948, 21.735018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.689667, 35.879528, 21.488571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583941, -0.244839, -0.773994,
		-0.540901, 0.828306, 0.146063,
		0.605343, 0.503946, -0.616115,
		19.871269, 36.030712, 21.303736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.992628, 35.925373, 21.214621>,  <19.447529, 35.677948, 21.735018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.992628, 35.925373, 21.214621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337299, 36.001682, 21.026527>,  <19.544102, 36.047466, 20.913671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337299, 36.001682, 21.026527>,  <18.992628, 35.925373, 21.214621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337299, 36.001682, 21.026527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400030, -0.314789, -0.860746,
		-0.312228, 0.929793, -0.194933,
		0.861678, 0.190770, -0.470231,
		19.595802, 36.058914, 20.885458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.801151, 36.314865, 20.646744>,  <18.992628, 35.925373, 21.214621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.801151, 36.314865, 20.646744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.153278, 36.142525, 20.567341>,  <19.364555, 36.039120, 20.519699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.153278, 36.142525, 20.567341>,  <18.801151, 36.314865, 20.646744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153278, 36.142525, 20.567341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363077, -0.342616, -0.866481,
		0.305315, 0.834852, -0.458044,
		0.880317, -0.430855, -0.198510,
		19.417374, 36.013268, 20.507788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909088, 36.364418, 19.919411>,  <18.801151, 36.314865, 20.646744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909088, 36.364418, 19.919411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.147396, 36.058708, 20.018154>,  <19.290380, 35.875282, 20.077400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.147396, 36.058708, 20.018154>,  <18.909088, 36.364418, 19.919411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.147396, 36.058708, 20.018154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404516, -0.551069, -0.729856,
		0.693848, 0.334968, -0.637472,
		0.595769, -0.764277, 0.246858,
		19.326126, 35.829426, 20.092211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.366657, 36.195389, 19.272316>,  <18.909088, 36.364418, 19.919411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.366657, 36.195389, 19.272316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.364363, 35.867374, 19.501228>,  <19.362986, 35.670567, 19.638577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.364363, 35.867374, 19.501228>,  <19.366657, 36.195389, 19.272316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.364363, 35.867374, 19.501228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339636, -0.536673, -0.772418,
		0.940539, -0.198799, -0.275435,
		-0.005738, -0.820037, 0.572281,
		19.362642, 35.621365, 19.672913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601389, 35.673393, 18.864990>,  <19.366657, 36.195389, 19.272316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601389, 35.673393, 18.864990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.420055, 35.451973, 19.144440>,  <19.311255, 35.319122, 19.312109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.420055, 35.451973, 19.144440>,  <19.601389, 35.673393, 18.864990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420055, 35.451973, 19.144440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408440, -0.567649, -0.714808,
		0.792252, -0.609393, 0.031244,
		-0.453335, -0.553547, 0.698622,
		19.284056, 35.285908, 19.354027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649387, 35.092670, 18.562635>,  <19.601389, 35.673393, 18.864990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649387, 35.092670, 18.562635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.393967, 35.004032, 18.857430>,  <19.240715, 34.950848, 19.034306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.393967, 35.004032, 18.857430>,  <19.649387, 35.092670, 18.562635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393967, 35.004032, 18.857430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553654, -0.532874, -0.639932,
		0.534528, -0.816664, 0.217578,
		-0.638551, -0.221599, 0.736986,
		19.202402, 34.937553, 19.078526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514507, 34.309879, 18.692446>,  <19.649387, 35.092670, 18.562635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514507, 34.309879, 18.692446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.179787, 34.484123, 18.825115>,  <18.978954, 34.588669, 18.904716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.179787, 34.484123, 18.825115>,  <19.514507, 34.309879, 18.692446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179787, 34.484123, 18.825115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516883, -0.428781, -0.740931,
		-0.180544, -0.791447, 0.583965,
		-0.836801, 0.435612, 0.331672,
		18.928747, 34.614807, 18.924616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.985006, 33.850830, 18.736355>,  <19.514507, 34.309879, 18.692446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.985006, 33.850830, 18.736355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.749393, 34.173927, 18.746071>,  <18.608025, 34.367786, 18.751902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.749393, 34.173927, 18.746071>,  <18.985006, 33.850830, 18.736355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749393, 34.173927, 18.746071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530628, -0.363932, -0.765498,
		-0.609486, -0.463793, 0.642979,
		-0.589034, 0.807744, 0.024290,
		18.572683, 34.416248, 18.753359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305866, 33.639500, 18.735451>,  <18.985006, 33.850830, 18.736355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305866, 33.639500, 18.735451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.294739, 34.016396, 18.601940>,  <18.288063, 34.242535, 18.521833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.294739, 34.016396, 18.601940>,  <18.305866, 33.639500, 18.735451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.294739, 34.016396, 18.601940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438257, -0.311599, -0.843111,
		-0.898419, 0.122828, 0.421612,
		-0.027817, 0.942241, -0.333777,
		18.286394, 34.299068, 18.501806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580797, 33.932590, 18.675774>,  <18.305866, 33.639500, 18.735451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580797, 33.932590, 18.675774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.813219, 34.091686, 18.391750>,  <17.952671, 34.187145, 18.221336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.813219, 34.091686, 18.391750>,  <17.580797, 33.932590, 18.675774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813219, 34.091686, 18.391750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679479, -0.243150, -0.692233,
		-0.447978, 0.884693, 0.128973,
		0.581054, 0.397740, -0.710056,
		17.987535, 34.211010, 18.178734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031715, 34.187366, 18.234625>,  <17.580797, 33.932590, 18.675774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031715, 34.187366, 18.234625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.342812, 34.261856, 17.994480>,  <17.529470, 34.306549, 17.850393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.342812, 34.261856, 17.994480>,  <17.031715, 34.187366, 18.234625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.342812, 34.261856, 17.994480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615692, 0.033247, -0.787285,
		-0.126653, 0.981944, 0.140516,
		0.777742, 0.186226, -0.600364,
		17.576134, 34.317722, 17.814371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940279, 34.821564, 17.811041>,  <17.031715, 34.187366, 18.234625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940279, 34.821564, 17.811041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.229229, 34.625179, 17.616257>,  <17.402599, 34.507347, 17.499386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.229229, 34.625179, 17.616257>,  <16.940279, 34.821564, 17.811041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229229, 34.625179, 17.616257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553687, 0.011197, -0.832650,
		0.414251, 0.871110, -0.263751,
		0.722376, -0.490961, -0.486960,
		17.445942, 34.477890, 17.470169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057531, 35.032703, 17.096792>,  <16.940279, 34.821564, 17.811041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057531, 35.032703, 17.096792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.239250, 34.676449, 17.089027>,  <17.348282, 34.462696, 17.084368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.239250, 34.676449, 17.089027>,  <17.057531, 35.032703, 17.096792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.239250, 34.676449, 17.089027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388683, -0.178559, -0.903904,
		0.801586, 0.418186, -0.427295,
		0.454297, -0.890639, -0.019411,
		17.375540, 34.409256, 17.083204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387705, 34.953671, 16.451830>,  <17.057531, 35.032703, 17.096792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387705, 34.953671, 16.451830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.343431, 34.580410, 16.588634>,  <17.316868, 34.356453, 16.670717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.343431, 34.580410, 16.588634>,  <17.387705, 34.953671, 16.451830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343431, 34.580410, 16.588634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344745, -0.286712, -0.893839,
		0.932148, -0.216839, -0.289967,
		-0.110682, -0.933155, 0.342012,
		17.310226, 34.300465, 16.691238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795506, 34.457150, 16.039450>,  <17.387705, 34.953671, 16.451830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795506, 34.457150, 16.039450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.531637, 34.210300, 16.211029>,  <17.373316, 34.062191, 16.313976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.531637, 34.210300, 16.211029>,  <17.795506, 34.457150, 16.039450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531637, 34.210300, 16.211029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382714, -0.215368, -0.898414,
		0.646811, -0.756821, -0.094109,
		-0.659670, -0.617121, 0.428948,
		17.333736, 34.025166, 16.339714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.543550, 29.272394, 23.191420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767269, 29.364098, 23.510075>,  <29.901501, 29.419121, 23.701267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767269, 29.364098, 23.510075>,  <29.543550, 29.272394, 23.191420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767269, 29.364098, 23.510075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162180, 0.912165, -0.376369,
		-0.812950, 0.339700, 0.472988,
		0.559295, 0.229260, 0.796636,
		29.935057, 29.432875, 23.749065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236006, 29.855469, 23.357927>,  <29.543550, 29.272394, 23.191420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236006, 29.855469, 23.357927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601601, 29.870342, 23.519543>,  <29.820957, 29.879267, 23.616512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601601, 29.870342, 23.519543>,  <29.236006, 29.855469, 23.357927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601601, 29.870342, 23.519543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028826, 0.987325, -0.156073,
		-0.404722, 0.154295, 0.901329,
		0.913985, 0.037184, 0.404039,
		29.875797, 29.881498, 23.640755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323954, 30.433508, 23.989290>,  <29.236006, 29.855469, 23.357927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323954, 30.433508, 23.989290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665726, 30.354439, 23.797092>,  <29.870789, 30.306997, 23.681774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665726, 30.354439, 23.797092>,  <29.323954, 30.433508, 23.989290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665726, 30.354439, 23.797092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126214, 0.976064, -0.177113,
		0.504006, 0.090685, 0.858926,
		0.854428, -0.197674, -0.480497,
		29.922054, 30.295135, 23.652943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808043, 30.926653, 24.302916>,  <29.323954, 30.433508, 23.989290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808043, 30.926653, 24.302916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983366, 30.810055, 23.962818>,  <30.088560, 30.740095, 23.758759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983366, 30.810055, 23.962818>,  <29.808043, 30.926653, 24.302916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983366, 30.810055, 23.962818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200036, 0.953863, -0.223900,
		0.876284, -0.071943, 0.476394,
		0.438306, -0.291496, -0.850246,
		30.114859, 30.722607, 23.707745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413229, 31.321098, 24.240551>,  <29.808043, 30.926653, 24.302916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413229, 31.321098, 24.240551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356241, 31.174175, 23.872902>,  <30.322048, 31.086021, 23.652313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356241, 31.174175, 23.872902>,  <30.413229, 31.321098, 24.240551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356241, 31.174175, 23.872902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217216, 0.894357, -0.391080,
		0.965671, -0.255365, -0.047633,
		-0.142469, -0.367308, -0.919124,
		30.313501, 31.063982, 23.597164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089014, 31.476089, 23.928526>,  <30.413229, 31.321098, 24.240551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089014, 31.476089, 23.928526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796568, 31.411030, 23.663494>,  <30.621099, 31.371994, 23.504475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796568, 31.411030, 23.663494>,  <31.089014, 31.476089, 23.928526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796568, 31.411030, 23.663494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329942, 0.765755, -0.552049,
		0.597165, -0.622225, -0.506192,
		-0.731118, -0.162650, -0.662580,
		30.577232, 31.362234, 23.464720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434334, 31.485514, 23.341135>,  <31.089014, 31.476089, 23.928526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434334, 31.485514, 23.341135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055922, 31.565071, 23.238789>,  <30.828875, 31.612804, 23.177382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055922, 31.565071, 23.238789>,  <31.434334, 31.485514, 23.341135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055922, 31.565071, 23.238789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309934, 0.785949, -0.535000,
		0.094690, -0.585428, -0.805176,
		-0.946031, 0.198893, -0.255865,
		30.772112, 31.624739, 23.162029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537243, 31.842739, 22.748943>,  <31.434334, 31.485514, 23.341135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537243, 31.842739, 22.748943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158480, 31.927818, 22.845383>,  <30.931223, 31.978867, 22.903246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158480, 31.927818, 22.845383>,  <31.537243, 31.842739, 22.748943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158480, 31.927818, 22.845383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097646, 0.904724, -0.414656,
		-0.306325, -0.369097, -0.877458,
		-0.946906, 0.212700, 0.241099,
		30.874409, 31.991629, 22.917713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288836, 32.135082, 22.095907>,  <31.537243, 31.842739, 22.748943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288836, 32.135082, 22.095907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057747, 32.266365, 22.394844>,  <30.919094, 32.345135, 22.574205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057747, 32.266365, 22.394844>,  <31.288836, 32.135082, 22.095907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057747, 32.266365, 22.394844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211042, 0.944524, -0.251666,
		-0.788481, 0.012328, -0.614936,
		-0.577719, 0.328211, 0.747341,
		30.884432, 32.364830, 22.619047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835079, 32.597351, 21.788139>,  <31.288836, 32.135082, 22.095907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835079, 32.597351, 21.788139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830206, 32.683769, 22.178661>,  <30.827282, 32.735622, 22.412975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830206, 32.683769, 22.178661>,  <30.835079, 32.597351, 21.788139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830206, 32.683769, 22.178661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178319, 0.961198, -0.210479,
		-0.983897, 0.171530, -0.050234,
		-0.012182, 0.216047, 0.976307,
		30.826551, 32.748585, 22.471554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342907, 33.305050, 21.917801>,  <30.835079, 32.597351, 21.788139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342907, 33.305050, 21.917801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611141, 33.232151, 22.205441>,  <30.772081, 33.188412, 22.378025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611141, 33.232151, 22.205441>,  <30.342907, 33.305050, 21.917801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611141, 33.232151, 22.205441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448346, 0.871849, -0.197142,
		-0.591018, 0.454605, 0.666358,
		0.670585, -0.182244, 0.719098,
		30.812317, 33.177479, 22.421169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357391, 33.966003, 22.211481>,  <30.342907, 33.305050, 21.917801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357391, 33.966003, 22.211481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693123, 33.794979, 22.345776>,  <30.894562, 33.692364, 22.426352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693123, 33.794979, 22.345776>,  <30.357391, 33.966003, 22.211481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693123, 33.794979, 22.345776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467917, 0.882585, -0.045801,
		-0.276733, 0.195538, 0.940842,
		0.839329, -0.427561, 0.335736,
		30.944921, 33.666710, 22.446497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381981, 34.631092, 21.814499>,  <30.357391, 33.966003, 22.211481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381981, 34.631092, 21.814499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645657, 34.825935, 21.585346>,  <30.803862, 34.942841, 21.447855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645657, 34.825935, 21.585346>,  <30.381981, 34.631092, 21.814499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645657, 34.825935, 21.585346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751387, 0.396527, -0.527431,
		-0.029755, 0.778132, 0.627396,
		0.659190, 0.487111, -0.572880,
		30.843414, 34.972069, 21.413483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092688, 35.320702, 21.773619>,  <30.381981, 34.631092, 21.814499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092688, 35.320702, 21.773619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348360, 35.256855, 21.472694>,  <30.501764, 35.218548, 21.292139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348360, 35.256855, 21.472694>,  <30.092688, 35.320702, 21.773619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348360, 35.256855, 21.472694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710006, 0.253438, -0.657009,
		0.295532, 0.954092, 0.048666,
		0.639181, -0.159614, -0.752311,
		30.540113, 35.208969, 21.247002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537655, 35.113472, 22.267088>,  <30.092688, 35.320702, 21.773619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537655, 35.113472, 22.267088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161367, 35.248600, 22.254875>,  <28.935595, 35.329678, 22.247547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161367, 35.248600, 22.254875>,  <29.537655, 35.113472, 22.267088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161367, 35.248600, 22.254875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183079, -0.429915, 0.884113,
		0.285542, 0.837289, 0.466276,
		-0.940717, 0.337816, -0.030531,
		28.879152, 35.349945, 22.245716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486897, 35.354046, 22.883110>,  <29.537655, 35.113472, 22.267088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486897, 35.354046, 22.883110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108463, 35.280994, 22.776096>,  <28.881403, 35.237164, 22.711889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108463, 35.280994, 22.776096>,  <29.486897, 35.354046, 22.883110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108463, 35.280994, 22.776096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141596, -0.509666, 0.848641,
		-0.291334, 0.840767, 0.456328,
		-0.946084, -0.182624, -0.267532,
		28.824638, 35.226208, 22.695837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223047, 35.427643, 23.522148>,  <29.486897, 35.354046, 22.883110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223047, 35.427643, 23.522148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945837, 35.239822, 23.303337>,  <28.779510, 35.127132, 23.172050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945837, 35.239822, 23.303337>,  <29.223047, 35.427643, 23.522148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945837, 35.239822, 23.303337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245102, -0.560128, 0.791316,
		-0.677966, 0.682481, 0.273096,
		-0.693027, -0.469549, -0.547026,
		28.737928, 35.098957, 23.139229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608393, 35.540478, 23.804096>,  <29.223047, 35.427643, 23.522148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608393, 35.540478, 23.804096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555065, 35.189068, 23.620609>,  <28.523069, 34.978222, 23.510517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555065, 35.189068, 23.620609>,  <28.608393, 35.540478, 23.804096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555065, 35.189068, 23.620609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202984, -0.428832, 0.880284,
		-0.970064, 0.210471, -0.121155,
		-0.133319, -0.878524, -0.458717,
		28.515070, 34.925510, 23.482994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963505, 35.222855, 24.158020>,  <28.608393, 35.540478, 23.804096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963505, 35.222855, 24.158020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174061, 34.951111, 23.953514>,  <28.300394, 34.788067, 23.830811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174061, 34.951111, 23.953514>,  <27.963505, 35.222855, 24.158020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174061, 34.951111, 23.953514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185558, -0.678610, 0.710673,
		-0.829750, -0.279220, -0.483272,
		0.526387, -0.679356, -0.511265,
		28.331978, 34.747303, 23.800135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547752, 34.648140, 24.206493>,  <27.963505, 35.222855, 24.158020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547752, 34.648140, 24.206493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899429, 34.501930, 24.084240>,  <28.110435, 34.414204, 24.010887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899429, 34.501930, 24.084240>,  <27.547752, 34.648140, 24.206493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899429, 34.501930, 24.084240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156461, -0.827370, 0.539424,
		-0.450045, -0.426438, -0.784608,
		0.879193, -0.365526, -0.305634,
		28.163187, 34.392273, 23.992550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448912, 33.963043, 24.156790>,  <27.547752, 34.648140, 24.206493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448912, 33.963043, 24.156790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847467, 33.991325, 24.175606>,  <28.086601, 34.008293, 24.186895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847467, 33.991325, 24.175606>,  <27.448912, 33.963043, 24.156790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847467, 33.991325, 24.175606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029094, -0.804602, 0.593101,
		0.079786, -0.589590, -0.803752,
		0.996387, 0.070706, 0.047042,
		28.146383, 34.012539, 24.189718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798388, 33.175900, 24.051840>,  <27.448912, 33.963043, 24.156790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798388, 33.175900, 24.051840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080742, 33.411213, 24.209648>,  <28.250154, 33.552402, 24.304333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080742, 33.411213, 24.209648>,  <27.798388, 33.175900, 24.051840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080742, 33.411213, 24.209648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228699, -0.716434, 0.659105,
		0.670388, -0.375027, -0.640262,
		0.705887, 0.588283, 0.394520,
		28.292507, 33.587696, 24.328005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456076, 32.707844, 23.995525>,  <27.798388, 33.175900, 24.051840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456076, 32.707844, 23.995525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444324, 32.985806, 24.282925>,  <28.437273, 33.152584, 24.455364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444324, 32.985806, 24.282925>,  <28.456076, 32.707844, 23.995525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444324, 32.985806, 24.282925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334850, -0.670434, 0.662113,
		0.941813, 0.260041, -0.212993,
		-0.029379, 0.694908, 0.718498,
		28.435511, 33.194279, 24.498474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003397, 32.510052, 24.475313>,  <28.456076, 32.707844, 23.995525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003397, 32.510052, 24.475313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805124, 32.777874, 24.696583>,  <28.686161, 32.938568, 24.829344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805124, 32.777874, 24.696583>,  <29.003397, 32.510052, 24.475313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805124, 32.777874, 24.696583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332452, -0.442139, 0.833060,
		0.802357, 0.596835, -0.003434,
		-0.495681, 0.669553, 0.553172,
		28.656420, 32.978741, 24.862534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437820, 32.679337, 24.889709>,  <29.003397, 32.510052, 24.475313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437820, 32.679337, 24.889709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118677, 32.809288, 25.092834>,  <28.927191, 32.887257, 25.214710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118677, 32.809288, 25.092834>,  <29.437820, 32.679337, 24.889709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118677, 32.809288, 25.092834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361987, -0.415413, 0.834504,
		0.482063, 0.849640, 0.213841,
		-0.797860, 0.324876, 0.507814,
		28.879318, 32.906750, 25.245178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726332, 32.809071, 25.535017>,  <29.437820, 32.679337, 24.889709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726332, 32.809071, 25.535017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333275, 32.759815, 25.590511>,  <29.097441, 32.730263, 25.623808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333275, 32.759815, 25.590511>,  <29.726332, 32.809071, 25.535017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333275, 32.759815, 25.590511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185466, -0.637970, 0.747393,
		-0.003520, 0.760152, 0.649735,
		-0.982644, -0.123135, 0.138737,
		29.038481, 32.722874, 25.632132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579981, 32.996395, 26.173649>,  <29.726332, 32.809071, 25.535017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579981, 32.996395, 26.173649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269928, 32.757877, 26.090118>,  <29.083897, 32.614769, 26.040001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269928, 32.757877, 26.090118>,  <29.579981, 32.996395, 26.173649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269928, 32.757877, 26.090118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175850, -0.521082, 0.835195,
		-0.606833, 0.610664, 0.508765,
		-0.775132, -0.596290, -0.208825,
		29.037388, 32.578991, 26.027472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291803, 32.928108, 26.760225>,  <29.579981, 32.996395, 26.173649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291803, 32.928108, 26.760225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135025, 32.623825, 26.553265>,  <29.040958, 32.441257, 26.429089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135025, 32.623825, 26.553265>,  <29.291803, 32.928108, 26.760225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135025, 32.623825, 26.553265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170303, -0.612674, 0.771769,
		-0.904089, 0.214375, 0.369685,
		-0.391944, -0.760706, -0.517403,
		29.017443, 32.395615, 26.398043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060230, 33.068314, 27.474854>,  <29.291803, 32.928108, 26.760225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060230, 33.068314, 27.474854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386333, 33.242687, 27.627335>,  <29.581995, 33.347309, 27.718822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386333, 33.242687, 27.627335>,  <29.060230, 33.068314, 27.474854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386333, 33.242687, 27.627335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090440, 0.746040, -0.659731,
		-0.571989, 0.503377, 0.647642,
		0.815260, 0.435932, 0.381201,
		29.630911, 33.373466, 27.741695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969738, 33.790760, 27.459299>,  <29.060230, 33.068314, 27.474854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969738, 33.790760, 27.459299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368851, 33.783852, 27.485001>,  <29.608318, 33.779705, 27.500422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368851, 33.783852, 27.485001>,  <28.969738, 33.790760, 27.459299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368851, 33.783852, 27.485001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053823, 0.777265, -0.626867,
		-0.039115, 0.628937, 0.776472,
		0.997784, -0.017272, 0.064254,
		29.668186, 33.778671, 27.504276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122713, 34.495018, 27.413290>,  <28.969738, 33.790760, 27.459299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122713, 34.495018, 27.413290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476942, 34.326149, 27.335796>,  <29.689480, 34.224827, 27.289299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476942, 34.326149, 27.335796>,  <29.122713, 34.495018, 27.413290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476942, 34.326149, 27.335796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150132, 0.654842, -0.740704,
		0.439567, 0.626862, 0.643292,
		0.885574, -0.422168, -0.193735,
		29.742615, 34.199497, 27.277676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662064, 34.966255, 27.483376>,  <29.122713, 34.495018, 27.413290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662064, 34.966255, 27.483376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760080, 34.674774, 27.227577>,  <29.818890, 34.499886, 27.074099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760080, 34.674774, 27.227577>,  <29.662064, 34.966255, 27.483376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760080, 34.674774, 27.227577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228657, 0.684434, -0.692291,
		0.942163, 0.023414, 0.334336,
		0.245040, -0.728699, -0.639494,
		29.833591, 34.456165, 27.035728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267256, 35.252926, 27.166677>,  <29.662064, 34.966255, 27.483376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267256, 35.252926, 27.166677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152481, 34.961891, 26.917427>,  <30.083616, 34.787270, 26.767878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152481, 34.961891, 26.917427>,  <30.267256, 35.252926, 27.166677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152481, 34.961891, 26.917427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441567, 0.476795, -0.760056,
		0.850110, -0.493240, 0.184468,
		-0.286936, -0.727586, -0.623126,
		30.066401, 34.743614, 26.730490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736103, 35.255009, 26.710405>,  <30.267256, 35.252926, 27.166677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736103, 35.255009, 26.710405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450384, 35.035366, 26.536846>,  <30.278954, 34.903580, 26.432711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450384, 35.035366, 26.536846>,  <30.736103, 35.255009, 26.710405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450384, 35.035366, 26.536846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219279, 0.413175, -0.883857,
		0.664604, -0.726481, -0.174723,
		-0.714296, -0.549102, -0.433899,
		30.236095, 34.870636, 26.406677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077499, 34.938526, 26.208311>,  <30.736103, 35.255009, 26.710405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077499, 34.938526, 26.208311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697252, 34.935181, 26.084209>,  <30.469105, 34.933174, 26.009748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697252, 34.935181, 26.084209>,  <31.077499, 34.938526, 26.208311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697252, 34.935181, 26.084209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285294, 0.370052, -0.884120,
		0.122205, -0.928973, -0.349392,
		-0.950617, -0.008365, -0.310253,
		30.412067, 34.932671, 25.991133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114952, 34.776703, 25.573032>,  <31.077499, 34.938526, 26.208311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114952, 34.776703, 25.573032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749239, 34.938732, 25.572441>,  <30.529810, 35.035950, 25.572086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749239, 34.938732, 25.572441>,  <31.114952, 34.776703, 25.573032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749239, 34.938732, 25.572441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204135, 0.457596, -0.865410,
		-0.349877, -0.791532, -0.501062,
		-0.914284, 0.405071, -0.001477,
		30.474955, 35.060253, 25.571999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764626, 34.567772, 24.948862>,  <31.114952, 34.776703, 25.573032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764626, 34.567772, 24.948862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603497, 34.918053, 25.055351>,  <30.506819, 35.128223, 25.119246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603497, 34.918053, 25.055351>,  <30.764626, 34.567772, 24.948862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603497, 34.918053, 25.055351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338398, 0.412750, -0.845650,
		-0.850424, -0.250556, -0.462602,
		-0.402822, 0.875705, 0.266225,
		30.482651, 35.180763, 25.135220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819540, 34.973820, 24.337816>,  <30.764626, 34.567772, 24.948862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819540, 34.973820, 24.337816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751429, 35.247063, 24.621891>,  <30.710562, 35.411011, 24.792336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751429, 35.247063, 24.621891>,  <30.819540, 34.973820, 24.337816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751429, 35.247063, 24.621891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385007, 0.709547, -0.590180,
		-0.907069, 0.172933, -0.383823,
		-0.170279, 0.683109, 0.710188,
		30.700344, 35.451996, 24.834948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716438, 35.527634, 23.971954>,  <30.819540, 34.973820, 24.337816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716438, 35.527634, 23.971954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756842, 35.698257, 24.331474>,  <30.781084, 35.800632, 24.547186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756842, 35.698257, 24.331474>,  <30.716438, 35.527634, 23.971954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756842, 35.698257, 24.331474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252751, 0.862779, -0.437869,
		-0.962244, 0.271403, -0.020664,
		0.101011, 0.426560, 0.898801,
		30.787146, 35.826225, 24.601114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269026, 36.159298, 23.982204>,  <30.716438, 35.527634, 23.971954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269026, 36.159298, 23.982204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563398, 36.198708, 24.250145>,  <30.740021, 36.222355, 24.410910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563398, 36.198708, 24.250145>,  <30.269026, 36.159298, 23.982204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563398, 36.198708, 24.250145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306574, 0.833629, -0.459430,
		-0.603672, 0.543466, 0.583288,
		0.735930, 0.098524, 0.669851,
		30.784178, 36.228264, 24.451099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.742800, 31.253168, 30.733725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.127499, 31.146542, 30.708481>,  <29.358318, 31.082565, 30.693335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.127499, 31.146542, 30.708481>,  <28.742800, 31.253168, 30.733725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127499, 31.146542, 30.708481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166570, 0.751978, -0.637796,
		0.217472, 0.602886, 0.767616,
		0.961748, -0.266565, -0.063111,
		29.416023, 31.066572, 30.689547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183094, 31.867807, 30.937330>,  <28.742800, 31.253168, 30.733725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183094, 31.867807, 30.937330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.391367, 31.631920, 30.690392>,  <29.516331, 31.490387, 30.542229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.391367, 31.631920, 30.690392>,  <29.183094, 31.867807, 30.937330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391367, 31.631920, 30.690392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191390, 0.785326, -0.588755,
		0.832020, 0.188401, 0.521773,
		0.520684, -0.589719, -0.617349,
		29.547573, 31.455004, 30.505186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695765, 32.288582, 30.700808>,  <29.183094, 31.867807, 30.937330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695765, 32.288582, 30.700808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.691458, 31.986492, 30.438656>,  <29.688873, 31.805239, 30.281364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.691458, 31.986492, 30.438656>,  <29.695765, 32.288582, 30.700808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691458, 31.986492, 30.438656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319973, 0.618354, -0.717813,
		0.947365, -0.217432, 0.234994,
		-0.010766, -0.755223, -0.655380,
		29.688229, 31.759926, 30.242043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306559, 32.451588, 30.270992>,  <29.695765, 32.288582, 30.700808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306559, 32.451588, 30.270992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.089668, 32.186317, 30.064617>,  <29.959534, 32.027157, 29.940792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.089668, 32.186317, 30.064617>,  <30.306559, 32.451588, 30.270992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089668, 32.186317, 30.064617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091504, 0.563784, -0.820837,
		0.835235, -0.492290, -0.245016,
		-0.542226, -0.663173, -0.515939,
		29.927000, 31.987366, 29.909836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661324, 32.346134, 29.734550>,  <30.306559, 32.451588, 30.270992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661324, 32.346134, 29.734550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.296879, 32.222569, 29.625412>,  <30.078213, 32.148430, 29.559929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.296879, 32.222569, 29.625412>,  <30.661324, 32.346134, 29.734550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296879, 32.222569, 29.625412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073648, 0.529316, -0.845222,
		0.405526, -0.790187, -0.459514,
		-0.911111, -0.308918, -0.272847,
		30.023546, 32.129894, 29.543558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710970, 32.161423, 28.989491>,  <30.661324, 32.346134, 29.734550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710970, 32.161423, 28.989491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.320204, 32.232727, 29.036587>,  <30.085745, 32.275509, 29.064844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.320204, 32.232727, 29.036587>,  <30.710970, 32.161423, 28.989491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320204, 32.232727, 29.036587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018573, 0.619906, -0.784456,
		-0.212825, -0.764160, -0.608905,
		-0.976914, 0.178261, 0.117739,
		30.027130, 32.286205, 29.071909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414610, 32.038868, 28.312166>,  <30.710970, 32.161423, 28.989491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414610, 32.038868, 28.312166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.185192, 32.293682, 28.518169>,  <30.047541, 32.446571, 28.641771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.185192, 32.293682, 28.518169>,  <30.414610, 32.038868, 28.312166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185192, 32.293682, 28.518169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071194, 0.665079, -0.743371,
		-0.816073, -0.389692, -0.426807,
		-0.573547, 0.637032, 0.515009,
		30.013128, 32.484791, 28.672672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861313, 32.179619, 27.879755>,  <30.414610, 32.038868, 28.312166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861313, 32.179619, 27.879755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.897654, 32.488708, 28.131039>,  <29.919458, 32.674160, 28.281809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.897654, 32.488708, 28.131039>,  <29.861313, 32.179619, 27.879755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897654, 32.488708, 28.131039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152843, 0.612526, -0.775533,
		-0.984065, 0.166477, -0.062455,
		0.090853, 0.772721, 0.628210,
		29.924910, 32.720524, 28.319502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609539, 32.531807, 27.498075>,  <29.861313, 32.179619, 27.879755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609539, 32.531807, 27.498075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.708204, 32.798054, 27.779816>,  <29.767403, 32.957802, 27.948860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.708204, 32.798054, 27.779816>,  <29.609539, 32.531807, 27.498075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708204, 32.798054, 27.779816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119827, 0.700280, -0.703739,
		-0.961665, 0.257986, 0.092973,
		0.246662, 0.665620, 0.704349,
		29.782204, 32.997742, 27.991119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853085, 32.420601, 27.267088>,  <29.609539, 32.531807, 27.498075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853085, 32.420601, 27.267088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.877371, 32.170578, 26.955803>,  <28.891943, 32.020565, 26.769032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.877371, 32.170578, 26.955803>,  <28.853085, 32.420601, 27.267088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877371, 32.170578, 26.955803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203452, -0.755533, 0.622718,
		-0.977201, -0.196138, 0.081296,
		0.060716, -0.625060, -0.778212,
		28.895586, 31.983061, 26.722340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397892, 31.838163, 27.359287>,  <28.853085, 32.420601, 27.267088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397892, 31.838163, 27.359287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.691820, 31.711002, 27.119629>,  <28.868177, 31.634706, 26.975834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.691820, 31.711002, 27.119629>,  <28.397892, 31.838163, 27.359287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691820, 31.711002, 27.119629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235928, -0.708393, 0.665220,
		-0.635904, -0.630173, -0.445541,
		0.734823, -0.317901, -0.599145,
		28.912266, 31.615631, 26.939886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301426, 31.129568, 27.344574>,  <28.397892, 31.838163, 27.359287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301426, 31.129568, 27.344574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.673422, 31.195847, 27.213326>,  <28.896620, 31.235613, 27.134577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.673422, 31.195847, 27.213326>,  <28.301426, 31.129568, 27.344574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673422, 31.195847, 27.213326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309229, -0.835267, 0.454650,
		-0.198733, -0.524284, -0.828029,
		0.929991, 0.165697, -0.328119,
		28.952419, 31.245556, 27.114889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445230, 30.454727, 27.081064>,  <28.301426, 31.129568, 27.344574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445230, 30.454727, 27.081064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.791439, 30.648838, 27.130672>,  <28.999165, 30.765305, 27.160439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.791439, 30.648838, 27.130672>,  <28.445230, 30.454727, 27.081064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791439, 30.648838, 27.130672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351689, -0.765105, 0.539378,
		0.356639, -0.423225, -0.832880,
		0.865519, 0.485278, 0.124023,
		29.051094, 30.794422, 27.167879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923845, 29.920498, 26.800116>,  <28.445230, 30.454727, 27.081064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923845, 29.920498, 26.800116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.127317, 30.199776, 27.001617>,  <29.249401, 30.367342, 27.122519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.127317, 30.199776, 27.001617>,  <28.923845, 29.920498, 26.800116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127317, 30.199776, 27.001617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552096, -0.713498, 0.431405,
		0.660633, 0.058674, -0.748412,
		0.508678, 0.698196, 0.503754,
		29.279921, 30.409235, 27.152744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721283, 29.759411, 26.728878>,  <28.923845, 29.920498, 26.800116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721283, 29.759411, 26.728878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.619820, 29.963490, 27.057598>,  <29.558941, 30.085938, 27.254829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.619820, 29.963490, 27.057598>,  <29.721283, 29.759411, 26.728878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619820, 29.963490, 27.057598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498537, -0.659102, 0.563068,
		0.828926, 0.552526, -0.087164,
		-0.253659, 0.510196, 0.821801,
		29.543722, 30.116549, 27.304138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388447, 29.798428, 27.120750>,  <29.721283, 29.759411, 26.728878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388447, 29.798428, 27.120750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.109974, 29.874203, 27.397717>,  <29.942890, 29.919668, 27.563896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.109974, 29.874203, 27.397717>,  <30.388447, 29.798428, 27.120750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109974, 29.874203, 27.397717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476073, -0.600092, 0.642841,
		0.537293, 0.777176, 0.327588,
		-0.696183, 0.189438, 0.692418,
		29.901119, 29.931034, 27.605442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757910, 29.706486, 27.842203>,  <30.388447, 29.798428, 27.120750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757910, 29.706486, 27.842203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.363544, 29.723255, 27.906975>,  <30.126926, 29.733316, 27.945837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.363544, 29.723255, 27.906975>,  <30.757910, 29.706486, 27.842203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363544, 29.723255, 27.906975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096154, -0.650091, 0.753748,
		0.136870, 0.758699, 0.636901,
		-0.985911, 0.041925, 0.161930,
		30.067772, 29.735832, 27.955553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733421, 29.698771, 28.513599>,  <30.757910, 29.706486, 27.842203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733421, 29.698771, 28.513599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.370691, 29.568619, 28.406418>,  <30.153053, 29.490528, 28.342110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.370691, 29.568619, 28.406418>,  <30.733421, 29.698771, 28.513599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370691, 29.568619, 28.406418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024631, -0.593702, 0.804308,
		-0.420790, 0.735965, 0.530369,
		-0.906824, -0.325381, -0.267952,
		30.098644, 29.471004, 28.326033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346889, 29.556440, 29.170719>,  <30.733421, 29.698771, 28.513599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346889, 29.556440, 29.170719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.167789, 29.351517, 28.877583>,  <30.060329, 29.228561, 28.701700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.167789, 29.351517, 28.877583>,  <30.346889, 29.556440, 29.170719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167789, 29.351517, 28.877583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014982, -0.823772, 0.566723,
		-0.894034, 0.242771, 0.376518,
		-0.447749, -0.512311, -0.732843,
		30.033464, 29.197824, 28.657730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880585, 29.169182, 29.479513>,  <30.346889, 29.556440, 29.170719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880585, 29.169182, 29.479513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.948870, 28.976097, 29.135921>,  <29.989841, 28.860247, 28.929766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.948870, 28.976097, 29.135921>,  <29.880585, 29.169182, 29.479513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948870, 28.976097, 29.135921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152396, -0.848352, 0.507025,
		-0.973464, -0.217461, -0.071262,
		0.170714, -0.482710, -0.858980,
		30.000084, 28.831284, 28.878227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477842, 28.620323, 29.472963>,  <29.880585, 29.169182, 29.479513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477842, 28.620323, 29.472963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.715618, 28.493286, 29.177456>,  <29.858284, 28.417063, 29.000151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.715618, 28.493286, 29.177456>,  <29.477842, 28.620323, 29.472963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715618, 28.493286, 29.177456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022214, -0.924838, 0.379711,
		-0.803834, -0.209304, -0.556814,
		0.594438, -0.317594, -0.738767,
		29.893950, 28.398008, 28.955826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233864, 28.019716, 29.154755>,  <29.477842, 28.620323, 29.472963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233864, 28.019716, 29.154755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.615816, 28.024086, 29.036037>,  <29.844988, 28.026709, 28.964808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.615816, 28.024086, 29.036037>,  <29.233864, 28.019716, 29.154755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615816, 28.024086, 29.036037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079045, -0.972627, 0.218513,
		-0.286280, -0.232114, -0.929605,
		0.954880, 0.010925, -0.296791,
		29.902281, 28.027363, 28.947001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249144, 27.558241, 28.626781>,  <29.233864, 28.019716, 29.154755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249144, 27.558241, 28.626781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.620800, 27.601429, 28.768227>,  <29.843794, 27.627342, 28.853094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.620800, 27.601429, 28.768227>,  <29.249144, 27.558241, 28.626781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620800, 27.601429, 28.768227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007914, -0.961999, 0.272939,
		0.369643, -0.250800, -0.894686,
		0.929140, 0.107971, 0.353612,
		29.899542, 27.633820, 28.874310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.125740, 25.720163, 29.094379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770210, 25.902397, 29.114094>,  <34.556892, 26.011738, 29.125921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.770210, 25.902397, 29.114094>,  <35.125740, 25.720163, 29.094379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770210, 25.902397, 29.114094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199333, 0.481235, -0.853627,
		-0.412615, -0.748904, -0.518548,
		-0.888828, 0.455583, 0.049284,
		34.503563, 26.039072, 29.128880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815514, 25.655485, 28.468143>,  <35.125740, 25.720163, 29.094379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815514, 25.655485, 28.468143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661789, 25.982204, 28.640259>,  <34.569553, 26.178236, 28.743528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661789, 25.982204, 28.640259>,  <34.815514, 25.655485, 28.468143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661789, 25.982204, 28.640259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156520, 0.516981, -0.841565,
		-0.909840, -0.256071, -0.326525,
		-0.384307, 0.816797, 0.430290,
		34.546497, 26.227243, 28.769346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436062, 25.911694, 28.009621>,  <34.815514, 25.655485, 28.468143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436062, 25.911694, 28.009621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504417, 26.220901, 28.253994>,  <34.545429, 26.406425, 28.400618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504417, 26.220901, 28.253994>,  <34.436062, 25.911694, 28.009621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504417, 26.220901, 28.253994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261369, 0.562273, -0.784561,
		-0.949991, 0.293750, -0.105959,
		0.170887, 0.773020, 0.610931,
		34.555683, 26.452808, 28.437273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114239, 26.497128, 27.702244>,  <34.436062, 25.911694, 28.009621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114239, 26.497128, 27.702244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394306, 26.641579, 27.948612>,  <34.562347, 26.728249, 28.096434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394306, 26.641579, 27.948612>,  <34.114239, 26.497128, 27.702244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394306, 26.641579, 27.948612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277535, 0.657155, -0.700801,
		-0.657832, 0.661615, 0.359892,
		0.700165, 0.361127, 0.615919,
		34.604355, 26.749916, 28.133389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012806, 27.187193, 27.805973>,  <34.114239, 26.497128, 27.702244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012806, 27.187193, 27.805973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394661, 27.153774, 27.920296>,  <34.623775, 27.133722, 27.988890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394661, 27.153774, 27.920296>,  <34.012806, 27.187193, 27.805973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394661, 27.153774, 27.920296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251680, 0.739342, -0.624524,
		-0.159133, 0.668126, 0.726831,
		0.954638, -0.083546, 0.285807,
		34.681053, 27.128710, 28.006039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296585, 27.975998, 27.787777>,  <34.012806, 27.187193, 27.805973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296585, 27.975998, 27.787777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614933, 27.734451, 27.805397>,  <34.805943, 27.589523, 27.815969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614933, 27.734451, 27.805397>,  <34.296585, 27.975998, 27.787777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614933, 27.734451, 27.805397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526634, 0.654503, -0.542478,
		0.298753, 0.454940, 0.838914,
		0.795866, -0.603868, 0.044053,
		34.853691, 27.553291, 27.818613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005974, 28.419592, 28.029070>,  <34.296585, 27.975998, 27.787777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005974, 28.419592, 28.029070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097618, 28.087044, 27.826553>,  <35.152603, 27.887514, 27.705044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097618, 28.087044, 27.826553>,  <35.005974, 28.419592, 28.029070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097618, 28.087044, 27.826553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600717, 0.530029, -0.598505,
		0.765928, -0.167013, 0.620855,
		0.229113, -0.831370, -0.506292,
		35.166351, 27.837633, 27.674665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695515, 28.473063, 27.858349>,  <35.005974, 28.419592, 28.029070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695515, 28.473063, 27.858349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549564, 28.197742, 27.607555>,  <35.461994, 28.032551, 27.457079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549564, 28.197742, 27.607555>,  <35.695515, 28.473063, 27.858349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549564, 28.197742, 27.607555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562242, 0.373873, -0.737633,
		0.742124, -0.621663, 0.250573,
		-0.364877, -0.688298, -0.626985,
		35.440102, 27.991253, 27.419460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239044, 28.282274, 27.482885>,  <35.695515, 28.473063, 27.858349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239044, 28.282274, 27.482885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925106, 28.191303, 27.252304>,  <35.736744, 28.136721, 27.113955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925106, 28.191303, 27.252304>,  <36.239044, 28.282274, 27.482885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925106, 28.191303, 27.252304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443219, 0.444121, -0.778661,
		0.433118, -0.866617, -0.247755,
		-0.784835, -0.227442, -0.576459,
		35.689655, 28.123075, 27.079367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561852, 28.133017, 26.919569>,  <36.239044, 28.282274, 27.482885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561852, 28.133017, 26.919569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186569, 28.178085, 26.788677>,  <35.961399, 28.205126, 26.710142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.186569, 28.178085, 26.788677>,  <36.561852, 28.133017, 26.919569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186569, 28.178085, 26.788677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327863, 0.592098, -0.736156,
		0.110808, -0.797951, -0.592449,
		-0.938204, 0.112670, -0.327228,
		35.905109, 28.211885, 26.690510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593010, 28.146978, 26.206461>,  <36.561852, 28.133017, 26.919569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593010, 28.146978, 26.206461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236713, 28.317562, 26.269344>,  <36.022934, 28.419912, 26.307074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236713, 28.317562, 26.269344>,  <36.593010, 28.146978, 26.206461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236713, 28.317562, 26.269344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122077, 0.557647, -0.821052,
		-0.437813, -0.712153, -0.548779,
		-0.890740, 0.426460, 0.157208,
		35.969490, 28.445499, 26.316507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218216, 28.072895, 25.506962>,  <36.593010, 28.146978, 26.206461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218216, 28.072895, 25.506962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030083, 28.364429, 25.705994>,  <35.917202, 28.539351, 25.825413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030083, 28.364429, 25.705994>,  <36.218216, 28.072895, 25.506962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030083, 28.364429, 25.705994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021478, 0.554213, -0.832098,
		-0.882227, -0.402051, -0.245011,
		-0.470334, 0.728837, 0.497578,
		35.888981, 28.583080, 25.855267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636127, 28.334078, 25.050243>,  <36.218216, 28.072895, 25.506962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636127, 28.334078, 25.050243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687210, 28.613987, 25.331387>,  <35.717857, 28.781933, 25.500072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687210, 28.613987, 25.331387>,  <35.636127, 28.334078, 25.050243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687210, 28.613987, 25.331387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024382, 0.706230, -0.707563,
		-0.991513, 0.107494, 0.073126,
		0.127702, 0.699774, 0.702857,
		35.725521, 28.823919, 25.542244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191669, 28.844109, 24.937796>,  <35.636127, 28.334078, 25.050243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191669, 28.844109, 24.937796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493298, 29.020054, 25.132896>,  <35.674274, 29.125620, 25.249956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493298, 29.020054, 25.132896>,  <35.191669, 28.844109, 24.937796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493298, 29.020054, 25.132896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119483, 0.638362, -0.760406,
		-0.645836, 0.631677, 0.428812,
		0.754068, 0.439862, 0.487752,
		35.719517, 29.152012, 25.279222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450741, 29.120977, 24.804409>,  <35.191669, 28.844109, 24.937796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450741, 29.120977, 24.804409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245079, 29.054371, 24.467857>,  <34.121681, 29.014408, 24.265926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245079, 29.054371, 24.467857>,  <34.450741, 29.120977, 24.804409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245079, 29.054371, 24.467857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052943, -0.972942, 0.224904,
		-0.856064, 0.160180, 0.491422,
		-0.514150, -0.166515, -0.841381,
		34.090836, 29.004416, 24.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742233, 28.960371, 25.011814>,  <34.450741, 29.120977, 24.804409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742233, 28.960371, 25.011814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806763, 28.803101, 24.649734>,  <33.845478, 28.708738, 24.432486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806763, 28.803101, 24.649734>,  <33.742233, 28.960371, 25.011814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806763, 28.803101, 24.649734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563621, -0.789626, 0.242532,
		-0.810128, 0.471066, -0.348983,
		0.161318, -0.393176, -0.905202,
		33.855160, 28.685148, 24.378174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130852, 28.669434, 24.863167>,  <33.742233, 28.960371, 25.011814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130852, 28.669434, 24.863167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381809, 28.474350, 24.620342>,  <33.532383, 28.357300, 24.474648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381809, 28.474350, 24.620342>,  <33.130852, 28.669434, 24.863167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381809, 28.474350, 24.620342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423868, -0.867852, 0.259168,
		-0.653237, 0.094714, -0.751206,
		0.627389, -0.487710, -0.607059,
		33.570026, 28.328037, 24.438225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761909, 28.235176, 24.530888>,  <33.130852, 28.669434, 24.863167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761909, 28.235176, 24.530888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129192, 28.079559, 24.501102>,  <33.349564, 27.986189, 24.483232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129192, 28.079559, 24.501102>,  <32.761909, 28.235176, 24.530888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129192, 28.079559, 24.501102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314692, -0.830645, 0.459345,
		-0.240555, -0.398342, -0.885131,
		0.918206, -0.389041, -0.074461,
		33.404655, 27.962847, 24.478764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700706, 27.517927, 24.206758>,  <32.761909, 28.235176, 24.530888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700706, 27.517927, 24.206758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.045593, 27.495937, 24.408180>,  <33.252525, 27.482744, 24.529034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.045593, 27.495937, 24.408180>,  <32.700706, 27.517927, 24.206758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045593, 27.495937, 24.408180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291129, -0.867286, 0.403805,
		0.414527, -0.494766, -0.763789,
		0.862213, -0.054973, 0.503554,
		33.304256, 27.479445, 24.559246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841183, 26.778555, 24.315235>,  <32.700706, 27.517927, 24.206758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841183, 26.778555, 24.315235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131107, 26.929367, 24.545887>,  <33.305061, 27.019855, 24.684277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131107, 26.929367, 24.545887>,  <32.841183, 26.778555, 24.315235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131107, 26.929367, 24.545887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018015, -0.826307, 0.562931,
		0.688715, -0.418405, -0.592122,
		0.724809, 0.377032, 0.576627,
		33.348549, 27.042477, 24.718876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310917, 26.248272, 24.460186>,  <32.841183, 26.778555, 24.315235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310917, 26.248272, 24.460186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356346, 26.510956, 24.758404>,  <33.383602, 26.668566, 24.937334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356346, 26.510956, 24.758404>,  <33.310917, 26.248272, 24.460186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356346, 26.510956, 24.758404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042235, -0.752912, 0.656765,
		0.992632, -0.043102, -0.113245,
		0.113571, 0.656708, 0.745544,
		33.390419, 26.707968, 24.982067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705193, 25.917498, 24.922945>,  <33.310917, 26.248272, 24.460186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705193, 25.917498, 24.922945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562778, 26.220749, 25.141479>,  <33.477329, 26.402700, 25.272600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562778, 26.220749, 25.141479>,  <33.705193, 25.917498, 24.922945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562778, 26.220749, 25.141479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059160, -0.601758, 0.796485,
		0.932600, 0.251252, 0.259096,
		-0.356031, 0.758129, 0.546335,
		33.455971, 26.448187, 25.305380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999882, 25.893206, 25.656313>,  <33.705193, 25.917498, 24.922945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999882, 25.893206, 25.656313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648762, 26.084671, 25.663784>,  <33.438091, 26.199551, 25.668266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648762, 26.084671, 25.663784>,  <33.999882, 25.893206, 25.656313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648762, 26.084671, 25.663784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287710, -0.557997, 0.778372,
		0.382999, 0.677881, 0.627526,
		-0.877801, 0.478662, 0.018679,
		33.385422, 26.228270, 25.669388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897865, 26.156330, 26.382391>,  <33.999882, 25.893206, 25.656313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897865, 26.156330, 26.382391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551617, 26.094028, 26.192047>,  <33.343868, 26.056648, 26.077841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551617, 26.094028, 26.192047>,  <33.897865, 26.156330, 26.382391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551617, 26.094028, 26.192047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317893, -0.563305, 0.762648,
		-0.386839, 0.811436, 0.438095,
		-0.865621, -0.155755, -0.475859,
		33.291931, 26.047302, 26.049290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285965, 26.245365, 26.897173>,  <33.897865, 26.156330, 26.382391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285965, 26.245365, 26.897173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180130, 25.998356, 26.600887>,  <33.116631, 25.850151, 26.423115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180130, 25.998356, 26.600887>,  <33.285965, 26.245365, 26.897173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180130, 25.998356, 26.600887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518612, -0.556453, 0.649154,
		-0.813042, 0.555901, -0.173026,
		-0.264585, -0.617523, -0.740716,
		33.100754, 25.813099, 26.378672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635159, 26.219181, 26.890156>,  <33.285965, 26.245365, 26.897173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635159, 26.219181, 26.890156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756161, 25.874226, 26.727783>,  <32.828762, 25.667253, 26.630360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.756161, 25.874226, 26.727783>,  <32.635159, 26.219181, 26.890156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756161, 25.874226, 26.727783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480061, -0.505775, 0.716752,
		-0.823428, -0.021948, -0.566996,
		0.302504, -0.862386, -0.405933,
		32.846912, 25.615509, 26.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062618, 25.860510, 26.828917>,  <32.635159, 26.219181, 26.890156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062618, 25.860510, 26.828917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355453, 25.588097, 26.835079>,  <32.531155, 25.424648, 26.838776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355453, 25.588097, 26.835079>,  <32.062618, 25.860510, 26.828917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355453, 25.588097, 26.835079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469037, -0.487548, 0.736411,
		-0.494022, -0.546334, -0.676360,
		0.732084, -0.681041, 0.015391,
		32.575081, 25.383787, 26.839701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614456, 25.189779, 26.911627>,  <32.062618, 25.860510, 26.828917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614456, 25.189779, 26.911627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.994223, 25.099808, 26.999275>,  <32.222084, 25.045826, 27.051865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.994223, 25.099808, 26.999275>,  <31.614456, 25.189779, 26.911627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994223, 25.099808, 26.999275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311988, -0.596515, 0.739482,
		-0.035622, -0.770440, -0.636516,
		0.949418, -0.224927, 0.219119,
		32.279049, 25.032330, 27.065010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087700, 24.901333, 26.450647>,  <31.614456, 25.189779, 26.911627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087700, 24.901333, 26.450647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697302, 24.833424, 26.505222>,  <30.463064, 24.792679, 26.537968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.697302, 24.833424, 26.505222>,  <31.087700, 24.901333, 26.450647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697302, 24.833424, 26.505222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217670, 0.738396, -0.638272,
		0.007614, -0.652648, -0.757623,
		-0.975993, -0.169772, 0.136440,
		30.404505, 24.782492, 26.546154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775730, 25.175686, 25.935846>,  <31.087700, 24.901333, 26.450647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775730, 25.175686, 25.935846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448755, 25.135479, 26.162720>,  <30.252571, 25.111355, 26.298843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.448755, 25.135479, 26.162720>,  <30.775730, 25.175686, 25.935846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448755, 25.135479, 26.162720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394737, 0.814852, -0.424498,
		-0.419501, -0.570888, -0.705766,
		-0.817436, -0.100515, 0.567182,
		30.203524, 25.105324, 26.332874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177647, 25.051680, 25.449755>,  <30.775730, 25.175686, 25.935846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177647, 25.051680, 25.449755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.075233, 25.215721, 25.799900>,  <30.013786, 25.314146, 26.009987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.075233, 25.215721, 25.799900>,  <30.177647, 25.051680, 25.449755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075233, 25.215721, 25.799900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269377, 0.839408, -0.472049,
		-0.928377, -0.356663, -0.104443,
		-0.256032, 0.410105, 0.875364,
		29.998425, 25.338753, 26.062510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474125, 25.243679, 25.255133>,  <30.177647, 25.051680, 25.449755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474125, 25.243679, 25.255133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554714, 25.436943, 25.595947>,  <29.603067, 25.552900, 25.800436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554714, 25.436943, 25.595947>,  <29.474125, 25.243679, 25.255133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554714, 25.436943, 25.595947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303905, 0.857780, -0.414554,
		-0.931155, -0.175417, 0.319655,
		0.201474, 0.483158, 0.852037,
		29.615156, 25.581890, 25.851559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022491, 25.874012, 25.279566>,  <29.474125, 25.243679, 25.255133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022491, 25.874012, 25.279566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.300489, 25.992245, 25.541744>,  <29.467289, 26.063185, 25.699051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.300489, 25.992245, 25.541744>,  <29.022491, 25.874012, 25.279566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300489, 25.992245, 25.541744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048550, 0.928805, -0.367374,
		-0.717372, 0.223501, 0.659867,
		0.694997, 0.295580, 0.655448,
		29.508989, 26.080919, 25.738379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772017, 26.474874, 25.590879>,  <29.022491, 25.874012, 25.279566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772017, 26.474874, 25.590879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.169870, 26.473873, 25.632240>,  <29.408583, 26.473272, 25.657057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.169870, 26.473873, 25.632240>,  <28.772017, 26.474874, 25.590879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169870, 26.473873, 25.632240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036011, 0.945546, -0.323489,
		-0.096963, 0.325477, 0.940565,
		0.994636, -0.002504, 0.103404,
		29.468262, 26.473122, 25.663261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883139, 27.136185, 25.729467>,  <28.772017, 26.474874, 25.590879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883139, 27.136185, 25.729467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.258520, 27.010891, 25.671246>,  <29.483749, 26.935715, 25.636312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.258520, 27.010891, 25.671246>,  <28.883139, 27.136185, 25.729467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258520, 27.010891, 25.671246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264550, 0.922778, -0.280167,
		0.222072, 0.224418, 0.948852,
		0.938455, -0.313236, -0.145554,
		29.540056, 26.916920, 25.627579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338070, 27.640440, 26.160761>,  <28.883139, 27.136185, 25.729467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338070, 27.640440, 26.160761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.526663, 27.472153, 25.850742>,  <29.639818, 27.371180, 25.664730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.526663, 27.472153, 25.850742>,  <29.338070, 27.640440, 26.160761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526663, 27.472153, 25.850742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165372, 0.905452, -0.390907,
		0.866230, 0.056135, 0.496481,
		0.471484, -0.420720, -0.775047,
		29.668108, 27.345936, 25.618229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898552, 28.108280, 25.987436>,  <29.338070, 27.640440, 26.160761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898552, 28.108280, 25.987436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898613, 27.882790, 25.657051>,  <29.898649, 27.747496, 25.458820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898613, 27.882790, 25.657051>,  <29.898552, 28.108280, 25.987436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898613, 27.882790, 25.657051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197397, 0.809727, -0.552609,
		0.980324, -0.162958, 0.111402,
		0.000153, -0.563726, -0.825962,
		29.898659, 27.713673, 25.409262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527847, 28.269741, 25.675484>,  <29.898552, 28.108280, 25.987436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527847, 28.269741, 25.675484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.273666, 28.124859, 25.402718>,  <30.121159, 28.037930, 25.239058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.273666, 28.124859, 25.402718>,  <30.527847, 28.269741, 25.675484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273666, 28.124859, 25.402718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292489, 0.704418, -0.646719,
		0.714601, -0.610410, -0.341680,
		-0.635450, -0.362208, -0.681916,
		30.083031, 28.016197, 25.198143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897520, 28.225737, 25.065226>,  <30.527847, 28.269741, 25.675484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897520, 28.225737, 25.065226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524040, 28.213509, 24.922523>,  <30.299953, 28.206173, 24.836903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.524040, 28.213509, 24.922523>,  <30.897520, 28.225737, 25.065226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524040, 28.213509, 24.922523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196633, 0.788891, -0.582225,
		0.299238, -0.613772, -0.730576,
		-0.933698, -0.030569, -0.356754,
		30.243931, 28.204338, 24.815496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841349, 28.184139, 24.336281>,  <30.897520, 28.225737, 25.065226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841349, 28.184139, 24.336281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.471439, 28.325237, 24.393364>,  <30.249495, 28.409897, 24.427614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.471439, 28.325237, 24.393364>,  <30.841349, 28.184139, 24.336281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471439, 28.325237, 24.393364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157703, 0.696599, -0.699914,
		-0.346302, -0.624756, -0.699825,
		-0.924773, 0.352746, 0.142708,
		30.194008, 28.431061, 24.436176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526236, 28.309488, 23.658497>,  <30.841349, 28.184139, 24.336281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526236, 28.309488, 23.658497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.324263, 28.526463, 23.927067>,  <30.203079, 28.656647, 24.088209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.324263, 28.526463, 23.927067>,  <30.526236, 28.309488, 23.658497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324263, 28.526463, 23.927067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175661, 0.826164, -0.535347,
		-0.845096, -0.152370, -0.512441,
		-0.504931, 0.542436, 0.671423,
		30.172783, 28.689194, 24.128494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009689, 28.709473, 23.244905>,  <30.526236, 28.309488, 23.658497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009689, 28.709473, 23.244905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052362, 28.879807, 23.604301>,  <30.077967, 28.982008, 23.819939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052362, 28.879807, 23.604301>,  <30.009689, 28.709473, 23.244905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052362, 28.879807, 23.604301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169818, 0.882565, -0.438452,
		-0.979684, 0.199356, 0.021841,
		0.106684, 0.425836, 0.898489,
		30.084368, 29.007557, 23.873848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.085846, 37.409172, 31.767323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.482212, 37.366589, 31.800182>,  <42.720032, 37.341038, 31.819899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.482212, 37.366589, 31.800182>,  <42.085846, 37.409172, 31.767323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482212, 37.366589, 31.800182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060060, -0.196214, -0.978720,
		0.120310, 0.974765, -0.188039,
		0.990918, -0.106456, 0.082151,
		42.779488, 37.334652, 31.824827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348434, 37.944950, 31.194061>,  <42.085846, 37.409172, 31.767323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348434, 37.944950, 31.194061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.639294, 37.686916, 31.287975>,  <42.813808, 37.532097, 31.344324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.639294, 37.686916, 31.287975>,  <42.348434, 37.944950, 31.194061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639294, 37.686916, 31.287975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234254, -0.088319, -0.968155,
		0.645281, 0.758988, 0.086894,
		0.727143, -0.645087, 0.234787,
		42.857437, 37.493389, 31.358412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963032, 38.121277, 30.714762>,  <42.348434, 37.944950, 31.194061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963032, 38.121277, 30.714762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.999557, 37.738281, 30.824215>,  <43.021473, 37.508484, 30.889887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.999557, 37.738281, 30.824215>,  <42.963032, 38.121277, 30.714762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999557, 37.738281, 30.824215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173472, -0.255287, -0.951176,
		0.980596, 0.134323, 0.142787,
		0.091313, -0.957489, 0.273635,
		43.026951, 37.451035, 30.906305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522530, 37.861977, 30.332521>,  <42.963032, 38.121277, 30.714762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522530, 37.861977, 30.332521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.309288, 37.548637, 30.460381>,  <43.181343, 37.360634, 30.537096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.309288, 37.548637, 30.460381>,  <43.522530, 37.861977, 30.332521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309288, 37.548637, 30.460381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082656, -0.424225, -0.901776,
		0.842005, -0.454316, 0.290902,
		-0.533100, -0.783345, 0.319648,
		43.149357, 37.313633, 30.556274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076328, 37.267853, 30.179539>,  <43.522530, 37.861977, 30.332521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076328, 37.267853, 30.179539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.697636, 37.139355, 30.188435>,  <43.470421, 37.062256, 30.193773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.697636, 37.139355, 30.188435>,  <44.076328, 37.267853, 30.179539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697636, 37.139355, 30.188435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114773, -0.401163, -0.908788,
		0.300867, -0.857829, 0.416665,
		-0.946735, -0.321246, 0.022241,
		43.413616, 37.042980, 30.195107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067245, 36.620285, 29.846582>,  <44.076328, 37.267853, 30.179539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067245, 36.620285, 29.846582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.675488, 36.699493, 29.862488>,  <43.440434, 36.747017, 29.872032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.675488, 36.699493, 29.862488>,  <44.067245, 36.620285, 29.846582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675488, 36.699493, 29.862488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144042, -0.546801, -0.824779,
		-0.141578, -0.813510, 0.564055,
		-0.979391, 0.198018, 0.039765,
		43.381672, 36.758900, 29.874416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775494, 35.969971, 29.669382>,  <44.067245, 36.620285, 29.846582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775494, 35.969971, 29.669382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.471443, 36.226391, 29.626911>,  <43.289013, 36.380241, 29.601429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.471443, 36.226391, 29.626911>,  <43.775494, 35.969971, 29.669382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471443, 36.226391, 29.626911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329967, -0.521579, -0.786815,
		-0.559766, -0.563039, 0.607988,
		-0.760121, 0.641048, -0.106178,
		43.243404, 36.418705, 29.595058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125801, 35.560074, 29.528536>,  <43.775494, 35.969971, 29.669382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125801, 35.560074, 29.528536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.087547, 35.923553, 29.365997>,  <43.064594, 36.141644, 29.268475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.087547, 35.923553, 29.365997>,  <43.125801, 35.560074, 29.528536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087547, 35.923553, 29.365997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274129, -0.416473, -0.866835,
		-0.956926, 0.028494, 0.288929,
		-0.095632, 0.908701, -0.406345,
		43.058857, 36.196163, 29.244093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587269, 35.365986, 29.160378>,  <43.125801, 35.560074, 29.528536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587269, 35.365986, 29.160378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.732883, 35.709644, 29.016518>,  <42.820251, 35.915840, 28.930201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.732883, 35.709644, 29.016518>,  <42.587269, 35.365986, 29.160378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732883, 35.709644, 29.016518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297717, -0.258549, -0.918976,
		-0.882521, 0.441614, 0.161661,
		0.364036, 0.859145, -0.359651,
		42.842094, 35.967388, 28.908623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057030, 35.646118, 28.766422>,  <42.587269, 35.365986, 29.160378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057030, 35.646118, 28.766422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384171, 35.809963, 28.604759>,  <42.580456, 35.908272, 28.507761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384171, 35.809963, 28.604759>,  <42.057030, 35.646118, 28.766422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384171, 35.809963, 28.604759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252232, -0.376101, -0.891587,
		-0.517208, 0.831123, -0.204277,
		0.817848, 0.409611, -0.404158,
		42.629524, 35.932846, 28.483511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849964, 36.014458, 28.086102>,  <42.057030, 35.646118, 28.766422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849964, 36.014458, 28.086102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.246155, 35.991772, 28.035915>,  <42.483868, 35.978161, 28.005804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.246155, 35.991772, 28.035915>,  <41.849964, 36.014458, 28.086102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246155, 35.991772, 28.035915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136723, -0.297359, -0.944925,
		0.016287, 0.953079, -0.302281,
		0.990475, -0.056719, -0.125465,
		42.543297, 35.974754, 27.998276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911484, 36.520157, 27.488565>,  <41.849964, 36.014458, 28.086102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911484, 36.520157, 27.488565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.234997, 36.285534, 27.505600>,  <42.429104, 36.144760, 27.515820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.234997, 36.285534, 27.505600>,  <41.911484, 36.520157, 27.488565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234997, 36.285534, 27.505600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170649, -0.303364, -0.937470,
		0.562799, 0.750946, -0.345452,
		0.808787, -0.586558, 0.042585,
		42.477634, 36.109566, 27.518375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393063, 36.718025, 26.892029>,  <41.911484, 36.520157, 27.488565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393063, 36.718025, 26.892029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.491619, 36.345467, 26.999203>,  <42.550751, 36.121929, 27.063507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.491619, 36.345467, 26.999203>,  <42.393063, 36.718025, 26.892029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491619, 36.345467, 26.999203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007538, -0.274608, -0.961527,
		0.969142, 0.238930, -0.060639,
		0.246389, -0.931398, 0.267935,
		42.565536, 36.066048, 27.079584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881119, 36.461868, 26.446541>,  <42.393063, 36.718025, 26.892029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881119, 36.461868, 26.446541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740547, 36.120293, 26.600048>,  <42.656204, 35.915348, 26.692152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.740547, 36.120293, 26.600048>,  <42.881119, 36.461868, 26.446541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740547, 36.120293, 26.600048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167968, -0.345754, -0.923169,
		0.921022, -0.388892, -0.021926,
		-0.351432, -0.853942, 0.383769,
		42.635117, 35.864109, 26.715179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169247, 36.045372, 25.937366>,  <42.881119, 36.461868, 26.446541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169247, 36.045372, 25.937366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.885502, 35.837399, 26.127720>,  <42.715256, 35.712612, 26.241932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.885502, 35.837399, 26.127720>,  <43.169247, 36.045372, 25.937366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885502, 35.837399, 26.127720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343197, -0.334932, -0.877517,
		0.615642, -0.785803, 0.059149,
		-0.709366, -0.519937, 0.475884,
		42.672691, 35.681419, 26.270485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295357, 35.377197, 25.734638>,  <43.169247, 36.045372, 25.937366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295357, 35.377197, 25.734638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.926651, 35.390213, 25.889194>,  <42.705429, 35.398022, 25.981928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.926651, 35.390213, 25.889194>,  <43.295357, 35.377197, 25.734638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926651, 35.390213, 25.889194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368714, -0.381996, -0.847425,
		0.120022, -0.923591, 0.364107,
		-0.921762, 0.032542, 0.386389,
		42.650124, 35.399975, 26.005112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065052, 34.738338, 25.532356>,  <43.295357, 35.377197, 25.734638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065052, 34.738338, 25.532356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745274, 34.954586, 25.637138>,  <42.553406, 35.084335, 25.700006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745274, 34.954586, 25.637138>,  <43.065052, 34.738338, 25.532356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745274, 34.954586, 25.637138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443622, -0.237249, -0.864241,
		-0.405073, -0.807124, 0.429497,
		-0.799447, 0.540614, 0.261954,
		42.505440, 35.116772, 25.715725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429703, 34.303337, 25.561337>,  <43.065052, 34.738338, 25.532356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429703, 34.303337, 25.561337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301826, 34.681374, 25.534187>,  <42.225101, 34.908195, 25.517899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301826, 34.681374, 25.534187>,  <42.429703, 34.303337, 25.561337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301826, 34.681374, 25.534187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633436, -0.266441, -0.726477,
		-0.704669, -0.189253, 0.683831,
		-0.319689, 0.945089, -0.067872,
		42.205921, 34.964901, 25.513826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610455, 34.261551, 25.543819>,  <42.429703, 34.303337, 25.561337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610455, 34.261551, 25.543819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.732513, 34.606071, 25.381317>,  <41.805748, 34.812786, 25.283815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.732513, 34.606071, 25.381317>,  <41.610455, 34.261551, 25.543819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732513, 34.606071, 25.381317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634294, -0.134377, -0.761324,
		-0.710322, 0.489999, 0.505315,
		0.305145, 0.861303, -0.406255,
		41.824059, 34.864464, 25.259441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028454, 34.660854, 25.342052>,  <41.610455, 34.261551, 25.543819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028454, 34.660854, 25.342052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311230, 34.819241, 25.107635>,  <41.480896, 34.914272, 24.966986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311230, 34.819241, 25.107635>,  <41.028454, 34.660854, 25.342052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311230, 34.819241, 25.107635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573726, -0.163505, -0.802561,
		-0.413607, 0.903591, 0.111588,
		0.706942, 0.395966, -0.586041,
		41.523312, 34.938030, 24.931824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696053, 34.997551, 24.874907>,  <41.028454, 34.660854, 25.342052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696053, 34.997551, 24.874907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044632, 34.930374, 24.690575>,  <41.253780, 34.890068, 24.579975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044632, 34.930374, 24.690575>,  <40.696053, 34.997551, 24.874907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044632, 34.930374, 24.690575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490066, -0.259568, -0.832142,
		0.020134, 0.951010, -0.308503,
		0.871453, -0.167941, -0.460832,
		41.306068, 34.879993, 24.552324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086159, 35.296818, 24.532976>,  <40.696053, 34.997551, 24.874907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086159, 35.296818, 24.532976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814869, 35.567959, 24.419468>,  <39.652096, 35.730644, 24.351364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814869, 35.567959, 24.419468>,  <40.086159, 35.296818, 24.532976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814869, 35.567959, 24.419468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477533, 0.700057, 0.530926,
		0.558544, 0.224579, -0.798494,
		-0.678227, 0.677852, -0.283769,
		39.611401, 35.771313, 24.334337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500244, 35.902897, 24.274931>,  <40.086159, 35.296818, 24.532976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500244, 35.902897, 24.274931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.148689, 36.077515, 24.351864>,  <39.937756, 36.182285, 24.398024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.148689, 36.077515, 24.351864>,  <40.500244, 35.902897, 24.274931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148689, 36.077515, 24.351864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468457, 0.713725, 0.520716,
		0.090042, 0.547749, -0.831783,
		-0.878886, 0.436541, 0.192332,
		39.885025, 36.208477, 24.409563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711430, 36.534458, 24.383989>,  <40.500244, 35.902897, 24.274931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711430, 36.534458, 24.383989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331036, 36.577858, 24.499817>,  <40.102798, 36.603897, 24.569313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331036, 36.577858, 24.499817>,  <40.711430, 36.534458, 24.383989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331036, 36.577858, 24.499817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262778, 0.777169, 0.571801,
		-0.163003, 0.619868, -0.767590,
		-0.950988, 0.108501, 0.289568,
		40.045738, 36.610409, 24.586687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606766, 37.225269, 24.354048>,  <40.711430, 36.534458, 24.383989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606766, 37.225269, 24.354048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.321335, 37.084248, 24.596207>,  <40.150074, 36.999634, 24.741503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.321335, 37.084248, 24.596207>,  <40.606766, 37.225269, 24.354048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321335, 37.084248, 24.596207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284944, 0.643386, 0.710536,
		-0.640006, 0.679530, -0.358651,
		-0.713582, -0.352553, 0.605399,
		40.107262, 36.978481, 24.777826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230862, 37.852478, 24.746532>,  <40.606766, 37.225269, 24.354048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230862, 37.852478, 24.746532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173199, 37.529163, 24.974880>,  <40.138603, 37.335175, 25.111889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173199, 37.529163, 24.974880>,  <40.230862, 37.852478, 24.746532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173199, 37.529163, 24.974880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153274, 0.551694, 0.819842,
		-0.977613, 0.205682, 0.044361,
		-0.144153, -0.808287, 0.570869,
		40.129951, 37.286678, 25.146141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742329, 38.115845, 25.348705>,  <40.230862, 37.852478, 24.746532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742329, 38.115845, 25.348705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.934204, 37.778534, 25.445690>,  <40.049328, 37.576149, 25.503881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.934204, 37.778534, 25.445690>,  <39.742329, 38.115845, 25.348705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934204, 37.778534, 25.445690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265980, 0.403077, 0.875661,
		-0.836154, -0.355554, 0.417646,
		0.479689, -0.843273, 0.242464,
		40.078110, 37.525551, 25.518429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589592, 38.038773, 26.053274>,  <39.742329, 38.115845, 25.348705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589592, 38.038773, 26.053274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884285, 37.770374, 26.019836>,  <40.061100, 37.609333, 25.999773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884285, 37.770374, 26.019836>,  <39.589592, 38.038773, 26.053274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884285, 37.770374, 26.019836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181561, 0.077214, 0.980344,
		-0.651355, -0.737427, 0.178713,
		0.736731, -0.670999, -0.083594,
		40.105305, 37.569073, 25.994759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444202, 37.354012, 26.521370>,  <39.589592, 38.038773, 26.053274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444202, 37.354012, 26.521370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835613, 37.396809, 26.450893>,  <40.070457, 37.422485, 26.408607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.835613, 37.396809, 26.450893>,  <39.444202, 37.354012, 26.521370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835613, 37.396809, 26.450893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186204, -0.092160, 0.978179,
		0.088417, -0.989980, -0.110103,
		0.978525, 0.106989, -0.176189,
		40.129169, 37.428905, 26.398037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803642, 36.984360, 27.006130>,  <39.444202, 37.354012, 26.521370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803642, 36.984360, 27.006130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.104267, 37.222561, 26.892624>,  <40.284641, 37.365482, 26.824520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.104267, 37.222561, 26.892624>,  <39.803642, 36.984360, 27.006130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104267, 37.222561, 26.892624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324113, 0.041305, 0.945116,
		0.574542, -0.802289, -0.161968,
		0.751566, 0.595505, -0.283763,
		40.329739, 37.401211, 26.807495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521610, 36.686596, 27.247374>,  <39.803642, 36.984360, 27.006130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521610, 36.686596, 27.247374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531208, 37.084572, 27.208359>,  <40.536964, 37.323357, 27.184950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531208, 37.084572, 27.208359>,  <40.521610, 36.686596, 27.247374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531208, 37.084572, 27.208359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347780, 0.083164, 0.933881,
		0.937269, -0.056326, -0.344026,
		0.023992, 0.994943, -0.097536,
		40.538406, 37.383053, 27.179098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080975, 36.918945, 27.569189>,  <40.521610, 36.686596, 27.247374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080975, 36.918945, 27.569189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.896149, 37.272865, 27.545101>,  <40.785252, 37.485218, 27.530649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.896149, 37.272865, 27.545101>,  <41.080975, 36.918945, 27.569189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896149, 37.272865, 27.545101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222360, 0.181323, 0.957955,
		0.858516, 0.429250, -0.280527,
		-0.462069, 0.884797, -0.060220,
		40.757526, 37.538303, 27.527035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462677, 37.364422, 27.894415>,  <41.080975, 36.918945, 27.569189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462677, 37.364422, 27.894415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.104038, 37.541199, 27.905708>,  <40.888855, 37.647263, 27.912485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.104038, 37.541199, 27.905708>,  <41.462677, 37.364422, 27.894415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104038, 37.541199, 27.905708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178232, 0.301758, 0.936576,
		0.405391, 0.844767, -0.349324,
		-0.896600, 0.441940, 0.028235,
		40.835060, 37.673782, 27.914179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484325, 37.990589, 28.367065>,  <41.462677, 37.364422, 27.894415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484325, 37.990589, 28.367065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.088593, 37.940666, 28.337029>,  <40.851151, 37.910713, 28.319006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.088593, 37.940666, 28.337029>,  <41.484325, 37.990589, 28.367065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088593, 37.940666, 28.337029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118353, 0.388324, 0.913891,
		-0.084901, 0.913032, -0.398954,
		-0.989335, -0.124807, -0.075091,
		40.791794, 37.903225, 28.314501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161858, 38.562859, 28.560751>,  <41.484325, 37.990589, 28.367065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161858, 38.562859, 28.560751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.846378, 38.320644, 28.603249>,  <40.657093, 38.175316, 28.628746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.846378, 38.320644, 28.603249>,  <41.161858, 38.562859, 28.560751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846378, 38.320644, 28.603249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000479, 0.173417, 0.984848,
		-0.614786, 0.776693, -0.137063,
		-0.788694, -0.605537, 0.106242,
		40.609772, 38.138985, 28.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619152, 38.881233, 28.987890>,  <41.161858, 38.562859, 28.560751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619152, 38.881233, 28.987890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546371, 38.488926, 29.016167>,  <40.502705, 38.253544, 29.033133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546371, 38.488926, 29.016167>,  <40.619152, 38.881233, 28.987890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546371, 38.488926, 29.016167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109224, 0.091604, 0.989787,
		-0.977223, 0.172372, -0.123790,
		-0.181951, -0.980763, 0.070690,
		40.491787, 38.194698, 29.037374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924259, 38.818596, 29.328577>,  <40.619152, 38.881233, 28.987890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924259, 38.818596, 29.328577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115868, 38.470810, 29.376850>,  <40.230835, 38.262138, 29.405815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115868, 38.470810, 29.376850>,  <39.924259, 38.818596, 29.328577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115868, 38.470810, 29.376850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251661, -0.004317, 0.967806,
		-0.840953, -0.493975, -0.220879,
		0.479025, -0.869465, 0.120684,
		40.259575, 38.209969, 29.413055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415577, 38.588917, 29.717190>,  <39.924259, 38.818596, 29.328577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415577, 38.588917, 29.717190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.753166, 38.379253, 29.762745>,  <39.955719, 38.253456, 29.790079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.753166, 38.379253, 29.762745>,  <39.415577, 38.588917, 29.717190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753166, 38.379253, 29.762745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034699, 0.265235, 0.963559,
		-0.535265, -0.809265, 0.242038,
		0.843971, -0.524158, 0.113890,
		40.006359, 38.222008, 29.796911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366760, 38.141975, 30.372766>,  <39.415577, 38.588917, 29.717190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366760, 38.141975, 30.372766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.760731, 38.117142, 30.308193>,  <39.997112, 38.102242, 30.269449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.760731, 38.117142, 30.308193>,  <39.366760, 38.141975, 30.372766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760731, 38.117142, 30.308193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168276, 0.128222, 0.977365,
		-0.039981, -0.989800, 0.136737,
		0.984928, -0.062086, -0.161433,
		40.056210, 38.098515, 30.259764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546963, 37.632389, 30.817570>,  <39.366760, 38.141975, 30.372766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546963, 37.632389, 30.817570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860760, 37.863159, 30.726601>,  <40.049038, 38.001621, 30.672018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860760, 37.863159, 30.726601>,  <39.546963, 37.632389, 30.817570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860760, 37.863159, 30.726601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126427, 0.210240, 0.969441,
		0.607111, -0.789274, 0.091993,
		0.784495, 0.576927, -0.227424,
		40.096107, 38.036236, 30.658373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100288, 37.454689, 31.281752>,  <39.546963, 37.632389, 30.817570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100288, 37.454689, 31.281752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.196838, 37.825687, 31.167564>,  <40.254768, 38.048286, 31.099052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.196838, 37.825687, 31.167564>,  <40.100288, 37.454689, 31.281752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196838, 37.825687, 31.167564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374135, 0.182484, 0.909243,
		0.895412, -0.326270, -0.302962,
		0.241373, 0.927495, -0.285467,
		40.269249, 38.103935, 31.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820950, 37.427837, 31.442091>,  <40.100288, 37.454689, 31.281752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820950, 37.427837, 31.442091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.678398, 37.801384, 31.454025>,  <40.592869, 38.025513, 31.461185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.678398, 37.801384, 31.454025>,  <40.820950, 37.427837, 31.442091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678398, 37.801384, 31.454025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416581, 0.130227, 0.899723,
		0.836335, 0.333069, -0.435440,
		-0.356376, 0.933866, 0.029836,
		40.571484, 38.081543, 31.462976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.592625, 26.951454, 28.413891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.828413, 27.093430, 28.704144>,  <29.969887, 27.178616, 28.878296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.828413, 27.093430, 28.704144>,  <29.592625, 26.951454, 28.413891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828413, 27.093430, 28.704144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080193, -0.919570, 0.384656,
		0.803800, -0.168553, -0.570523,
		0.589470, 0.354938, 0.725633,
		30.005255, 27.199911, 28.921833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092083, 26.388300, 28.569817>,  <29.592625, 26.951454, 28.413891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092083, 26.388300, 28.569817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.106344, 26.620861, 28.894951>,  <30.114901, 26.760399, 29.090031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.106344, 26.620861, 28.894951>,  <30.092083, 26.388300, 28.569817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106344, 26.620861, 28.894951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177039, -0.804161, 0.567435,
		0.983558, 0.123672, -0.131602,
		0.035654, 0.581404, 0.812834,
		30.117041, 26.795282, 29.138802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661764, 26.160791, 28.931082>,  <30.092083, 26.388300, 28.569817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661764, 26.160791, 28.931082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.394423, 26.354164, 29.157215>,  <30.234018, 26.470188, 29.292894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.394423, 26.354164, 29.157215>,  <30.661764, 26.160791, 28.931082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394423, 26.354164, 29.157215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103445, -0.813035, 0.572951,
		0.736616, 0.324453, 0.593403,
		-0.668353, 0.483430, 0.565332,
		30.193916, 26.499193, 29.326815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863377, 26.080856, 29.645605>,  <30.661764, 26.160791, 28.931082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863377, 26.080856, 29.645605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472250, 26.164268, 29.637676>,  <30.237574, 26.214315, 29.632919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472250, 26.164268, 29.637676>,  <30.863377, 26.080856, 29.645605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472250, 26.164268, 29.637676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180822, -0.792527, 0.582413,
		0.105738, 0.573077, 0.812651,
		-0.977816, 0.208528, -0.019824,
		30.178905, 26.226828, 29.631729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548756, 25.713743, 30.214352>,  <30.863377, 26.080856, 29.645605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548756, 25.713743, 30.214352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.217909, 25.810570, 30.011459>,  <30.019402, 25.868666, 29.889723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.217909, 25.810570, 30.011459>,  <30.548756, 25.713743, 30.214352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217909, 25.810570, 30.011459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439195, -0.841517, 0.314574,
		-0.350697, 0.482963, 0.802345,
		-0.827115, 0.242066, -0.507233,
		29.969774, 25.883190, 29.859289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038149, 25.598846, 30.669001>,  <30.548756, 25.713743, 30.214352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038149, 25.598846, 30.669001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818359, 25.624641, 30.335793>,  <29.686485, 25.640118, 30.135868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.818359, 25.624641, 30.335793>,  <30.038149, 25.598846, 30.669001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818359, 25.624641, 30.335793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513917, -0.812189, 0.276112,
		-0.658764, 0.579819, 0.479417,
		-0.549472, 0.064488, -0.833020,
		29.653519, 25.643988, 30.085886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359379, 25.517830, 30.865480>,  <30.038149, 25.598846, 30.669001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359379, 25.517830, 30.865480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.368137, 25.399040, 30.483627>,  <29.373392, 25.327766, 30.254515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.368137, 25.399040, 30.483627>,  <29.359379, 25.517830, 30.865480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368137, 25.399040, 30.483627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529185, -0.813575, 0.240953,
		-0.848224, 0.499903, -0.174967,
		0.021896, -0.296972, -0.954635,
		29.374706, 25.309948, 30.197237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784594, 25.259109, 30.796301>,  <29.359379, 25.517830, 30.865480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784594, 25.259109, 30.796301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971693, 25.084705, 30.488766>,  <29.083952, 24.980062, 30.304245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971693, 25.084705, 30.488766>,  <28.784594, 25.259109, 30.796301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971693, 25.084705, 30.488766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425844, -0.873412, 0.236236,
		-0.774512, 0.216905, -0.594208,
		0.467748, -0.436008, -0.768836,
		29.112017, 24.953903, 30.258116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305843, 24.633141, 30.590002>,  <28.784594, 25.259109, 30.796301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305843, 24.633141, 30.590002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654192, 24.571518, 30.403305>,  <28.863201, 24.534544, 30.291286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.654192, 24.571518, 30.403305>,  <28.305843, 24.633141, 30.590002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654192, 24.571518, 30.403305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142203, -0.987971, 0.060764,
		-0.470490, 0.013455, -0.882303,
		0.870872, -0.154055, -0.466744,
		28.915453, 24.525301, 30.263283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039291, 24.064531, 30.176891>,  <28.305843, 24.633141, 30.590002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039291, 24.064531, 30.176891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.434856, 24.074318, 30.235481>,  <28.672195, 24.080189, 30.270636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.434856, 24.074318, 30.235481>,  <28.039291, 24.064531, 30.176891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434856, 24.074318, 30.235481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008519, -0.994058, 0.108513,
		0.148259, -0.106062, -0.983245,
		0.988912, 0.024464, 0.146475,
		28.731529, 24.081657, 30.279423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329731, 23.515415, 29.809240>,  <28.039291, 24.064531, 30.176891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329731, 23.515415, 29.809240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.599360, 23.599594, 30.092461>,  <28.761137, 23.650103, 30.262394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.599360, 23.599594, 30.092461>,  <28.329731, 23.515415, 29.809240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599360, 23.599594, 30.092461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023519, -0.951956, 0.305331,
		0.738291, -0.222468, -0.636737,
		0.674072, 0.210448, 0.708053,
		28.801580, 23.662729, 30.304876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775766, 22.934383, 29.771141>,  <28.329731, 23.515415, 29.809240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775766, 22.934383, 29.771141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.847139, 23.097046, 30.129536>,  <28.889963, 23.194643, 30.344572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.847139, 23.097046, 30.129536>,  <28.775766, 22.934383, 29.771141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847139, 23.097046, 30.129536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145586, -0.911489, 0.384697,
		0.973122, 0.061802, -0.221841,
		0.178431, 0.406654, 0.895988,
		28.900669, 23.219042, 30.398333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240767, 22.528500, 30.143064>,  <28.775766, 22.934383, 29.771141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240767, 22.528500, 30.143064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041462, 22.738113, 30.419361>,  <28.921879, 22.863882, 30.585140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041462, 22.738113, 30.419361>,  <29.240767, 22.528500, 30.143064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041462, 22.738113, 30.419361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068136, -0.817881, 0.571338,
		0.864346, 0.237610, 0.443223,
		-0.498260, 0.524034, 0.690743,
		28.891985, 22.895323, 30.626585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745527, 22.036831, 29.850870>,  <29.240767, 22.528500, 30.143064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745527, 22.036831, 29.850870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772272, 22.434101, 29.889095>,  <29.788319, 22.672462, 29.912031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772272, 22.434101, 29.889095>,  <29.745527, 22.036831, 29.850870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772272, 22.434101, 29.889095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285212, -0.110806, 0.952038,
		0.956130, -0.036398, -0.290674,
		0.066861, 0.993176, 0.095563,
		29.792330, 22.732054, 29.917765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769032, 21.396961, 30.194786>,  <29.745527, 22.036831, 29.850870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769032, 21.396961, 30.194786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.052065, 21.131233, 30.098446>,  <30.221884, 20.971796, 30.040642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.052065, 21.131233, 30.098446>,  <29.769032, 21.396961, 30.194786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052065, 21.131233, 30.098446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126648, 0.454551, -0.881671,
		0.695190, 0.593351, 0.405767,
		0.707582, -0.664318, -0.240852,
		30.264339, 20.931938, 30.026190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455423, 21.677282, 30.056568>,  <29.769032, 21.396961, 30.194786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455423, 21.677282, 30.056568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.464529, 21.335239, 29.849388>,  <30.469992, 21.130014, 29.725080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.464529, 21.335239, 29.849388>,  <30.455423, 21.677282, 30.056568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464529, 21.335239, 29.849388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248923, 0.506617, -0.825455,
		0.968256, -0.110140, 0.224388,
		0.022763, -0.855107, -0.517951,
		30.471357, 21.078707, 29.694002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063526, 21.692186, 29.698076>,  <30.455423, 21.677282, 30.056568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063526, 21.692186, 29.698076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.829414, 21.434040, 29.501728>,  <30.688948, 21.279152, 29.383919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.829414, 21.434040, 29.501728>,  <31.063526, 21.692186, 29.698076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829414, 21.434040, 29.501728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359540, 0.336054, -0.870516,
		0.726761, -0.685980, 0.035351,
		-0.585277, -0.645367, -0.490868,
		30.653831, 21.240431, 29.354467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341030, 21.720772, 29.052343>,  <31.063526, 21.692186, 29.698076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341030, 21.720772, 29.052343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.028883, 21.481239, 28.980312>,  <30.841595, 21.337521, 28.937094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.028883, 21.481239, 28.980312>,  <31.341030, 21.720772, 29.052343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028883, 21.481239, 28.980312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001347, 0.286364, -0.958120,
		0.625319, -0.747929, -0.222663,
		-0.780369, -0.598830, -0.180077,
		30.794773, 21.301590, 28.926289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478119, 21.223747, 28.462236>,  <31.341030, 21.720772, 29.052343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478119, 21.223747, 28.462236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079891, 21.259960, 28.472397>,  <30.840954, 21.281689, 28.478493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079891, 21.259960, 28.472397>,  <31.478119, 21.223747, 28.462236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079891, 21.259960, 28.472397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024475, 0.510328, -0.859632,
		-0.090788, -0.855201, -0.510282,
		-0.995569, 0.090533, 0.025401,
		30.781219, 21.287121, 28.480017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191347, 21.024263, 27.782457>,  <31.478119, 21.223747, 28.462236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191347, 21.024263, 27.782457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.937267, 21.269524, 27.970318>,  <30.784821, 21.416679, 28.083035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.937267, 21.269524, 27.970318>,  <31.191347, 21.024263, 27.782457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937267, 21.269524, 27.970318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029996, 0.588039, -0.808276,
		-0.771767, -0.527503, -0.355128,
		-0.635197, 0.613149, 0.469652,
		30.746708, 21.453468, 28.111214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698128, 21.182026, 27.337099>,  <31.191347, 21.024263, 27.782457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698128, 21.182026, 27.337099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601612, 21.487442, 27.576694>,  <30.543703, 21.670692, 27.720451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601612, 21.487442, 27.576694>,  <30.698128, 21.182026, 27.337099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601612, 21.487442, 27.576694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337646, 0.512610, -0.789447,
		-0.909821, -0.392731, 0.134120,
		-0.241289, 0.763540, 0.598987,
		30.529226, 21.716503, 27.756392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102730, 21.667389, 27.093060>,  <30.698128, 21.182026, 27.337099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102730, 21.667389, 27.093060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.237293, 21.927147, 27.365856>,  <30.318031, 22.083002, 27.529535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.237293, 21.927147, 27.365856>,  <30.102730, 21.667389, 27.093060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237293, 21.927147, 27.365856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313824, 0.760114, -0.568982,
		-0.887887, -0.022615, 0.459505,
		0.336409, 0.649396, 0.681993,
		30.338217, 22.121965, 27.570454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705807, 22.294464, 27.000759>,  <30.102730, 21.667389, 27.093060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705807, 22.294464, 27.000759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995235, 22.430119, 27.241234>,  <30.168894, 22.511511, 27.385519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995235, 22.430119, 27.241234>,  <29.705807, 22.294464, 27.000759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995235, 22.430119, 27.241234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150654, 0.927571, -0.341929,
		-0.673606, 0.156839, 0.722258,
		0.723573, 0.339136, 0.601189,
		30.212307, 22.531860, 27.421591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447107, 22.797060, 27.470268>,  <29.705807, 22.294464, 27.000759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447107, 22.797060, 27.470268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.831305, 22.868473, 27.384872>,  <30.061823, 22.911322, 27.333635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.831305, 22.868473, 27.384872>,  <29.447107, 22.797060, 27.470268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831305, 22.868473, 27.384872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218526, 0.958840, -0.181306,
		0.172333, 0.220796, 0.959974,
		0.960494, 0.178534, -0.213490,
		30.119453, 22.922033, 27.320826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543568, 23.443298, 27.789442>,  <29.447107, 22.797060, 27.470268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543568, 23.443298, 27.789442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844002, 23.396080, 27.529617>,  <30.024263, 23.367748, 27.373722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844002, 23.396080, 27.529617>,  <29.543568, 23.443298, 27.789442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844002, 23.396080, 27.529617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073320, 0.962884, -0.259767,
		0.656119, 0.242734, 0.714554,
		0.751087, -0.118047, -0.649564,
		30.069328, 23.360666, 27.334747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986431, 24.100746, 27.840668>,  <29.543568, 23.443298, 27.789442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986431, 24.100746, 27.840668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121326, 23.920246, 27.510178>,  <30.202263, 23.811947, 27.311884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121326, 23.920246, 27.510178>,  <29.986431, 24.100746, 27.840668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121326, 23.920246, 27.510178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120950, 0.891131, -0.437330,
		0.933618, 0.047552, 0.355101,
		0.337237, -0.451248, -0.826224,
		30.222498, 23.784872, 27.262310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679708, 24.416786, 27.688759>,  <29.986431, 24.100746, 27.840668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679708, 24.416786, 27.688759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530844, 24.275391, 27.345470>,  <30.441525, 24.190554, 27.139498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530844, 24.275391, 27.345470>,  <30.679708, 24.416786, 27.688759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530844, 24.275391, 27.345470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097285, 0.904689, -0.414817,
		0.923056, -0.237871, -0.302300,
		-0.372160, -0.353490, -0.858220,
		30.419195, 24.169344, 27.088005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960396, 24.813049, 27.151134>,  <30.679708, 24.416786, 27.688759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960396, 24.813049, 27.151134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652536, 24.643013, 26.960583>,  <30.467821, 24.540991, 26.846251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652536, 24.643013, 26.960583>,  <30.960396, 24.813049, 27.151134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652536, 24.643013, 26.960583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200083, 0.869133, -0.452299,
		0.606306, -0.252796, -0.753981,
		-0.769649, -0.425091, -0.476380,
		30.421642, 24.515486, 26.817669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588787, 24.312771, 27.281561>,  <30.960396, 24.813049, 27.151134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588787, 24.312771, 27.281561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950373, 24.470238, 27.348343>,  <32.167324, 24.564718, 27.388412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950373, 24.470238, 27.348343>,  <31.588787, 24.312771, 27.281561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950373, 24.470238, 27.348343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178410, -0.702057, 0.689410,
		0.388613, -0.593414, -0.704868,
		0.903963, 0.393669, 0.166957,
		32.221561, 24.588339, 27.398430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069942, 23.772491, 27.220064>,  <31.588787, 24.312771, 27.281561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069942, 23.772491, 27.220064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234131, 24.050644, 27.456017>,  <32.332645, 24.217535, 27.597588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234131, 24.050644, 27.456017>,  <32.069942, 23.772491, 27.220064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234131, 24.050644, 27.456017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341219, -0.717022, 0.607823,
		0.845626, -0.048214, -0.531593,
		0.410470, 0.695381, 0.589882,
		32.357273, 24.259258, 27.632980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837551, 23.575281, 27.450766>,  <32.069942, 23.772491, 27.220064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837551, 23.575281, 27.450766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680042, 23.834423, 27.711605>,  <32.585537, 23.989908, 27.868109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680042, 23.834423, 27.711605>,  <32.837551, 23.575281, 27.450766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680042, 23.834423, 27.711605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286312, -0.587678, 0.756743,
		0.873481, 0.484687, 0.045923,
		-0.393771, 0.647853, 0.652097,
		32.561913, 24.028778, 27.907234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312042, 23.569815, 28.059248>,  <32.837551, 23.575281, 27.450766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312042, 23.569815, 28.059248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977173, 23.743374, 28.192436>,  <32.776253, 23.847509, 28.272348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977173, 23.743374, 28.192436>,  <33.312042, 23.569815, 28.059248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977173, 23.743374, 28.192436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172832, -0.367726, 0.913732,
		0.518910, 0.822502, 0.232859,
		-0.837175, 0.433899, 0.332971,
		32.726021, 23.873543, 28.292328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526707, 23.692324, 28.724688>,  <33.312042, 23.569815, 28.059248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526707, 23.692324, 28.724688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128178, 23.722935, 28.740093>,  <32.889061, 23.741301, 28.749336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128178, 23.722935, 28.740093>,  <33.526707, 23.692324, 28.724688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128178, 23.722935, 28.740093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012386, -0.573479, 0.819127,
		0.084773, 0.815638, 0.572318,
		-0.996323, 0.076528, 0.038513,
		32.829281, 23.745893, 28.751648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313576, 23.947544, 29.400753>,  <33.526707, 23.692324, 28.724688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313576, 23.947544, 29.400753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999577, 23.733204, 29.276405>,  <32.811176, 23.604599, 29.201797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999577, 23.733204, 29.276405>,  <33.313576, 23.947544, 29.400753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999577, 23.733204, 29.276405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030747, -0.534888, 0.844363,
		-0.618733, 0.653267, 0.436363,
		-0.785000, -0.535852, -0.310867,
		32.764076, 23.572449, 29.183146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855690, 23.872793, 29.993935>,  <33.313576, 23.947544, 29.400753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855690, 23.872793, 29.993935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754589, 23.569412, 29.753647>,  <32.693928, 23.387383, 29.609474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754589, 23.569412, 29.753647>,  <32.855690, 23.872793, 29.993935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754589, 23.569412, 29.753647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022491, -0.625317, 0.780047,
		-0.967269, 0.183649, 0.175109,
		-0.252754, -0.758454, -0.600719,
		32.678764, 23.341877, 29.573431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574650, 24.207830, 30.646944>,  <32.855690, 23.872793, 29.993935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574650, 24.207830, 30.646944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920570, 24.284573, 30.832546>,  <33.128124, 24.330618, 30.943909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920570, 24.284573, 30.832546>,  <32.574650, 24.207830, 30.646944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920570, 24.284573, 30.832546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292986, 0.557664, -0.776641,
		-0.407763, 0.807591, 0.426059,
		0.864806, 0.191856, 0.464007,
		33.180012, 24.342129, 30.971748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596268, 24.901297, 30.707254>,  <32.574650, 24.207830, 30.646944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596268, 24.901297, 30.707254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979122, 24.790279, 30.740395>,  <33.208836, 24.723669, 30.760279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979122, 24.790279, 30.740395>,  <32.596268, 24.901297, 30.707254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979122, 24.790279, 30.740395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272768, 0.767506, -0.580114,
		0.097419, 0.577846, 0.810311,
		0.957135, -0.277541, 0.082849,
		33.266262, 24.707018, 30.765249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900127, 25.493719, 30.897264>,  <32.596268, 24.901297, 30.707254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900127, 25.493719, 30.897264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188259, 25.254738, 30.756313>,  <33.361137, 25.111349, 30.671741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188259, 25.254738, 30.756313>,  <32.900127, 25.493719, 30.897264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188259, 25.254738, 30.756313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293728, 0.722967, -0.625335,
		0.628366, 0.346946, 0.696265,
		0.720334, -0.597451, -0.352380,
		33.404358, 25.075502, 30.650599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419880, 25.927269, 30.883646>,  <32.900127, 25.493719, 30.897264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419880, 25.927269, 30.883646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548615, 25.630627, 30.648209>,  <33.625854, 25.452641, 30.506947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548615, 25.630627, 30.648209>,  <33.419880, 25.927269, 30.883646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548615, 25.630627, 30.648209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372901, 0.670707, -0.641168,
		0.870267, -0.013135, 0.492404,
		0.321837, -0.741606, -0.588592,
		33.645164, 25.408144, 30.471630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046154, 26.207375, 30.685410>,  <33.419880, 25.927269, 30.883646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046154, 26.207375, 30.685410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968971, 25.904099, 30.436279>,  <33.922661, 25.722134, 30.286800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.968971, 25.904099, 30.436279>,  <34.046154, 26.207375, 30.685410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968971, 25.904099, 30.436279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372672, 0.530561, -0.761328,
		0.907680, -0.379015, 0.180180,
		-0.192958, -0.758190, -0.622828,
		33.911083, 25.676641, 30.249432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706516, 26.042007, 30.387491>,  <34.046154, 26.207375, 30.685410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706516, 26.042007, 30.387491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410522, 25.931557, 30.142159>,  <34.232925, 25.865286, 29.994959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410522, 25.931557, 30.142159>,  <34.706516, 26.042007, 30.387491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410522, 25.931557, 30.142159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446267, 0.480693, -0.754837,
		0.503256, -0.832278, -0.232479,
		-0.739986, -0.276129, -0.613330,
		34.188526, 25.848719, 29.958158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968750, 25.689056, 29.834990>,  <34.706516, 26.042007, 30.387491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968750, 25.689056, 29.834990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619137, 25.834457, 29.706036>,  <34.409370, 25.921698, 29.628662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619137, 25.834457, 29.706036>,  <34.968750, 25.689056, 29.834990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619137, 25.834457, 29.706036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463289, 0.423601, -0.778412,
		-0.146391, -0.829716, -0.538648,
		-0.874032, 0.363503, -0.322387,
		34.356926, 25.943508, 29.609320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.826193, 24.961512, 33.286407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623070, 24.737244, 33.024788>,  <30.501196, 24.602682, 32.867817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623070, 24.737244, 33.024788>,  <30.826193, 24.961512, 33.286407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623070, 24.737244, 33.024788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238458, 0.821041, -0.518680,
		0.827811, -0.107424, -0.550625,
		-0.507805, -0.560670, -0.654051,
		30.470728, 24.569042, 32.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904680, 25.277386, 32.702274>,  <30.826193, 24.961512, 33.286407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904680, 25.277386, 32.702274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574177, 25.070911, 32.612076>,  <30.375874, 24.947027, 32.557957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574177, 25.070911, 32.612076>,  <30.904680, 25.277386, 32.702274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574177, 25.070911, 32.612076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366697, 0.796785, -0.480279,
		0.427584, -0.314147, -0.847634,
		-0.826260, -0.516184, -0.225496,
		30.326300, 24.916056, 32.544426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828199, 25.354198, 31.968430>,  <30.904680, 25.277386, 32.702274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828199, 25.354198, 31.968430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.461279, 25.272232, 32.104996>,  <30.241127, 25.223051, 32.186935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.461279, 25.272232, 32.104996>,  <30.828199, 25.354198, 31.968430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461279, 25.272232, 32.104996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360473, 0.791598, -0.493388,
		-0.169160, -0.575657, -0.800002,
		-0.917303, -0.204918, 0.341416,
		30.186089, 25.210756, 32.207420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357506, 25.583710, 31.424982>,  <30.828199, 25.354198, 31.968430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357506, 25.583710, 31.424982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175909, 25.587101, 31.781368>,  <30.066950, 25.589136, 31.995199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175909, 25.587101, 31.781368>,  <30.357506, 25.583710, 31.424982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175909, 25.587101, 31.781368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448459, 0.861887, -0.236717,
		-0.769919, -0.507029, -0.387488,
		-0.453993, 0.008480, 0.890965,
		30.039711, 25.589645, 32.048656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726414, 25.975431, 31.271618>,  <30.357506, 25.583710, 31.424982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726414, 25.975431, 31.271618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.781357, 25.998783, 31.667137>,  <29.814323, 26.012794, 31.904449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.781357, 25.998783, 31.667137>,  <29.726414, 25.975431, 31.271618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781357, 25.998783, 31.667137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259747, 0.965450, -0.020916,
		-0.955858, -0.253965, 0.147777,
		0.137359, 0.058377, 0.988799,
		29.822565, 26.016296, 31.963778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161783, 26.270927, 31.528418>,  <29.726414, 25.975431, 31.271618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161783, 26.270927, 31.528418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.453423, 26.357559, 31.788113>,  <29.628407, 26.409538, 31.943930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.453423, 26.357559, 31.788113>,  <29.161783, 26.270927, 31.528418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453423, 26.357559, 31.788113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253520, 0.966594, -0.037738,
		-0.635721, -0.137079, 0.759650,
		0.729100, 0.216577, 0.649236,
		29.672153, 26.422533, 31.982883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824497, 26.773136, 32.009892>,  <29.161783, 26.270927, 31.528418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824497, 26.773136, 32.009892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.219120, 26.815617, 32.059566>,  <29.455894, 26.841105, 32.089371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.219120, 26.815617, 32.059566>,  <28.824497, 26.773136, 32.009892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219120, 26.815617, 32.059566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100410, 0.993585, -0.052026,
		-0.128915, 0.038857, 0.990894,
		0.986559, 0.106202, 0.124187,
		29.515087, 26.847477, 32.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967150, 27.257290, 32.562862>,  <28.824497, 26.773136, 32.009892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967150, 27.257290, 32.562862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.324310, 27.252010, 32.382839>,  <29.538607, 27.248842, 32.274826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.324310, 27.252010, 32.382839>,  <28.967150, 27.257290, 32.562862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324310, 27.252010, 32.382839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024802, 0.999494, 0.019897,
		0.449570, -0.028928, 0.892776,
		0.892901, -0.013197, -0.450060,
		29.592180, 27.248051, 32.247822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280903, 27.773603, 32.897789>,  <28.967150, 27.257290, 32.562862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280903, 27.773603, 32.897789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.461843, 27.708408, 32.547062>,  <29.570408, 27.669291, 32.336624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.461843, 27.708408, 32.547062>,  <29.280903, 27.773603, 32.897789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461843, 27.708408, 32.547062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084943, 0.986563, -0.139565,
		0.887786, -0.011348, 0.460116,
		0.452349, -0.162988, -0.876821,
		29.597548, 27.659512, 32.284016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816210, 28.209343, 32.967751>,  <29.280903, 27.773603, 32.897789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816210, 28.209343, 32.967751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.789667, 28.109707, 32.581268>,  <29.773741, 28.049925, 32.349380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.789667, 28.109707, 32.581268>,  <29.816210, 28.209343, 32.967751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789667, 28.109707, 32.581268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239575, 0.936035, -0.257764,
		0.968608, -0.248582, -0.002436,
		-0.066356, -0.249088, -0.966205,
		29.769760, 28.034981, 32.291409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417133, 28.454260, 32.599506>,  <29.816210, 28.209343, 32.967751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417133, 28.454260, 32.599506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141272, 28.418320, 32.312092>,  <29.975754, 28.396755, 32.139641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141272, 28.418320, 32.312092>,  <30.417133, 28.454260, 32.599506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141272, 28.418320, 32.312092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014147, 0.993755, -0.110686,
		0.723999, -0.066171, -0.686620,
		-0.689656, -0.089850, -0.718541,
		29.934374, 28.391365, 32.096531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692293, 28.780945, 31.999306>,  <30.417133, 28.454260, 32.599506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692293, 28.780945, 31.999306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.294880, 28.784851, 31.954056>,  <30.056433, 28.787195, 31.926905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.294880, 28.784851, 31.954056>,  <30.692293, 28.780945, 31.999306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294880, 28.784851, 31.954056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039112, 0.964762, -0.260200,
		0.106599, -0.262942, -0.958905,
		-0.993533, 0.009767, -0.113127,
		29.996820, 28.787781, 31.920118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315840, 28.433933, 31.781008>,  <30.692293, 28.780945, 31.999306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315840, 28.433933, 31.781008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.666319, 28.540920, 31.941376>,  <31.876606, 28.605112, 32.037598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.666319, 28.540920, 31.941376>,  <31.315840, 28.433933, 31.781008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666319, 28.540920, 31.941376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004561, -0.827233, 0.561841,
		0.481928, -0.494113, -0.723601,
		0.876199, 0.267467, 0.400920,
		31.929178, 28.621161, 32.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698332, 27.952068, 31.850700>,  <31.315840, 28.433933, 31.781008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698332, 27.952068, 31.850700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864538, 28.174194, 32.138859>,  <31.964262, 28.307470, 32.311752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864538, 28.174194, 32.138859>,  <31.698332, 27.952068, 31.850700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864538, 28.174194, 32.138859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026386, -0.784313, 0.619803,
		0.909203, -0.276547, -0.311242,
		0.415516, 0.555315, 0.720397,
		31.989193, 28.340788, 32.354977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082802, 27.457941, 32.206551>,  <31.698332, 27.952068, 31.850700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082802, 27.457941, 32.206551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.058949, 27.778324, 32.444847>,  <32.044636, 27.970554, 32.587826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.058949, 27.778324, 32.444847>,  <32.082802, 27.457941, 32.206551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058949, 27.778324, 32.444847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182071, -0.578069, 0.795416,
		0.981476, 0.155898, -0.111361,
		-0.059630, 0.800957, 0.595745,
		32.041061, 28.018612, 32.623569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742554, 27.450535, 32.629654>,  <32.082802, 27.457941, 32.206551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742554, 27.450535, 32.629654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443825, 27.651619, 32.803799>,  <32.264587, 27.772270, 32.908287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443825, 27.651619, 32.803799>,  <32.742554, 27.450535, 32.629654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443825, 27.651619, 32.803799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155326, -0.504693, 0.849210,
		0.646634, 0.701830, 0.298830,
		-0.746818, 0.502713, 0.435365,
		32.219780, 27.802433, 32.934406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904556, 27.452652, 33.242950>,  <32.742554, 27.450535, 32.629654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904556, 27.452652, 33.242950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510784, 27.500931, 33.294056>,  <32.274521, 27.529898, 33.324718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510784, 27.500931, 33.294056>,  <32.904556, 27.452652, 33.242950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510784, 27.500931, 33.294056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058686, -0.459451, 0.886262,
		0.165670, 0.879964, 0.445216,
		-0.984434, 0.120699, 0.127759,
		32.215454, 27.537140, 33.332382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836311, 27.677803, 33.929039>,  <32.904556, 27.452652, 33.242950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836311, 27.677803, 33.929039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482895, 27.519459, 33.828926>,  <32.270844, 27.424452, 33.768860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482895, 27.519459, 33.828926>,  <32.836311, 27.677803, 33.929039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482895, 27.519459, 33.828926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021578, -0.568235, 0.822583,
		-0.467850, 0.721388, 0.510603,
		-0.883545, -0.395863, -0.250282,
		32.217831, 27.400700, 33.753841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507668, 27.461477, 34.520836>,  <32.836311, 27.677803, 33.929039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507668, 27.461477, 34.520836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.276257, 27.266319, 34.259377>,  <32.137409, 27.149223, 34.102501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.276257, 27.266319, 34.259377>,  <32.507668, 27.461477, 34.520836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276257, 27.266319, 34.259377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061936, -0.772786, 0.631638,
		-0.813306, 0.405906, 0.416861,
		-0.578530, -0.487896, -0.653652,
		32.102699, 27.119951, 34.063282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220062, 27.071644, 34.900509>,  <32.507668, 27.461477, 34.520836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220062, 27.071644, 34.900509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125591, 26.878689, 34.563103>,  <32.068909, 26.762915, 34.360657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125591, 26.878689, 34.563103>,  <32.220062, 27.071644, 34.900509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125591, 26.878689, 34.563103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096610, -0.852118, 0.514356,
		-0.966896, 0.202969, 0.154644,
		-0.236173, -0.482389, -0.843518,
		32.054741, 26.733973, 34.310047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629333, 26.765472, 35.104530>,  <32.220062, 27.071644, 34.900509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629333, 26.765472, 35.104530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762877, 26.591763, 34.769878>,  <31.843002, 26.487537, 34.569088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762877, 26.591763, 34.769878>,  <31.629333, 26.765472, 35.104530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762877, 26.591763, 34.769878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332895, -0.884681, 0.326376,
		-0.881881, 0.169542, -0.439932,
		0.333865, -0.434276, -0.836623,
		31.863033, 26.461479, 34.518890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187162, 26.226009, 35.013138>,  <31.629333, 26.765472, 35.104530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187162, 26.226009, 35.013138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.456394, 26.104279, 34.743515>,  <31.617933, 26.031240, 34.581741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.456394, 26.104279, 34.743515>,  <31.187162, 26.226009, 35.013138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456394, 26.104279, 34.743515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154611, -0.949176, 0.274154,
		-0.723229, -0.080311, -0.685923,
		0.673079, -0.304327, -0.674054,
		31.658318, 26.012980, 34.541298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909187, 25.557665, 34.615685>,  <31.187162, 26.226009, 35.013138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909187, 25.557665, 34.615685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.308954, 25.570412, 34.620590>,  <31.548815, 25.578060, 34.623535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.308954, 25.570412, 34.620590>,  <30.909187, 25.557665, 34.615685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308954, 25.570412, 34.620590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030703, -0.995851, 0.085665,
		0.014946, -0.085238, -0.996249,
		0.999417, 0.031868, 0.012267,
		31.608780, 25.579971, 34.624271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033646, 24.856455, 34.525928>,  <30.909187, 25.557665, 34.615685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033646, 24.856455, 34.525928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387995, 25.027897, 34.596954>,  <31.600603, 25.130762, 34.639568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387995, 25.027897, 34.596954>,  <31.033646, 24.856455, 34.525928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387995, 25.027897, 34.596954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435979, -0.899952, -0.002800,
		0.158600, 0.079895, -0.984105,
		0.885871, 0.428605, 0.177565,
		31.653757, 25.156479, 34.650223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598356, 24.634596, 34.082771>,  <31.033646, 24.856455, 34.525928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598356, 24.634596, 34.082771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.755724, 24.745049, 34.433537>,  <31.850145, 24.811319, 34.643993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.755724, 24.745049, 34.433537>,  <31.598356, 24.634596, 34.082771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755724, 24.745049, 34.433537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438626, -0.894647, 0.084930,
		0.807978, 0.351223, -0.473090,
		0.393419, 0.276132, 0.876911,
		31.873751, 24.827888, 34.696609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363483, 24.596485, 34.012154>,  <31.598356, 24.634596, 34.082771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363483, 24.596485, 34.012154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.234394, 24.528599, 34.384613>,  <32.156940, 24.487867, 34.608089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.234394, 24.528599, 34.384613>,  <32.363483, 24.596485, 34.012154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234394, 24.528599, 34.384613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730096, -0.670710, 0.130796,
		0.602336, 0.722042, 0.340363,
		-0.322725, -0.169715, 0.931153,
		32.137577, 24.477684, 34.663960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427090, 23.913843, 33.569973>,  <32.363483, 24.596485, 34.012154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427090, 23.913843, 33.569973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462120, 23.521057, 33.502949>,  <32.483139, 23.285385, 33.462734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.462120, 23.521057, 33.502949>,  <32.427090, 23.913843, 33.569973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462120, 23.521057, 33.502949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568231, 0.187402, -0.801245,
		0.818195, -0.025042, 0.574395,
		0.087579, -0.981964, -0.167561,
		32.488392, 23.226467, 33.452679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129612, 23.732435, 33.523678>,  <32.427090, 23.913843, 33.569973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129612, 23.732435, 33.523678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.941990, 23.452091, 33.308723>,  <32.829414, 23.283884, 33.179752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.941990, 23.452091, 33.308723>,  <33.129612, 23.732435, 33.523678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941990, 23.452091, 33.308723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600782, 0.192778, -0.775821,
		0.647338, -0.686753, 0.330641,
		-0.469057, -0.700861, -0.537381,
		32.801273, 23.241833, 33.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632526, 23.379206, 33.147751>,  <33.129612, 23.732435, 33.523678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632526, 23.379206, 33.147751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305279, 23.279789, 32.940323>,  <33.108932, 23.220139, 32.815868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305279, 23.279789, 32.940323>,  <33.632526, 23.379206, 33.147751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305279, 23.279789, 32.940323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504739, 0.121730, -0.854646,
		0.275541, -0.960942, 0.025859,
		-0.818117, -0.248542, -0.518566,
		33.059845, 23.205227, 32.784752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829918, 23.054684, 32.650570>,  <33.632526, 23.379206, 33.147751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829918, 23.054684, 32.650570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476696, 23.174267, 32.505882>,  <33.264763, 23.246017, 32.419067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476696, 23.174267, 32.505882>,  <33.829918, 23.054684, 32.650570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476696, 23.174267, 32.505882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419640, 0.158038, -0.893827,
		-0.210052, -0.941088, -0.265011,
		-0.883052, 0.298960, -0.361722,
		33.211781, 23.263954, 32.397366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846176, 22.883144, 31.855007>,  <33.829918, 23.054684, 32.650570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846176, 22.883144, 31.855007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543983, 23.136097, 31.923531>,  <33.362667, 23.287868, 31.964645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543983, 23.136097, 31.923531>,  <33.846176, 22.883144, 31.855007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543983, 23.136097, 31.923531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146551, 0.417955, -0.896569,
		-0.638573, -0.652233, -0.408432,
		-0.755478, 0.632381, 0.171309,
		33.317341, 23.325811, 31.974924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313934, 22.870453, 31.237020>,  <33.846176, 22.883144, 31.855007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313934, 22.870453, 31.237020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314472, 23.225742, 31.420784>,  <33.314796, 23.438915, 31.531042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314472, 23.225742, 31.420784>,  <33.313934, 22.870453, 31.237020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314472, 23.225742, 31.420784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045893, 0.458980, -0.887260,
		-0.998945, -0.019889, 0.041381,
		0.001346, 0.888224, 0.459409,
		33.314877, 23.492210, 31.558607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996735, 23.394184, 30.737232>,  <33.313934, 22.870453, 31.237020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996735, 23.394184, 30.737232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134819, 23.657234, 31.005070>,  <33.217670, 23.815065, 31.165773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134819, 23.657234, 31.005070>,  <32.996735, 23.394184, 30.737232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134819, 23.657234, 31.005070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004036, 0.714488, -0.699636,
		-0.938517, 0.238819, 0.249303,
		0.345210, 0.657626, 0.669595,
		33.238380, 23.854523, 31.205948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324154, 23.570673, 30.414963>,  <32.996735, 23.394184, 30.737232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324154, 23.570673, 30.414963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.448444, 23.311493, 30.136795>,  <32.523018, 23.155985, 29.969894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.448444, 23.311493, 30.136795>,  <32.324154, 23.570673, 30.414963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448444, 23.311493, 30.136795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106201, -0.750723, 0.652025,
		-0.944548, -0.128746, -0.302081,
		0.310725, -0.647950, -0.695421,
		32.541660, 23.117107, 29.928169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108513, 22.915470, 30.684341>,  <32.324154, 23.570673, 30.414963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108513, 22.915470, 30.684341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370361, 22.831863, 30.393745>,  <32.527470, 22.781700, 30.219387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370361, 22.831863, 30.393745>,  <32.108513, 22.915470, 30.684341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370361, 22.831863, 30.393745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153843, -0.904072, 0.398731,
		-0.740140, -0.372782, -0.559667,
		0.654618, -0.209016, -0.726489,
		32.566746, 22.769159, 30.175798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777124, 22.346289, 30.287317>,  <32.108513, 22.915470, 30.684341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777124, 22.346289, 30.287317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.166683, 22.316536, 30.201530>,  <32.400417, 22.298685, 30.150059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.166683, 22.316536, 30.201530>,  <31.777124, 22.346289, 30.287317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166683, 22.316536, 30.201530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015568, -0.920682, 0.390003,
		-0.226464, -0.383160, -0.895490,
		0.973895, -0.074381, -0.214466,
		32.458851, 22.294222, 30.137190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010860, 21.651783, 29.992662>,  <31.777124, 22.346289, 30.287317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010860, 21.651783, 29.992662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.345154, 21.801159, 30.153702>,  <32.545731, 21.890785, 30.250326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.345154, 21.801159, 30.153702>,  <32.010860, 21.651783, 29.992662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345154, 21.801159, 30.153702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183723, -0.881061, 0.435865,
		0.517484, -0.290301, -0.804944,
		0.835736, 0.373440, 0.402600,
		32.595875, 21.913191, 30.274483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415169, 21.139246, 29.847507>,  <32.010860, 21.651783, 29.992662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415169, 21.139246, 29.847507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.641617, 21.329975, 30.116474>,  <32.777485, 21.444412, 30.277855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.641617, 21.329975, 30.116474>,  <32.415169, 21.139246, 29.847507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641617, 21.329975, 30.116474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071777, -0.841139, 0.536035,
		0.821189, -0.255199, -0.510414,
		0.566124, 0.476822, 0.672417,
		32.811455, 21.473022, 30.318199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938114, 20.711046, 29.936251>,  <32.415169, 21.139246, 29.847507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938114, 20.711046, 29.936251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886501, 20.938175, 30.261440>,  <32.855534, 21.074453, 30.456554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886501, 20.938175, 30.261440>,  <32.938114, 20.711046, 29.936251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886501, 20.938175, 30.261440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147960, -0.799626, 0.581985,
		0.980540, 0.195382, 0.019162,
		-0.129032, 0.567825, 0.812974,
		32.847790, 21.108522, 30.505333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374928, 20.452326, 30.497070>,  <32.938114, 20.711046, 29.936251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374928, 20.452326, 30.497070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108143, 20.655804, 30.714840>,  <32.948071, 20.777889, 30.845501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.108143, 20.655804, 30.714840>,  <33.374928, 20.452326, 30.497070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108143, 20.655804, 30.714840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054526, -0.695395, 0.716556,
		0.743095, 0.507600, 0.436064,
		-0.666960, 0.508693, 0.544422,
		32.908054, 20.808411, 30.878166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674564, 20.563173, 31.149879>,  <33.374928, 20.452326, 30.497070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674564, 20.563173, 31.149879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280289, 20.608227, 31.200062>,  <33.043724, 20.635258, 31.230171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280289, 20.608227, 31.200062>,  <33.674564, 20.563173, 31.149879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280289, 20.608227, 31.200062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046630, -0.532975, 0.844845,
		0.162022, 0.838601, 0.520093,
		-0.985685, 0.112632, 0.125458,
		32.984585, 20.642015, 31.237700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639648, 20.638500, 31.851448>,  <33.674564, 20.563173, 31.149879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639648, 20.638500, 31.851448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.267677, 20.556664, 31.729214>,  <33.044495, 20.507563, 31.655872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.267677, 20.556664, 31.729214>,  <33.639648, 20.638500, 31.851448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267677, 20.556664, 31.729214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123923, -0.608028, 0.784184,
		-0.346241, 0.767102, 0.540067,
		-0.929925, -0.204590, -0.305586,
		32.988701, 20.495287, 31.637537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.818882, 33.556885, 22.019287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440296, 33.442455, 22.079117>,  <33.213146, 33.373798, 22.115015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440296, 33.442455, 22.079117>,  <33.818882, 33.556885, 22.019287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440296, 33.442455, 22.079117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318848, -0.755978, 0.571694,
		-0.050475, 0.588777, 0.806718,
		-0.946461, -0.286076, 0.149573,
		33.156357, 33.356632, 22.123989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691425, 33.489338, 22.749044>,  <33.818882, 33.556885, 22.019287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691425, 33.489338, 22.749044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453773, 33.234070, 22.553185>,  <33.311184, 33.080910, 22.435669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453773, 33.234070, 22.553185>,  <33.691425, 33.489338, 22.749044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453773, 33.234070, 22.553185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314002, -0.744443, 0.589243,
		-0.740551, 0.196335, 0.642680,
		-0.594128, -0.638167, -0.489648,
		33.275536, 33.042622, 22.406290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451805, 33.092930, 23.242529>,  <33.691425, 33.489338, 22.749044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451805, 33.092930, 23.242529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355701, 32.879215, 22.918354>,  <33.298038, 32.750984, 22.723848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355701, 32.879215, 22.918354>,  <33.451805, 33.092930, 23.242529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355701, 32.879215, 22.918354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210024, -0.843730, 0.493974,
		-0.947716, -0.051530, 0.314927,
		-0.240259, -0.534290, -0.810438,
		33.283623, 32.718929, 22.675222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988708, 32.533833, 23.474199>,  <33.451805, 33.092930, 23.242529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988708, 32.533833, 23.474199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151031, 32.415962, 23.128139>,  <33.248425, 32.345242, 22.920504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151031, 32.415962, 23.128139>,  <32.988708, 32.533833, 23.474199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151031, 32.415962, 23.128139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034482, -0.940988, 0.336679,
		-0.913307, -0.166460, -0.371701,
		0.405810, -0.294675, -0.865150,
		33.272774, 32.327560, 22.868595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614998, 32.018486, 23.363655>,  <32.988708, 32.533833, 23.474199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614998, 32.018486, 23.363655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935863, 31.963699, 23.131184>,  <33.128384, 31.930828, 22.991701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935863, 31.963699, 23.131184>,  <32.614998, 32.018486, 23.363655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935863, 31.963699, 23.131184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109366, -0.923167, 0.368512,
		-0.586997, -0.359170, -0.725556,
		0.802168, -0.136964, -0.581177,
		33.176514, 31.922609, 22.956831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481705, 31.304632, 23.204929>,  <32.614998, 32.018486, 23.363655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481705, 31.304632, 23.204929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859913, 31.386627, 23.103764>,  <33.086838, 31.435823, 23.043064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859913, 31.386627, 23.103764>,  <32.481705, 31.304632, 23.204929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859913, 31.386627, 23.103764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283664, -0.899957, 0.331077,
		-0.159745, -0.384783, -0.909078,
		0.945524, 0.204985, -0.252912,
		33.143570, 31.448122, 23.027889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765297, 30.731077, 22.811815>,  <32.481705, 31.304632, 23.204929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765297, 30.731077, 22.811815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088226, 30.924366, 22.947300>,  <33.281982, 31.040339, 23.028591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088226, 30.924366, 22.947300>,  <32.765297, 30.731077, 22.811815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088226, 30.924366, 22.947300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411040, -0.872320, 0.264771,
		0.423410, -0.074530, -0.902867,
		0.807323, 0.483222, 0.338714,
		33.330421, 31.069332, 23.048914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345337, 30.492260, 22.562120>,  <32.765297, 30.731077, 22.811815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345337, 30.492260, 22.562120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518856, 30.635815, 22.892700>,  <33.622967, 30.721947, 23.091047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518856, 30.635815, 22.892700>,  <33.345337, 30.492260, 22.562120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518856, 30.635815, 22.892700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455881, -0.878601, 0.142242,
		0.777168, 0.315058, -0.544747,
		0.433801, 0.358886, 0.826449,
		33.648994, 30.743481, 23.140635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097836, 30.294909, 22.562912>,  <33.345337, 30.492260, 22.562120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097836, 30.294909, 22.562912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009357, 30.353401, 22.948593>,  <33.956272, 30.388496, 23.180002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009357, 30.353401, 22.948593>,  <34.097836, 30.294909, 22.562912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009357, 30.353401, 22.948593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277450, -0.938403, 0.205965,
		0.934931, 0.313076, 0.166995,
		-0.221192, 0.146231, 0.964205,
		33.943001, 30.397270, 23.237854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471107, 29.855406, 22.874134>,  <34.097836, 30.294909, 22.562912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471107, 29.855406, 22.874134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247311, 29.975212, 23.183266>,  <34.113033, 30.047096, 23.368744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247311, 29.975212, 23.183266>,  <34.471107, 29.855406, 22.874134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247311, 29.975212, 23.183266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173418, -0.869484, 0.462520,
		0.810492, 0.392797, 0.434526,
		-0.559489, 0.299514, 0.772828,
		34.079464, 30.065067, 23.415113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892715, 29.760983, 23.509012>,  <34.471107, 29.855406, 22.874134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892715, 29.760983, 23.509012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498192, 29.739990, 23.571552>,  <34.261478, 29.727394, 23.609077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498192, 29.739990, 23.571552>,  <34.892715, 29.760983, 23.509012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498192, 29.739990, 23.571552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115774, -0.895499, 0.429741,
		0.117459, 0.441958, 0.889312,
		-0.986306, -0.052482, 0.156352,
		34.202301, 29.724245, 23.618458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794884, 29.612232, 24.234533>,  <34.892715, 29.760983, 23.509012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794884, 29.612232, 24.234533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460815, 29.478352, 24.059967>,  <34.260372, 29.398024, 23.955227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460815, 29.478352, 24.059967>,  <34.794884, 29.612232, 24.234533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460815, 29.478352, 24.059967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068105, -0.850335, 0.521816,
		-0.545753, 0.406085, 0.732973,
		-0.835174, -0.334701, -0.436417,
		34.210262, 29.377941, 23.929043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032131, 29.694366, 24.958168>,  <34.794884, 29.612232, 24.234533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032131, 29.694366, 24.958168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413044, 29.618092, 25.053497>,  <35.641590, 29.572327, 25.110695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413044, 29.618092, 25.053497>,  <35.032131, 29.694366, 24.958168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413044, 29.618092, 25.053497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255908, 0.924367, -0.282944,
		-0.166347, 0.330432, 0.929055,
		0.952281, -0.190686, 0.238325,
		35.698727, 29.560886, 25.124994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238129, 30.323709, 25.195917>,  <35.032131, 29.694366, 24.958168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238129, 30.323709, 25.195917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591026, 30.149712, 25.123894>,  <35.802765, 30.045313, 25.080679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591026, 30.149712, 25.123894>,  <35.238129, 30.323709, 25.195917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591026, 30.149712, 25.123894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401396, 0.894875, -0.195141,
		0.246016, 0.099887, 0.964105,
		0.882245, -0.434996, -0.180060,
		35.855701, 30.019213, 25.069876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661118, 30.752600, 25.503096>,  <35.238129, 30.323709, 25.195917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661118, 30.752600, 25.503096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900345, 30.580711, 25.232494>,  <36.043880, 30.477579, 25.070133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900345, 30.580711, 25.232494>,  <35.661118, 30.752600, 25.503096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900345, 30.580711, 25.232494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292351, 0.902914, -0.315083,
		0.746221, -0.009336, 0.665632,
		0.598067, -0.429720, -0.676503,
		36.079765, 30.451796, 25.029543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305000, 31.029737, 25.649500>,  <35.661118, 30.752600, 25.503096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305000, 31.029737, 25.649500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297180, 30.886024, 25.276291>,  <36.292488, 30.799797, 25.052364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297180, 30.886024, 25.276291>,  <36.305000, 31.029737, 25.649500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297180, 30.886024, 25.276291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353089, 0.870589, -0.342640,
		0.935385, -0.336138, 0.109841,
		-0.019548, -0.359284, -0.933024,
		36.291317, 30.778240, 24.996384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928226, 31.164885, 25.413376>,  <36.305000, 31.029737, 25.649500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928226, 31.164885, 25.413376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709908, 31.098419, 25.084866>,  <36.578915, 31.058540, 24.887760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709908, 31.098419, 25.084866>,  <36.928226, 31.164885, 25.413376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709908, 31.098419, 25.084866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292874, 0.880489, -0.372780,
		0.785065, -0.443993, -0.431907,
		-0.545801, -0.166162, -0.821274,
		36.546169, 31.048571, 24.838484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387611, 31.452379, 24.949165>,  <36.928226, 31.164885, 25.413376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387611, 31.452379, 24.949165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032051, 31.433800, 24.766872>,  <36.818714, 31.422651, 24.657497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032051, 31.433800, 24.766872>,  <37.387611, 31.452379, 24.949165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032051, 31.433800, 24.766872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083329, 0.961853, -0.260568,
		0.450448, -0.269596, -0.851125,
		-0.888905, -0.046449, -0.455730,
		36.765381, 31.419865, 24.630154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494930, 31.750107, 24.324318>,  <37.387611, 31.452379, 24.949165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494930, 31.750107, 24.324318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101036, 31.794338, 24.378090>,  <36.864700, 31.820877, 24.410353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101036, 31.794338, 24.378090>,  <37.494930, 31.750107, 24.324318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101036, 31.794338, 24.378090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080620, 0.974201, -0.210789,
		-0.154270, -0.196733, -0.968244,
		-0.984734, 0.110579, 0.134429,
		36.805614, 31.827513, 24.418419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278770, 32.201344, 23.836269>,  <37.494930, 31.750107, 24.324318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278770, 32.201344, 23.836269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973560, 32.215057, 24.094452>,  <36.790436, 32.223286, 24.249361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973560, 32.215057, 24.094452>,  <37.278770, 32.201344, 23.836269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973560, 32.215057, 24.094452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176494, 0.949595, -0.259074,
		-0.621805, -0.311599, -0.718515,
		-0.763026, 0.034280, 0.645459,
		36.744652, 32.225342, 24.288090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691769, 32.490437, 23.498358>,  <37.278770, 32.201344, 23.836269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691769, 32.490437, 23.498358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636894, 32.560589, 23.888317>,  <36.603970, 32.602680, 24.122292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636894, 32.560589, 23.888317>,  <36.691769, 32.490437, 23.498358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636894, 32.560589, 23.888317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184181, 0.962522, -0.199069,
		-0.973272, -0.206866, -0.099740,
		-0.137183, 0.175378, 0.974896,
		36.595737, 32.613201, 24.180786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203739, 32.990986, 23.484730>,  <36.691769, 32.490437, 23.498358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203739, 32.990986, 23.484730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300739, 33.014740, 23.872063>,  <36.358940, 33.028992, 24.104462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300739, 33.014740, 23.872063>,  <36.203739, 32.990986, 23.484730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300739, 33.014740, 23.872063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093723, 0.994890, -0.037539,
		-0.965613, -0.081652, 0.246829,
		0.242503, 0.059382, 0.968331,
		36.373489, 33.032555, 24.162561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648907, 33.239632, 23.917820>,  <36.203739, 32.990986, 23.484730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648907, 33.239632, 23.917820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977390, 33.334339, 24.125492>,  <36.174480, 33.391163, 24.250095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977390, 33.334339, 24.125492>,  <35.648907, 33.239632, 23.917820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977390, 33.334339, 24.125492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197635, 0.971555, -0.130463,
		-0.535304, 0.004530, 0.844648,
		0.821213, 0.236769, 0.519182,
		36.223755, 33.405369, 24.281246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370567, 33.821903, 24.168280>,  <35.648907, 33.239632, 23.917820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370567, 33.821903, 24.168280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762901, 33.838829, 24.244358>,  <35.998302, 33.848984, 24.290005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762901, 33.838829, 24.244358>,  <35.370567, 33.821903, 24.168280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762901, 33.838829, 24.244358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023162, 0.994533, -0.101820,
		-0.193467, 0.095463, 0.976451,
		0.980833, 0.042315, 0.190198,
		36.057152, 33.851524, 24.301418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474152, 34.276546, 24.697811>,  <35.370567, 33.821903, 24.168280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474152, 34.276546, 24.697811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827724, 34.280426, 24.510803>,  <36.039867, 34.282753, 24.398598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827724, 34.280426, 24.510803>,  <35.474152, 34.276546, 24.697811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827724, 34.280426, 24.510803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050311, 0.995955, -0.074450,
		0.464907, 0.089329, 0.880841,
		0.883929, 0.009704, -0.467521,
		36.092903, 34.283337, 24.370546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673584, 34.822781, 24.947819>,  <35.474152, 34.276546, 24.697811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673584, 34.822781, 24.947819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915306, 34.756886, 24.636005>,  <36.060341, 34.717350, 24.448917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915306, 34.756886, 24.636005>,  <35.673584, 34.822781, 24.947819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915306, 34.756886, 24.636005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098633, 0.986333, -0.131979,
		0.790623, 0.002868, 0.612297,
		0.604307, -0.164739, -0.779535,
		36.096600, 34.707462, 24.402145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452072, 35.358101, 24.396854>,  <35.673584, 34.822781, 24.947819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452072, 35.358101, 24.396854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238224, 35.604412, 24.165340>,  <35.109913, 35.752197, 24.026432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238224, 35.604412, 24.165340>,  <35.452072, 35.358101, 24.396854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238224, 35.604412, 24.165340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507553, -0.781565, -0.362693,
		-0.675698, 0.099861, 0.730383,
		-0.534623, 0.615779, -0.578787,
		35.077839, 35.789146, 23.991705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748207, 35.266689, 24.484007>,  <35.452072, 35.358101, 24.396854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748207, 35.266689, 24.484007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806656, 35.408260, 24.114491>,  <34.841724, 35.493202, 23.892780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806656, 35.408260, 24.114491>,  <34.748207, 35.266689, 24.484007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806656, 35.408260, 24.114491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469855, -0.796936, -0.379645,
		-0.870566, 0.489520, 0.049845,
		0.146121, 0.353925, -0.923789,
		34.850491, 35.514439, 23.837355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134068, 35.259632, 25.080984>,  <34.748207, 35.266689, 24.484007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134068, 35.259632, 25.080984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795349, 35.471004, 25.056656>,  <33.592117, 35.597828, 25.042059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795349, 35.471004, 25.056656>,  <34.134068, 35.259632, 25.080984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795349, 35.471004, 25.056656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399141, -0.555673, 0.729324,
		0.351599, 0.641865, 0.681459,
		-0.846797, 0.528428, -0.060821,
		33.541309, 35.629532, 25.038410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945759, 35.418282, 25.852291>,  <34.134068, 35.259632, 25.080984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945759, 35.418282, 25.852291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641232, 35.428268, 25.593132>,  <33.458515, 35.434261, 25.437637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641232, 35.428268, 25.593132>,  <33.945759, 35.418282, 25.852291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641232, 35.428268, 25.593132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469990, -0.709619, 0.524929,
		-0.446655, 0.704143, 0.551979,
		-0.761320, 0.024963, -0.647895,
		33.412834, 35.435757, 25.398764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389389, 35.480198, 26.307550>,  <33.945759, 35.418282, 25.852291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389389, 35.480198, 26.307550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260559, 35.317871, 25.965420>,  <33.183262, 35.220474, 25.760141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260559, 35.317871, 25.965420>,  <33.389389, 35.480198, 26.307550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260559, 35.317871, 25.965420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257140, -0.832004, 0.491577,
		-0.911124, 0.378262, 0.163615,
		-0.322074, -0.405816, -0.855326,
		33.163937, 35.196125, 25.708822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765026, 35.161358, 26.598646>,  <33.389389, 35.480198, 26.307550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765026, 35.161358, 26.598646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780872, 35.005310, 26.230682>,  <32.790379, 34.911682, 26.009905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780872, 35.005310, 26.230682>,  <32.765026, 35.161358, 26.598646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780872, 35.005310, 26.230682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479967, -0.814898, 0.324919,
		-0.876392, 0.428655, -0.219528,
		0.039615, -0.390123, -0.919910,
		32.792755, 34.888271, 25.954710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085258, 34.837814, 26.485708>,  <32.765026, 35.161358, 26.598646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085258, 34.837814, 26.485708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329563, 34.651939, 26.229259>,  <32.476147, 34.540417, 26.075390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329563, 34.651939, 26.229259>,  <32.085258, 34.837814, 26.485708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329563, 34.651939, 26.229259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352625, -0.884588, 0.305222,
		-0.708961, 0.039658, -0.704132,
		0.610762, -0.464685, -0.641123,
		32.512791, 34.512535, 26.036922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668499, 34.262676, 26.057823>,  <32.085258, 34.837814, 26.485708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668499, 34.262676, 26.057823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054058, 34.156269, 26.062439>,  <32.285393, 34.092422, 26.065208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054058, 34.156269, 26.062439>,  <31.668499, 34.262676, 26.057823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054058, 34.156269, 26.062439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256545, -0.916208, 0.307810,
		-0.071310, -0.299659, -0.951378,
		0.963898, -0.266021, 0.011541,
		32.343227, 34.076462, 26.065901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846592, 33.649632, 25.636560>,  <31.668499, 34.262676, 26.057823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846592, 33.649632, 25.636560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132248, 33.665150, 25.916130>,  <32.303642, 33.674461, 26.083872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132248, 33.665150, 25.916130>,  <31.846592, 33.649632, 25.636560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132248, 33.665150, 25.916130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215705, -0.937681, 0.272443,
		0.665939, -0.345324, -0.661269,
		0.714141, 0.038792, 0.698926,
		32.346489, 33.676788, 26.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249336, 33.006256, 25.597702>,  <31.846592, 33.649632, 25.636560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249336, 33.006256, 25.597702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337852, 33.151417, 25.959770>,  <32.390961, 33.238514, 26.177011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337852, 33.151417, 25.959770>,  <32.249336, 33.006256, 25.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337852, 33.151417, 25.959770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035866, -0.930584, 0.364317,
		0.974549, -0.048154, -0.218942,
		0.221288, 0.362898, 0.905173,
		32.404240, 33.260284, 26.231321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713890, 32.455353, 25.919355>,  <32.249336, 33.006256, 25.597702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713890, 32.455353, 25.919355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581951, 32.679508, 26.223240>,  <32.502789, 32.814003, 26.405571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581951, 32.679508, 26.223240>,  <32.713890, 32.455353, 25.919355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581951, 32.679508, 26.223240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152201, -0.762653, 0.628646,
		0.931683, 0.322987, 0.166268,
		-0.329850, 0.560392, 0.759710,
		32.482998, 32.847626, 26.451153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169044, 32.338303, 26.472082>,  <32.713890, 32.455353, 25.919355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169044, 32.338303, 26.472082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851349, 32.494347, 26.658417>,  <32.660732, 32.587975, 26.770218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851349, 32.494347, 26.658417>,  <33.169044, 32.338303, 26.472082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851349, 32.494347, 26.658417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018494, -0.750793, 0.660278,
		0.607329, 0.533032, 0.589092,
		-0.794235, 0.390111, 0.465836,
		32.613079, 32.611382, 26.798168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287930, 32.198601, 27.085476>,  <33.169044, 32.338303, 26.472082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287930, 32.198601, 27.085476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896996, 32.278561, 27.113342>,  <32.662434, 32.326534, 27.130062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896996, 32.278561, 27.113342>,  <33.287930, 32.198601, 27.085476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896996, 32.278561, 27.113342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096607, -0.714006, 0.693442,
		0.188357, 0.670997, 0.717137,
		-0.977338, 0.199895, 0.069665,
		32.603794, 32.338528, 27.134241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101376, 32.423676, 27.765322>,  <33.287930, 32.198601, 27.085476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101376, 32.423676, 27.765322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786163, 32.248913, 27.591831>,  <32.597034, 32.144054, 27.487736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786163, 32.248913, 27.591831>,  <33.101376, 32.423676, 27.765322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786163, 32.248913, 27.591831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108647, -0.594767, 0.796522,
		-0.605969, 0.674809, 0.421228,
		-0.788033, -0.436903, -0.433727,
		32.549755, 32.117844, 27.461714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515446, 32.465805, 28.232054>,  <33.101376, 32.423676, 27.765322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515446, 32.465805, 28.232054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409939, 32.159622, 27.997276>,  <32.346634, 31.975912, 27.856409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409939, 32.159622, 27.997276>,  <32.515446, 32.465805, 28.232054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409939, 32.159622, 27.997276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262393, -0.528607, 0.807295,
		-0.928212, 0.366945, -0.061423,
		-0.263764, -0.765458, -0.586943,
		32.330811, 31.929985, 27.821194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014214, 32.226631, 28.547966>,  <32.515446, 32.465805, 28.232054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014214, 32.226631, 28.547966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086548, 31.917168, 28.305065>,  <32.129948, 31.731489, 28.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086548, 31.917168, 28.305065>,  <32.014214, 32.226631, 28.547966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086548, 31.917168, 28.305065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271888, -0.632692, 0.725105,
		-0.945186, 0.033983, -0.324758,
		0.180831, -0.773658, -0.607251,
		32.140797, 31.685070, 28.122890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480165, 31.686687, 28.751419>,  <32.014214, 32.226631, 28.547966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480165, 31.686687, 28.751419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748835, 31.481281, 28.537819>,  <31.910036, 31.358038, 28.409658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748835, 31.481281, 28.537819>,  <31.480165, 31.686687, 28.751419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748835, 31.481281, 28.537819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007286, -0.725341, 0.688351,
		-0.740818, -0.458452, -0.490929,
		0.671666, -0.513520, -0.534006,
		31.950336, 31.327227, 28.377619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226011, 31.023413, 28.675095>,  <31.480165, 31.686687, 28.751419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226011, 31.023413, 28.675095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622309, 30.998741, 28.626724>,  <31.860086, 30.983938, 28.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622309, 30.998741, 28.626724>,  <31.226011, 31.023413, 28.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622309, 30.998741, 28.626724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022390, -0.804374, 0.593701,
		-0.133887, -0.590913, -0.795548,
		0.990743, -0.061677, -0.120926,
		31.919533, 30.980238, 28.590446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330370, 30.287716, 28.596712>,  <31.226011, 31.023413, 28.675095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330370, 30.287716, 28.596712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651440, 30.469868, 28.750771>,  <31.844082, 30.579159, 28.843206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651440, 30.469868, 28.750771>,  <31.330370, 30.287716, 28.596712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651440, 30.469868, 28.750771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162345, -0.788212, 0.593604,
		0.573895, -0.413945, -0.706608,
		0.802676, 0.455381, 0.385149,
		31.892242, 30.606482, 28.866316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757172, 29.735489, 28.697744>,  <31.330370, 30.287716, 28.596712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757172, 29.735489, 28.697744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921705, 30.028023, 28.915352>,  <32.020424, 30.203543, 29.045916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921705, 30.028023, 28.915352>,  <31.757172, 29.735489, 28.697744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921705, 30.028023, 28.915352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280217, -0.669407, 0.688021,
		0.867342, -0.130564, -0.480283,
		0.411335, 0.731333, 0.544018,
		32.045105, 30.247423, 29.078558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316269, 29.388386, 28.954330>,  <31.757172, 29.735489, 28.697744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316269, 29.388386, 28.954330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309471, 29.718513, 29.180096>,  <32.305393, 29.916590, 29.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309471, 29.718513, 29.180096>,  <32.316269, 29.388386, 28.954330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309471, 29.718513, 29.180096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414886, -0.507783, 0.755001,
		0.909715, 0.246998, -0.333783,
		-0.016994, 0.825317, 0.564413,
		32.304375, 29.966108, 29.349421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035084, 29.323206, 29.364298>,  <32.316269, 29.388386, 28.954330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035084, 29.323206, 29.364298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752239, 29.556103, 29.524792>,  <32.582535, 29.695841, 29.621088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752239, 29.556103, 29.524792>,  <33.035084, 29.323206, 29.364298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752239, 29.556103, 29.524792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166767, -0.414108, 0.894820,
		0.687158, 0.699648, 0.195720,
		-0.707109, 0.582243, 0.401235,
		32.540108, 29.730776, 29.645163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259319, 29.705376, 29.942432>,  <33.035084, 29.323206, 29.364298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259319, 29.705376, 29.942432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867508, 29.697697, 30.022583>,  <32.632420, 29.693089, 30.070673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867508, 29.697697, 30.022583>,  <33.259319, 29.705376, 29.942432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867508, 29.697697, 30.022583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195595, -0.325993, 0.924917,
		0.047565, 0.945177, 0.323075,
		-0.979531, -0.019198, 0.200378,
		32.573650, 29.691936, 30.082697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262493, 29.990141, 30.623768>,  <33.259319, 29.705376, 29.942432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262493, 29.990141, 30.623768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901424, 29.824505, 30.576927>,  <32.684784, 29.725122, 30.548822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901424, 29.824505, 30.576927>,  <33.262493, 29.990141, 30.623768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901424, 29.824505, 30.576927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046003, -0.363419, 0.930489,
		-0.427865, 0.834539, 0.347097,
		-0.902671, -0.414091, -0.117103,
		32.630623, 29.700277, 30.541796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914089, 30.065256, 31.304588>,  <33.262493, 29.990141, 30.623768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914089, 30.065256, 31.304588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672981, 29.817001, 31.103996>,  <32.528316, 29.668049, 30.983641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672981, 29.817001, 31.103996>,  <32.914089, 30.065256, 31.304588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672981, 29.817001, 31.103996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235562, -0.462062, 0.854991,
		-0.762354, 0.633489, 0.132317,
		-0.602766, -0.620637, -0.501481,
		32.492153, 29.630810, 30.953552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232880, 30.247477, 31.558714>,  <32.914089, 30.065256, 31.304588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232880, 30.247477, 31.558714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250229, 29.876442, 31.410282>,  <32.260639, 29.653820, 31.321222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250229, 29.876442, 31.410282>,  <32.232880, 30.247477, 31.558714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250229, 29.876442, 31.410282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416014, -0.354464, 0.837429,
		-0.908323, 0.118055, -0.401263,
		0.043370, -0.927588, -0.371080,
		32.263241, 29.598166, 31.298958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538837, 29.864546, 31.654583>,  <32.232880, 30.247477, 31.558714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538837, 29.864546, 31.654583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816748, 29.581291, 31.604256>,  <31.983494, 29.411339, 31.574059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816748, 29.581291, 31.604256>,  <31.538837, 29.864546, 31.654583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816748, 29.581291, 31.604256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347325, -0.483531, 0.803470,
		-0.629804, -0.514530, -0.581898,
		0.694775, -0.708136, -0.125820,
		32.025181, 29.368851, 31.566509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244986, 29.203959, 31.834948>,  <31.538837, 29.864546, 31.654583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244986, 29.203959, 31.834948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632158, 29.108906, 31.867546>,  <31.864462, 29.051874, 31.887104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632158, 29.108906, 31.867546>,  <31.244986, 29.203959, 31.834948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632158, 29.108906, 31.867546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215852, -0.620719, 0.753735,
		-0.128527, -0.747154, -0.652106,
		0.967930, -0.237633, 0.081495,
		31.922537, 29.037615, 31.891994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714001, 29.120409, 31.234863>,  <31.244986, 29.203959, 31.834948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714001, 29.120409, 31.234863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334677, 29.148247, 31.358711>,  <30.107082, 29.164949, 31.433020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334677, 29.148247, 31.358711>,  <30.714001, 29.120409, 31.234863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334677, 29.148247, 31.358711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067696, 0.908836, -0.411624,
		-0.310043, -0.411307, -0.857146,
		-0.948309, 0.069596, 0.309622,
		30.050184, 29.169125, 31.451597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293413, 29.317434, 30.671057>,  <30.714001, 29.120409, 31.234863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293413, 29.317434, 30.671057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109230, 29.444504, 31.002613>,  <29.998720, 29.520746, 31.201548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109230, 29.444504, 31.002613>,  <30.293413, 29.317434, 30.671057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109230, 29.444504, 31.002613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141435, 0.895588, -0.421803,
		-0.876341, -0.311458, -0.367451,
		-0.460459, 0.317673, 0.828892,
		29.971092, 29.539806, 31.251280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810305, 29.680195, 30.405367>,  <30.293413, 29.317434, 30.671057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810305, 29.680195, 30.405367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748938, 29.814575, 30.777088>,  <29.712118, 29.895203, 31.000120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748938, 29.814575, 30.777088>,  <29.810305, 29.680195, 30.405367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748938, 29.814575, 30.777088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237437, 0.900350, -0.364683,
		-0.959212, -0.276599, -0.058362,
		-0.153417, 0.335951, 0.929301,
		29.702913, 29.915359, 31.055878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076326, 29.962677, 30.437191>,  <29.810305, 29.680195, 30.405367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076326, 29.962677, 30.437191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301088, 30.125660, 30.725147>,  <29.435946, 30.223450, 30.897921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301088, 30.125660, 30.725147>,  <29.076326, 29.962677, 30.437191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301088, 30.125660, 30.725147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134637, 0.903715, -0.406413,
		-0.816172, 0.131441, 0.562660,
		0.561904, 0.407458, 0.719891,
		29.469660, 30.247898, 30.941114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772165, 30.556421, 30.561466>,  <29.076326, 29.962677, 30.437191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772165, 30.556421, 30.561466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140276, 30.620373, 30.704311>,  <29.361143, 30.658743, 30.790018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140276, 30.620373, 30.704311>,  <28.772165, 30.556421, 30.561466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140276, 30.620373, 30.704311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044521, 0.863994, -0.501530,
		-0.388729, 0.477445, 0.787995,
		0.920276, 0.159877, 0.357115,
		29.416359, 30.668337, 30.811445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
