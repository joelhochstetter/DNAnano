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
	<24.358122, 35.240826, 34.763496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495588, 34.994072, 35.046719>,  <24.578068, 34.846020, 35.216652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495588, 34.994072, 35.046719>,  <24.358122, 35.240826, 34.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495588, 34.994072, 35.046719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450216, -0.769915, -0.452257,
		0.824136, -0.163355, -0.542323,
		0.343664, -0.616884, 0.708060,
		24.598688, 34.809006, 35.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.820005, 34.704899, 34.512897>,  <24.358122, 35.240826, 34.763496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.820005, 34.704899, 34.512897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600885, 34.589767, 34.827114>,  <24.469414, 34.520687, 35.015644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600885, 34.589767, 34.827114>,  <24.820005, 34.704899, 34.512897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600885, 34.589767, 34.827114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576023, -0.551183, -0.603652,
		0.606725, -0.783167, 0.136139,
		-0.547798, -0.287831, 0.785538,
		24.436546, 34.503418, 35.062775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609762, 33.920135, 34.487427>,  <24.820005, 34.704899, 34.512897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609762, 33.920135, 34.487427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361818, 34.178097, 34.666256>,  <24.213053, 34.332874, 34.773556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361818, 34.178097, 34.666256>,  <24.609762, 33.920135, 34.487427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361818, 34.178097, 34.666256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749038, -0.316427, -0.582078,
		-0.233914, -0.695686, 0.679195,
		-0.619859, 0.644900, 0.447078,
		24.175861, 34.371567, 34.800377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789383, 33.774811, 35.247208>,  <24.609762, 33.920135, 34.487427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789383, 33.774811, 35.247208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492268, 33.628845, 35.022675>,  <24.313997, 33.541264, 34.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492268, 33.628845, 35.022675>,  <24.789383, 33.774811, 35.247208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.492268, 33.628845, 35.022675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502433, -0.250332, 0.827584,
		-0.442521, 0.896754, 0.002597,
		-0.742789, -0.364918, -0.561336,
		24.269430, 33.519371, 34.854275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381376, 33.528507, 35.270882>,  <24.789383, 33.774811, 35.247208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381376, 33.528507, 35.270882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398632, 33.927788, 35.287556>,  <25.408985, 34.167355, 35.297558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398632, 33.927788, 35.287556>,  <25.381376, 33.528507, 35.270882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398632, 33.927788, 35.287556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665992, -0.059832, 0.743555,
		0.744710, -0.004318, -0.667374,
		0.043141, 0.998199, 0.041682,
		25.411573, 34.227249, 35.300060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034250, 33.749355, 35.209183>,  <25.381376, 33.528507, 35.270882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034250, 33.749355, 35.209183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847471, 33.993004, 35.465599>,  <25.735405, 34.139191, 35.619450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847471, 33.993004, 35.465599>,  <26.034250, 33.749355, 35.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847471, 33.993004, 35.465599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660687, -0.241519, 0.710747,
		0.587753, 0.755409, -0.289660,
		-0.466946, 0.609118, 0.641043,
		25.707388, 34.175739, 35.657913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714424, 33.690811, 35.281742>,  <26.034250, 33.749355, 35.209183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714424, 33.690811, 35.281742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783232, 34.075115, 35.194710>,  <26.824516, 34.305698, 35.142490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783232, 34.075115, 35.194710>,  <26.714424, 33.690811, 35.281742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783232, 34.075115, 35.194710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485580, 0.109474, 0.867310,
		0.857100, -0.254846, -0.447697,
		0.172019, 0.960765, -0.217578,
		26.834837, 34.363346, 35.129436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366579, 33.798309, 35.453098>,  <26.714424, 33.690811, 35.281742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366579, 33.798309, 35.453098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202583, 34.162971, 35.464302>,  <27.104185, 34.381771, 35.471024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202583, 34.162971, 35.464302>,  <27.366579, 33.798309, 35.453098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202583, 34.162971, 35.464302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492037, 0.195208, 0.848407,
		0.767990, 0.361621, -0.528603,
		-0.409989, 0.911660, 0.028013,
		27.079586, 34.436470, 35.472706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905663, 34.280289, 35.470535>,  <27.366579, 33.798309, 35.453098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905663, 34.280289, 35.470535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594097, 34.461178, 35.644333>,  <27.407158, 34.569710, 35.748611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594097, 34.461178, 35.644333>,  <27.905663, 34.280289, 35.470535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594097, 34.461178, 35.644333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537617, 0.124785, 0.833905,
		0.322891, 0.883133, -0.340319,
		-0.778916, 0.452222, 0.434495,
		27.360422, 34.596844, 35.774681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063213, 34.919437, 35.698231>,  <27.905663, 34.280289, 35.470535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063213, 34.919437, 35.698231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738449, 34.852928, 35.922073>,  <27.543591, 34.813023, 36.056377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738449, 34.852928, 35.922073>,  <28.063213, 34.919437, 35.698231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738449, 34.852928, 35.922073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552085, 0.092889, 0.828597,
		-0.189751, 0.981696, 0.016377,
		-0.811909, -0.166269, 0.559605,
		27.494877, 34.803047, 36.089954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190439, 35.393524, 36.150158>,  <28.063213, 34.919437, 35.698231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190439, 35.393524, 36.150158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915648, 35.163937, 36.328423>,  <27.750772, 35.026184, 36.435383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915648, 35.163937, 36.328423>,  <28.190439, 35.393524, 36.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915648, 35.163937, 36.328423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439738, 0.159900, 0.883778,
		-0.578526, 0.803111, 0.142550,
		-0.686978, -0.573973, 0.445664,
		27.709555, 34.991745, 36.462120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813416, 35.813385, 36.546509>,  <28.190439, 35.393524, 36.150158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813416, 35.813385, 36.546509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749935, 35.464203, 36.731014>,  <27.711847, 35.254696, 36.841717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749935, 35.464203, 36.731014>,  <27.813416, 35.813385, 36.546509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749935, 35.464203, 36.731014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221743, 0.423738, 0.878223,
		-0.962104, 0.241659, 0.126323,
		-0.158702, -0.872953, 0.461266,
		27.702324, 35.202316, 36.869392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565487, 35.933819, 37.205448>,  <27.813416, 35.813385, 36.546509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565487, 35.933819, 37.205448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684591, 35.555008, 37.253586>,  <27.756054, 35.327721, 37.282467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684591, 35.555008, 37.253586>,  <27.565487, 35.933819, 37.205448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684591, 35.555008, 37.253586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279190, 0.206933, 0.937674,
		-0.912903, -0.245604, 0.326016,
		0.297760, -0.947026, 0.120340,
		27.773920, 35.270901, 37.289688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395636, 35.794666, 37.874046>,  <27.565487, 35.933819, 37.205448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395636, 35.794666, 37.874046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633015, 35.488281, 37.775150>,  <27.775442, 35.304451, 37.715813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633015, 35.488281, 37.775150>,  <27.395636, 35.794666, 37.874046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633015, 35.488281, 37.775150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364858, -0.017788, 0.930893,
		-0.717424, -0.642644, 0.268910,
		0.593449, -0.765959, -0.247236,
		27.811050, 35.258495, 37.700981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272842, 35.285507, 38.399708>,  <27.395636, 35.794666, 37.874046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272842, 35.285507, 38.399708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634762, 35.236153, 38.236679>,  <27.851913, 35.206539, 38.138863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634762, 35.236153, 38.236679>,  <27.272842, 35.285507, 38.399708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634762, 35.236153, 38.236679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414258, 0.033327, 0.909549,
		-0.098641, -0.991799, 0.081267,
		0.904798, -0.123385, -0.407574,
		27.906200, 35.199139, 38.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579109, 34.855621, 38.804882>,  <27.272842, 35.285507, 38.399708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579109, 34.855621, 38.804882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899086, 35.004223, 38.616383>,  <28.091072, 35.093384, 38.503281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899086, 35.004223, 38.616383>,  <27.579109, 34.855621, 38.804882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899086, 35.004223, 38.616383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515909, -0.024687, 0.856287,
		0.306479, -0.928103, -0.211410,
		0.799942, 0.371503, -0.471251,
		28.139069, 35.115673, 38.475006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202879, 34.453735, 39.124165>,  <27.579109, 34.855621, 38.804882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202879, 34.453735, 39.124165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374952, 34.764099, 38.939598>,  <28.478195, 34.950317, 38.828857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374952, 34.764099, 38.939598>,  <28.202879, 34.453735, 39.124165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374952, 34.764099, 38.939598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637095, 0.101180, 0.764116,
		0.639574, -0.622672, -0.450805,
		0.430181, 0.775914, -0.461413,
		28.504007, 34.996872, 38.801174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931036, 34.300842, 39.104549>,  <28.202879, 34.453735, 39.124165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931036, 34.300842, 39.104549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861437, 34.694511, 39.091061>,  <28.819677, 34.930714, 39.082970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861437, 34.694511, 39.091061>,  <28.931036, 34.300842, 39.104549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861437, 34.694511, 39.091061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639663, 0.138990, 0.755985,
		0.748703, 0.109971, -0.653720,
		-0.173997, 0.984169, -0.033718,
		28.809238, 34.989761, 39.080944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553755, 34.587379, 39.334400>,  <28.931036, 34.300842, 39.104549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553755, 34.587379, 39.334400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317457, 34.910027, 39.342228>,  <29.175678, 35.103615, 39.346924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317457, 34.910027, 39.342228>,  <29.553755, 34.587379, 39.334400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317457, 34.910027, 39.342228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496849, 0.344550, 0.796509,
		0.635737, 0.480258, -0.604310,
		-0.590744, 0.806621, 0.019573,
		29.140234, 35.152012, 39.348099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958092, 35.211372, 39.385834>,  <29.553755, 34.587379, 39.334400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958092, 35.211372, 39.385834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602486, 35.348034, 39.507767>,  <29.389122, 35.430031, 39.580925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602486, 35.348034, 39.507767>,  <29.958092, 35.211372, 39.385834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602486, 35.348034, 39.507767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451895, 0.547410, 0.704367,
		0.073784, 0.763945, -0.641049,
		-0.889014, 0.341658, 0.304833,
		29.335781, 35.450531, 39.599216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053520, 35.883217, 39.525093>,  <29.958092, 35.211372, 39.385834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053520, 35.883217, 39.525093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732496, 35.767544, 39.733810>,  <29.539883, 35.698139, 39.859043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732496, 35.767544, 39.733810>,  <30.053520, 35.883217, 39.525093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732496, 35.767544, 39.733810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390831, 0.405958, 0.826105,
		-0.450720, 0.866933, -0.212786,
		-0.802560, -0.289178, 0.521798,
		29.491728, 35.680790, 39.890350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992443, 36.340637, 40.091278>,  <30.053520, 35.883217, 39.525093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992443, 36.340637, 40.091278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773918, 36.043789, 40.246609>,  <29.642803, 35.865681, 40.339806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773918, 36.043789, 40.246609>,  <29.992443, 36.340637, 40.091278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773918, 36.043789, 40.246609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221049, 0.319446, 0.921462,
		-0.807888, 0.589244, -0.010471,
		-0.546310, -0.742123, 0.388328,
		29.610025, 35.821152, 40.363106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663918, 36.680744, 40.559002>,  <29.992443, 36.340637, 40.091278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663918, 36.680744, 40.559002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652617, 36.297878, 40.674267>,  <29.645836, 36.068157, 40.743427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652617, 36.297878, 40.674267>,  <29.663918, 36.680744, 40.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652617, 36.297878, 40.674267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221339, 0.275131, 0.935581,
		-0.974787, 0.090216, 0.204084,
		-0.028255, -0.957165, 0.288162,
		29.644140, 36.010731, 40.760715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377813, 36.702534, 41.242355>,  <29.663918, 36.680744, 40.559002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377813, 36.702534, 41.242355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560968, 36.348557, 41.208385>,  <29.670862, 36.136169, 41.188004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560968, 36.348557, 41.208385>,  <29.377813, 36.702534, 41.242355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560968, 36.348557, 41.208385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428543, 0.136013, 0.893225,
		-0.778903, -0.445393, 0.441516,
		0.457888, -0.884944, -0.084929,
		29.698336, 36.083073, 41.182907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172781, 36.163456, 41.786560>,  <29.377813, 36.702534, 41.242355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172781, 36.163456, 41.786560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549580, 36.168797, 41.652420>,  <29.775660, 36.172001, 41.571934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549580, 36.168797, 41.652420>,  <29.172781, 36.163456, 41.786560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549580, 36.168797, 41.652420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322526, 0.240372, 0.915532,
		0.092830, -0.970589, 0.222124,
		0.941998, 0.013348, -0.335354,
		29.832178, 36.172802, 41.551815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659883, 36.500443, 42.075722>,  <29.172781, 36.163456, 41.786560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659883, 36.500443, 42.075722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972315, 36.567028, 42.316456>,  <30.159775, 36.606979, 42.460896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972315, 36.567028, 42.316456>,  <29.659883, 36.500443, 42.075722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972315, 36.567028, 42.316456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085230, 0.983212, -0.161341,
		-0.618587, 0.074726, 0.782155,
		0.781080, 0.166467, 0.601833,
		30.206638, 36.616966, 42.497005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511156, 37.068718, 42.461617>,  <29.659883, 36.500443, 42.075722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511156, 37.068718, 42.461617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909657, 37.035061, 42.469639>,  <30.148758, 37.014866, 42.474453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909657, 37.035061, 42.469639>,  <29.511156, 37.068718, 42.461617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909657, 37.035061, 42.469639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086468, 0.974885, -0.205240,
		-0.002283, 0.206205, 0.978506,
		0.996252, -0.084141, 0.020056,
		30.208532, 37.009819, 42.475655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874159, 37.565891, 42.822720>,  <29.511156, 37.068718, 42.461617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874159, 37.565891, 42.822720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105640, 37.466194, 42.512112>,  <30.244530, 37.406376, 42.325748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105640, 37.466194, 42.512112>,  <29.874159, 37.565891, 42.822720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105640, 37.466194, 42.512112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057518, 0.962257, -0.265996,
		0.813507, 0.109270, 0.571197,
		0.578704, -0.249244, -0.776518,
		30.279251, 37.391422, 42.279156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243906, 38.214859, 42.508839>,  <29.874159, 37.565891, 42.822720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243906, 38.214859, 42.508839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375736, 37.951126, 42.238533>,  <30.454834, 37.792885, 42.076351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375736, 37.951126, 42.238533>,  <30.243906, 38.214859, 42.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375736, 37.951126, 42.238533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392479, 0.746657, -0.537088,
		0.858685, -0.088212, 0.504855,
		0.329576, -0.659335, -0.675764,
		30.474609, 37.753326, 42.035805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934662, 38.427235, 42.415310>,  <30.243906, 38.214859, 42.508839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934662, 38.427235, 42.415310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836567, 38.253857, 42.068443>,  <30.777710, 38.149830, 41.860321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836567, 38.253857, 42.068443>,  <30.934662, 38.427235, 42.415310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836567, 38.253857, 42.068443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460112, 0.735284, -0.497648,
		0.853321, -0.521036, 0.019118,
		-0.245235, -0.433449, -0.867168,
		30.762997, 38.123821, 41.808292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563473, 38.147083, 41.963078>,  <30.934662, 38.427235, 42.415310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563473, 38.147083, 41.963078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255857, 38.230469, 41.721375>,  <31.071289, 38.280499, 41.576355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255857, 38.230469, 41.721375>,  <31.563473, 38.147083, 41.963078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255857, 38.230469, 41.721375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560907, 0.673420, -0.481548,
		0.306535, -0.709260, -0.634813,
		-0.769038, 0.208460, -0.604255,
		31.025146, 38.293007, 41.540096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822252, 38.141193, 41.331951>,  <31.563473, 38.147083, 41.963078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822252, 38.141193, 41.331951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483692, 38.353371, 41.313004>,  <31.280556, 38.480675, 41.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483692, 38.353371, 41.313004>,  <31.822252, 38.141193, 41.331951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483692, 38.353371, 41.313004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421204, 0.612347, -0.669044,
		-0.325879, -0.586231, -0.741712,
		-0.846399, 0.530439, -0.047372,
		31.229773, 38.512501, 41.298794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489811, 38.347717, 40.566074>,  <31.822252, 38.141193, 41.331951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489811, 38.347717, 40.566074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443396, 38.628708, 40.846951>,  <31.415546, 38.797302, 41.015476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443396, 38.628708, 40.846951>,  <31.489811, 38.347717, 40.566074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443396, 38.628708, 40.846951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527842, 0.642481, -0.555518,
		-0.841379, 0.306183, -0.445347,
		-0.116037, 0.702474, 0.702186,
		31.408585, 38.839451, 41.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118889, 38.973198, 40.334606>,  <31.489811, 38.347717, 40.566074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118889, 38.973198, 40.334606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345861, 39.132137, 40.623089>,  <31.482044, 39.227501, 40.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345861, 39.132137, 40.623089>,  <31.118889, 38.973198, 40.334606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345861, 39.132137, 40.623089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324431, 0.697132, -0.639336,
		-0.756813, 0.596761, 0.266663,
		0.567431, 0.397345, 0.721207,
		31.516090, 39.251339, 40.839451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196545, 39.730507, 40.140430>,  <31.118889, 38.973198, 40.334606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196545, 39.730507, 40.140430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524652, 39.664379, 40.359459>,  <31.721518, 39.624702, 40.490875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524652, 39.664379, 40.359459>,  <31.196545, 39.730507, 40.140430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524652, 39.664379, 40.359459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517567, 0.622045, -0.587524,
		-0.243484, 0.765330, 0.595806,
		0.820268, -0.165317, 0.547568,
		31.770733, 39.614784, 40.523727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792883, 40.053471, 40.684616>,  <31.196545, 39.730507, 40.140430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792883, 40.053471, 40.684616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989252, 40.252766, 40.970482>,  <31.107073, 40.372345, 41.142002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989252, 40.252766, 40.970482>,  <30.792883, 40.053471, 40.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989252, 40.252766, 40.970482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472291, 0.841525, -0.262252,
		-0.732076, -0.208786, 0.648439,
		0.490924, 0.498240, 0.714668,
		31.136530, 40.402237, 41.184883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064758, 40.060314, 40.782562>,  <30.792883, 40.053471, 40.684616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064758, 40.060314, 40.782562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673355, 40.079205, 40.862858>,  <29.438513, 40.090538, 40.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673355, 40.079205, 40.862858>,  <30.064758, 40.060314, 40.782562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673355, 40.079205, 40.862858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198274, -0.483021, -0.852865,
		0.056682, -0.874334, 0.482003,
		-0.978507, 0.047227, 0.200736,
		29.379803, 40.093372, 40.923080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824951, 39.387627, 40.709774>,  <30.064758, 40.060314, 40.782562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824951, 39.387627, 40.709774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516781, 39.638424, 40.663597>,  <29.331879, 39.788902, 40.635891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516781, 39.638424, 40.663597>,  <29.824951, 39.387627, 40.709774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516781, 39.638424, 40.663597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175482, -0.382634, -0.907081,
		-0.612903, -0.678581, 0.404817,
		-0.770425, 0.626992, -0.115439,
		29.285652, 39.826523, 40.628967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175932, 38.951611, 40.597538>,  <29.824951, 39.387627, 40.709774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175932, 38.951611, 40.597538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105295, 39.304626, 40.423210>,  <29.062914, 39.516438, 40.318615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105295, 39.304626, 40.423210>,  <29.175932, 38.951611, 40.597538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105295, 39.304626, 40.423210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323092, -0.470216, -0.821285,
		-0.929746, -0.004222, 0.368177,
		-0.176591, 0.882541, -0.435818,
		29.052319, 39.569389, 40.292465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769999, 38.757229, 40.074833>,  <29.175932, 38.951611, 40.597538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769999, 38.757229, 40.074833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860266, 39.135674, 39.981934>,  <28.914427, 39.362740, 39.926193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860266, 39.135674, 39.981934>,  <28.769999, 38.757229, 40.074833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860266, 39.135674, 39.981934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091722, -0.216709, -0.971918,
		-0.969877, 0.240634, 0.037875,
		0.225668, 0.946114, -0.232253,
		28.927967, 39.419506, 39.912258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169945, 38.955921, 39.649715>,  <28.769999, 38.757229, 40.074833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169945, 38.955921, 39.649715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501366, 39.175636, 39.606300>,  <28.700218, 39.307465, 39.580250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501366, 39.175636, 39.606300>,  <28.169945, 38.955921, 39.649715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501366, 39.175636, 39.606300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037165, -0.139467, -0.989529,
		-0.558678, 0.823909, -0.095141,
		0.828551, 0.549293, -0.108538,
		28.749931, 39.340424, 39.573738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074764, 39.224297, 39.108360>,  <28.169945, 38.955921, 39.649715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074764, 39.224297, 39.108360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471682, 39.268040, 39.131672>,  <28.709831, 39.294285, 39.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471682, 39.268040, 39.131672>,  <28.074764, 39.224297, 39.108360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471682, 39.268040, 39.131672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093739, -0.354776, -0.930240,
		-0.081054, 0.928533, -0.362293,
		0.992292, 0.109360, 0.058283,
		28.769369, 39.300846, 39.149158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156309, 39.524780, 38.480659>,  <28.074764, 39.224297, 39.108360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156309, 39.524780, 38.480659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510563, 39.388012, 38.606350>,  <28.723116, 39.305950, 38.681767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510563, 39.388012, 38.606350>,  <28.156309, 39.524780, 38.480659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510563, 39.388012, 38.606350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151059, -0.427743, -0.891189,
		0.439125, 0.836735, -0.327174,
		0.885636, -0.341920, 0.314229,
		28.776253, 39.285435, 38.700619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540909, 39.711632, 37.926949>,  <28.156309, 39.524780, 38.480659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540909, 39.711632, 37.926949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740402, 39.418430, 38.111977>,  <28.860098, 39.242508, 38.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740402, 39.418430, 38.111977>,  <28.540909, 39.711632, 37.926949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740402, 39.418430, 38.111977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292230, -0.360233, -0.885909,
		0.816007, 0.577008, 0.034546,
		0.498732, -0.733003, 0.462572,
		28.890022, 39.198528, 38.250748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248177, 39.619957, 37.569717>,  <28.540909, 39.711632, 37.926949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248177, 39.619957, 37.569717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186155, 39.264648, 37.742661>,  <29.148943, 39.051464, 37.846428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186155, 39.264648, 37.742661>,  <29.248177, 39.619957, 37.569717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186155, 39.264648, 37.742661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115649, -0.450965, -0.885017,
		0.981114, -0.087222, 0.172651,
		-0.155053, -0.888269, 0.432361,
		29.139639, 38.998169, 37.872368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741173, 39.157349, 37.181511>,  <29.248177, 39.619957, 37.569717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741173, 39.157349, 37.181511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540649, 38.889740, 37.401001>,  <29.420336, 38.729176, 37.532696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540649, 38.889740, 37.401001>,  <29.741173, 39.157349, 37.181511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540649, 38.889740, 37.401001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228472, -0.714006, -0.661813,
		0.834560, -0.206405, 0.510790,
		-0.501308, -0.669024, 0.548724,
		29.390257, 38.689034, 37.565617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187246, 38.446857, 37.135105>,  <29.741173, 39.157349, 37.181511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187246, 38.446857, 37.135105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816177, 38.347740, 37.246834>,  <29.593536, 38.288269, 37.313873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816177, 38.347740, 37.246834>,  <30.187246, 38.446857, 37.135105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816177, 38.347740, 37.246834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028822, -0.698321, -0.715204,
		0.372280, -0.671527, 0.640671,
		-0.927673, -0.247790, 0.279325,
		29.537876, 38.273403, 37.330631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126877, 37.745464, 37.303238>,  <30.187246, 38.446857, 37.135105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126877, 37.745464, 37.303238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765039, 37.863499, 37.180187>,  <29.547937, 37.934319, 37.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765039, 37.863499, 37.180187>,  <30.126877, 37.745464, 37.303238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765039, 37.863499, 37.180187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008548, -0.708967, -0.705190,
		-0.426191, -0.640540, 0.638804,
		-0.904593, 0.295085, -0.307630,
		29.493662, 37.952023, 37.087898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841434, 37.162720, 37.084049>,  <30.126877, 37.745464, 37.303238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841434, 37.162720, 37.084049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608976, 37.442638, 36.917892>,  <29.469501, 37.610592, 36.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608976, 37.442638, 36.917892>,  <29.841434, 37.162720, 37.084049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608976, 37.442638, 36.917892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223715, -0.628151, -0.745237,
		-0.782448, -0.340159, 0.521600,
		-0.581143, 0.699799, -0.415397,
		29.434633, 37.652576, 36.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170586, 36.855400, 37.024712>,  <29.841434, 37.162720, 37.084049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170586, 36.855400, 37.024712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207771, 37.140297, 36.746410>,  <29.230083, 37.311234, 36.579430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207771, 37.140297, 36.746410>,  <29.170586, 36.855400, 37.024712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207771, 37.140297, 36.746410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168722, -0.677406, -0.715998,
		-0.981270, 0.183952, 0.057195,
		0.092965, 0.712237, -0.695755,
		29.235661, 37.353970, 36.537685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719679, 36.611401, 36.431934>,  <29.170586, 36.855400, 37.024712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719679, 36.611401, 36.431934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889750, 36.918118, 36.239582>,  <28.991793, 37.102150, 36.124172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889750, 36.918118, 36.239582>,  <28.719679, 36.611401, 36.431934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889750, 36.918118, 36.239582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179372, -0.449375, -0.875150,
		-0.887157, 0.458352, -0.053523,
		0.425179, 0.766796, -0.480882,
		29.017303, 37.148155, 36.095318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175659, 36.885426, 35.923737>,  <28.719679, 36.611401, 36.431934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175659, 36.885426, 35.923737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531223, 37.019188, 35.798512>,  <28.744562, 37.099445, 35.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531223, 37.019188, 35.798512>,  <28.175659, 36.885426, 35.923737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531223, 37.019188, 35.798512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204271, -0.322342, -0.924321,
		-0.410015, 0.885588, -0.218223,
		0.888910, 0.334409, -0.313065,
		28.797895, 37.119511, 35.704594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981817, 37.032185, 35.312176>,  <28.175659, 36.885426, 35.923737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981817, 37.032185, 35.312176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379885, 36.999237, 35.290798>,  <28.618725, 36.979469, 35.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379885, 36.999237, 35.290798>,  <27.981817, 37.032185, 35.312176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379885, 36.999237, 35.290798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084017, -0.432639, -0.897644,
		0.050820, 0.897796, -0.437469,
		0.995168, -0.082373, -0.053444,
		28.678434, 36.974525, 35.274765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138004, 37.284622, 34.654076>,  <27.981817, 37.032185, 35.312176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138004, 37.284622, 34.654076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443094, 37.055931, 34.774994>,  <28.626148, 36.918716, 34.847546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443094, 37.055931, 34.774994>,  <28.138004, 37.284622, 34.654076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443094, 37.055931, 34.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039674, -0.507907, -0.860498,
		0.645504, 0.644331, -0.410077,
		0.762726, -0.571723, 0.302293,
		28.671911, 36.884415, 34.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456261, 37.265282, 34.123180>,  <28.138004, 37.284622, 34.654076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456261, 37.265282, 34.123180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621670, 36.955807, 34.315182>,  <28.720915, 36.770123, 34.430382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621670, 36.955807, 34.315182>,  <28.456261, 37.265282, 34.123180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621670, 36.955807, 34.315182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097893, -0.561916, -0.821381,
		0.905217, 0.292669, -0.308103,
		0.413521, -0.773689, 0.480006,
		28.745726, 36.723701, 34.459183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119953, 36.961964, 33.752899>,  <28.456261, 37.265282, 34.123180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119953, 36.961964, 33.752899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972984, 36.660629, 33.971069>,  <28.884804, 36.479828, 34.101971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972984, 36.660629, 33.971069>,  <29.119953, 36.961964, 33.752899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972984, 36.660629, 33.971069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013591, -0.582036, -0.813049,
		0.929955, -0.306145, 0.203615,
		-0.367422, -0.753332, 0.545428,
		28.862757, 36.434631, 34.134697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565165, 36.351700, 33.624840>,  <29.119953, 36.961964, 33.752899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565165, 36.351700, 33.624840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203707, 36.243546, 33.757698>,  <28.986832, 36.178654, 33.837414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203707, 36.243546, 33.757698>,  <29.565165, 36.351700, 33.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203707, 36.243546, 33.757698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136924, -0.552431, -0.822236,
		0.405810, -0.788486, 0.462178,
		-0.903643, -0.270388, 0.332144,
		28.932613, 36.162430, 33.857342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494122, 35.683338, 33.401321>,  <29.565165, 36.351700, 33.624840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494122, 35.683338, 33.401321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114468, 35.788624, 33.470448>,  <28.886675, 35.851795, 33.511925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114468, 35.788624, 33.470448>,  <29.494122, 35.683338, 33.401321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114468, 35.788624, 33.470448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309224, -0.675637, -0.669250,
		-0.059390, -0.688647, 0.722661,
		-0.949133, 0.263211, 0.172819,
		28.829727, 35.867588, 33.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249397, 35.078632, 33.310799>,  <29.494122, 35.683338, 33.401321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249397, 35.078632, 33.310799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953085, 35.338955, 33.244236>,  <28.775297, 35.495148, 33.204300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953085, 35.338955, 33.244236>,  <29.249397, 35.078632, 33.310799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953085, 35.338955, 33.244236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244612, -0.492057, -0.835491,
		-0.625626, -0.578211, 0.523702,
		-0.740781, 0.650809, -0.166406,
		28.730850, 35.534199, 33.194313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617939, 34.825706, 33.833084>,  <29.249397, 35.078632, 33.310799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617939, 34.825706, 33.833084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810139, 35.169765, 33.764660>,  <29.925459, 35.376202, 33.723606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810139, 35.169765, 33.764660>,  <29.617939, 34.825706, 33.833084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810139, 35.169765, 33.764660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668224, -0.232758, 0.706612,
		0.567976, -0.453835, -0.686613,
		0.480500, 0.860150, -0.171062,
		29.954288, 35.427811, 33.713341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412727, 34.710442, 33.574093>,  <29.617939, 34.825706, 33.833084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412727, 34.710442, 33.574093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292374, 35.028351, 33.784924>,  <30.220161, 35.219097, 33.911423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292374, 35.028351, 33.784924>,  <30.412727, 34.710442, 33.574093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292374, 35.028351, 33.784924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691436, -0.198839, 0.694535,
		0.656799, 0.573413, -0.489706,
		-0.300883, 0.794770, 0.527076,
		30.202108, 35.266781, 33.943047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986969, 35.248363, 33.657146>,  <30.412727, 34.710442, 33.574093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986969, 35.248363, 33.657146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719954, 35.261616, 33.954681>,  <30.559744, 35.269566, 34.133202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719954, 35.261616, 33.954681>,  <30.986969, 35.248363, 33.657146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719954, 35.261616, 33.954681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729018, -0.174075, 0.661990,
		0.151412, 0.984175, 0.092052,
		-0.667538, 0.033126, 0.743839,
		30.519691, 35.271553, 34.177834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435036, 35.503719, 34.281445>,  <30.986969, 35.248363, 33.657146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435036, 35.503719, 34.281445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117622, 35.313061, 34.432766>,  <30.927176, 35.198666, 34.523560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117622, 35.313061, 34.432766>,  <31.435036, 35.503719, 34.281445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117622, 35.313061, 34.432766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498942, -0.153734, 0.852891,
		-0.348373, 0.865546, 0.359814,
		-0.793532, -0.476651, 0.378300,
		30.879562, 35.170067, 34.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364376, 35.918114, 34.952831>,  <31.435036, 35.503719, 34.281445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364376, 35.918114, 34.952831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220070, 35.545116, 34.945877>,  <31.133486, 35.321316, 34.941704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220070, 35.545116, 34.945877>,  <31.364376, 35.918114, 34.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220070, 35.545116, 34.945877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456255, -0.192712, 0.868731,
		-0.813438, 0.305475, 0.494979,
		-0.360764, -0.932495, -0.017385,
		31.111841, 35.265369, 34.940662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974628, 35.725380, 35.525227>,  <31.364376, 35.918114, 34.952831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974628, 35.725380, 35.525227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178158, 35.403423, 35.403080>,  <31.300276, 35.210251, 35.329792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178158, 35.403423, 35.403080>,  <30.974628, 35.725380, 35.525227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178158, 35.403423, 35.403080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210119, -0.227877, 0.950748,
		-0.834836, -0.547925, 0.053174,
		0.508822, -0.804891, -0.305369,
		31.330805, 35.161957, 35.311470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634462, 35.096474, 35.891159>,  <30.974628, 35.725380, 35.525227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634462, 35.096474, 35.891159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019674, 35.076214, 35.785324>,  <31.250801, 35.064056, 35.721825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019674, 35.076214, 35.785324>,  <30.634462, 35.096474, 35.891159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019674, 35.076214, 35.785324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251599, -0.181929, 0.950579,
		-0.096280, -0.982006, -0.162460,
		0.963030, -0.050647, -0.264588,
		31.308584, 35.061020, 35.705948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901867, 34.454494, 36.181129>,  <30.634462, 35.096474, 35.891159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901867, 34.454494, 36.181129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105597, 34.795467, 36.133892>,  <31.227835, 35.000053, 36.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105597, 34.795467, 36.133892>,  <30.901867, 34.454494, 36.181129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105597, 34.795467, 36.133892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423213, -0.128623, 0.896854,
		0.749320, -0.506766, -0.426272,
		0.509323, 0.852434, -0.118090,
		31.258394, 35.051197, 36.098465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686035, 34.290188, 36.287113>,  <30.901867, 34.454494, 36.181129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686035, 34.290188, 36.287113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648962, 34.682701, 36.354633>,  <31.626719, 34.918209, 36.395145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648962, 34.682701, 36.354633>,  <31.686035, 34.290188, 36.287113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648962, 34.682701, 36.354633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606446, -0.078824, 0.791208,
		0.789704, 0.175698, -0.587790,
		-0.092682, 0.981283, 0.168799,
		31.621157, 34.977085, 36.405273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284573, 34.399597, 36.678890>,  <31.686035, 34.290188, 36.287113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284573, 34.399597, 36.678890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093029, 34.743298, 36.750874>,  <31.978102, 34.949516, 36.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093029, 34.743298, 36.750874>,  <32.284573, 34.399597, 36.678890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093029, 34.743298, 36.750874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306486, -0.028463, 0.951450,
		0.822653, 0.510768, -0.249717,
		-0.478862, 0.859247, 0.179958,
		31.949369, 35.001072, 36.804859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700752, 34.853832, 36.957169>,  <32.284573, 34.399597, 36.678890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700752, 34.853832, 36.957169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347172, 34.996952, 37.077576>,  <32.135025, 35.082825, 37.149818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347172, 34.996952, 37.077576>,  <32.700752, 34.853832, 36.957169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347172, 34.996952, 37.077576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333154, 0.030236, 0.942388,
		0.328089, 0.933307, -0.145931,
		-0.883949, 0.357804, 0.301015,
		32.081985, 35.104294, 37.167881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989456, 35.256229, 37.413433>,  <32.700752, 34.853832, 36.957169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989456, 35.256229, 37.413433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599415, 35.216339, 37.492653>,  <32.365391, 35.192406, 37.540184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599415, 35.216339, 37.492653>,  <32.989456, 35.256229, 37.413433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599415, 35.216339, 37.492653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206352, -0.081165, 0.975106,
		-0.081165, 0.991699, 0.099722,
		-0.975106, -0.099722, 0.198051,
		32.306885, 35.186424, 37.552067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884094, 35.728134, 38.028416>,  <32.989456, 35.256229, 37.413433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884094, 35.728134, 38.028416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586697, 35.462620, 37.995899>,  <32.408257, 35.303310, 37.976391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586697, 35.462620, 37.995899>,  <32.884094, 35.728134, 38.028416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586697, 35.462620, 37.995899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034194, -0.083658, 0.995908,
		-0.667868, 0.743231, 0.039502,
		-0.743494, -0.663784, -0.081287,
		32.363647, 35.263485, 37.971512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371357, 35.958969, 38.493427>,  <32.884094, 35.728134, 38.028416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371357, 35.958969, 38.493427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328583, 35.570202, 38.409576>,  <32.302917, 35.336941, 38.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328583, 35.570202, 38.409576>,  <32.371357, 35.958969, 38.493427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328583, 35.570202, 38.409576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061006, -0.204027, 0.977062,
		-0.992393, 0.117270, -0.037475,
		-0.106934, -0.971916, -0.209629,
		32.296501, 35.278625, 38.346687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784538, 35.824383, 38.944214>,  <32.371357, 35.958969, 38.493427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784538, 35.824383, 38.944214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953753, 35.470634, 38.865295>,  <32.055283, 35.258385, 38.817944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953753, 35.470634, 38.865295>,  <31.784538, 35.824383, 38.944214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953753, 35.470634, 38.865295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107010, -0.264972, 0.958300,
		-0.899771, -0.384284, -0.206730,
		0.423037, -0.884373, -0.197292,
		32.080666, 35.205322, 38.806107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424376, 35.365253, 39.354328>,  <31.784538, 35.824383, 38.944214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424376, 35.365253, 39.354328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736219, 35.130646, 39.266502>,  <31.923325, 34.989883, 39.213806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736219, 35.130646, 39.266502>,  <31.424376, 35.365253, 39.354328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736219, 35.130646, 39.266502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020292, -0.374063, 0.927181,
		-0.625938, -0.718383, -0.303524,
		0.779608, -0.586518, -0.219564,
		31.970102, 34.954689, 39.200634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255795, 34.603775, 39.426292>,  <31.424376, 35.365253, 39.354328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255795, 34.603775, 39.426292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652529, 34.635250, 39.466431>,  <31.890570, 34.654133, 39.490513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652529, 34.635250, 39.466431>,  <31.255795, 34.603775, 39.426292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652529, 34.635250, 39.466431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057696, -0.424848, 0.903424,
		0.113717, -0.901839, -0.416839,
		0.991837, 0.078685, 0.100345,
		31.950079, 34.658855, 39.496532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432325, 34.006142, 39.727409>,  <31.255795, 34.603775, 39.426292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432325, 34.006142, 39.727409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762131, 34.214794, 39.815117>,  <31.960014, 34.339985, 39.867741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762131, 34.214794, 39.815117>,  <31.432325, 34.006142, 39.727409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762131, 34.214794, 39.815117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025830, -0.352406, 0.935491,
		0.565252, -0.776989, -0.277090,
		0.824514, 0.521630, 0.219268,
		32.009483, 34.371284, 39.880898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875101, 33.531082, 39.924110>,  <31.432325, 34.006142, 39.727409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875101, 33.531082, 39.924110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032269, 33.871197, 40.064182>,  <32.126568, 34.075264, 40.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032269, 33.871197, 40.064182>,  <31.875101, 33.531082, 39.924110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032269, 33.871197, 40.064182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155397, -0.436724, 0.886072,
		0.906348, -0.293739, -0.303729,
		0.392919, 0.850288, 0.350178,
		32.150143, 34.126282, 40.169235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613335, 33.501770, 40.024410>,  <31.875101, 33.531082, 39.924110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613335, 33.501770, 40.024410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494816, 33.790878, 40.274147>,  <32.423706, 33.964344, 40.423988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494816, 33.790878, 40.274147>,  <32.613335, 33.501770, 40.024410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494816, 33.790878, 40.274147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382481, -0.509200, 0.770989,
		0.875167, 0.467240, -0.125575,
		-0.296294, 0.722774, 0.624346,
		32.405930, 34.007710, 40.461452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058498, 33.364861, 40.618767>,  <32.613335, 33.501770, 40.024410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058498, 33.364861, 40.618767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796585, 33.628635, 40.766502>,  <32.639439, 33.786900, 40.855145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796585, 33.628635, 40.766502>,  <33.058498, 33.364861, 40.618767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796585, 33.628635, 40.766502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168519, -0.348979, 0.921854,
		0.736792, 0.665852, 0.117378,
		-0.654781, 0.659434, 0.369334,
		32.600151, 33.826466, 40.877304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379402, 33.526981, 41.302200>,  <33.058498, 33.364861, 40.618767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379402, 33.526981, 41.302200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987186, 33.602314, 41.324375>,  <32.751858, 33.647514, 41.337681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987186, 33.602314, 41.324375>,  <33.379402, 33.526981, 41.302200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987186, 33.602314, 41.324375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024131, -0.395857, 0.917995,
		0.194832, 0.898793, 0.392698,
		-0.980540, 0.188331, 0.055437,
		32.693024, 33.658813, 41.341007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270035, 33.608707, 42.049057>,  <33.379402, 33.526981, 41.302200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270035, 33.608707, 42.049057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918896, 33.539509, 41.870415>,  <32.708214, 33.497990, 41.763229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918896, 33.539509, 41.870415>,  <33.270035, 33.608707, 42.049057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918896, 33.539509, 41.870415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329697, -0.458087, 0.825503,
		-0.347396, 0.871910, 0.345093,
		-0.877847, -0.173001, -0.446604,
		32.655540, 33.487610, 41.736435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732025, 33.700840, 42.562878>,  <33.270035, 33.608707, 42.049057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732025, 33.700840, 42.562878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564236, 33.463161, 42.288368>,  <32.463562, 33.320553, 42.123665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564236, 33.463161, 42.288368>,  <32.732025, 33.700840, 42.562878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564236, 33.463161, 42.288368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346878, -0.593706, 0.726078,
		-0.838879, 0.542623, 0.042928,
		-0.419473, -0.594201, -0.686271,
		32.438393, 33.284901, 42.082485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043232, 33.656540, 42.833740>,  <32.732025, 33.700840, 42.562878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043232, 33.656540, 42.833740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130039, 33.351925, 42.589458>,  <32.182125, 33.169155, 42.442890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130039, 33.351925, 42.589458>,  <32.043232, 33.656540, 42.833740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130039, 33.351925, 42.589458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402598, -0.639755, 0.654697,
		-0.889279, 0.103784, -0.445435,
		0.217022, -0.761539, -0.610704,
		32.195145, 33.123463, 42.406246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425936, 33.293026, 42.803562>,  <32.043232, 33.656540, 42.833740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425936, 33.293026, 42.803562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683767, 33.028362, 42.650341>,  <31.838467, 32.869564, 42.558407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683767, 33.028362, 42.650341>,  <31.425936, 33.293026, 42.803562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683767, 33.028362, 42.650341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386305, -0.714230, 0.583648,
		-0.659764, -0.228230, -0.715977,
		0.644578, -0.661655, -0.383057,
		31.877140, 32.829865, 42.535423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980692, 32.660736, 42.699902>,  <31.425936, 33.293026, 42.803562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980692, 32.660736, 42.699902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363689, 32.549107, 42.729095>,  <31.593489, 32.482128, 42.746613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363689, 32.549107, 42.729095>,  <30.980692, 32.660736, 42.699902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363689, 32.549107, 42.729095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266105, -0.756910, 0.596889,
		-0.111332, -0.590938, -0.798998,
		0.957493, -0.279070, 0.072983,
		31.650938, 32.465385, 42.750992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092545, 31.870224, 42.569641>,  <30.980692, 32.660736, 42.699902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092545, 31.870224, 42.569641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404266, 31.989809, 42.789936>,  <31.591299, 32.061562, 42.922112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404266, 31.989809, 42.789936>,  <31.092545, 31.870224, 42.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404266, 31.989809, 42.789936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292948, -0.603103, 0.741922,
		0.553957, -0.739519, -0.382419,
		0.779304, 0.298964, 0.550733,
		31.638058, 32.079498, 42.955154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200628, 31.344877, 43.056648>,  <31.092545, 31.870224, 42.569641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200628, 31.344877, 43.056648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415361, 31.638523, 43.222965>,  <31.544201, 31.814711, 43.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415361, 31.638523, 43.222965>,  <31.200628, 31.344877, 43.056648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415361, 31.638523, 43.222965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204443, -0.364951, 0.908303,
		0.818544, -0.572613, -0.045833,
		0.536833, 0.734116, 0.415795,
		31.576410, 31.858757, 43.347702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454214, 31.029129, 43.597412>,  <31.200628, 31.344877, 43.056648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454214, 31.029129, 43.597412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548569, 31.400282, 43.712925>,  <31.605181, 31.622972, 43.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548569, 31.400282, 43.712925>,  <31.454214, 31.029129, 43.597412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548569, 31.400282, 43.712925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278287, -0.220226, 0.934910,
		0.931082, -0.300898, 0.206269,
		0.235887, 0.927880, 0.288784,
		31.619335, 31.678646, 43.799561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884495, 30.971134, 44.151669>,  <31.454214, 31.029129, 43.597412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884495, 30.971134, 44.151669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726538, 31.338518, 44.160538>,  <31.631763, 31.558949, 44.165859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726538, 31.338518, 44.160538>,  <31.884495, 30.971134, 44.151669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726538, 31.338518, 44.160538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260101, -0.134908, 0.956111,
		0.881141, 0.371793, 0.292167,
		-0.394891, 0.918461, 0.022169,
		31.608070, 31.614056, 44.167187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222637, 31.234392, 44.707039>,  <31.884495, 30.971134, 44.151669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222637, 31.234392, 44.707039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873466, 31.416632, 44.637272>,  <31.663963, 31.525976, 44.595409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873466, 31.416632, 44.637272>,  <32.222637, 31.234392, 44.707039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873466, 31.416632, 44.637272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223362, -0.055400, 0.973160,
		0.433707, 0.888460, 0.150124,
		-0.872930, 0.455598, -0.174421,
		31.611588, 31.553310, 44.584946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100975, 31.762232, 45.197285>,  <32.222637, 31.234392, 44.707039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100975, 31.762232, 45.197285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727879, 31.681776, 45.077595>,  <31.504021, 31.633503, 45.005783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727879, 31.681776, 45.077595>,  <32.100975, 31.762232, 45.197285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727879, 31.681776, 45.077595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264307, -0.182992, 0.946919,
		-0.245220, 0.962318, 0.117522,
		-0.932743, -0.201142, -0.299220,
		31.448055, 31.621433, 44.987827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748865, 32.012562, 45.763004>,  <32.100975, 31.762232, 45.197285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748865, 32.012562, 45.763004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502377, 31.763626, 45.569939>,  <31.354483, 31.614265, 45.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502377, 31.763626, 45.569939>,  <31.748865, 32.012562, 45.763004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502377, 31.763626, 45.569939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428598, -0.249167, 0.868458,
		-0.660738, 0.742034, -0.113189,
		-0.616222, -0.622336, -0.482669,
		31.317511, 31.576925, 45.425137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064713, 32.258244, 45.971458>,  <31.748865, 32.012562, 45.763004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064713, 32.258244, 45.971458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045467, 31.877907, 45.849094>,  <31.033920, 31.649704, 45.775677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045467, 31.877907, 45.849094>,  <31.064713, 32.258244, 45.971458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045467, 31.877907, 45.849094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285356, -0.280414, 0.916483,
		-0.957213, 0.131385, -0.257838,
		-0.048111, -0.950845, -0.305907,
		31.031034, 31.592653, 45.757320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376831, 31.962532, 46.247082>,  <31.064713, 32.258244, 45.971458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376831, 31.962532, 46.247082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641333, 31.668552, 46.186958>,  <30.800034, 31.492165, 46.150887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641333, 31.668552, 46.186958>,  <30.376831, 31.962532, 46.247082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641333, 31.668552, 46.186958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165421, -0.338291, 0.926388,
		-0.731696, -0.587714, -0.345272,
		0.661254, -0.734950, -0.150306,
		30.839708, 31.448067, 46.141865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148327, 31.454723, 46.557892>,  <30.376831, 31.962532, 46.247082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148327, 31.454723, 46.557892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507532, 31.284504, 46.513199>,  <30.723055, 31.182371, 46.486385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507532, 31.284504, 46.513199>,  <30.148327, 31.454723, 46.557892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507532, 31.284504, 46.513199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067077, -0.383398, 0.921144,
		-0.434833, -0.819701, -0.372840,
		0.898010, -0.425553, -0.111731,
		30.776936, 31.156839, 46.479679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070923, 30.840355, 46.794323>,  <30.148327, 31.454723, 46.557892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070923, 30.840355, 46.794323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466784, 30.897190, 46.802368>,  <30.704300, 30.931292, 46.807194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466784, 30.897190, 46.802368>,  <30.070923, 30.840355, 46.794323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466784, 30.897190, 46.802368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027093, -0.322633, 0.946136,
		0.140926, -0.935798, -0.323143,
		0.989649, 0.142090, 0.020113,
		30.763678, 30.939817, 46.808403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460522, 30.165279, 46.863941>,  <30.070923, 30.840355, 46.794323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460522, 30.165279, 46.863941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707388, 30.448503, 47.001205>,  <30.855507, 30.618439, 47.083565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707388, 30.448503, 47.001205>,  <30.460522, 30.165279, 46.863941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707388, 30.448503, 47.001205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009397, -0.442726, 0.896608,
		0.786777, -0.550131, -0.279889,
		0.617165, 0.708061, 0.343157,
		30.892538, 30.660921, 47.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094156, 29.796703, 47.154926>,  <30.460522, 30.165279, 46.863941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094156, 29.796703, 47.154926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107918, 30.162556, 47.316055>,  <31.116175, 30.382067, 47.412731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107918, 30.162556, 47.316055>,  <31.094156, 29.796703, 47.154926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107918, 30.162556, 47.316055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063247, -0.404246, 0.912461,
		0.997405, -0.005914, -0.071755,
		0.034403, 0.914631, 0.402823,
		31.118238, 30.436945, 47.436901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534561, 29.615702, 47.602810>,  <31.094156, 29.796703, 47.154926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534561, 29.615702, 47.602810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431103, 29.969700, 47.757668>,  <31.369028, 30.182098, 47.850582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431103, 29.969700, 47.757668>,  <31.534561, 29.615702, 47.602810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431103, 29.969700, 47.757668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073521, -0.381586, 0.921405,
		0.963170, 0.266782, 0.033631,
		-0.258647, 0.884997, 0.387146,
		31.353508, 30.235199, 47.873810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045563, 29.953094, 48.084484>,  <31.534561, 29.615702, 47.602810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045563, 29.953094, 48.084484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678143, 30.091633, 48.160694>,  <31.457689, 30.174757, 48.206421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678143, 30.091633, 48.160694>,  <32.045563, 29.953094, 48.084484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678143, 30.091633, 48.160694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032200, -0.545944, 0.837203,
		0.393979, 0.762882, 0.512632,
		-0.918555, 0.346347, 0.190526,
		31.402576, 30.195538, 48.217854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970179, 29.679264, 48.738632>,  <32.045563, 29.953094, 48.084484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970179, 29.679264, 48.738632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600489, 29.819048, 48.677071>,  <31.378675, 29.902918, 48.640133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600489, 29.819048, 48.677071>,  <31.970179, 29.679264, 48.738632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600489, 29.819048, 48.677071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315270, -0.470944, 0.823903,
		0.215438, 0.809994, 0.545432,
		-0.924224, 0.349459, -0.153907,
		31.323221, 29.923885, 48.630898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767115, 30.003740, 49.344341>,  <31.970179, 29.679264, 48.738632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767115, 30.003740, 49.344341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418173, 29.909679, 49.172901>,  <31.208807, 29.853243, 49.070038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418173, 29.909679, 49.172901>,  <31.767115, 30.003740, 49.344341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418173, 29.909679, 49.172901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361454, -0.280052, 0.889338,
		-0.329160, 0.930739, 0.159309,
		-0.872356, -0.235151, -0.428602,
		31.156466, 29.839134, 49.044319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290495, 30.232641, 49.845913>,  <31.767115, 30.003740, 49.344341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290495, 30.232641, 49.845913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117767, 29.949371, 49.622478>,  <31.014132, 29.779409, 49.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117767, 29.949371, 49.622478>,  <31.290495, 30.232641, 49.845913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117767, 29.949371, 49.622478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462885, -0.357537, 0.811113,
		-0.774126, 0.608817, -0.173412,
		-0.431818, -0.708173, -0.558590,
		30.988222, 29.736919, 49.454903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527376, 30.265717, 50.092999>,  <31.290495, 30.232641, 49.845913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527376, 30.265717, 50.092999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662081, 29.927794, 49.926678>,  <30.742905, 29.725040, 49.826885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662081, 29.927794, 49.926678>,  <30.527376, 30.265717, 50.092999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662081, 29.927794, 49.926678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397371, -0.527860, 0.750640,
		-0.853632, -0.087558, -0.513465,
		0.336762, -0.844806, -0.415805,
		30.763109, 29.674351, 49.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960566, 29.834909, 50.114292>,  <30.527376, 30.265717, 50.092999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960566, 29.834909, 50.114292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282629, 29.605040, 50.055679>,  <30.475866, 29.467117, 50.020512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282629, 29.605040, 50.055679>,  <29.960566, 29.834909, 50.114292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282629, 29.605040, 50.055679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265490, -0.570198, 0.777425,
		-0.530315, -0.587049, -0.611669,
		0.805159, -0.574672, -0.146529,
		30.524176, 29.432636, 50.011719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018890, 29.039902, 49.997005>,  <29.960566, 29.834909, 50.114292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018890, 29.039902, 49.997005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302000, 29.173891, 50.245792>,  <30.471867, 29.254284, 50.395065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302000, 29.173891, 50.245792>,  <30.018890, 29.039902, 49.997005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302000, 29.173891, 50.245792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351699, -0.596485, 0.721466,
		0.612667, -0.729383, -0.304368,
		0.707776, 0.334973, 0.621970,
		30.514334, 29.274384, 50.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331955, 28.488571, 50.372894>,  <30.018890, 29.039902, 49.997005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331955, 28.488571, 50.372894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423082, 28.809080, 50.594185>,  <30.477758, 29.001385, 50.726959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423082, 28.809080, 50.594185>,  <30.331955, 28.488571, 50.372894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423082, 28.809080, 50.594185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055260, -0.556613, 0.828932,
		0.972134, -0.219418, -0.082528,
		0.227819, 0.801273, 0.553227,
		30.491428, 29.049461, 50.760155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938169, 28.394039, 50.876266>,  <30.331955, 28.488571, 50.372894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938169, 28.394039, 50.876266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671122, 28.660784, 51.008675>,  <30.510893, 28.820831, 51.088120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671122, 28.660784, 51.008675>,  <30.938169, 28.394039, 50.876266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671122, 28.660784, 51.008675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135547, -0.546067, 0.826703,
		0.732058, 0.507056, 0.454957,
		-0.667622, 0.666862, 0.331023,
		30.470835, 28.860842, 51.107983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891602, 27.713106, 50.969982>,  <30.938169, 28.394039, 50.876266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891602, 27.713106, 50.969982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713699, 27.377645, 51.095749>,  <30.606958, 27.176369, 51.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713699, 27.377645, 51.095749>,  <30.891602, 27.713106, 50.969982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713699, 27.377645, 51.095749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865528, -0.492723, -0.089925,
		0.230336, 0.232143, 0.945016,
		-0.444755, -0.838650, 0.314418,
		30.580273, 27.126051, 51.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266371, 27.411011, 51.513229>,  <30.891602, 27.713106, 50.969982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266371, 27.411011, 51.513229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071383, 27.163120, 51.267200>,  <30.954390, 27.014385, 51.119583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071383, 27.163120, 51.267200>,  <31.266371, 27.411011, 51.513229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071383, 27.163120, 51.267200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870771, -0.396902, -0.290218,
		-0.064267, -0.677058, 0.733118,
		-0.487470, -0.619727, -0.615070,
		30.925142, 26.977201, 51.082680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716707, 27.299267, 50.839855>,  <31.266371, 27.411011, 51.513229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716707, 27.299267, 50.839855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462076, 27.002974, 50.753986>,  <31.309298, 26.825197, 50.702465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462076, 27.002974, 50.753986>,  <31.716707, 27.299267, 50.839855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462076, 27.002974, 50.753986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417882, -0.097343, -0.903272,
		0.648186, -0.664710, 0.371505,
		-0.636577, -0.740733, -0.214674,
		31.271103, 26.780754, 50.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945967, 26.690130, 50.510094>,  <31.716707, 27.299267, 50.839855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945967, 26.690130, 50.510094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575516, 26.722975, 50.362827>,  <31.353245, 26.742682, 50.274467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575516, 26.722975, 50.362827>,  <31.945967, 26.690130, 50.510094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575516, 26.722975, 50.362827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364772, -0.053592, -0.929553,
		-0.096060, -0.995181, 0.019680,
		-0.926129, 0.082114, -0.368162,
		31.297678, 26.747608, 50.252380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975185, 26.833359, 49.873859>,  <31.945967, 26.690130, 50.510094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975185, 26.833359, 49.873859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578125, 26.860481, 49.833759>,  <31.339890, 26.876755, 49.809700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578125, 26.860481, 49.833759>,  <31.975185, 26.833359, 49.873859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578125, 26.860481, 49.833759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108390, 0.129487, -0.985639,
		-0.053852, -0.989260, -0.135885,
		-0.992649, 0.067807, -0.100253,
		31.280331, 26.880823, 49.803684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718361, 26.411263, 49.312965>,  <31.975185, 26.833359, 49.873859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718361, 26.411263, 49.312965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442211, 26.696194, 49.363510>,  <31.276522, 26.867153, 49.393837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442211, 26.696194, 49.363510>,  <31.718361, 26.411263, 49.312965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442211, 26.696194, 49.363510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087437, 0.255544, -0.962836,
		-0.718148, -0.653669, -0.238705,
		-0.690376, 0.712330, 0.126363,
		31.235098, 26.909893, 49.401421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153980, 26.323431, 48.845428>,  <31.718361, 26.411263, 49.312965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153980, 26.323431, 48.845428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215559, 26.710821, 48.923767>,  <31.252506, 26.943254, 48.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215559, 26.710821, 48.923767>,  <31.153980, 26.323431, 48.845428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215559, 26.710821, 48.923767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074249, 0.208992, -0.975095,
		-0.985286, 0.135570, 0.104082,
		0.153946, 0.968475, 0.195851,
		31.261744, 27.001364, 48.982521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745436, 26.741066, 48.466274>,  <31.153980, 26.323431, 48.845428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745436, 26.741066, 48.466274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033899, 27.000786, 48.562889>,  <31.206978, 27.156618, 48.620857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033899, 27.000786, 48.562889>,  <30.745436, 26.741066, 48.466274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033899, 27.000786, 48.562889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032831, 0.316225, -0.948116,
		-0.691989, 0.691674, 0.206732,
		0.721161, 0.649299, 0.241533,
		31.250248, 27.195576, 48.635349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511408, 27.337124, 48.175678>,  <30.745436, 26.741066, 48.466274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511408, 27.337124, 48.175678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904724, 27.394773, 48.220154>,  <31.140715, 27.429363, 48.246838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904724, 27.394773, 48.220154>,  <30.511408, 27.337124, 48.175678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904724, 27.394773, 48.220154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060767, 0.315883, -0.946850,
		-0.171588, 0.937788, 0.301848,
		0.983293, 0.144126, 0.111188,
		31.199713, 27.438011, 48.253510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690979, 27.921532, 47.835728>,  <30.511408, 27.337124, 48.175678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690979, 27.921532, 47.835728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059837, 27.767958, 47.854660>,  <31.281153, 27.675814, 47.866020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059837, 27.767958, 47.854660>,  <30.690979, 27.921532, 47.835728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059837, 27.767958, 47.854660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166427, 0.283307, -0.944478,
		0.349210, 0.878824, 0.325148,
		0.922146, -0.383935, 0.047327,
		31.336481, 27.652777, 47.868858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028551, 28.313171, 47.402569>,  <30.690979, 27.921532, 47.835728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028551, 28.313171, 47.402569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289286, 28.014528, 47.455761>,  <31.445726, 27.835342, 47.487675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289286, 28.014528, 47.455761>,  <31.028551, 28.313171, 47.402569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289286, 28.014528, 47.455761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380874, 0.170672, -0.908739,
		0.655777, 0.642998, 0.395614,
		0.651837, -0.746609, 0.132978,
		31.484837, 27.790546, 47.495655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630724, 28.605354, 47.245636>,  <31.028551, 28.313171, 47.402569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630724, 28.605354, 47.245636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674374, 28.210876, 47.195812>,  <31.700563, 27.974190, 47.165920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674374, 28.210876, 47.195812>,  <31.630724, 28.605354, 47.245636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674374, 28.210876, 47.195812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477977, 0.161926, -0.863318,
		0.871567, 0.034674, 0.489048,
		0.109124, -0.986194, -0.124556,
		31.707111, 27.915018, 47.158447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175114, 28.580776, 46.887554>,  <31.630724, 28.605354, 47.245636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175114, 28.580776, 46.887554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042187, 28.206095, 46.843456>,  <31.962431, 27.981287, 46.816998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042187, 28.206095, 46.843456>,  <32.175114, 28.580776, 46.887554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042187, 28.206095, 46.843456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480234, -0.067445, -0.874544,
		0.811751, -0.343572, 0.472249,
		-0.332319, -0.936702, -0.110247,
		31.942492, 27.925085, 46.810383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733074, 28.150494, 46.678753>,  <32.175114, 28.580776, 46.887554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733074, 28.150494, 46.678753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393681, 27.989296, 46.541538>,  <32.190044, 27.892576, 46.459209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393681, 27.989296, 46.541538>,  <32.733074, 28.150494, 46.678753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393681, 27.989296, 46.541538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301028, 0.165603, -0.939126,
		0.435271, -0.900095, -0.019198,
		-0.848482, -0.402995, -0.343035,
		32.139137, 27.868397, 46.438629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889881, 27.872768, 46.045113>,  <32.733074, 28.150494, 46.678753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889881, 27.872768, 46.045113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493408, 27.822857, 46.027241>,  <32.255524, 27.792910, 46.016518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493408, 27.822857, 46.027241>,  <32.889881, 27.872768, 46.045113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493408, 27.822857, 46.027241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054289, -0.074706, -0.995727,
		0.120908, -0.989368, 0.080822,
		-0.991178, -0.124779, -0.044679,
		32.196056, 27.785423, 46.013836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723503, 27.310537, 45.709957>,  <32.889881, 27.872768, 46.045113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723503, 27.310537, 45.709957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414547, 27.556513, 45.646381>,  <32.229172, 27.704098, 45.608234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414547, 27.556513, 45.646381>,  <32.723503, 27.310537, 45.709957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414547, 27.556513, 45.646381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161760, -0.051534, -0.985483,
		-0.614205, -0.786887, -0.059668,
		-0.772390, 0.614941, -0.158939,
		32.182831, 27.740995, 45.598701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311687, 27.080097, 45.076046>,  <32.723503, 27.310537, 45.709957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311687, 27.080097, 45.076046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171741, 27.450777, 45.130917>,  <32.087772, 27.673185, 45.163837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171741, 27.450777, 45.130917>,  <32.311687, 27.080097, 45.076046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171741, 27.450777, 45.130917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108746, 0.185616, -0.976587,
		-0.930466, -0.326758, -0.165716,
		-0.349867, 0.926701, 0.137176,
		32.066780, 27.728788, 45.172070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749903, 27.167671, 44.644447>,  <32.311687, 27.080097, 45.076046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749903, 27.167671, 44.644447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902493, 27.532349, 44.705490>,  <31.994045, 27.751156, 44.742115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902493, 27.532349, 44.705490>,  <31.749903, 27.167671, 44.644447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902493, 27.532349, 44.705490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222024, 0.069893, -0.972533,
		-0.897320, 0.404878, -0.175756,
		0.381473, 0.911696, 0.152609,
		32.016933, 27.805857, 44.751274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564743, 27.640266, 44.065060>,  <31.749903, 27.167671, 44.644447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564743, 27.640266, 44.065060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887693, 27.833038, 44.201229>,  <32.081463, 27.948702, 44.282932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887693, 27.833038, 44.201229>,  <31.564743, 27.640266, 44.065060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887693, 27.833038, 44.201229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231059, 0.272637, -0.933960,
		-0.542915, 0.832714, 0.108766,
		0.807375, 0.481929, 0.340425,
		32.129906, 27.977617, 44.303356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508694, 28.241220, 43.768749>,  <31.564743, 27.640266, 44.065060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508694, 28.241220, 43.768749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884083, 28.291002, 43.897610>,  <32.109318, 28.320871, 43.974926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884083, 28.291002, 43.897610>,  <31.508694, 28.241220, 43.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884083, 28.291002, 43.897610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208119, 0.540609, -0.815125,
		-0.275602, 0.832018, 0.481446,
		0.938472, 0.124452, 0.322151,
		32.165623, 28.328339, 43.994255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663431, 28.978998, 44.016312>,  <31.508694, 28.241220, 43.768749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663431, 28.978998, 44.016312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951805, 28.755445, 43.852409>,  <32.124828, 28.621315, 43.754066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951805, 28.755445, 43.852409>,  <31.663431, 28.978998, 44.016312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951805, 28.755445, 43.852409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057670, 0.637616, -0.768193,
		0.690598, 0.530187, 0.491911,
		0.720936, -0.558881, -0.409760,
		32.168087, 28.587782, 43.729481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875433, 29.466520, 43.569675>,  <31.663431, 28.978998, 44.016312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875433, 29.466520, 43.569675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044819, 29.131790, 43.430882>,  <32.146450, 28.930952, 43.347607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044819, 29.131790, 43.430882>,  <31.875433, 29.466520, 43.569675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044819, 29.131790, 43.430882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200217, 0.460003, -0.865049,
		0.883511, 0.296846, 0.362342,
		0.423464, -0.836827, -0.346984,
		32.171860, 28.880741, 43.326786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533554, 29.618093, 43.216743>,  <31.875433, 29.466520, 43.569675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533554, 29.618093, 43.216743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472412, 29.245956, 43.083416>,  <32.435726, 29.022675, 43.003418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472412, 29.245956, 43.083416>,  <32.533554, 29.618093, 43.216743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472412, 29.245956, 43.083416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179884, 0.305453, -0.935061,
		0.971739, -0.202890, 0.120663,
		-0.152858, -0.930341, -0.333317,
		32.426556, 28.966854, 42.983421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175098, 29.384274, 42.724697>,  <32.533554, 29.618093, 43.216743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175098, 29.384274, 42.724697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876053, 29.139387, 42.621723>,  <32.696625, 28.992456, 42.559940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876053, 29.139387, 42.621723>,  <33.175098, 29.384274, 42.724697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876053, 29.139387, 42.621723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058937, 0.324937, -0.943897,
		0.661519, -0.720839, -0.206844,
		-0.747609, -0.612215, -0.257436,
		32.651772, 28.955723, 42.544491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433369, 28.905602, 42.198788>,  <33.175098, 29.384274, 42.724697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433369, 28.905602, 42.198788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034321, 28.907579, 42.171249>,  <32.794891, 28.908766, 42.154728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034321, 28.907579, 42.171249>,  <33.433369, 28.905602, 42.198788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034321, 28.907579, 42.171249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068946, 0.025092, -0.997305,
		-0.003212, -0.999673, -0.025373,
		-0.997615, 0.004953, -0.068842,
		32.735035, 28.909063, 42.150597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306305, 28.579521, 41.649044>,  <33.433369, 28.905602, 42.198788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306305, 28.579521, 41.649044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943954, 28.738396, 41.707867>,  <32.726543, 28.833719, 41.743160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943954, 28.738396, 41.707867>,  <33.306305, 28.579521, 41.649044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943954, 28.738396, 41.707867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143063, 0.039850, -0.988911,
		-0.398641, -0.916873, 0.020723,
		-0.905880, 0.397185, 0.147057,
		32.672192, 28.857552, 41.751984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906219, 28.279465, 41.209572>,  <33.306305, 28.579521, 41.649044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906219, 28.279465, 41.209572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715729, 28.626320, 41.267914>,  <32.601433, 28.834435, 41.302917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715729, 28.626320, 41.267914>,  <32.906219, 28.279465, 41.209572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715729, 28.626320, 41.267914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112202, 0.104586, -0.988166,
		-0.872133, -0.486960, 0.047488,
		-0.476230, 0.867140, 0.145851,
		32.572861, 28.886461, 41.311668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351704, 28.278484, 40.750458>,  <32.906219, 28.279465, 41.209572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351704, 28.278484, 40.750458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420219, 28.661148, 40.844658>,  <32.461330, 28.890747, 40.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420219, 28.661148, 40.844658>,  <32.351704, 28.278484, 40.750458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420219, 28.661148, 40.844658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050294, 0.247214, -0.967655,
		-0.983936, 0.153909, 0.090460,
		0.171294, 0.956659, 0.235502,
		32.471607, 28.948147, 40.915310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804661, 28.698475, 40.438251>,  <32.351704, 28.278484, 40.750458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804661, 28.698475, 40.438251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091656, 28.969582, 40.502556>,  <32.263851, 29.132246, 40.541138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091656, 28.969582, 40.502556>,  <31.804661, 28.698475, 40.438251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091656, 28.969582, 40.502556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178828, 0.402277, -0.897883,
		-0.673228, 0.615469, 0.409832,
		0.717485, 0.677769, 0.160761,
		32.306900, 29.172913, 40.550785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457800, 29.380320, 40.348072>,  <31.804661, 28.698475, 40.438251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457800, 29.380320, 40.348072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854733, 29.419510, 40.317921>,  <32.092892, 29.443024, 40.299831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854733, 29.419510, 40.317921>,  <31.457800, 29.380320, 40.348072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854733, 29.419510, 40.317921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120463, 0.629617, -0.767510,
		-0.027737, 0.770703, 0.636590,
		0.992330, 0.097974, -0.075378,
		32.152431, 29.448902, 40.295307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676523, 30.090986, 40.366280>,  <31.457800, 29.380320, 40.348072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676523, 30.090986, 40.366280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977064, 29.924170, 40.161716>,  <32.157391, 29.824080, 40.038979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977064, 29.924170, 40.161716>,  <31.676523, 30.090986, 40.366280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977064, 29.924170, 40.161716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075280, 0.715757, -0.694281,
		0.655592, 0.560149, 0.506391,
		0.751354, -0.417043, -0.511412,
		32.202469, 29.799057, 40.008293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199715, 30.706686, 40.190395>,  <31.676523, 30.090986, 40.366280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199715, 30.706686, 40.190395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291840, 30.408524, 39.940174>,  <32.347115, 30.229626, 39.790039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291840, 30.408524, 39.940174>,  <32.199715, 30.706686, 40.190395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291840, 30.408524, 39.940174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036673, 0.649032, -0.759877,
		0.972425, 0.152070, 0.176819,
		0.230316, -0.745408, -0.625557,
		32.360935, 30.184900, 39.752506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650105, 31.029751, 39.787266>,  <32.199715, 30.706686, 40.190395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650105, 31.029751, 39.787266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574425, 30.701315, 39.571854>,  <32.529018, 30.504253, 39.442608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574425, 30.701315, 39.571854>,  <32.650105, 31.029751, 39.787266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574425, 30.701315, 39.571854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145065, 0.519043, -0.842348,
		0.971164, -0.237494, 0.020908,
		-0.189200, -0.821091, -0.538528,
		32.517666, 30.454988, 39.410294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141235, 31.057640, 39.308632>,  <32.650105, 31.029751, 39.787266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141235, 31.057640, 39.308632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847218, 30.827702, 39.164818>,  <32.670807, 30.689739, 39.078529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847218, 30.827702, 39.164818>,  <33.141235, 31.057640, 39.308632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847218, 30.827702, 39.164818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116455, 0.415357, -0.902173,
		0.667947, -0.705004, -0.238361,
		-0.735041, -0.574846, -0.359538,
		32.626705, 30.655249, 39.056957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402725, 30.790264, 38.751865>,  <33.141235, 31.057640, 39.308632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402725, 30.790264, 38.751865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009983, 30.741673, 38.693630>,  <32.774338, 30.712519, 38.658688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009983, 30.741673, 38.693630>,  <33.402725, 30.790264, 38.751865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009983, 30.741673, 38.693630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097136, 0.337168, -0.936420,
		0.162841, -0.933574, -0.319252,
		-0.981859, -0.121476, -0.145589,
		32.715424, 30.705229, 38.649952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281960, 30.518957, 38.048244>,  <33.402725, 30.790264, 38.751865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281960, 30.518957, 38.048244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932171, 30.673555, 38.165489>,  <32.722298, 30.766315, 38.235836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932171, 30.673555, 38.165489>,  <33.281960, 30.518957, 38.048244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932171, 30.673555, 38.165489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092961, 0.459526, -0.883286,
		-0.476079, -0.799660, -0.365915,
		-0.874476, 0.386498, 0.293108,
		32.669827, 30.789505, 38.253422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879612, 30.337616, 37.447269>,  <33.281960, 30.518957, 38.048244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879612, 30.337616, 37.447269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670204, 30.613653, 37.647148>,  <32.544559, 30.779276, 37.767075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670204, 30.613653, 37.647148>,  <32.879612, 30.337616, 37.447269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670204, 30.613653, 37.647148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123820, 0.518646, -0.845976,
		-0.842968, -0.504759, -0.186075,
		-0.523520, 0.690091, 0.499701,
		32.513149, 30.820681, 37.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255875, 30.466135, 37.123077>,  <32.879612, 30.337616, 37.447269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255875, 30.466135, 37.123077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281212, 30.812681, 37.321228>,  <32.296413, 31.020609, 37.440117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281212, 30.812681, 37.321228>,  <32.255875, 30.466135, 37.123077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281212, 30.812681, 37.321228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207695, 0.496947, -0.842560,
		-0.976141, -0.049519, 0.211416,
		0.063340, 0.866367, 0.495375,
		32.300213, 31.072592, 37.469841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968401, 30.856131, 36.668423>,  <32.255875, 30.466135, 37.123077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968401, 30.856131, 36.668423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139580, 31.128489, 36.906162>,  <32.242287, 31.291903, 37.048805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139580, 31.128489, 36.906162>,  <31.968401, 30.856131, 36.668423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139580, 31.128489, 36.906162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052792, 0.675313, -0.735639,
		-0.902261, 0.283437, 0.324944,
		0.427946, 0.680893, 0.594346,
		32.267963, 31.332756, 37.084465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548790, 31.421984, 36.488064>,  <31.968401, 30.856131, 36.668423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548790, 31.421984, 36.488064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902353, 31.518995, 36.648006>,  <32.114491, 31.577202, 36.743973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902353, 31.518995, 36.648006>,  <31.548790, 31.421984, 36.488064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902353, 31.518995, 36.648006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074166, 0.771500, -0.631892,
		-0.461743, 0.588191, 0.663947,
		0.883908, 0.242529, 0.399858,
		32.167526, 31.591755, 36.767963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481606, 32.155060, 36.714489>,  <31.548790, 31.421984, 36.488064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481606, 32.155060, 36.714489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861105, 32.047363, 36.648304>,  <32.088806, 31.982744, 36.608593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861105, 32.047363, 36.648304>,  <31.481606, 32.155060, 36.714489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861105, 32.047363, 36.648304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129259, 0.808396, -0.574272,
		0.288381, 0.523453, 0.801769,
		0.948751, -0.269245, -0.165465,
		32.145729, 31.966589, 36.598663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899389, 32.831974, 36.858562>,  <31.481606, 32.155060, 36.714489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899389, 32.831974, 36.858562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100540, 32.569733, 36.633247>,  <32.221230, 32.412388, 36.498058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100540, 32.569733, 36.633247>,  <31.899389, 32.831974, 36.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100540, 32.569733, 36.633247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100325, 0.691552, -0.715325,
		0.858516, 0.303208, 0.413540,
		0.502877, -0.655606, -0.563289,
		32.251404, 32.373051, 36.464260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453506, 33.249977, 36.598148>,  <31.899389, 32.831974, 36.858562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453506, 33.249977, 36.598148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426888, 32.918758, 36.375469>,  <32.410915, 32.720028, 36.241863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426888, 32.918758, 36.375469>,  <32.453506, 33.249977, 36.598148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426888, 32.918758, 36.375469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350893, 0.502873, -0.789933,
		0.934048, -0.247907, 0.257092,
		-0.066545, -0.828047, -0.556696,
		32.406925, 32.670345, 36.208462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216671, 33.103848, 36.335392>,  <32.453506, 33.249977, 36.598148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216671, 33.103848, 36.335392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952816, 32.922989, 36.095249>,  <32.794502, 32.814472, 35.951164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952816, 32.922989, 36.095249>,  <33.216671, 33.103848, 36.335392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952816, 32.922989, 36.095249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503171, 0.327690, -0.799648,
		0.558294, -0.829565, 0.011351,
		-0.659641, -0.452151, -0.600361,
		32.754925, 32.787342, 35.915142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587093, 32.678349, 35.755436>,  <33.216671, 33.103848, 36.335392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587093, 32.678349, 35.755436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230793, 32.827827, 35.651966>,  <33.017014, 32.917515, 35.589882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230793, 32.827827, 35.651966>,  <33.587093, 32.678349, 35.755436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230793, 32.827827, 35.651966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394073, 0.351479, -0.849217,
		-0.226433, -0.858377, -0.460345,
		-0.890750, 0.373700, -0.258677,
		32.963570, 32.939938, 35.574364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016323, 32.945084, 35.199341>,  <33.587093, 32.678349, 35.755436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016323, 32.945084, 35.199341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382229, 33.016777, 35.054516>,  <34.601772, 33.059792, 34.967621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382229, 33.016777, 35.054516>,  <34.016323, 32.945084, 35.199341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382229, 33.016777, 35.054516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402639, -0.331053, 0.853397,
		0.033093, -0.926434, -0.374999,
		0.914760, 0.179231, -0.362063,
		34.656658, 33.070545, 34.945896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407318, 32.377831, 35.235886>,  <34.016323, 32.945084, 35.199341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407318, 32.377831, 35.235886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667988, 32.681221, 35.233643>,  <34.824390, 32.863255, 35.232296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667988, 32.681221, 35.233643>,  <34.407318, 32.377831, 35.235886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667988, 32.681221, 35.233643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378406, -0.318701, 0.869045,
		0.657366, -0.568454, -0.494702,
		0.651674, 0.758479, -0.005604,
		34.863491, 32.908764, 35.231960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152348, 32.029755, 35.066715>,  <34.407318, 32.377831, 35.235886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152348, 32.029755, 35.066715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190231, 32.386883, 35.242851>,  <35.212963, 32.601158, 35.348534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190231, 32.386883, 35.242851>,  <35.152348, 32.029755, 35.066715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190231, 32.386883, 35.242851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395111, -0.439714, 0.806560,
		0.913738, 0.097594, -0.394409,
		0.094711, 0.892820, 0.440344,
		35.218643, 32.654728, 35.374954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811527, 32.002934, 35.347820>,  <35.152348, 32.029755, 35.066715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811527, 32.002934, 35.347820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620571, 32.287651, 35.553909>,  <35.505997, 32.458481, 35.677563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620571, 32.287651, 35.553909>,  <35.811527, 32.002934, 35.347820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620571, 32.287651, 35.553909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489754, -0.271283, 0.828581,
		0.729548, 0.647886, -0.219096,
		-0.477389, 0.711793, 0.515219,
		35.477356, 32.501190, 35.708473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326511, 32.255173, 35.644180>,  <35.811527, 32.002934, 35.347820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326511, 32.255173, 35.644180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991894, 32.342999, 35.844971>,  <35.791122, 32.395695, 35.965446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991894, 32.342999, 35.844971>,  <36.326511, 32.255173, 35.644180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991894, 32.342999, 35.844971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425500, -0.316830, 0.847684,
		0.345161, 0.922719, 0.171619,
		-0.836548, 0.219564, 0.501975,
		35.740929, 32.408867, 35.995564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584629, 32.572052, 36.167343>,  <36.326511, 32.255173, 35.644180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584629, 32.572052, 36.167343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215382, 32.462543, 36.275349>,  <35.993835, 32.396839, 36.340153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215382, 32.462543, 36.275349>,  <36.584629, 32.572052, 36.167343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215382, 32.462543, 36.275349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362413, -0.384749, 0.848897,
		-0.128514, 0.881486, 0.454385,
		-0.923115, -0.273770, 0.270016,
		35.938446, 32.380413, 36.356354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583691, 32.824238, 36.815300>,  <36.584629, 32.572052, 36.167343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583691, 32.824238, 36.815300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301044, 32.541809, 36.796707>,  <36.131458, 32.372353, 36.785553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301044, 32.541809, 36.796707>,  <36.583691, 32.824238, 36.815300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301044, 32.541809, 36.796707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256126, -0.316454, 0.913376,
		-0.659615, 0.633502, 0.404454,
		-0.706617, -0.706068, -0.046482,
		36.089058, 32.329990, 36.782764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359886, 32.710007, 37.476543>,  <36.583691, 32.824238, 36.815300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359886, 32.710007, 37.476543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170971, 32.383175, 37.344284>,  <36.057621, 32.187077, 37.264927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170971, 32.383175, 37.344284>,  <36.359886, 32.710007, 37.476543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170971, 32.383175, 37.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057847, -0.403046, 0.913350,
		-0.879543, 0.412238, 0.237620,
		-0.472289, -0.817076, -0.330650,
		36.029285, 32.138054, 37.245090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938850, 32.448639, 38.024277>,  <36.359886, 32.710007, 37.476543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938850, 32.448639, 38.024277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968414, 32.134254, 37.778736>,  <35.986153, 31.945625, 37.631413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968414, 32.134254, 37.778736>,  <35.938850, 32.448639, 38.024277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968414, 32.134254, 37.778736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030580, -0.617027, 0.786348,
		-0.996796, -0.039345, -0.069637,
		0.073906, -0.785958, -0.613847,
		35.990585, 31.898468, 37.594582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405022, 31.988754, 38.246239>,  <35.938850, 32.448639, 38.024277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405022, 31.988754, 38.246239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690201, 31.788620, 38.049721>,  <35.861309, 31.668539, 37.931812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690201, 31.788620, 38.049721>,  <35.405022, 31.988754, 38.246239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690201, 31.788620, 38.049721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092911, -0.627048, 0.773420,
		-0.695035, -0.597054, -0.400565,
		0.712947, -0.500337, -0.491293,
		35.904087, 31.638519, 37.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188690, 31.260971, 38.228741>,  <35.405022, 31.988754, 38.246239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188690, 31.260971, 38.228741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586914, 31.249874, 38.192768>,  <35.825848, 31.243216, 38.171185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586914, 31.249874, 38.192768>,  <35.188690, 31.260971, 38.228741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586914, 31.249874, 38.192768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048784, -0.665014, 0.745236,
		-0.080478, -0.746315, -0.660710,
		0.995562, -0.027743, -0.089927,
		35.885582, 31.241550, 38.165791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352497, 30.622118, 38.344296>,  <35.188690, 31.260971, 38.228741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352497, 30.622118, 38.344296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704735, 30.804943, 38.394341>,  <35.916077, 30.914639, 38.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704735, 30.804943, 38.394341>,  <35.352497, 30.622118, 38.344296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704735, 30.804943, 38.394341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205524, -0.606259, 0.768251,
		0.426990, -0.650801, -0.627804,
		0.880590, 0.457064, 0.125112,
		35.968910, 30.942062, 38.431873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810009, 30.020405, 38.444458>,  <35.352497, 30.622118, 38.344296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810009, 30.020405, 38.444458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005680, 30.325150, 38.614292>,  <36.123081, 30.507996, 38.716194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005680, 30.325150, 38.614292>,  <35.810009, 30.020405, 38.444458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005680, 30.325150, 38.614292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058684, -0.514455, 0.855507,
		0.870209, -0.393576, -0.296367,
		0.489175, 0.761862, 0.424587,
		36.152431, 30.553709, 38.741669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583496, 29.996044, 38.688599>,  <35.810009, 30.020405, 38.444458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583496, 29.996044, 38.688599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367527, 30.261944, 38.895130>,  <36.237946, 30.421484, 39.019051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367527, 30.261944, 38.895130>,  <36.583496, 29.996044, 38.688599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367527, 30.261944, 38.895130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181768, -0.506867, 0.842642,
		0.821854, 0.548813, 0.152839,
		-0.539922, 0.664748, 0.516328,
		36.205551, 30.461369, 39.050030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842182, 29.817530, 39.339302>,  <36.583496, 29.996044, 38.688599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842182, 29.817530, 39.339302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534340, 30.064106, 39.405876>,  <36.349632, 30.212051, 39.445820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534340, 30.064106, 39.405876>,  <36.842182, 29.817530, 39.339302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534340, 30.064106, 39.405876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021478, -0.285504, 0.958137,
		0.638152, 0.733817, 0.232967,
		-0.769610, 0.616441, 0.166434,
		36.303455, 30.249039, 39.455807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963390, 30.047882, 40.024780>,  <36.842182, 29.817530, 39.339302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963390, 30.047882, 40.024780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575748, 30.106316, 39.945282>,  <36.343163, 30.141375, 39.897583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575748, 30.106316, 39.945282>,  <36.963390, 30.047882, 40.024780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575748, 30.106316, 39.945282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236939, -0.327417, 0.914690,
		0.068548, 0.933519, 0.351914,
		-0.969103, 0.146082, -0.198743,
		36.285019, 30.150141, 39.885658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716488, 30.495966, 40.518280>,  <36.963390, 30.047882, 40.024780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716488, 30.495966, 40.518280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417702, 30.271454, 40.375732>,  <36.238430, 30.136745, 40.290203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417702, 30.271454, 40.375732>,  <36.716488, 30.495966, 40.518280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417702, 30.271454, 40.375732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197523, -0.324465, 0.925044,
		-0.634840, 0.761371, 0.131499,
		-0.746969, -0.561282, -0.356372,
		36.193611, 30.103069, 40.268822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274235, 30.550215, 41.048824>,  <36.716488, 30.495966, 40.518280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274235, 30.550215, 41.048824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117962, 30.242397, 40.846764>,  <36.024200, 30.057707, 40.725529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117962, 30.242397, 40.846764>,  <36.274235, 30.550215, 41.048824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117962, 30.242397, 40.846764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210135, -0.459716, 0.862847,
		-0.896221, 0.443246, 0.017894,
		-0.390680, -0.769541, -0.505149,
		36.000759, 30.011536, 40.695217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587048, 30.511818, 41.269318>,  <36.274235, 30.550215, 41.048824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587048, 30.511818, 41.269318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700527, 30.154194, 41.130653>,  <35.768616, 29.939619, 41.047455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700527, 30.154194, 41.130653>,  <35.587048, 30.511818, 41.269318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700527, 30.154194, 41.130653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228314, -0.414100, 0.881132,
		-0.931337, -0.170827, -0.321605,
		0.283698, -0.894058, -0.346664,
		35.785637, 29.885977, 41.026653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185452, 30.081276, 41.704231>,  <35.587048, 30.511818, 41.269318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185452, 30.081276, 41.704231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459362, 29.844316, 41.534458>,  <35.623707, 29.702141, 41.432594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459362, 29.844316, 41.534458>,  <35.185452, 30.081276, 41.704231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459362, 29.844316, 41.534458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255692, -0.740694, 0.621284,
		-0.682425, -0.316915, -0.658681,
		0.684775, -0.592400, -0.424435,
		35.664795, 29.666597, 41.407127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887138, 29.540232, 41.299049>,  <35.185452, 30.081276, 41.704231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887138, 29.540232, 41.299049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252441, 29.419960, 41.408997>,  <35.471622, 29.347797, 41.474964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252441, 29.419960, 41.408997>,  <34.887138, 29.540232, 41.299049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252441, 29.419960, 41.408997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406958, -0.642643, 0.649149,
		-0.018543, -0.704701, -0.709262,
		0.913258, -0.300677, 0.274867,
		35.526421, 29.329758, 41.491455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827717, 28.846283, 41.398438>,  <34.887138, 29.540232, 41.299049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827717, 28.846283, 41.398438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175636, 28.893019, 41.590187>,  <35.384388, 28.921061, 41.705238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175636, 28.893019, 41.590187>,  <34.827717, 28.846283, 41.398438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175636, 28.893019, 41.590187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406421, -0.381248, 0.830344,
		0.279779, -0.917060, -0.284122,
		0.869797, 0.116839, 0.479378,
		35.436577, 28.928070, 41.734001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964355, 28.197178, 41.771057>,  <34.827717, 28.846283, 41.398438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964355, 28.197178, 41.771057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170933, 28.492407, 41.944736>,  <35.294880, 28.669544, 42.048943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170933, 28.492407, 41.944736>,  <34.964355, 28.197178, 41.771057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170933, 28.492407, 41.944736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330715, -0.295800, 0.896175,
		0.789880, -0.606423, 0.091328,
		0.516447, 0.738074, 0.434199,
		35.325867, 28.713829, 42.074997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323433, 27.773186, 42.264572>,  <34.964355, 28.197178, 41.771057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323433, 27.773186, 42.264572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319637, 28.156708, 42.378132>,  <35.317360, 28.386822, 42.446270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319637, 28.156708, 42.378132>,  <35.323433, 27.773186, 42.264572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319637, 28.156708, 42.378132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201366, -0.279931, 0.938664,
		0.979470, -0.048263, 0.195727,
		-0.009488, 0.958806, 0.283902,
		35.316792, 28.444349, 42.463303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603485, 27.768604, 43.031239>,  <35.323433, 27.773186, 42.264572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603485, 27.768604, 43.031239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433990, 28.130703, 43.018757>,  <35.332294, 28.347961, 43.011269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433990, 28.130703, 43.018757>,  <35.603485, 27.768604, 43.031239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433990, 28.130703, 43.018757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174478, -0.047770, 0.983501,
		0.888821, 0.422192, 0.178188,
		-0.423739, 0.905247, -0.031204,
		35.306870, 28.402277, 43.009396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886345, 28.202084, 43.573616>,  <35.603485, 27.768604, 43.031239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886345, 28.202084, 43.573616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551132, 28.397844, 43.477131>,  <35.350002, 28.515301, 43.419239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551132, 28.397844, 43.477131>,  <35.886345, 28.202084, 43.573616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551132, 28.397844, 43.477131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197452, 0.140098, 0.970250,
		0.508637, 0.860731, -0.020773,
		-0.838034, 0.489403, -0.241212,
		35.299721, 28.544666, 43.404766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856869, 28.639500, 44.033264>,  <35.886345, 28.202084, 43.573616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856869, 28.639500, 44.033264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480797, 28.654093, 43.897781>,  <35.255154, 28.662849, 43.816490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480797, 28.654093, 43.897781>,  <35.856869, 28.639500, 44.033264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480797, 28.654093, 43.897781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305140, 0.351891, 0.884908,
		0.151473, 0.935330, -0.319709,
		-0.940184, 0.036484, -0.338708,
		35.198742, 28.665037, 43.796169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580257, 29.289255, 44.153866>,  <35.856869, 28.639500, 44.033264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580257, 29.289255, 44.153866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254696, 29.060984, 44.110264>,  <35.059361, 28.924021, 44.084103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254696, 29.060984, 44.110264>,  <35.580257, 29.289255, 44.153866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254696, 29.060984, 44.110264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406106, 0.424621, 0.809182,
		-0.415497, 0.702867, -0.577357,
		-0.813905, -0.570680, -0.109010,
		35.010525, 28.889780, 44.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079620, 29.759010, 44.412003>,  <35.580257, 29.289255, 44.153866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079620, 29.759010, 44.412003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918415, 29.392950, 44.408482>,  <34.821693, 29.173313, 44.406368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918415, 29.392950, 44.408482>,  <35.079620, 29.759010, 44.412003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918415, 29.392950, 44.408482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391821, 0.163840, 0.905336,
		-0.827078, 0.368309, -0.424605,
		-0.403011, -0.915153, -0.008803,
		34.797512, 29.118404, 44.405842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350876, 29.742258, 44.623718>,  <35.079620, 29.759010, 44.412003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350876, 29.742258, 44.623718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493523, 29.376419, 44.699966>,  <34.579113, 29.156916, 44.745716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493523, 29.376419, 44.699966>,  <34.350876, 29.742258, 44.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493523, 29.376419, 44.699966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349543, 0.058598, 0.935086,
		-0.866396, -0.400100, -0.298794,
		0.356619, -0.914596, 0.190621,
		34.600510, 29.102039, 44.757153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803410, 29.448378, 44.976452>,  <34.350876, 29.742258, 44.623718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803410, 29.448378, 44.976452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100044, 29.199648, 45.077156>,  <34.278027, 29.050411, 45.137577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100044, 29.199648, 45.077156>,  <33.803410, 29.448378, 44.976452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100044, 29.199648, 45.077156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358025, -0.049483, 0.932400,
		-0.567331, -0.781592, -0.259324,
		0.741589, -0.621824, 0.251756,
		34.322521, 29.013102, 45.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490414, 29.101135, 45.541245>,  <33.803410, 29.448378, 44.976452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490414, 29.101135, 45.541245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880081, 29.015663, 45.570446>,  <34.113884, 28.964380, 45.587967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880081, 29.015663, 45.570446>,  <33.490414, 29.101135, 45.541245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880081, 29.015663, 45.570446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101987, -0.127915, 0.986528,
		-0.201462, -0.968493, -0.146404,
		0.974172, -0.213679, 0.073004,
		34.172333, 28.951559, 45.592346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537888, 28.579994, 46.014755>,  <33.490414, 29.101135, 45.541245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537888, 28.579994, 46.014755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890827, 28.767550, 46.030819>,  <34.102589, 28.880083, 46.040455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890827, 28.767550, 46.030819>,  <33.537888, 28.579994, 46.014755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890827, 28.767550, 46.030819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041104, -0.008214, 0.999121,
		0.468805, -0.883220, 0.012026,
		0.882345, 0.468887, 0.040155,
		34.155529, 28.908216, 46.042866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842945, 28.232040, 46.585392>,  <33.537888, 28.579994, 46.014755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842945, 28.232040, 46.585392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094467, 28.541462, 46.553844>,  <34.245380, 28.727116, 46.534916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094467, 28.541462, 46.553844>,  <33.842945, 28.232040, 46.585392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094467, 28.541462, 46.553844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040930, 0.134212, 0.990107,
		0.776486, -0.619355, 0.116054,
		0.628804, 0.773554, -0.078864,
		34.283108, 28.773529, 46.530186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378796, 28.073181, 46.991726>,  <33.842945, 28.232040, 46.585392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378796, 28.073181, 46.991726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385571, 28.472725, 46.973862>,  <34.389637, 28.712450, 46.963142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385571, 28.472725, 46.973862>,  <34.378796, 28.073181, 46.991726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385571, 28.472725, 46.973862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228860, 0.047358, 0.972307,
		0.973312, -0.006248, 0.229400,
		0.016939, 0.998859, -0.044664,
		34.390652, 28.772383, 46.960461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762104, 28.247570, 47.571659>,  <34.378796, 28.073181, 46.991726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762104, 28.247570, 47.571659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587017, 28.591637, 47.466957>,  <34.481964, 28.798077, 47.404137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587017, 28.591637, 47.466957>,  <34.762104, 28.247570, 47.571659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587017, 28.591637, 47.466957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139609, 0.222575, 0.964868,
		0.888207, 0.458884, 0.022662,
		-0.437719, 0.860166, -0.261757,
		34.455700, 28.849686, 47.388432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059788, 28.744801, 48.003315>,  <34.762104, 28.247570, 47.571659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059788, 28.744801, 48.003315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707325, 28.896515, 47.890392>,  <34.495846, 28.987543, 47.822639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707325, 28.896515, 47.890392>,  <35.059788, 28.744801, 48.003315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707325, 28.896515, 47.890392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169557, 0.303872, 0.937503,
		0.441368, 0.873958, -0.203449,
		-0.881161, 0.379288, -0.282305,
		34.442978, 29.010302, 47.805702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999744, 29.552198, 48.313030>,  <35.059788, 28.744801, 48.003315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999744, 29.552198, 48.313030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623108, 29.434992, 48.246632>,  <34.397125, 29.364668, 48.206795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623108, 29.434992, 48.246632>,  <34.999744, 29.552198, 48.313030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623108, 29.434992, 48.246632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258920, 0.314697, 0.913196,
		-0.215344, 0.902833, -0.372182,
		-0.941588, -0.293016, -0.165993,
		34.340633, 29.347088, 48.196835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468479, 30.105434, 48.573833>,  <34.999744, 29.552198, 48.313030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468479, 30.105434, 48.573833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299538, 29.742867, 48.575325>,  <34.198174, 29.525326, 48.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299538, 29.742867, 48.575325>,  <34.468479, 30.105434, 48.573833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299538, 29.742867, 48.575325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242841, 0.117112, 0.962971,
		-0.873294, 0.405814, -0.269580,
		-0.422358, -0.906421, 0.003725,
		34.172829, 29.470940, 48.576443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452015, 30.358078, 49.380478>,  <34.468479, 30.105434, 48.573833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452015, 30.358078, 49.380478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579567, 30.711142, 49.518597>,  <34.656097, 30.922979, 49.601467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579567, 30.711142, 49.518597>,  <34.452015, 30.358078, 49.380478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579567, 30.711142, 49.518597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251406, 0.430039, -0.867100,
		-0.913845, 0.189687, 0.359034,
		0.318876, 0.882658, 0.345300,
		34.675228, 30.975939, 49.622189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933441, 30.792068, 49.229824>,  <34.452015, 30.358078, 49.380478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933441, 30.792068, 49.229824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238583, 31.048271, 49.265163>,  <34.421669, 31.201992, 49.286366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238583, 31.048271, 49.265163>,  <33.933441, 30.792068, 49.229824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238583, 31.048271, 49.265163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240574, 0.408007, -0.880713,
		-0.600147, 0.650602, 0.465339,
		0.762855, 0.640505, 0.088346,
		34.467438, 31.240423, 49.291668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693398, 31.531815, 48.974720>,  <33.933441, 30.792068, 49.229824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693398, 31.531815, 48.974720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092007, 31.519009, 48.943974>,  <34.331173, 31.511324, 48.925526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092007, 31.519009, 48.943974>,  <33.693398, 31.531815, 48.974720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092007, 31.519009, 48.943974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068336, 0.213081, -0.974642,
		0.047584, 0.976510, 0.210153,
		0.996527, -0.032016, -0.076870,
		34.390965, 31.509403, 48.920914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919918, 32.127483, 48.585609>,  <33.693398, 31.531815, 48.974720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919918, 32.127483, 48.585609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201664, 31.849096, 48.529762>,  <34.370712, 31.682064, 48.496254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201664, 31.849096, 48.529762>,  <33.919918, 32.127483, 48.585609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201664, 31.849096, 48.529762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067316, 0.261300, -0.962908,
		0.706636, 0.668842, 0.230901,
		0.704368, -0.695969, -0.139620,
		34.412975, 31.640306, 48.487877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489655, 32.466297, 48.285614>,  <33.919918, 32.127483, 48.585609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489655, 32.466297, 48.285614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543026, 32.080315, 48.195225>,  <34.575047, 31.848726, 48.140991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543026, 32.080315, 48.195225>,  <34.489655, 32.466297, 48.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543026, 32.080315, 48.195225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202249, 0.249723, -0.946960,
		0.970203, 0.080647, 0.228480,
		0.133426, -0.964953, -0.225971,
		34.583054, 31.790829, 48.127434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132645, 32.491997, 47.878963>,  <34.489655, 32.466297, 48.285614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132645, 32.491997, 47.878963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907402, 32.166458, 47.821606>,  <34.772255, 31.971134, 47.787189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907402, 32.166458, 47.821606>,  <35.132645, 32.491997, 47.878963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907402, 32.166458, 47.821606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152112, 0.068482, -0.985988,
		0.812263, -0.577031, 0.085233,
		-0.563109, -0.813846, -0.143398,
		34.738468, 31.922304, 47.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417412, 32.207359, 47.185898>,  <35.132645, 32.491997, 47.878963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417412, 32.207359, 47.185898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115063, 31.946285, 47.206509>,  <34.933655, 31.789640, 47.218876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115063, 31.946285, 47.206509>,  <35.417412, 32.207359, 47.185898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115063, 31.946285, 47.206509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067325, -0.000799, -0.997731,
		0.651248, -0.757626, -0.043338,
		-0.755872, -0.652688, 0.051527,
		34.888302, 31.750479, 47.221966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550240, 31.650099, 46.679523>,  <35.417412, 32.207359, 47.185898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550240, 31.650099, 46.679523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156509, 31.653276, 46.750004>,  <34.920273, 31.655184, 46.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156509, 31.653276, 46.750004>,  <35.550240, 31.650099, 46.679523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156509, 31.653276, 46.750004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175858, 0.032656, -0.983874,
		-0.013579, -0.999435, -0.030745,
		-0.984322, 0.007953, 0.176202,
		34.861214, 31.655661, 46.802864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268749, 31.108273, 46.240177>,  <35.550240, 31.650099, 46.679523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268749, 31.108273, 46.240177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953701, 31.335957, 46.334545>,  <34.764671, 31.472567, 46.391167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953701, 31.335957, 46.334545>,  <35.268749, 31.108273, 46.240177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953701, 31.335957, 46.334545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250912, 0.053406, -0.966536,
		-0.562763, -0.820454, 0.100759,
		-0.787617, 0.569212, 0.235916,
		34.717415, 31.506720, 46.405319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680672, 30.850464, 45.781040>,  <35.268749, 31.108273, 46.240177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680672, 30.850464, 45.781040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571228, 31.211288, 45.914562>,  <34.505562, 31.427784, 45.994675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571228, 31.211288, 45.914562>,  <34.680672, 30.850464, 45.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571228, 31.211288, 45.914562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312703, 0.244766, -0.917772,
		-0.909590, -0.355492, 0.215107,
		-0.273610, 0.902061, 0.333800,
		34.489143, 31.481907, 46.014702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935131, 30.968493, 45.504375>,  <34.680672, 30.850464, 45.781040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935131, 30.968493, 45.504375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085571, 31.328487, 45.592529>,  <34.175835, 31.544485, 45.645424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085571, 31.328487, 45.592529>,  <33.935131, 30.968493, 45.504375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085571, 31.328487, 45.592529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232459, 0.321891, -0.917796,
		-0.896947, 0.293948, 0.330273,
		0.376096, 0.899989, 0.220388,
		34.198399, 31.598484, 45.658646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468758, 31.511471, 45.283054>,  <33.935131, 30.968493, 45.504375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468758, 31.511471, 45.283054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816292, 31.707747, 45.309452>,  <34.024811, 31.825512, 45.325291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816292, 31.707747, 45.309452>,  <33.468758, 31.511471, 45.283054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816292, 31.707747, 45.309452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065323, 0.245730, -0.967135,
		-0.490778, 0.835967, 0.245551,
		0.868832, 0.490689, 0.065991,
		34.076942, 31.854954, 45.329250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375378, 32.072769, 44.897659>,  <33.468758, 31.511471, 45.283054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375378, 32.072769, 44.897659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770916, 32.019989, 44.925293>,  <34.008240, 31.988319, 44.941875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770916, 32.019989, 44.925293>,  <33.375378, 32.072769, 44.897659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770916, 32.019989, 44.925293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098356, 0.230158, -0.968170,
		0.111852, 0.964166, 0.240569,
		0.988845, -0.131953, 0.069088,
		34.067570, 31.980404, 44.946018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615360, 32.728306, 44.502674>,  <33.375378, 32.072769, 44.897659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615360, 32.728306, 44.502674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933567, 32.487816, 44.532814>,  <34.124493, 32.343521, 44.550900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933567, 32.487816, 44.532814>,  <33.615360, 32.728306, 44.502674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933567, 32.487816, 44.532814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300003, 0.282772, -0.911065,
		0.526446, 0.747376, 0.405319,
		0.795521, -0.601223, 0.075351,
		34.172222, 32.307449, 44.555420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214714, 33.134338, 44.346195>,  <33.615360, 32.728306, 44.502674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214714, 33.134338, 44.346195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329735, 32.755711, 44.287796>,  <34.398746, 32.528534, 44.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329735, 32.755711, 44.287796>,  <34.214714, 33.134338, 44.346195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329735, 32.755711, 44.287796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348146, 0.245315, -0.904774,
		0.892249, 0.209341, 0.400086,
		0.287553, -0.946571, -0.146001,
		34.416000, 32.471741, 44.243996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841442, 33.155903, 44.098545>,  <34.214714, 33.134338, 44.346195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841442, 33.155903, 44.098545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753052, 32.782619, 43.985195>,  <34.700016, 32.558651, 43.917187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753052, 32.782619, 43.985195>,  <34.841442, 33.155903, 44.098545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753052, 32.782619, 43.985195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444715, 0.162175, -0.880868,
		0.867985, -0.320671, 0.379173,
		-0.220976, -0.933204, -0.283372,
		34.686760, 32.502659, 43.900185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409523, 32.963501, 43.736610>,  <34.841442, 33.155903, 44.098545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409523, 32.963501, 43.736610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174717, 32.666889, 43.606651>,  <35.033833, 32.488922, 43.528675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174717, 32.666889, 43.606651>,  <35.409523, 32.963501, 43.736610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174717, 32.666889, 43.606651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516533, -0.034026, -0.855591,
		0.623387, -0.670061, 0.402996,
		-0.587010, -0.741525, -0.324898,
		34.998615, 32.444431, 43.509182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776756, 32.311420, 43.572887>,  <35.409523, 32.963501, 43.736610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776756, 32.311420, 43.572887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438881, 32.269344, 43.362957>,  <35.236156, 32.244099, 43.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438881, 32.269344, 43.362957>,  <35.776756, 32.311420, 43.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438881, 32.269344, 43.362957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535228, -0.155567, -0.830259,
		0.005687, -0.982209, 0.187704,
		-0.844688, -0.105186, -0.524821,
		35.185474, 32.237789, 43.205509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993645, 31.770470, 43.082027>,  <35.776756, 32.311420, 43.572887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993645, 31.770470, 43.082027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653324, 31.914122, 42.928577>,  <35.449131, 32.000313, 42.836510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653324, 31.914122, 42.928577>,  <35.993645, 31.770470, 43.082027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653324, 31.914122, 42.928577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438162, 0.081826, -0.895164,
		-0.290088, -0.929694, -0.226974,
		-0.850801, 0.359128, -0.383620,
		35.398083, 32.021858, 42.813492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731754, 31.319691, 42.489605>,  <35.993645, 31.770470, 43.082027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731754, 31.319691, 42.489605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610527, 31.698111, 42.443752>,  <35.537792, 31.925163, 42.416241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610527, 31.698111, 42.443752>,  <35.731754, 31.319691, 42.489605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610527, 31.698111, 42.443752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391444, 0.013910, -0.920097,
		-0.868864, -0.323721, -0.374541,
		-0.303064, 0.946051, -0.114633,
		35.519608, 31.981926, 42.409363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541595, 31.307125, 41.837791>,  <35.731754, 31.319691, 42.489605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541595, 31.307125, 41.837791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578114, 31.699459, 41.906643>,  <35.600025, 31.934860, 41.947956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578114, 31.699459, 41.906643>,  <35.541595, 31.307125, 41.837791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578114, 31.699459, 41.906643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413394, 0.119928, -0.902620,
		-0.905964, 0.153560, -0.394522,
		0.091292, 0.980835, 0.172131,
		35.605499, 31.993710, 41.958282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172623, 31.721119, 41.372066>,  <35.541595, 31.307125, 41.837791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172623, 31.721119, 41.372066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445374, 31.983845, 41.500839>,  <35.609024, 32.141479, 41.578102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445374, 31.983845, 41.500839>,  <35.172623, 31.721119, 41.372066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445374, 31.983845, 41.500839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287396, 0.164150, -0.943641,
		-0.672642, 0.735968, -0.076836,
		0.681876, 0.656815, 0.321929,
		35.649937, 32.180889, 41.597420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137688, 32.326996, 40.877121>,  <35.172623, 31.721119, 41.372066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137688, 32.326996, 40.877121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481388, 32.369568, 41.077263>,  <35.687611, 32.395111, 41.197350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481388, 32.369568, 41.077263>,  <35.137688, 32.326996, 40.877121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481388, 32.369568, 41.077263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484799, 0.142730, -0.862901,
		-0.163252, 0.984023, 0.071045,
		0.859255, 0.106428, 0.500354,
		35.739166, 32.401497, 41.227367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419964, 32.985348, 40.664089>,  <35.137688, 32.326996, 40.877121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419964, 32.985348, 40.664089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733818, 32.774876, 40.795219>,  <35.922131, 32.648590, 40.873898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733818, 32.774876, 40.795219>,  <35.419964, 32.985348, 40.664089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733818, 32.774876, 40.795219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494661, 0.212620, -0.842676,
		0.373698, 0.823362, 0.427112,
		0.784640, -0.526182, 0.327830,
		35.969212, 32.617020, 40.893570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994648, 33.371639, 40.512745>,  <35.419964, 32.985348, 40.664089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994648, 33.371639, 40.512745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148785, 33.003838, 40.543785>,  <36.241264, 32.783157, 40.562408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148785, 33.003838, 40.543785>,  <35.994648, 33.371639, 40.512745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148785, 33.003838, 40.543785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571867, 0.171959, -0.802121,
		0.724211, 0.353466, 0.592098,
		0.385339, -0.919506, 0.077601,
		36.264385, 32.727985, 40.567066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741512, 33.401623, 40.604919>,  <35.994648, 33.371639, 40.512745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741512, 33.401623, 40.604919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663666, 33.040874, 40.450645>,  <36.616959, 32.824425, 40.358082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663666, 33.040874, 40.450645>,  <36.741512, 33.401623, 40.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663666, 33.040874, 40.450645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645838, 0.178121, -0.742405,
		0.738254, -0.393569, 0.547800,
		-0.194613, -0.901874, -0.385680,
		36.605282, 32.770313, 40.334942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407436, 33.085995, 40.559200>,  <36.741512, 33.401623, 40.604919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407436, 33.085995, 40.559200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189926, 32.869667, 40.302505>,  <37.059422, 32.739872, 40.148487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189926, 32.869667, 40.302505>,  <37.407436, 33.085995, 40.559200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189926, 32.869667, 40.302505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643683, 0.221891, -0.732419,
		0.538499, -0.811346, 0.227455,
		-0.543775, -0.540816, -0.641738,
		37.026794, 32.707424, 40.109985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862736, 32.583649, 40.323933>,  <37.407436, 33.085995, 40.559200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862736, 32.583649, 40.323933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574200, 32.578346, 40.046951>,  <37.401077, 32.575165, 39.880764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574200, 32.578346, 40.046951>,  <37.862736, 32.583649, 40.323933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574200, 32.578346, 40.046951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688841, 0.089978, -0.719307,
		0.071837, -0.995856, -0.055778,
		-0.721344, -0.013251, -0.692450,
		37.357796, 32.574371, 39.839218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109978, 32.074024, 39.783718>,  <37.862736, 32.583649, 40.323933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109978, 32.074024, 39.783718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835831, 32.307190, 39.609142>,  <37.671341, 32.447090, 39.504398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835831, 32.307190, 39.609142>,  <38.109978, 32.074024, 39.783718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835831, 32.307190, 39.609142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686320, 0.316767, -0.654694,
		-0.243382, -0.748243, -0.617169,
		-0.685369, 0.582916, -0.436439,
		37.630219, 32.482063, 39.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237595, 32.018421, 39.180206>,  <38.109978, 32.074024, 39.783718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237595, 32.018421, 39.180206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994545, 32.335670, 39.163486>,  <37.848717, 32.526020, 39.153454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994545, 32.335670, 39.163486>,  <38.237595, 32.018421, 39.180206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994545, 32.335670, 39.163486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533978, 0.368999, -0.760728,
		-0.587930, -0.484554, -0.647724,
		-0.607623, 0.793125, -0.041796,
		37.812260, 32.573608, 39.150948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246178, 32.277466, 38.462826>,  <38.237595, 32.018421, 39.180206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246178, 32.277466, 38.462826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144035, 32.607548, 38.664352>,  <38.082748, 32.805595, 38.785267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144035, 32.607548, 38.664352>,  <38.246178, 32.277466, 38.462826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144035, 32.607548, 38.664352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584307, 0.546882, -0.599587,
		-0.770310, 0.141275, -0.621823,
		-0.255357, 0.825204, 0.503817,
		38.067429, 32.855110, 38.815498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113731, 32.766247, 37.916309>,  <38.246178, 32.277466, 38.462826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113731, 32.766247, 37.916309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198833, 32.961121, 38.255104>,  <38.249897, 33.078045, 38.458382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198833, 32.961121, 38.255104>,  <38.113731, 32.766247, 37.916309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198833, 32.961121, 38.255104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618023, 0.604311, -0.502847,
		-0.756823, 0.630441, -0.172520,
		0.212760, 0.487188, 0.846984,
		38.262661, 33.107277, 38.509201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985016, 33.436432, 37.803715>,  <38.113731, 32.766247, 37.916309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985016, 33.436432, 37.803715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247978, 33.423786, 38.104866>,  <38.405754, 33.416199, 38.285557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247978, 33.423786, 38.104866>,  <37.985016, 33.436432, 37.803715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247978, 33.423786, 38.104866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560183, 0.688760, -0.460221,
		-0.503999, 0.724299, 0.470505,
		0.657403, -0.031618, 0.752875,
		38.445198, 33.414299, 38.330730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043148, 34.139145, 37.937084>,  <37.985016, 33.436432, 37.803715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043148, 34.139145, 37.937084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371571, 33.958443, 38.076672>,  <38.568626, 33.850021, 38.160423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371571, 33.958443, 38.076672>,  <38.043148, 34.139145, 37.937084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371571, 33.958443, 38.076672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566063, 0.723290, -0.395505,
		-0.073733, 0.522270, 0.849587,
		0.821058, -0.451758, 0.348968,
		38.617889, 33.822914, 38.181362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364910, 34.625126, 38.198788>,  <38.043148, 34.139145, 37.937084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364910, 34.625126, 38.198788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662151, 34.358868, 38.171326>,  <38.840496, 34.199112, 38.154850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662151, 34.358868, 38.171326>,  <38.364910, 34.625126, 38.198788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662151, 34.358868, 38.171326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571440, 0.684611, -0.452509,
		0.348211, 0.297030, 0.889113,
		0.743105, -0.665644, -0.068654,
		38.885082, 34.159176, 38.150730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978325, 35.058784, 38.358250>,  <38.364910, 34.625126, 38.198788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978325, 35.058784, 38.358250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118973, 34.735035, 38.170090>,  <39.203362, 34.540787, 38.057194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118973, 34.735035, 38.170090>,  <38.978325, 35.058784, 38.358250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118973, 34.735035, 38.170090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690512, 0.563529, -0.453463,
		0.632107, -0.165373, 0.757029,
		0.351618, -0.809374, -0.470402,
		39.224457, 34.492222, 38.028969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649750, 35.076500, 38.363499>,  <38.978325, 35.058784, 38.358250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649750, 35.076500, 38.363499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594482, 34.824234, 38.058033>,  <39.561321, 34.672874, 37.874756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594482, 34.824234, 38.058033>,  <39.649750, 35.076500, 38.363499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594482, 34.824234, 38.058033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760719, 0.426167, -0.489579,
		0.634206, -0.648573, 0.420876,
		-0.138164, -0.630662, -0.763659,
		39.553032, 34.635036, 37.828934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267525, 34.742512, 38.327084>,  <39.649750, 35.076500, 38.363499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267525, 34.742512, 38.327084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078045, 34.729275, 37.975056>,  <39.964359, 34.721333, 37.763840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078045, 34.729275, 37.975056>,  <40.267525, 34.742512, 38.327084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078045, 34.729275, 37.975056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791005, 0.423357, -0.441679,
		0.387197, -0.905358, -0.174369,
		-0.473698, -0.033090, -0.880066,
		39.935936, 34.719349, 37.711037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762688, 34.612656, 37.881123>,  <40.267525, 34.742512, 38.327084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762688, 34.612656, 37.881123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487640, 34.755924, 37.628490>,  <40.322613, 34.841885, 37.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487640, 34.755924, 37.628490>,  <40.762688, 34.612656, 37.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487640, 34.755924, 37.628490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725933, 0.322149, -0.607652,
		-0.014179, -0.876319, -0.481522,
		-0.687619, 0.358169, -0.631582,
		40.281353, 34.863377, 37.439014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981915, 34.307602, 37.255108>,  <40.762688, 34.612656, 37.881123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981915, 34.307602, 37.255108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764687, 34.636940, 37.189167>,  <40.634350, 34.834545, 37.149605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764687, 34.636940, 37.189167>,  <40.981915, 34.307602, 37.255108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764687, 34.636940, 37.189167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782307, 0.424783, -0.455583,
		-0.305079, -0.376374, -0.874797,
		-0.543068, 0.823348, -0.164848,
		40.601765, 34.883945, 37.139713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952656, 34.581429, 36.480122>,  <40.981915, 34.307602, 37.255108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952656, 34.581429, 36.480122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857800, 34.922497, 36.666332>,  <40.800884, 35.127140, 36.778057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857800, 34.922497, 36.666332>,  <40.952656, 34.581429, 36.480122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857800, 34.922497, 36.666332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696503, 0.483283, -0.530397,
		-0.677235, 0.198462, -0.708495,
		-0.237140, 0.852673, 0.465525,
		40.786659, 35.178299, 36.805988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928780, 35.179302, 35.967129>,  <40.952656, 34.581429, 36.480122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928780, 35.179302, 35.967129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020191, 35.295578, 36.338779>,  <41.075039, 35.365341, 36.561771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020191, 35.295578, 36.338779>,  <40.928780, 35.179302, 35.967129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020191, 35.295578, 36.338779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834949, 0.432260, -0.340603,
		-0.500633, 0.853611, -0.143924,
		0.228530, 0.290686, 0.929126,
		41.088749, 35.382786, 36.617516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065411, 35.900284, 36.046375>,  <40.928780, 35.179302, 35.967129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065411, 35.900284, 36.046375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286293, 35.704590, 36.316402>,  <41.418823, 35.587173, 36.478420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286293, 35.704590, 36.316402>,  <41.065411, 35.900284, 36.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286293, 35.704590, 36.316402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802725, 0.530685, -0.272040,
		-0.225158, 0.692117, 0.685768,
		0.552210, -0.489231, 0.675068,
		41.451958, 35.557819, 36.518925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567444, 36.360680, 36.392090>,  <41.065411, 35.900284, 36.046375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567444, 36.360680, 36.392090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697773, 35.990143, 36.316483>,  <41.775970, 35.767822, 36.271118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697773, 35.990143, 36.316483>,  <41.567444, 36.360680, 36.392090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697773, 35.990143, 36.316483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909579, 0.361676, -0.204590,
		0.257882, -0.105262, 0.960425,
		0.325827, -0.926343, -0.189014,
		41.795521, 35.712238, 36.259777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092506, 36.024334, 36.687675>,  <41.567444, 36.360680, 36.392090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092506, 36.024334, 36.687675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142059, 35.821133, 36.346714>,  <42.171791, 35.699211, 36.142136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142059, 35.821133, 36.346714>,  <42.092506, 36.024334, 36.687675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142059, 35.821133, 36.346714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885312, 0.444577, -0.136285,
		0.448191, -0.737758, 0.504814,
		0.123883, -0.508000, -0.852402,
		42.179226, 35.668732, 36.090992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678699, 35.569164, 36.661308>,  <42.092506, 36.024334, 36.687675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678699, 35.569164, 36.661308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614063, 35.712444, 36.293484>,  <42.575283, 35.798412, 36.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614063, 35.712444, 36.293484>,  <42.678699, 35.569164, 36.661308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614063, 35.712444, 36.293484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985891, 0.099839, -0.134354,
		0.043683, -0.928293, -0.369275,
		-0.161587, 0.358196, -0.919557,
		42.565586, 35.819904, 36.017616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387081, 35.331615, 36.477264>,  <42.678699, 35.569164, 36.661308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387081, 35.331615, 36.477264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303356, 35.690849, 36.322536>,  <43.253120, 35.906391, 36.229702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303356, 35.690849, 36.322536>,  <43.387081, 35.331615, 36.477264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303356, 35.690849, 36.322536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940425, 0.293270, 0.172025,
		0.267936, -0.327765, -0.905969,
		-0.209310, 0.898088, -0.386817,
		43.240562, 35.960278, 36.206493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915955, 35.285995, 37.026257>,  <43.387081, 35.331615, 36.477264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915955, 35.285995, 37.026257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295696, 35.166004, 36.988842>,  <44.523540, 35.094009, 36.966393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295696, 35.166004, 36.988842>,  <43.915955, 35.285995, 37.026257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295696, 35.166004, 36.988842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090658, -0.023528, 0.995604,
		-0.300861, -0.953656, 0.004859,
		0.949349, -0.299979, -0.093535,
		44.580502, 35.076012, 36.960781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930294, 34.675762, 37.325279>,  <43.915955, 35.285995, 37.026257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930294, 34.675762, 37.325279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317051, 34.777306, 37.335732>,  <44.549103, 34.838230, 37.342003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317051, 34.777306, 37.335732>,  <43.930294, 34.675762, 37.325279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317051, 34.777306, 37.335732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011187, -0.144451, 0.989449,
		0.254952, -0.956394, -0.142508,
		0.966889, 0.253856, 0.026129,
		44.607117, 34.853462, 37.343571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242359, 34.185394, 37.803730>,  <43.930294, 34.675762, 37.325279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242359, 34.185394, 37.803730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489635, 34.498878, 37.779587>,  <44.638000, 34.686970, 37.765102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489635, 34.498878, 37.779587>,  <44.242359, 34.185394, 37.803730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489635, 34.498878, 37.779587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091883, 0.004207, 0.995761,
		0.780642, -0.621113, -0.069409,
		0.618187, 0.783710, -0.060354,
		44.675091, 34.733990, 37.761482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767502, 33.974831, 38.153732>,  <44.242359, 34.185394, 37.803730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767502, 33.974831, 38.153732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789246, 34.373573, 38.130680>,  <44.802292, 34.612820, 38.116848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789246, 34.373573, 38.130680>,  <44.767502, 33.974831, 38.153732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789246, 34.373573, 38.130680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303423, 0.038492, 0.952078,
		0.951304, -0.069238, -0.300377,
		0.054358, 0.996857, -0.057626,
		44.805553, 34.672630, 38.113392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299519, 34.109375, 38.536846>,  <44.767502, 33.974831, 38.153732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299519, 34.109375, 38.536846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089104, 34.449421, 38.527138>,  <44.962856, 34.653450, 38.521313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089104, 34.449421, 38.527138>,  <45.299519, 34.109375, 38.536846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089104, 34.449421, 38.527138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010474, 0.035016, 0.999332,
		0.850396, 0.525433, -0.027324,
		-0.526039, 0.850114, -0.024274,
		44.931293, 34.704456, 38.519855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633408, 34.533787, 38.964943>,  <45.299519, 34.109375, 38.536846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633408, 34.533787, 38.964943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276928, 34.709965, 38.921543>,  <45.063042, 34.815670, 38.895504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276928, 34.709965, 38.921543>,  <45.633408, 34.533787, 38.964943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276928, 34.709965, 38.921543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046391, 0.149429, 0.987684,
		0.451234, 0.885256, -0.112738,
		-0.891199, 0.440446, -0.108495,
		45.009567, 34.842098, 38.888996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614990, 35.209381, 39.377384>,  <45.633408, 34.533787, 38.964943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614990, 35.209381, 39.377384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228439, 35.122261, 39.322712>,  <44.996510, 35.069988, 39.289909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228439, 35.122261, 39.322712>,  <45.614990, 35.209381, 39.377384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228439, 35.122261, 39.322712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160202, 0.094193, 0.982580,
		-0.201133, 0.971437, -0.125918,
		-0.966375, -0.217801, -0.136681,
		44.938526, 35.056919, 39.281708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357746, 35.630085, 39.834179>,  <45.614990, 35.209381, 39.377384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357746, 35.630085, 39.834179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079807, 35.352787, 39.757656>,  <44.913044, 35.186409, 39.711742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079807, 35.352787, 39.757656>,  <45.357746, 35.630085, 39.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079807, 35.352787, 39.757656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266410, 0.001039, 0.963859,
		-0.667989, 0.720704, -0.185409,
		-0.694850, -0.693242, -0.191309,
		44.871353, 35.144814, 39.700264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723526, 35.817245, 40.232094>,  <45.357746, 35.630085, 39.834179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723526, 35.817245, 40.232094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694279, 35.426769, 40.150410>,  <44.676731, 35.192482, 40.101398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694279, 35.426769, 40.150410>,  <44.723526, 35.817245, 40.232094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694279, 35.426769, 40.150410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265618, -0.178300, 0.947447,
		-0.961301, 0.123519, -0.246257,
		-0.073120, -0.976193, -0.204209,
		44.672344, 35.133911, 40.089146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108948, 35.725773, 40.420647>,  <44.723526, 35.817245, 40.232094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108948, 35.725773, 40.420647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269535, 35.359467, 40.426311>,  <44.365887, 35.139683, 40.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269535, 35.359467, 40.426311>,  <44.108948, 35.725773, 40.420647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269535, 35.359467, 40.426311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545941, -0.226873, 0.806521,
		-0.735369, -0.331525, -0.591036,
		0.401472, -0.915762, 0.014157,
		44.389977, 35.084740, 40.430557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577538, 35.269192, 40.426601>,  <44.108948, 35.725773, 40.420647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577538, 35.269192, 40.426601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882076, 35.062035, 40.582619>,  <44.064800, 34.937740, 40.676228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882076, 35.062035, 40.582619>,  <43.577538, 35.269192, 40.426601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882076, 35.062035, 40.582619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575612, -0.263091, 0.774244,
		-0.298375, -0.813973, -0.498418,
		0.761343, -0.517910, 0.390033,
		44.110481, 34.906666, 40.699631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272869, 34.627674, 40.516220>,  <43.577538, 35.269192, 40.426601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272869, 34.627674, 40.516220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592113, 34.628174, 40.757225>,  <43.783661, 34.628471, 40.901829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592113, 34.628174, 40.757225>,  <43.272869, 34.627674, 40.516220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592113, 34.628174, 40.757225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534467, -0.460172, 0.708933,
		0.278142, -0.887829, -0.366602,
		0.798111, 0.001247, 0.602509,
		43.831547, 34.628548, 40.937977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320305, 33.931641, 40.810787>,  <43.272869, 34.627674, 40.516220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320305, 33.931641, 40.810787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534576, 34.139229, 41.077236>,  <43.663139, 34.263783, 41.237106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534576, 34.139229, 41.077236>,  <43.320305, 33.931641, 40.810787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534576, 34.139229, 41.077236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527087, -0.410809, 0.743919,
		0.659720, -0.749606, 0.053480,
		0.535676, 0.518967, 0.666127,
		43.695278, 34.294918, 41.277073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510914, 33.439590, 41.278805>,  <43.320305, 33.931641, 40.810787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510914, 33.439590, 41.278805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574654, 33.774574, 41.487904>,  <43.612900, 33.975567, 41.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574654, 33.774574, 41.487904>,  <43.510914, 33.439590, 41.278805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574654, 33.774574, 41.487904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709318, -0.271165, 0.650644,
		0.686640, -0.474476, 0.550816,
		0.159353, 0.837462, 0.522747,
		43.622459, 34.025814, 41.644730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721832, 33.218082, 41.955833>,  <43.510914, 33.439590, 41.278805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721832, 33.218082, 41.955833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585411, 33.592312, 41.992481>,  <43.503559, 33.816849, 42.014469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585411, 33.592312, 41.992481>,  <43.721832, 33.218082, 41.955833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585411, 33.592312, 41.992481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461121, -0.251431, 0.850970,
		0.819178, 0.247976, 0.517161,
		-0.341051, 0.935570, 0.091620,
		43.483097, 33.872982, 42.019966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862534, 33.460678, 42.722008>,  <43.721832, 33.218082, 41.955833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862534, 33.460678, 42.722008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582130, 33.704533, 42.573990>,  <43.413887, 33.850845, 42.485180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582130, 33.704533, 42.573990>,  <43.862534, 33.460678, 42.722008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582130, 33.704533, 42.573990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560503, -0.150164, 0.814425,
		0.440936, 0.778328, 0.446969,
		-0.701008, 0.609637, -0.370042,
		43.371826, 33.887424, 42.462978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587727, 33.631176, 43.287560>,  <43.862534, 33.460678, 42.722008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587727, 33.631176, 43.287560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314289, 33.779755, 43.036251>,  <43.150227, 33.868900, 42.885468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314289, 33.779755, 43.036251>,  <43.587727, 33.631176, 43.287560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314289, 33.779755, 43.036251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694802, -0.067609, 0.716016,
		0.223483, 0.925991, 0.304297,
		-0.683598, 0.371444, -0.628271,
		43.109211, 33.891190, 42.847771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138062, 34.107330, 43.752995>,  <43.587727, 33.631176, 43.287560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138062, 34.107330, 43.752995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948257, 33.977585, 43.425671>,  <42.834373, 33.899738, 43.229279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948257, 33.977585, 43.425671>,  <43.138062, 34.107330, 43.752995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948257, 33.977585, 43.425671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828592, -0.149187, 0.539610,
		-0.297111, 0.934094, -0.197974,
		-0.474511, -0.324363, -0.818308,
		42.805904, 33.880276, 43.180180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580490, 34.405209, 43.887913>,  <43.138062, 34.107330, 43.752995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580490, 34.405209, 43.887913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486866, 34.096474, 43.651447>,  <42.430691, 33.911232, 43.509567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486866, 34.096474, 43.651447>,  <42.580490, 34.405209, 43.887913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486866, 34.096474, 43.651447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877270, -0.094420, 0.470620,
		-0.419061, 0.628767, -0.655011,
		-0.234065, -0.771840, -0.591166,
		42.416645, 33.864922, 43.474098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849461, 34.396748, 43.801609>,  <42.580490, 34.405209, 43.887913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849461, 34.396748, 43.801609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954288, 34.035557, 43.665398>,  <42.017185, 33.818844, 43.583672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954288, 34.035557, 43.665398>,  <41.849461, 34.396748, 43.801609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954288, 34.035557, 43.665398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844793, -0.385234, 0.371374,
		-0.466523, 0.190351, -0.863784,
		0.262068, -0.902974, -0.340528,
		42.032909, 33.764664, 43.563240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163235, 34.199337, 43.489521>,  <41.849461, 34.396748, 43.801609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163235, 34.199337, 43.489521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380699, 33.869816, 43.553753>,  <41.511177, 33.672104, 43.592293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380699, 33.869816, 43.553753>,  <41.163235, 34.199337, 43.489521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380699, 33.869816, 43.553753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608615, -0.255204, 0.751305,
		-0.577946, -0.506184, -0.640122,
		0.543661, -0.823801, 0.160577,
		41.543797, 33.622677, 43.601925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794323, 33.532349, 43.420467>,  <41.163235, 34.199337, 43.489521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794323, 33.532349, 43.420467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091854, 33.473202, 43.681190>,  <41.270374, 33.437714, 43.837624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091854, 33.473202, 43.681190>,  <40.794323, 33.532349, 43.420467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091854, 33.473202, 43.681190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659804, -0.318070, 0.680801,
		0.106651, -0.936465, -0.334154,
		0.743831, -0.147868, 0.651807,
		41.315002, 33.428841, 43.876732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940014, 32.706963, 43.572186>,  <40.794323, 33.532349, 43.420467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940014, 32.706963, 43.572186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023464, 32.948704, 43.879749>,  <41.073536, 33.093750, 44.064289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023464, 32.948704, 43.879749>,  <40.940014, 32.706963, 43.572186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023464, 32.948704, 43.879749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828892, -0.307998, 0.466986,
		0.519049, -0.734773, 0.436688,
		0.208630, 0.604356, 0.768913,
		41.086052, 33.130009, 44.110424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191059, 32.579079, 42.953773>,  <40.940014, 32.706963, 43.572186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191059, 32.579079, 42.953773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145313, 32.191269, 42.867104>,  <41.117867, 31.958584, 42.815102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145313, 32.191269, 42.867104>,  <41.191059, 32.579079, 42.953773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145313, 32.191269, 42.867104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971447, -0.154776, 0.179820,
		-0.207875, -0.189920, 0.959541,
		-0.114362, -0.969523, -0.216671,
		41.111004, 31.900412, 42.802101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496464, 32.126019, 43.555969>,  <41.191059, 32.579079, 42.953773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496464, 32.126019, 43.555969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512058, 31.967297, 43.189140>,  <41.521416, 31.872063, 42.969044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512058, 31.967297, 43.189140>,  <41.496464, 32.126019, 43.555969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512058, 31.967297, 43.189140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933203, -0.313643, 0.175387,
		-0.357229, -0.862653, 0.358074,
		0.038991, -0.396809, -0.917073,
		41.523754, 31.848253, 42.914017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864269, 31.509672, 43.703957>,  <41.496464, 32.126019, 43.555969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864269, 31.509672, 43.703957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856712, 31.550858, 43.306156>,  <41.852177, 31.575569, 43.067474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856712, 31.550858, 43.306156>,  <41.864269, 31.509672, 43.703957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856712, 31.550858, 43.306156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928650, -0.366763, -0.055618,
		-0.370474, -0.924599, -0.088687,
		-0.018897, 0.102965, -0.994506,
		41.851044, 31.581747, 43.007805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254959, 30.899351, 43.386318>,  <41.864269, 31.509672, 43.703957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254959, 30.899351, 43.386318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270863, 31.194891, 43.117241>,  <42.280403, 31.372215, 42.955795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270863, 31.194891, 43.117241>,  <42.254959, 30.899351, 43.386318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270863, 31.194891, 43.117241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910517, -0.304077, -0.280171,
		-0.411556, -0.601361, -0.684826,
		0.039757, 0.738852, -0.672694,
		42.282791, 31.416546, 42.915432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516678, 30.776545, 42.618126>,  <42.254959, 30.899351, 43.386318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516678, 30.776545, 42.618126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619812, 31.143623, 42.739025>,  <42.681694, 31.363871, 42.811565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619812, 31.143623, 42.739025>,  <42.516678, 30.776545, 42.618126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619812, 31.143623, 42.739025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878808, -0.092750, -0.468075,
		-0.401517, 0.386305, -0.830393,
		0.257838, 0.917696, 0.302247,
		42.697163, 31.418932, 42.829700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991154, 30.456408, 42.188774>,  <42.516678, 30.776545, 42.618126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991154, 30.456408, 42.188774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873745, 30.418291, 42.569248>,  <41.803299, 30.395422, 42.797535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873745, 30.418291, 42.569248>,  <41.991154, 30.456408, 42.188774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873745, 30.418291, 42.569248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140569, -0.988506, -0.055651,
		0.945560, 0.117373, 0.303546,
		-0.293525, -0.095290, 0.951190,
		41.785686, 30.389704, 42.854607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300114, 29.884062, 41.607792>,  <41.991154, 30.456408, 42.188774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300114, 29.884062, 41.607792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992123, 30.011009, 41.386372>,  <41.807327, 30.087177, 41.253521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992123, 30.011009, 41.386372>,  <42.300114, 29.884062, 41.607792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992123, 30.011009, 41.386372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498499, 0.840723, -0.211384,
		0.398294, -0.438703, -0.805544,
		-0.769974, 0.317370, -0.553548,
		41.761131, 30.106220, 41.220306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421684, 30.130402, 40.846695>,  <42.300114, 29.884062, 41.607792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421684, 30.130402, 40.846695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113762, 30.347986, 40.980267>,  <41.929008, 30.478537, 41.060410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113762, 30.347986, 40.980267>,  <42.421684, 30.130402, 40.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113762, 30.347986, 40.980267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537617, 0.834584, -0.120156,
		-0.344050, 0.087027, -0.934910,
		-0.769804, 0.543963, 0.333926,
		41.882820, 30.511175, 41.080444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026123, 30.484289, 40.234219>,  <42.421684, 30.130402, 40.846695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026123, 30.484289, 40.234219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062893, 30.683947, 40.578869>,  <42.084953, 30.803741, 40.785660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062893, 30.683947, 40.578869>,  <42.026123, 30.484289, 40.234219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062893, 30.683947, 40.578869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585177, 0.673034, -0.452319,
		-0.805679, 0.545783, -0.230223,
		0.091921, 0.499145, 0.861629,
		42.090469, 30.833691, 40.837357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894798, 31.213606, 40.120258>,  <42.026123, 30.484289, 40.234219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894798, 31.213606, 40.120258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136745, 31.165163, 40.435081>,  <42.281914, 31.136097, 40.623978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136745, 31.165163, 40.435081>,  <41.894798, 31.213606, 40.120258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136745, 31.165163, 40.435081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654193, 0.639124, -0.404416,
		-0.454050, 0.759509, 0.465816,
		0.604872, -0.121108, 0.787060,
		42.318207, 31.128830, 40.671200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077831, 31.783710, 40.222965>,  <41.894798, 31.213606, 40.120258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077831, 31.783710, 40.222965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362354, 31.558990, 40.391922>,  <42.533070, 31.424158, 40.493298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362354, 31.558990, 40.391922>,  <42.077831, 31.783710, 40.222965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362354, 31.558990, 40.391922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680331, 0.399320, -0.614568,
		0.176594, 0.724517, 0.666251,
		0.711312, -0.561800, 0.422394,
		42.575748, 31.390451, 40.518639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589939, 32.243591, 40.391987>,  <42.077831, 31.783710, 40.222965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589939, 32.243591, 40.391987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747585, 31.876007, 40.397327>,  <42.842175, 31.655457, 40.400532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747585, 31.876007, 40.397327>,  <42.589939, 32.243591, 40.391987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747585, 31.876007, 40.397327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831050, 0.350133, -0.432160,
		0.392465, 0.181417, 0.901698,
		0.394116, -0.918964, 0.013352,
		42.865822, 31.600317, 40.401333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294125, 32.296913, 40.571850>,  <42.589939, 32.243591, 40.391987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294125, 32.296913, 40.571850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257957, 31.949099, 40.377644>,  <43.236259, 31.740408, 40.261120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257957, 31.949099, 40.377644>,  <43.294125, 32.296913, 40.571850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257957, 31.949099, 40.377644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742502, 0.266043, -0.614745,
		0.663713, -0.416078, 0.621581,
		-0.090415, -0.869540, -0.485515,
		43.230831, 31.688236, 40.231991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043686, 32.160843, 40.390087>,  <43.294125, 32.296913, 40.571850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043686, 32.160843, 40.390087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847954, 31.899343, 40.159199>,  <43.730515, 31.742445, 40.020668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847954, 31.899343, 40.159199>,  <44.043686, 32.160843, 40.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847954, 31.899343, 40.159199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712798, 0.081540, -0.696614,
		0.502473, -0.752310, 0.426087,
		-0.489327, -0.653744, -0.577216,
		43.701157, 31.703220, 39.986034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509926, 31.730515, 40.077183>,  <44.043686, 32.160843, 40.390087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509926, 31.730515, 40.077183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217632, 31.689346, 39.807240>,  <44.042255, 31.664644, 39.645275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217632, 31.689346, 39.807240>,  <44.509926, 31.730515, 40.077183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217632, 31.689346, 39.807240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682652, -0.114671, -0.721690,
		-0.003107, -0.988058, 0.154055,
		-0.730737, -0.102924, -0.674856,
		43.998409, 31.658470, 39.604782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757931, 31.211763, 39.543949>,  <44.509926, 31.730515, 40.077183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757931, 31.211763, 39.543949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462845, 31.421318, 39.373627>,  <44.285793, 31.547050, 39.271431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462845, 31.421318, 39.373627>,  <44.757931, 31.211763, 39.543949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462845, 31.421318, 39.373627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605172, 0.233607, -0.761049,
		-0.299234, -0.819126, -0.489378,
		-0.737717, 0.523890, -0.425809,
		44.241531, 31.578485, 39.245884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648140, 30.895037, 38.878284>,  <44.757931, 31.211763, 39.543949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648140, 30.895037, 38.878284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471985, 31.251982, 38.838802>,  <44.366291, 31.466148, 38.815113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471985, 31.251982, 38.838802>,  <44.648140, 30.895037, 38.878284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471985, 31.251982, 38.838802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527680, 0.168325, -0.832598,
		-0.726367, -0.418751, -0.545012,
		-0.440391, 0.892364, -0.098701,
		44.339867, 31.519691, 38.809193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424171, 30.944382, 38.184235>,  <44.648140, 30.895037, 38.878284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424171, 30.944382, 38.184235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437115, 31.323130, 38.312229>,  <44.444881, 31.550379, 38.389027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437115, 31.323130, 38.312229>,  <44.424171, 30.944382, 38.184235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437115, 31.323130, 38.312229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425197, 0.276693, -0.861771,
		-0.904522, 0.163945, -0.393651,
		0.032363, 0.946870, 0.319984,
		44.446823, 31.607191, 38.408226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363007, 31.342300, 37.625847>,  <44.424171, 30.944382, 38.184235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363007, 31.342300, 37.625847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490189, 31.636154, 37.865585>,  <44.566498, 31.812468, 38.009426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490189, 31.636154, 37.865585>,  <44.363007, 31.342300, 37.625847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490189, 31.636154, 37.865585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465622, 0.429669, -0.773679,
		-0.825892, 0.525066, -0.205446,
		0.317959, 0.734636, 0.599343,
		44.585575, 31.856544, 38.045387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315662, 31.916533, 37.157219>,  <44.363007, 31.342300, 37.625847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315662, 31.916533, 37.157219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543163, 32.031559, 37.465458>,  <44.679665, 32.100574, 37.650402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543163, 32.031559, 37.465458>,  <44.315662, 31.916533, 37.157219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543163, 32.031559, 37.465458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552381, 0.560630, -0.616902,
		-0.609423, 0.776530, 0.160013,
		0.568751, 0.287566, 0.770602,
		44.713787, 32.117828, 37.696640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571552, 32.618172, 36.937752>,  <44.315662, 31.916533, 37.157219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571552, 32.618172, 36.937752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798454, 32.494202, 37.242950>,  <44.934593, 32.419819, 37.426071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798454, 32.494202, 37.242950>,  <44.571552, 32.618172, 36.937752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798454, 32.494202, 37.242950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800532, 0.424998, -0.422524,
		-0.193320, 0.850483, 0.489190,
		0.567253, -0.309929, 0.762999,
		44.968632, 32.401222, 37.471851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938698, 33.194622, 37.116508>,  <44.571552, 32.618172, 36.937752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938698, 33.194622, 37.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144810, 32.868843, 37.223209>,  <45.268475, 32.673374, 37.287231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144810, 32.868843, 37.223209>,  <44.938698, 33.194622, 37.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144810, 32.868843, 37.223209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816929, 0.372683, -0.440153,
		0.259069, 0.444720, 0.857384,
		0.515278, -0.814452, 0.266754,
		45.299393, 32.624508, 37.303234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514359, 33.451591, 37.575798>,  <44.938698, 33.194622, 37.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514359, 33.451591, 37.575798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624779, 33.103176, 37.413269>,  <45.691029, 32.894127, 37.315754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624779, 33.103176, 37.413269>,  <45.514359, 33.451591, 37.575798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624779, 33.103176, 37.413269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768138, 0.454033, -0.451462,
		0.577722, -0.187484, 0.794410,
		0.276046, -0.871036, -0.406318,
		45.707592, 32.841866, 37.291374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219631, 33.460476, 37.691353>,  <45.514359, 33.451591, 37.575798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219631, 33.460476, 37.691353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178642, 33.204315, 37.386883>,  <46.154049, 33.050617, 37.204201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178642, 33.204315, 37.386883>,  <46.219631, 33.460476, 37.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178642, 33.204315, 37.386883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817506, 0.381739, -0.431230,
		0.566730, -0.666454, 0.484413,
		-0.102475, -0.640402, -0.761173,
		46.147900, 33.012196, 37.158531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915337, 33.250626, 37.458729>,  <46.219631, 33.460476, 37.691353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915337, 33.250626, 37.458729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659260, 33.166721, 37.163120>,  <46.505611, 33.116379, 36.985756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659260, 33.166721, 37.163120>,  <46.915337, 33.250626, 37.458729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659260, 33.166721, 37.163120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575753, 0.505874, -0.642340,
		0.508633, -0.836701, -0.203037,
		-0.640157, -0.209816, -0.739037,
		46.467201, 33.103794, 36.941414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.416019, 33.177639, 36.914501>,  <46.915337, 33.250626, 37.458729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.416019, 33.177639, 36.914501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052017, 33.204559, 36.750862>,  <46.833614, 33.220711, 36.652679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052017, 33.204559, 36.750862>,  <47.416019, 33.177639, 36.914501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052017, 33.204559, 36.750862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387628, 0.488181, -0.781936,
		0.147093, -0.870144, -0.470333,
		-0.910004, 0.067297, -0.409100,
		46.779015, 33.224747, 36.628132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471760, 32.922531, 36.179386>,  <47.416019, 33.177639, 36.914501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471760, 32.922531, 36.179386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172394, 33.181957, 36.234852>,  <46.992775, 33.337612, 36.268131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172394, 33.181957, 36.234852>,  <47.471760, 32.922531, 36.179386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172394, 33.181957, 36.234852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344555, 0.558865, -0.754289,
		-0.566703, -0.516746, -0.641733,
		-0.748418, 0.648569, 0.138663,
		46.947868, 33.376530, 36.276451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176109, 33.141972, 35.460033>,  <47.471760, 32.922531, 36.179386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176109, 33.141972, 35.460033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071968, 33.417328, 35.730835>,  <47.009483, 33.582542, 35.893314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071968, 33.417328, 35.730835>,  <47.176109, 33.141972, 35.460033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071968, 33.417328, 35.730835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275020, 0.725013, -0.631443,
		-0.925516, 0.021791, -0.378080,
		-0.260353, 0.688390, 0.677004,
		46.993862, 33.623844, 35.933937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536709, 33.551285, 35.266914>,  <47.176109, 33.141972, 35.460033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536709, 33.551285, 35.266914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827728, 33.733974, 35.471691>,  <47.002338, 33.843586, 35.594559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827728, 33.733974, 35.471691>,  <46.536709, 33.551285, 35.266914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827728, 33.733974, 35.471691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251931, 0.516217, -0.818566,
		-0.638130, 0.724517, 0.260508,
		0.727544, 0.456721, 0.511942,
		47.045990, 33.870991, 35.625275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342022, 34.283115, 35.337685>,  <46.536709, 33.551285, 35.266914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342022, 34.283115, 35.337685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733204, 34.207912, 35.374016>,  <46.967915, 34.162792, 35.395813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733204, 34.207912, 35.374016>,  <46.342022, 34.283115, 35.337685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.733204, 34.207912, 35.374016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198007, 0.697052, -0.689138,
		0.066255, 0.691933, 0.718915,
		0.977959, -0.188009, 0.090825,
		47.026592, 34.151508, 35.401264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629433, 34.913612, 35.490585>,  <46.342022, 34.283115, 35.337685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629433, 34.913612, 35.490585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898895, 34.713291, 35.273190>,  <47.060574, 34.593098, 35.142750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898895, 34.713291, 35.273190>,  <46.629433, 34.913612, 35.490585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898895, 34.713291, 35.273190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271656, 0.851711, -0.448098,
		0.687307, 0.154221, 0.709806,
		0.673656, -0.500804, -0.543492,
		47.100990, 34.563049, 35.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.371429, 35.012722, 35.554123>,  <46.629433, 34.913612, 35.490585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.371429, 35.012722, 35.554123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331062, 34.912319, 35.169041>,  <47.306843, 34.852077, 34.937992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331062, 34.912319, 35.169041>,  <47.371429, 35.012722, 35.554123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331062, 34.912319, 35.169041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462404, 0.844950, -0.268777,
		0.880908, -0.472285, 0.030797,
		-0.100918, -0.251008, -0.962710,
		47.300785, 34.837017, 34.880226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092361, 34.900894, 35.171894>,  <47.371429, 35.012722, 35.554123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092361, 34.900894, 35.171894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.803051, 34.992840, 34.911423>,  <47.629463, 35.048008, 34.755138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.803051, 34.992840, 34.911423>,  <48.092361, 34.900894, 35.171894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.803051, 34.992840, 34.911423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473986, 0.851019, -0.226063,
		0.502203, -0.472157, -0.724472,
		-0.723277, 0.229860, -0.651180,
		47.586067, 35.061798, 34.716068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.901802, 35.212978, 44.903545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562588, 35.104130, 44.721649>,  <33.359058, 35.038818, 44.612511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.562588, 35.104130, 44.721649>,  <33.901802, 35.212978, 44.903545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562588, 35.104130, 44.721649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287172, 0.485205, -0.825899,
		0.445381, -0.830981, -0.333327,
		-0.848038, -0.272117, -0.454736,
		33.308178, 35.022491, 44.585228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096283, 34.983738, 44.250782>,  <33.901802, 35.212978, 44.903545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096283, 34.983738, 44.250782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705334, 35.053337, 44.202663>,  <33.470764, 35.095097, 44.173790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705334, 35.053337, 44.202663>,  <34.096283, 34.983738, 44.250782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705334, 35.053337, 44.202663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179673, 0.382702, -0.906232,
		-0.111642, -0.907339, -0.405304,
		-0.977371, 0.173996, -0.120299,
		33.412121, 35.105537, 44.166573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867939, 34.581657, 43.622246>,  <34.096283, 34.983738, 44.250782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867939, 34.581657, 43.622246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579945, 34.856941, 43.657997>,  <33.407146, 35.022110, 43.679447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579945, 34.856941, 43.657997>,  <33.867939, 34.581657, 43.622246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579945, 34.856941, 43.657997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111762, 0.242096, -0.963794,
		-0.684932, -0.683927, -0.251221,
		-0.719985, 0.688211, 0.089382,
		33.363949, 35.063404, 43.684811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401031, 34.444099, 43.047428>,  <33.867939, 34.581657, 43.622246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401031, 34.444099, 43.047428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.341846, 34.817650, 43.177650>,  <33.306335, 35.041779, 43.255783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.341846, 34.817650, 43.177650>,  <33.401031, 34.444099, 43.047428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341846, 34.817650, 43.177650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111086, 0.342787, -0.932822,
		-0.982735, -0.101855, -0.154459,
		-0.147959, 0.933875, 0.325554,
		33.297459, 35.097813, 43.275318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833649, 34.710342, 42.610260>,  <33.401031, 34.444099, 43.047428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833649, 34.710342, 42.610260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.040920, 35.020950, 42.753654>,  <33.165283, 35.207314, 42.839691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.040920, 35.020950, 42.753654>,  <32.833649, 34.710342, 42.610260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040920, 35.020950, 42.753654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018205, 0.409042, -0.912334,
		-0.855080, 0.479276, 0.197819,
		0.518176, 0.776517, 0.358489,
		33.196373, 35.253906, 42.861202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578445, 35.246006, 42.193764>,  <32.833649, 34.710342, 42.610260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578445, 35.246006, 42.193764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.899551, 35.418419, 42.358582>,  <33.092216, 35.521866, 42.457474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.899551, 35.418419, 42.358582>,  <32.578445, 35.246006, 42.193764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899551, 35.418419, 42.358582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165673, 0.502582, -0.848507,
		-0.572819, 0.749416, 0.332045,
		0.802765, 0.431030, 0.412046,
		33.140381, 35.547729, 42.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569675, 35.986160, 41.971626>,  <32.578445, 35.246006, 42.193764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569675, 35.986160, 41.971626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.953857, 35.889023, 42.026104>,  <33.184368, 35.830738, 42.058788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.953857, 35.889023, 42.026104>,  <32.569675, 35.986160, 41.971626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953857, 35.889023, 42.026104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249781, 0.535421, -0.806805,
		0.123011, 0.808919, 0.574907,
		0.960457, -0.242847, 0.136190,
		33.241993, 35.816170, 42.066959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954636, 36.615814, 41.820374>,  <32.569675, 35.986160, 41.971626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954636, 36.615814, 41.820374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.205395, 36.304264, 41.812862>,  <33.355850, 36.117332, 41.808357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.205395, 36.304264, 41.812862>,  <32.954636, 36.615814, 41.820374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205395, 36.304264, 41.812862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421224, 0.359107, -0.832834,
		0.655418, 0.514191, 0.553204,
		0.626895, -0.778877, -0.018776,
		33.393463, 36.070602, 41.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648834, 36.790897, 41.623402>,  <32.954636, 36.615814, 41.820374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648834, 36.790897, 41.623402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679707, 36.399586, 41.546452>,  <33.698231, 36.164799, 41.500282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.679707, 36.399586, 41.546452>,  <33.648834, 36.790897, 41.623402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679707, 36.399586, 41.546452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551125, 0.202655, -0.809440,
		0.830846, -0.043555, 0.554795,
		0.077177, -0.978281, -0.192379,
		33.702858, 36.106102, 41.488739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378239, 36.684101, 41.411892>,  <33.648834, 36.790897, 41.623402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378239, 36.684101, 41.411892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.144855, 36.393654, 41.266380>,  <34.004826, 36.219387, 41.179073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.144855, 36.393654, 41.266380>,  <34.378239, 36.684101, 41.411892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144855, 36.393654, 41.266380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563350, -0.039208, -0.825287,
		0.584993, -0.686451, 0.431935,
		-0.583454, -0.726118, -0.363776,
		33.969818, 36.175819, 41.157246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822140, 36.185520, 41.124268>,  <34.378239, 36.684101, 41.411892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822140, 36.185520, 41.124268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461349, 36.116119, 40.966106>,  <34.244877, 36.074478, 40.871212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461349, 36.116119, 40.966106>,  <34.822140, 36.185520, 41.124268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461349, 36.116119, 40.966106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414682, -0.092861, -0.905216,
		0.120336, -0.980446, 0.155705,
		-0.901975, -0.173498, -0.395399,
		34.190758, 36.064072, 40.847488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769917, 35.559448, 40.811649>,  <34.822140, 36.185520, 41.124268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769917, 35.559448, 40.811649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499619, 35.786201, 40.623177>,  <34.337440, 35.922253, 40.510094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499619, 35.786201, 40.623177>,  <34.769917, 35.559448, 40.811649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499619, 35.786201, 40.623177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492108, -0.128975, -0.860927,
		-0.548818, -0.813637, -0.191815,
		-0.675743, 0.566886, -0.471181,
		34.296894, 35.956268, 40.481823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707760, 35.316612, 40.071613>,  <34.769917, 35.559448, 40.811649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707760, 35.316612, 40.071613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555351, 35.686420, 40.067833>,  <34.463905, 35.908306, 40.065563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555351, 35.686420, 40.067833>,  <34.707760, 35.316612, 40.071613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555351, 35.686420, 40.067833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454589, 0.178429, -0.872647,
		-0.805089, -0.336798, -0.488260,
		-0.381025, 0.924516, -0.009453,
		34.441044, 35.963776, 40.064999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270969, 35.345146, 39.395630>,  <34.707760, 35.316612, 40.071613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270969, 35.345146, 39.395630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355743, 35.713665, 39.526043>,  <34.406609, 35.934776, 39.604290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355743, 35.713665, 39.526043>,  <34.270969, 35.345146, 39.395630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355743, 35.713665, 39.526043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355275, 0.238159, -0.903914,
		-0.910420, 0.307402, -0.276839,
		0.211933, 0.921295, 0.326037,
		34.419323, 35.990055, 39.623856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870285, 35.792725, 38.962566>,  <34.270969, 35.345146, 39.395630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870285, 35.792725, 38.962566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177235, 35.996613, 39.118164>,  <34.361404, 36.118946, 39.211525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177235, 35.996613, 39.118164>,  <33.870285, 35.792725, 38.962566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177235, 35.996613, 39.118164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362570, 0.155427, -0.918904,
		-0.528841, 0.846187, -0.065537,
		0.767378, 0.509716, 0.388998,
		34.407448, 36.149529, 39.234863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033047, 36.358521, 38.549725>,  <33.870285, 35.792725, 38.962566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033047, 36.358521, 38.549725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379963, 36.332203, 38.747097>,  <34.588112, 36.316414, 38.865520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379963, 36.332203, 38.747097>,  <34.033047, 36.358521, 38.549725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379963, 36.332203, 38.747097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497800, 0.116572, -0.859422,
		-0.000977, 0.991001, 0.133854,
		0.867292, -0.065793, 0.493434,
		34.640152, 36.312466, 38.895126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406952, 36.990116, 38.316925>,  <34.033047, 36.358521, 38.549725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406952, 36.990116, 38.316925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682838, 36.743107, 38.468163>,  <34.848370, 36.594902, 38.558907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682838, 36.743107, 38.468163>,  <34.406952, 36.990116, 38.316925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682838, 36.743107, 38.468163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586202, 0.169699, -0.792193,
		0.425035, 0.768030, 0.479037,
		0.689720, -0.617522, 0.378092,
		34.889755, 36.557850, 38.581589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074562, 37.210575, 38.168896>,  <34.406952, 36.990116, 38.316925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074562, 37.210575, 38.168896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177601, 36.835384, 38.261711>,  <35.239422, 36.610268, 38.317398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177601, 36.835384, 38.261711>,  <35.074562, 37.210575, 38.168896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177601, 36.835384, 38.261711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649761, -0.009586, -0.760078,
		0.715162, 0.346559, 0.606993,
		0.257593, -0.937979, 0.232036,
		35.254879, 36.553989, 38.331322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907166, 37.184071, 38.118137>,  <35.074562, 37.210575, 38.168896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907166, 37.184071, 38.118137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767704, 36.810192, 38.090496>,  <35.684029, 36.585865, 38.073910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.767704, 36.810192, 38.090496>,  <35.907166, 37.184071, 38.118137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767704, 36.810192, 38.090496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618355, -0.173994, -0.766397,
		0.704327, -0.309939, 0.638640,
		-0.348655, -0.934700, -0.069104,
		35.663109, 36.529781, 38.069763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350811, 36.955933, 37.668797>,  <35.907166, 37.184071, 38.118137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350811, 36.955933, 37.668797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133224, 36.620419, 37.678074>,  <36.002674, 36.419109, 37.683640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133224, 36.620419, 37.678074>,  <36.350811, 36.955933, 37.668797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133224, 36.620419, 37.678074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551361, -0.378127, -0.743654,
		0.632538, -0.391733, 0.668162,
		-0.543964, -0.838788, 0.023193,
		35.970036, 36.368782, 37.685032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785126, 36.453144, 37.745735>,  <36.350811, 36.955933, 37.668797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785126, 36.453144, 37.745735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463871, 36.290340, 37.571693>,  <36.271118, 36.192657, 37.467270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463871, 36.290340, 37.571693>,  <36.785126, 36.453144, 37.745735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463871, 36.290340, 37.571693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576029, -0.343911, -0.741563,
		0.152185, -0.846210, 0.510655,
		-0.803138, -0.407007, -0.435103,
		36.222931, 36.168240, 37.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061939, 35.828362, 37.520317>,  <36.785126, 36.453144, 37.745735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061939, 35.828362, 37.520317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739574, 35.927380, 37.305195>,  <36.546158, 35.986790, 37.176121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739574, 35.927380, 37.305195>,  <37.061939, 35.828362, 37.520317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739574, 35.927380, 37.305195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493313, -0.221471, -0.841185,
		-0.327339, -0.943224, 0.056369,
		-0.805910, 0.247545, -0.537801,
		36.497803, 36.001644, 37.143856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633991, 36.237011, 37.722008>,  <37.061939, 35.828362, 37.520317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633991, 36.237011, 37.722008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024620, 36.226601, 37.807457>,  <38.258995, 36.220356, 37.858727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024620, 36.226601, 37.807457>,  <37.633991, 36.237011, 37.722008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024620, 36.226601, 37.807457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213750, -0.001993, 0.976886,
		-0.024989, -0.999660, -0.007507,
		0.976569, -0.026016, 0.213627,
		38.317589, 36.218792, 37.871544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806870, 35.624050, 38.104015>,  <37.633991, 36.237011, 37.722008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806870, 35.624050, 38.104015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094757, 35.889042, 38.187088>,  <38.267490, 36.048035, 38.236931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094757, 35.889042, 38.187088>,  <37.806870, 35.624050, 38.104015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094757, 35.889042, 38.187088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194798, -0.094432, 0.976287,
		0.666378, -0.743108, 0.061084,
		0.719719, 0.662475, 0.207683,
		38.310673, 36.087784, 38.249393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068295, 35.358643, 38.768089>,  <37.806870, 35.624050, 38.104015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068295, 35.358643, 38.768089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220249, 35.724453, 38.712475>,  <38.311420, 35.943939, 38.679108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220249, 35.724453, 38.712475>,  <38.068295, 35.358643, 38.768089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220249, 35.724453, 38.712475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164356, 0.214639, 0.962765,
		0.910316, -0.342889, 0.231846,
		0.379884, 0.914526, -0.139034,
		38.334213, 35.998810, 38.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583118, 35.440292, 39.321594>,  <38.068295, 35.358643, 38.768089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583118, 35.440292, 39.321594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464344, 35.803417, 39.203133>,  <38.393078, 36.021290, 39.132053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464344, 35.803417, 39.203133>,  <38.583118, 35.440292, 39.321594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464344, 35.803417, 39.203133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042574, 0.297251, 0.953850,
		0.953948, 0.295841, -0.049616,
		-0.296936, 0.907811, -0.296157,
		38.375263, 36.075760, 39.114285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934624, 35.974480, 39.751789>,  <38.583118, 35.440292, 39.321594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934624, 35.974480, 39.751789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603752, 36.130932, 39.590405>,  <38.405228, 36.224804, 39.493572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603752, 36.130932, 39.590405>,  <38.934624, 35.974480, 39.751789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603752, 36.130932, 39.590405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271098, 0.351141, 0.896217,
		0.492214, 0.850714, -0.184423,
		-0.827183, 0.391134, -0.403463,
		38.355598, 36.248272, 39.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807270, 36.595711, 40.071487>,  <38.934624, 35.974480, 39.751789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807270, 36.595711, 40.071487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.442982, 36.553604, 39.911732>,  <38.224411, 36.528339, 39.815880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.442982, 36.553604, 39.911732>,  <38.807270, 36.595711, 40.071487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442982, 36.553604, 39.911732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408137, 0.377770, 0.831092,
		0.063387, 0.919895, -0.387007,
		-0.910718, -0.105271, -0.399389,
		38.169765, 36.522022, 39.791916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462170, 37.167374, 40.338188>,  <38.807270, 36.595711, 40.071487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462170, 37.167374, 40.338188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184887, 36.900719, 40.228603>,  <38.018517, 36.740726, 40.162853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184887, 36.900719, 40.228603>,  <38.462170, 37.167374, 40.338188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184887, 36.900719, 40.228603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530429, 0.214522, 0.820138,
		-0.487962, 0.713846, -0.502311,
		-0.693209, -0.666636, -0.273966,
		37.976925, 36.700729, 40.146412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032288, 37.477097, 40.635754>,  <38.462170, 37.167374, 40.338188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032288, 37.477097, 40.635754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898396, 37.103069, 40.589085>,  <37.818062, 36.878654, 40.561085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898396, 37.103069, 40.589085>,  <38.032288, 37.477097, 40.635754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898396, 37.103069, 40.589085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438957, 0.045166, 0.897372,
		-0.833832, 0.351588, -0.425571,
		-0.334726, -0.935065, -0.116671,
		37.797977, 36.822552, 40.554085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395462, 37.477821, 40.875957>,  <38.032288, 37.477097, 40.635754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395462, 37.477821, 40.875957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484379, 37.087906, 40.883633>,  <37.537731, 36.853958, 40.888237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484379, 37.087906, 40.883633>,  <37.395462, 37.477821, 40.875957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484379, 37.087906, 40.883633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329454, -0.056577, 0.942475,
		-0.917630, -0.215831, -0.333725,
		0.222297, -0.974790, 0.019190,
		37.551067, 36.795467, 40.889389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779022, 37.128262, 41.086124>,  <37.395462, 37.477821, 40.875957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779022, 37.128262, 41.086124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082561, 36.883873, 41.176331>,  <37.264687, 36.737240, 41.230453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082561, 36.883873, 41.176331>,  <36.779022, 37.128262, 41.086124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082561, 36.883873, 41.176331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351292, -0.092424, 0.931693,
		-0.548398, -0.786237, -0.284767,
		0.758850, -0.610974, 0.225514,
		37.310215, 36.700581, 41.243984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454769, 36.451065, 41.366039>,  <36.779022, 37.128262, 41.086124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454769, 36.451065, 41.366039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835369, 36.457573, 41.488930>,  <37.063728, 36.461479, 41.562664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835369, 36.457573, 41.488930>,  <36.454769, 36.451065, 41.366039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835369, 36.457573, 41.488930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296467, -0.218345, 0.929749,
		0.082209, -0.975736, -0.202931,
		0.951499, 0.016271, 0.307224,
		37.120819, 36.462456, 41.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679153, 35.792084, 41.732353>,  <36.454769, 36.451065, 41.366039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679153, 35.792084, 41.732353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941208, 36.056206, 41.879211>,  <37.098438, 36.214680, 41.967327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941208, 36.056206, 41.879211>,  <36.679153, 35.792084, 41.732353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941208, 36.056206, 41.879211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393834, -0.116238, 0.911802,
		0.644744, -0.741948, 0.183898,
		0.655134, 0.660305, 0.367148,
		37.137749, 36.254295, 41.989357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795197, 35.550919, 42.321785>,  <36.679153, 35.792084, 41.732353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795197, 35.550919, 42.321785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.942245, 35.921150, 42.357922>,  <37.030476, 36.143288, 42.379604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.942245, 35.921150, 42.357922>,  <36.795197, 35.550919, 42.321785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942245, 35.921150, 42.357922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324735, 0.036732, 0.945091,
		0.871435, -0.376777, 0.314071,
		0.367625, 0.925575, 0.090344,
		37.052532, 36.198822, 42.385025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243145, 35.521938, 42.931103>,  <36.795197, 35.550919, 42.321785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243145, 35.521938, 42.931103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104137, 35.889233, 42.855129>,  <37.020733, 36.109608, 42.809547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104137, 35.889233, 42.855129>,  <37.243145, 35.521938, 42.931103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104137, 35.889233, 42.855129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192258, 0.128473, 0.972898,
		0.917750, 0.374620, 0.131891,
		-0.347522, 0.918235, -0.189930,
		36.999882, 36.164703, 42.798149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495899, 35.977486, 43.542843>,  <37.243145, 35.521938, 42.931103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495899, 35.977486, 43.542843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172249, 36.166275, 43.402817>,  <36.978058, 36.279549, 43.318802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172249, 36.166275, 43.402817>,  <37.495899, 35.977486, 43.542843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172249, 36.166275, 43.402817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395033, 0.004155, 0.918658,
		0.435039, 0.881602, 0.183084,
		-0.809130, 0.471976, -0.350069,
		36.929508, 36.307869, 43.297794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317768, 36.444771, 44.096874>,  <37.495899, 35.977486, 43.542843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317768, 36.444771, 44.096874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998558, 36.390888, 43.861927>,  <36.807030, 36.358559, 43.720959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998558, 36.390888, 43.861927>,  <37.317768, 36.444771, 44.096874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998558, 36.390888, 43.861927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597106, 0.045209, 0.800888,
		-0.081334, 0.989853, -0.116515,
		-0.798029, -0.134711, -0.587370,
		36.759148, 36.350475, 43.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818298, 36.814068, 44.422421>,  <37.317768, 36.444771, 44.096874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818298, 36.814068, 44.422421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636951, 36.549713, 44.183193>,  <36.528145, 36.391098, 44.039658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636951, 36.549713, 44.183193>,  <36.818298, 36.814068, 44.422421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636951, 36.549713, 44.183193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750458, -0.078995, 0.656181,
		-0.480907, 0.746315, -0.460155,
		-0.453367, -0.660889, -0.598067,
		36.500942, 36.351448, 44.003773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098774, 37.006493, 44.432030>,  <36.818298, 36.814068, 44.422421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098774, 37.006493, 44.432030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151031, 36.624512, 44.325451>,  <36.182388, 36.395321, 44.261505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151031, 36.624512, 44.325451>,  <36.098774, 37.006493, 44.432030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151031, 36.624512, 44.325451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703434, -0.278669, 0.653853,
		-0.698650, 0.102001, -0.708155,
		0.130647, -0.954955, -0.266443,
		36.190224, 36.338024, 44.245518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.491169, 36.701134, 44.661430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720428, 36.377163, 44.611610>,  <35.857986, 36.182781, 44.581718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720428, 36.377163, 44.611610>,  <35.491169, 36.701134, 44.661430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720428, 36.377163, 44.611610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545606, -0.490582, 0.679443,
		-0.611401, -0.321471, -0.723080,
		0.573152, -0.809929, -0.124546,
		35.892376, 36.134186, 44.574245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980610, 36.123592, 44.730137>,  <35.491169, 36.701134, 44.661430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980610, 36.123592, 44.730137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344719, 35.966904, 44.783733>,  <35.563187, 35.872890, 44.815891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344719, 35.966904, 44.783733>,  <34.980610, 36.123592, 44.730137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344719, 35.966904, 44.783733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400063, -0.749005, 0.528149,
		-0.106529, -0.534365, -0.838514,
		0.910276, -0.391722, 0.133988,
		35.617802, 35.849388, 44.823929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835865, 35.502159, 44.696507>,  <34.980610, 36.123592, 44.730137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835865, 35.502159, 44.696507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191078, 35.504509, 44.880402>,  <35.404205, 35.505920, 44.990738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191078, 35.504509, 44.880402>,  <34.835865, 35.502159, 44.696507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191078, 35.504509, 44.880402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394966, -0.502100, 0.769349,
		0.235355, -0.864790, -0.443562,
		0.888037, 0.005878, 0.459734,
		35.457489, 35.506271, 45.018322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896175, 34.873142, 44.961754>,  <34.835865, 35.502159, 44.696507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896175, 34.873142, 44.961754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146065, 35.099579, 45.176888>,  <35.295998, 35.235439, 45.305969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146065, 35.099579, 45.176888>,  <34.896175, 34.873142, 44.961754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146065, 35.099579, 45.176888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187375, -0.559977, 0.807042,
		0.758031, -0.604955, -0.243760,
		0.624724, 0.566088, 0.537833,
		35.333481, 35.269405, 45.338238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209743, 34.389328, 45.381176>,  <34.896175, 34.873142, 44.961754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209743, 34.389328, 45.381176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282543, 34.744133, 45.550922>,  <35.326221, 34.957016, 45.652771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282543, 34.744133, 45.550922>,  <35.209743, 34.389328, 45.381176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282543, 34.744133, 45.550922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327853, -0.352135, 0.876649,
		0.927032, -0.298678, 0.226722,
		0.181999, 0.887013, 0.424363,
		35.337143, 35.010239, 45.678230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660275, 34.210953, 46.012810>,  <35.209743, 34.389328, 45.381176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660275, 34.210953, 46.012810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457722, 34.554592, 46.042534>,  <35.336189, 34.760777, 46.060368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457722, 34.554592, 46.042534>,  <35.660275, 34.210953, 46.012810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457722, 34.554592, 46.042534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437885, -0.330422, 0.836109,
		0.742854, 0.390855, 0.543507,
		-0.506384, 0.859100, 0.074306,
		35.305805, 34.812321, 46.064827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835728, 34.524319, 46.615253>,  <35.660275, 34.210953, 46.012810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835728, 34.524319, 46.615253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495136, 34.720573, 46.541210>,  <35.290783, 34.838326, 46.496784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495136, 34.720573, 46.541210>,  <35.835728, 34.524319, 46.615253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495136, 34.720573, 46.541210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255590, -0.080070, 0.963464,
		0.457892, 0.867676, 0.193579,
		-0.851475, 0.490639, -0.185106,
		35.239693, 34.867764, 46.485680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803646, 34.942745, 47.126053>,  <35.835728, 34.524319, 46.615253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803646, 34.942745, 47.126053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424545, 34.940716, 46.998466>,  <35.197086, 34.939499, 46.921913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424545, 34.940716, 46.998466>,  <35.803646, 34.942745, 47.126053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424545, 34.940716, 46.998466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312600, -0.184611, 0.931772,
		-0.063612, 0.982798, 0.173380,
		-0.947752, -0.005073, -0.318967,
		35.140221, 34.939194, 46.902775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366005, 35.377010, 47.536793>,  <35.803646, 34.942745, 47.126053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366005, 35.377010, 47.536793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.100018, 35.126465, 47.374073>,  <34.940426, 34.976139, 47.276440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.100018, 35.126465, 47.374073>,  <35.366005, 35.377010, 47.536793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100018, 35.126465, 47.374073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380201, -0.184926, 0.906228,
		-0.642855, 0.757280, -0.115174,
		-0.664970, -0.626362, -0.406799,
		34.900528, 34.938557, 47.252033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718594, 35.594364, 47.750950>,  <35.366005, 35.377010, 47.536793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718594, 35.594364, 47.750950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659561, 35.214123, 47.641720>,  <34.624142, 34.985977, 47.576180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659561, 35.214123, 47.641720>,  <34.718594, 35.594364, 47.750950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659561, 35.214123, 47.641720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386424, -0.198738, 0.900655,
		-0.910438, 0.238444, -0.338006,
		-0.147581, -0.950604, -0.273079,
		34.615288, 34.928940, 47.559795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988308, 35.482525, 47.875893>,  <34.718594, 35.594364, 47.750950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988308, 35.482525, 47.875893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188335, 35.136410, 47.861980>,  <34.308353, 34.928741, 47.853634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188335, 35.136410, 47.861980>,  <33.988308, 35.482525, 47.875893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188335, 35.136410, 47.861980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396562, -0.264520, 0.879072,
		-0.769850, -0.425804, -0.475418,
		0.500070, -0.865286, -0.034783,
		34.338356, 34.876823, 47.851547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471233, 34.984539, 48.031563>,  <33.988308, 35.482525, 47.875893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471233, 34.984539, 48.031563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801743, 34.770664, 48.102425>,  <34.000046, 34.642338, 48.144943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801743, 34.770664, 48.102425>,  <33.471233, 34.984539, 48.031563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801743, 34.770664, 48.102425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434578, -0.405036, 0.804418,
		-0.358353, -0.741659, -0.567032,
		0.826272, -0.534684, 0.177163,
		34.049622, 34.610256, 48.155571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201393, 34.350212, 48.259483>,  <33.471233, 34.984539, 48.031563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201393, 34.350212, 48.259483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585918, 34.350662, 48.369663>,  <33.816635, 34.350933, 48.435772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585918, 34.350662, 48.369663>,  <33.201393, 34.350212, 48.259483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585918, 34.350662, 48.369663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236477, -0.509436, 0.827378,
		0.141253, -0.860508, -0.489463,
		0.961315, 0.001123, 0.275450,
		33.874313, 34.350998, 48.452297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417278, 33.690811, 48.326702>,  <33.201393, 34.350212, 48.259483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417278, 33.690811, 48.326702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635357, 33.914890, 48.576164>,  <33.766205, 34.049339, 48.725842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635357, 33.914890, 48.576164>,  <33.417278, 33.690811, 48.326702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635357, 33.914890, 48.576164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265846, -0.590007, 0.762376,
		0.795042, -0.581437, -0.172741,
		0.545192, 0.560199, 0.623653,
		33.798916, 34.082951, 48.763260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713154, 33.217709, 48.834961>,  <33.417278, 33.690811, 48.326702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713154, 33.217709, 48.834961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739368, 33.581120, 49.000023>,  <33.755096, 33.799164, 49.099060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739368, 33.581120, 49.000023>,  <33.713154, 33.217709, 48.834961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739368, 33.581120, 49.000023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202109, -0.392890, 0.897101,
		0.977168, -0.142197, 0.157871,
		0.065539, 0.908525, 0.412658,
		33.759029, 33.853676, 49.123821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283611, 33.201378, 49.289787>,  <33.713154, 33.217709, 48.834961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283611, 33.201378, 49.289787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995239, 33.452251, 49.407703>,  <33.822216, 33.602776, 49.478455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995239, 33.452251, 49.407703>,  <34.283611, 33.201378, 49.289787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995239, 33.452251, 49.407703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138565, -0.547244, 0.825423,
		0.679017, 0.554222, 0.481429,
		-0.720927, 0.627186, 0.294792,
		33.778961, 33.640408, 49.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413879, 33.170795, 50.049164>,  <34.283611, 33.201378, 49.289787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413879, 33.170795, 50.049164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061470, 33.353695, 50.000633>,  <33.850025, 33.463436, 49.971516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061470, 33.353695, 50.000633>,  <34.413879, 33.170795, 50.049164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061470, 33.353695, 50.000633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375275, -0.519369, 0.767740,
		0.288037, 0.721927, 0.629171,
		-0.881024, 0.457250, -0.121324,
		33.797161, 33.490871, 49.964237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233376, 33.443607, 50.657509>,  <34.413879, 33.170795, 50.049164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233376, 33.443607, 50.657509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882565, 33.413712, 50.467674>,  <33.672077, 33.395775, 50.353775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882565, 33.413712, 50.467674>,  <34.233376, 33.443607, 50.657509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882565, 33.413712, 50.467674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394374, -0.452153, 0.800017,
		-0.274381, 0.888803, 0.367076,
		-0.877032, -0.074744, -0.474583,
		33.619453, 33.391289, 50.325298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729313, 33.695858, 51.067966>,  <34.233376, 33.443607, 50.657509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729313, 33.695858, 51.067966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537758, 33.456463, 50.811069>,  <33.422825, 33.312824, 50.656929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537758, 33.456463, 50.811069>,  <33.729313, 33.695858, 51.067966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537758, 33.456463, 50.811069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458092, -0.453725, 0.764386,
		-0.748880, 0.660260, -0.056882,
		-0.478885, -0.598490, -0.642245,
		33.394093, 33.276917, 50.618397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094181, 33.614113, 51.431469>,  <33.729313, 33.695858, 51.067966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094181, 33.614113, 51.431469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108395, 33.326099, 51.154255>,  <33.116920, 33.153294, 50.987926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108395, 33.326099, 51.154255>,  <33.094181, 33.614113, 51.431469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108395, 33.326099, 51.154255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454353, -0.629294, 0.630518,
		-0.890113, 0.292479, -0.349507,
		0.035530, -0.720032, -0.693031,
		33.119053, 33.110088, 50.946346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488899, 33.246090, 51.466110>,  <33.094181, 33.614113, 51.431469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488899, 33.246090, 51.466110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731171, 33.002899, 51.260773>,  <32.876534, 32.856983, 51.137569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731171, 33.002899, 51.260773>,  <32.488899, 33.246090, 51.466110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731171, 33.002899, 51.260773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273168, -0.764800, 0.583490,
		-0.747351, -0.213180, -0.629302,
		0.605678, -0.607977, -0.513340,
		32.912872, 32.820507, 51.106770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188095, 32.485661, 51.287201>,  <32.488899, 33.246090, 51.466110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188095, 32.485661, 51.287201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579758, 32.405045, 51.297333>,  <32.814754, 32.356674, 51.303413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579758, 32.405045, 51.297333>,  <32.188095, 32.485661, 51.287201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579758, 32.405045, 51.297333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185061, -0.833720, 0.520253,
		-0.083732, -0.514095, -0.853637,
		0.979153, -0.201537, 0.025330,
		32.873505, 32.344585, 51.304932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194149, 31.768972, 51.105778>,  <32.188095, 32.485661, 51.287201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194149, 31.768972, 51.105778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510365, 31.879856, 51.324211>,  <32.700092, 31.946386, 51.455269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510365, 31.879856, 51.324211>,  <32.194149, 31.768972, 51.105778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510365, 31.879856, 51.324211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031917, -0.871825, 0.488777,
		0.611580, -0.403826, -0.680364,
		0.790539, 0.277211, 0.546079,
		32.747528, 31.963020, 51.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013832, 31.263000, 51.671074>,  <32.194149, 31.768972, 51.105778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013832, 31.263000, 51.671074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317566, 31.249083, 51.930981>,  <32.499805, 31.240732, 52.086926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317566, 31.249083, 51.930981>,  <32.013832, 31.263000, 51.671074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317566, 31.249083, 51.930981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437940, 0.711226, 0.549877,
		-0.481263, -0.702101, 0.524824,
		0.759338, -0.034794, 0.649765,
		32.545368, 31.238644, 52.125912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373283, 31.621668, 51.612774>,  <32.013832, 31.263000, 51.671074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373283, 31.621668, 51.612774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004835, 31.601793, 51.458340>,  <30.783766, 31.589869, 51.365677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004835, 31.601793, 51.458340>,  <31.373283, 31.621668, 51.612774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004835, 31.601793, 51.458340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331041, 0.421840, -0.844075,
		0.204806, -0.905308, -0.372119,
		-0.921122, -0.049685, -0.386089,
		30.728498, 31.586887, 51.342514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431431, 31.238949, 51.102978>,  <31.373283, 31.621668, 51.612774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431431, 31.238949, 51.102978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.118280, 31.481146, 51.045727>,  <30.930391, 31.626465, 51.011375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.118280, 31.481146, 51.045727>,  <31.431431, 31.238949, 51.102978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118280, 31.481146, 51.045727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393637, 0.303876, -0.867588,
		-0.481827, -0.735552, -0.476242,
		-0.782874, 0.605494, -0.143125,
		30.883417, 31.662794, 51.002789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201363, 31.032621, 50.386620>,  <31.431431, 31.238949, 51.102978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201363, 31.032621, 50.386620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991093, 31.362988, 50.468136>,  <30.864931, 31.561207, 50.517044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991093, 31.362988, 50.468136>,  <31.201363, 31.032621, 50.386620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991093, 31.362988, 50.468136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119875, 0.309087, -0.943448,
		-0.842197, -0.471518, -0.261486,
		-0.525675, 0.825915, 0.203789,
		30.833389, 31.610762, 50.529274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685793, 31.074978, 49.830452>,  <31.201363, 31.032621, 50.386620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685793, 31.074978, 49.830452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.783018, 31.426556, 49.994587>,  <30.841354, 31.637503, 50.093067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.783018, 31.426556, 49.994587>,  <30.685793, 31.074978, 49.830452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783018, 31.426556, 49.994587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227589, 0.359542, -0.904949,
		-0.942933, 0.313351, -0.112646,
		0.243065, 0.878943, 0.410339,
		30.855938, 31.690239, 50.117687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483976, 31.580183, 49.356354>,  <30.685793, 31.074978, 49.830452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483976, 31.580183, 49.356354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.733232, 31.808304, 49.570438>,  <30.882786, 31.945177, 49.698891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.733232, 31.808304, 49.570438>,  <30.483976, 31.580183, 49.356354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733232, 31.808304, 49.570438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341029, 0.417712, -0.842149,
		-0.703845, 0.707299, 0.065803,
		0.623139, 0.570302, 0.535214,
		30.920174, 31.979395, 49.731003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503746, 32.141102, 48.987202>,  <30.483976, 31.580183, 49.356354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503746, 32.141102, 48.987202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.813087, 32.245285, 49.218403>,  <30.998693, 32.307796, 49.357124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.813087, 32.245285, 49.218403>,  <30.503746, 32.141102, 48.987202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813087, 32.245285, 49.218403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425157, 0.463235, -0.777596,
		-0.470280, 0.847098, 0.247509,
		0.773355, 0.260458, 0.578000,
		31.045094, 32.323421, 49.391804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631683, 32.931919, 48.945816>,  <30.503746, 32.141102, 48.987202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631683, 32.931919, 48.945816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967392, 32.749767, 49.064648>,  <31.168818, 32.640476, 49.135944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967392, 32.749767, 49.064648>,  <30.631683, 32.931919, 48.945816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967392, 32.749767, 49.064648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528223, 0.553405, -0.643990,
		0.128857, 0.697404, 0.704999,
		0.839271, -0.455379, 0.297075,
		31.219173, 32.613155, 49.153770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166063, 33.438236, 49.011623>,  <30.631683, 32.931919, 48.945816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166063, 33.438236, 49.011623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371532, 33.099857, 48.954327>,  <31.494814, 32.896832, 48.919949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371532, 33.099857, 48.954327>,  <31.166063, 33.438236, 49.011623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371532, 33.099857, 48.954327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545709, 0.450963, -0.706282,
		0.662073, 0.284629, 0.693286,
		0.513674, -0.845943, -0.143246,
		31.525635, 32.846073, 48.911354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912216, 33.602543, 48.956173>,  <31.166063, 33.438236, 49.011623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912216, 33.602543, 48.956173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867964, 33.255264, 48.762680>,  <31.841412, 33.046898, 48.646584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867964, 33.255264, 48.762680>,  <31.912216, 33.602543, 48.956173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867964, 33.255264, 48.762680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589383, 0.334586, -0.735309,
		0.800242, -0.366452, 0.474684,
		-0.110633, -0.868196, -0.483731,
		31.834774, 32.994804, 48.617561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551815, 33.422455, 48.633766>,  <31.912216, 33.602543, 48.956173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551815, 33.422455, 48.633766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306755, 33.186947, 48.422855>,  <32.159721, 33.045643, 48.296310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306755, 33.186947, 48.422855>,  <32.551815, 33.422455, 48.633766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306755, 33.186947, 48.422855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481102, 0.251487, -0.839818,
		0.627061, -0.768183, 0.129185,
		-0.612646, -0.588769, -0.527272,
		32.122963, 33.010315, 48.264675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999538, 33.010460, 48.170322>,  <32.551815, 33.422455, 48.633766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999538, 33.010460, 48.170322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637981, 33.014927, 47.999279>,  <32.421047, 33.017609, 47.896652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637981, 33.014927, 47.999279>,  <32.999538, 33.010460, 48.170322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637981, 33.014927, 47.999279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398033, 0.388070, -0.831247,
		0.156654, -0.921562, -0.355222,
		-0.903897, 0.011171, -0.427605,
		32.366814, 33.018280, 47.870998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212227, 32.825645, 47.547039>,  <32.999538, 33.010460, 48.170322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212227, 32.825645, 47.547039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834934, 32.949333, 47.498550>,  <32.608559, 33.023548, 47.469460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834934, 32.949333, 47.498550>,  <33.212227, 32.825645, 47.547039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834934, 32.949333, 47.498550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255845, 0.443728, -0.858865,
		-0.211792, -0.841122, -0.497652,
		-0.943233, 0.309223, -0.121219,
		32.551964, 33.042099, 47.462185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058205, 32.629684, 46.914455>,  <33.212227, 32.825645, 47.547039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058205, 32.629684, 46.914455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797359, 32.922150, 46.994602>,  <32.640854, 33.097630, 47.042690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.797359, 32.922150, 46.994602>,  <33.058205, 32.629684, 46.914455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797359, 32.922150, 46.994602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145887, 0.380384, -0.913249,
		-0.743954, -0.566309, -0.354721,
		-0.652112, 0.731165, 0.200371,
		32.601727, 33.141499, 47.054714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672821, 32.682209, 46.260250>,  <33.058205, 32.629684, 46.914455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672821, 32.682209, 46.260250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.593876, 33.029316, 46.442692>,  <32.546509, 33.237579, 46.552155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.593876, 33.029316, 46.442692>,  <32.672821, 32.682209, 46.260250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593876, 33.029316, 46.442692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155797, 0.487105, -0.859335,
		-0.967871, -0.098544, -0.231333,
		-0.197365, 0.867766, 0.456102,
		32.534668, 33.289646, 46.579521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308186, 32.898148, 45.785656>,  <32.672821, 32.682209, 46.260250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308186, 32.898148, 45.785656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.422081, 33.214287, 46.002644>,  <32.490417, 33.403969, 46.132835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.422081, 33.214287, 46.002644>,  <32.308186, 32.898148, 45.785656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422081, 33.214287, 46.002644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139793, 0.525612, -0.839161,
		-0.948359, 0.314772, 0.039175,
		0.284735, 0.790349, 0.542471,
		32.507500, 33.451393, 46.165386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848068, 33.518948, 45.583210>,  <32.308186, 32.898148, 45.785656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848068, 33.518948, 45.583210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200371, 33.634075, 45.733635>,  <32.411755, 33.703152, 45.823891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200371, 33.634075, 45.733635>,  <31.848068, 33.518948, 45.583210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200371, 33.634075, 45.733635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122514, 0.628589, -0.768028,
		-0.457444, 0.722520, 0.518372,
		0.880758, 0.287822, 0.376063,
		32.464600, 33.720421, 45.846455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882557, 34.185833, 45.478840>,  <31.848068, 33.518948, 45.583210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882557, 34.185833, 45.478840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267391, 34.128208, 45.571480>,  <32.498291, 34.093636, 45.627064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267391, 34.128208, 45.571480>,  <31.882557, 34.185833, 45.478840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267391, 34.128208, 45.571480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253823, 0.783668, -0.566955,
		-0.099821, 0.604244, 0.790522,
		0.962086, -0.144058, 0.231597,
		32.556019, 34.084991, 45.640961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056244, 34.880276, 45.702309>,  <31.882557, 34.185833, 45.478840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056244, 34.880276, 45.702309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.354546, 34.639339, 45.588440>,  <32.533527, 34.494778, 45.520119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.354546, 34.639339, 45.588440>,  <32.056244, 34.880276, 45.702309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354546, 34.639339, 45.588440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268940, 0.663105, -0.698543,
		0.609530, 0.444380, 0.656506,
		0.745751, -0.602343, -0.284671,
		32.578270, 34.458637, 45.503040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639294, 35.386204, 45.708099>,  <32.056244, 34.880276, 45.702309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639294, 35.386204, 45.708099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731094, 35.062004, 45.492535>,  <32.786175, 34.867485, 45.363197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731094, 35.062004, 45.492535>,  <32.639294, 35.386204, 45.708099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731094, 35.062004, 45.492535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268862, 0.584940, -0.765219,
		0.935436, 0.030729, 0.352158,
		0.229506, -0.810495, -0.538912,
		32.799946, 34.818855, 45.330860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264271, 35.552551, 45.354301>,  <32.639294, 35.386204, 45.708099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264271, 35.552551, 45.354301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127911, 35.240402, 45.144615>,  <33.046093, 35.053112, 45.018803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127911, 35.240402, 45.144615>,  <33.264271, 35.552551, 45.354301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127911, 35.240402, 45.144615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174919, 0.495225, -0.850973,
		0.923683, -0.381792, -0.032320,
		-0.340901, -0.780376, -0.524214,
		33.025639, 35.006290, 44.987350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.366837, 32.787628, 44.113686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120251, 33.052326, 43.943008>,  <41.972301, 33.211143, 43.840603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120251, 33.052326, 43.943008>,  <42.366837, 32.787628, 44.113686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120251, 33.052326, 43.943008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618440, 0.071515, -0.782571,
		-0.487346, -0.746312, -0.453335,
		-0.616462, 0.661743, -0.426696,
		41.935310, 33.250851, 43.814999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357861, 32.526344, 43.468983>,  <42.366837, 32.787628, 44.113686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357861, 32.526344, 43.468983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.234921, 32.906944, 43.463493>,  <42.161156, 33.135303, 43.460197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.234921, 32.906944, 43.463493>,  <42.357861, 32.526344, 43.468983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234921, 32.906944, 43.463493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685123, 0.211246, -0.697124,
		-0.660413, -0.223663, -0.716819,
		-0.307346, 0.951499, -0.013727,
		42.142715, 33.192394, 43.459373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302311, 32.753529, 42.772118>,  <42.357861, 32.526344, 43.468983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302311, 32.753529, 42.772118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.342606, 33.108818, 42.951412>,  <42.366783, 33.321991, 43.058990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.342606, 33.108818, 42.951412>,  <42.302311, 32.753529, 42.772118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342606, 33.108818, 42.951412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646577, 0.283976, -0.708023,
		-0.756169, 0.361142, -0.545697,
		0.100732, 0.888220, 0.448240,
		42.372826, 33.375282, 43.085884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221775, 33.200817, 42.135647>,  <42.302311, 32.753529, 42.772118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221775, 33.200817, 42.135647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378216, 33.411510, 42.437531>,  <42.472080, 33.537926, 42.618660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378216, 33.411510, 42.437531>,  <42.221775, 33.200817, 42.135647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378216, 33.411510, 42.437531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585614, 0.490182, -0.645583,
		-0.709998, 0.694458, -0.116752,
		0.391101, 0.526735, 0.754712,
		42.495544, 33.569530, 42.663944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182930, 33.956158, 41.985271>,  <42.221775, 33.200817, 42.135647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182930, 33.956158, 41.985271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480312, 33.935970, 42.252022>,  <42.658741, 33.923859, 42.412071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480312, 33.935970, 42.252022>,  <42.182930, 33.956158, 41.985271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480312, 33.935970, 42.252022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543894, 0.625864, -0.558993,
		-0.389162, 0.778297, 0.492754,
		0.743460, -0.050467, 0.666873,
		42.703350, 33.920830, 42.452084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425873, 34.735954, 42.089352>,  <42.182930, 33.956158, 41.985271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425873, 34.735954, 42.089352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704952, 34.473953, 42.205406>,  <42.872398, 34.316753, 42.275040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.704952, 34.473953, 42.205406>,  <42.425873, 34.735954, 42.089352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704952, 34.473953, 42.205406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676226, 0.468448, -0.568574,
		0.236503, 0.592894, 0.769768,
		0.697700, -0.655006, 0.290141,
		42.914261, 34.277451, 42.292450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029526, 35.132324, 42.162746>,  <42.425873, 34.735954, 42.089352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029526, 35.132324, 42.162746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146755, 34.754803, 42.101627>,  <43.217094, 34.528290, 42.064957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146755, 34.754803, 42.101627>,  <43.029526, 35.132324, 42.162746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146755, 34.754803, 42.101627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655970, 0.314760, -0.686024,
		0.695563, 0.100831, 0.711354,
		0.293078, -0.943800, -0.152793,
		43.234680, 34.471664, 42.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760662, 35.215641, 42.085369>,  <43.029526, 35.132324, 42.162746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760662, 35.215641, 42.085369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710098, 34.843487, 41.947735>,  <43.679760, 34.620193, 41.865154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710098, 34.843487, 41.947735>,  <43.760662, 35.215641, 42.085369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710098, 34.843487, 41.947735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679349, 0.171564, -0.713478,
		0.722845, -0.323949, 0.610371,
		-0.126413, -0.930389, -0.344088,
		43.672173, 34.564369, 41.844509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476143, 34.841118, 42.100563>,  <43.760662, 35.215641, 42.085369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476143, 34.841118, 42.100563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211136, 34.712879, 41.829773>,  <44.052132, 34.635937, 41.667301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211136, 34.712879, 41.829773>,  <44.476143, 34.841118, 42.100563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211136, 34.712879, 41.829773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692205, 0.083313, -0.716876,
		0.286226, -0.943546, 0.166721,
		-0.662515, -0.320594, -0.676973,
		44.012383, 34.616699, 41.626682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971943, 34.675896, 41.620121>,  <44.476143, 34.841118, 42.100563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971943, 34.675896, 41.620121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.616600, 34.645912, 41.438927>,  <44.403393, 34.627922, 41.330212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.616600, 34.645912, 41.438927>,  <44.971943, 34.675896, 41.620121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616600, 34.645912, 41.438927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453033, 0.017356, -0.891325,
		0.074681, -0.997035, 0.018544,
		-0.888360, -0.074966, -0.452985,
		44.350090, 34.623425, 41.303032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089012, 34.153553, 41.117474>,  <44.971943, 34.675896, 41.620121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089012, 34.153553, 41.117474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786777, 34.378063, 40.982388>,  <44.605434, 34.512772, 40.901337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786777, 34.378063, 40.982388>,  <45.089012, 34.153553, 41.117474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786777, 34.378063, 40.982388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469600, 0.104703, -0.876649,
		-0.456683, -0.820978, -0.342688,
		-0.755590, 0.561277, -0.337715,
		44.560101, 34.546448, 40.881073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907448, 33.879810, 40.387257>,  <45.089012, 34.153553, 41.117474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907448, 33.879810, 40.387257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764835, 34.252155, 40.419224>,  <44.679268, 34.475563, 40.438404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764835, 34.252155, 40.419224>,  <44.907448, 33.879810, 40.387257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764835, 34.252155, 40.419224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178786, 0.151929, -0.972087,
		-0.917019, -0.332288, -0.220592,
		-0.356527, 0.930861, 0.079913,
		44.657879, 34.531414, 40.443199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403278, 33.891003, 39.842487>,  <44.907448, 33.879810, 40.387257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403278, 33.891003, 39.842487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490284, 34.275303, 39.911354>,  <44.542488, 34.505882, 39.952675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490284, 34.275303, 39.911354>,  <44.403278, 33.891003, 39.842487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490284, 34.275303, 39.911354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003907, 0.175531, -0.984466,
		-0.976048, 0.214812, 0.034427,
		0.217519, 0.960752, 0.172166,
		44.555538, 34.563530, 39.963005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957123, 34.248795, 39.457592>,  <44.403278, 33.891003, 39.842487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957123, 34.248795, 39.457592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224960, 34.537231, 39.528786>,  <44.385662, 34.710293, 39.571503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224960, 34.537231, 39.528786>,  <43.957123, 34.248795, 39.457592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224960, 34.537231, 39.528786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123996, 0.344796, -0.930452,
		-0.732308, 0.600952, 0.320284,
		0.669590, 0.721091, 0.177981,
		44.425838, 34.753559, 39.582180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630775, 34.947109, 39.248363>,  <43.957123, 34.248795, 39.457592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630775, 34.947109, 39.248363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030415, 34.958656, 39.260834>,  <44.270199, 34.965584, 39.268318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030415, 34.958656, 39.260834>,  <43.630775, 34.947109, 39.248363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030415, 34.958656, 39.260834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023898, 0.224916, -0.974085,
		-0.035134, 0.973950, 0.224022,
		0.999097, 0.028870, 0.031178,
		44.330143, 34.967316, 39.270187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791168, 35.391525, 38.715199>,  <43.630775, 34.947109, 39.248363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791168, 35.391525, 38.715199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143227, 35.212299, 38.777912>,  <44.354462, 35.104763, 38.815540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.143227, 35.212299, 38.777912>,  <43.791168, 35.391525, 38.715199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143227, 35.212299, 38.777912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280298, 0.223977, -0.933417,
		0.383116, 0.865489, 0.322724,
		0.880145, -0.448066, 0.156785,
		44.407269, 35.077881, 38.824947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271030, 35.846107, 38.598660>,  <43.791168, 35.391525, 38.715199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271030, 35.846107, 38.598660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450890, 35.491032, 38.559017>,  <44.558807, 35.277985, 38.535233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450890, 35.491032, 38.559017>,  <44.271030, 35.846107, 38.598660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450890, 35.491032, 38.559017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123707, 0.171781, -0.977337,
		0.884596, 0.427200, 0.187055,
		0.449651, -0.887689, -0.099110,
		44.585785, 35.224724, 38.529285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820309, 36.014847, 38.125717>,  <44.271030, 35.846107, 38.598660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820309, 36.014847, 38.125717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834385, 35.615326, 38.112064>,  <44.842831, 35.375614, 38.103870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834385, 35.615326, 38.112064>,  <44.820309, 36.014847, 38.125717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834385, 35.615326, 38.112064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162518, 0.039420, -0.985918,
		0.986078, 0.029148, 0.163710,
		0.035191, -0.998797, -0.034134,
		44.844944, 35.315685, 38.101826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332832, 35.853130, 37.700191>,  <44.820309, 36.014847, 38.125717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332832, 35.853130, 37.700191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.146404, 35.499325, 37.708385>,  <45.034546, 35.287041, 37.713303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.146404, 35.499325, 37.708385>,  <45.332832, 35.853130, 37.700191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146404, 35.499325, 37.708385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194678, -0.125110, -0.972856,
		0.863064, -0.449431, 0.230505,
		-0.466070, -0.884511, 0.020484,
		45.006584, 35.233971, 37.714531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820904, 35.342003, 37.354420>,  <45.332832, 35.853130, 37.700191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820904, 35.342003, 37.354420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453777, 35.183201, 37.354057>,  <45.233501, 35.087917, 37.353840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.453777, 35.183201, 37.354057>,  <45.820904, 35.342003, 37.354420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453777, 35.183201, 37.354057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095697, -0.219018, -0.971017,
		0.385305, -0.891299, 0.239010,
		-0.917814, -0.397010, -0.000906,
		45.178432, 35.064098, 37.353786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836040, 34.697853, 36.994400>,  <45.820904, 35.342003, 37.354420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836040, 34.697853, 36.994400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470062, 34.857597, 36.971111>,  <45.250477, 34.953442, 36.957138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470062, 34.857597, 36.971111>,  <45.836040, 34.697853, 36.994400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470062, 34.857597, 36.971111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005791, -0.131253, -0.991332,
		-0.403539, -0.907351, 0.117777,
		-0.914944, 0.399359, -0.058220,
		45.195580, 34.977406, 36.953644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843697, 35.101673, 36.394867>,  <45.836040, 34.697853, 36.994400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843697, 35.101673, 36.394867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563602, 34.853607, 36.253403>,  <45.395546, 34.704769, 36.168526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563602, 34.853607, 36.253403>,  <45.843697, 35.101673, 36.394867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563602, 34.853607, 36.253403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709612, 0.550300, 0.440024,
		-0.078269, 0.559078, -0.825413,
		-0.700232, -0.620163, -0.353657,
		45.353535, 34.667557, 36.147305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366360, 34.573151, 36.497692>,  <45.843697, 35.101673, 36.394867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366360, 34.573151, 36.497692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.526939, 34.273979, 36.286240>,  <46.623287, 34.094479, 36.159370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.526939, 34.273979, 36.286240>,  <46.366360, 34.573151, 36.497692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526939, 34.273979, 36.286240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587553, -0.653069, 0.477789,
		-0.702581, 0.118789, -0.701619,
		0.401449, -0.747924, -0.528629,
		46.647373, 34.049603, 36.127651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861427, 34.144547, 36.275867>,  <46.366360, 34.573151, 36.497692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861427, 34.144547, 36.275867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.194115, 33.923710, 36.299324>,  <46.393726, 33.791206, 36.313396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.194115, 33.923710, 36.299324>,  <45.861427, 34.144547, 36.275867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194115, 33.923710, 36.299324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479414, -0.660899, 0.577385,
		-0.280017, -0.508333, -0.814364,
		0.831716, -0.552095, 0.058639,
		46.443630, 33.758080, 36.316917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595730, 33.525105, 36.089779>,  <45.861427, 34.144547, 36.275867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595730, 33.525105, 36.089779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.934002, 33.476627, 36.297676>,  <46.136967, 33.447540, 36.422417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.934002, 33.476627, 36.297676>,  <45.595730, 33.525105, 36.089779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934002, 33.476627, 36.297676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404175, -0.781423, 0.475417,
		0.348523, -0.612119, -0.709818,
		0.845680, -0.121197, 0.519747,
		46.187706, 33.440269, 36.453602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611603, 32.785759, 36.058708>,  <45.595730, 33.525105, 36.089779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611603, 32.785759, 36.058708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.873898, 32.906563, 36.335491>,  <46.031273, 32.979046, 36.501560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.873898, 32.906563, 36.335491>,  <45.611603, 32.785759, 36.058708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873898, 32.906563, 36.335491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131268, -0.856942, 0.498417,
		0.743492, -0.417661, -0.522282,
		0.655735, 0.302010, 0.691955,
		46.070618, 32.997166, 36.543079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006077, 32.092007, 36.268314>,  <45.611603, 32.785759, 36.058708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006077, 32.092007, 36.268314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.053692, 32.376682, 36.545250>,  <46.082260, 32.547485, 36.711411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.053692, 32.376682, 36.545250>,  <46.006077, 32.092007, 36.268314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053692, 32.376682, 36.545250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314576, -0.634341, 0.706154,
		0.941739, -0.301854, 0.148367,
		0.119040, 0.711685, 0.692340,
		46.089405, 32.590187, 36.752953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103077, 31.664000, 36.882751>,  <46.006077, 32.092007, 36.268314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103077, 31.664000, 36.882751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988609, 32.025944, 37.008823>,  <45.919930, 32.243111, 37.084465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988609, 32.025944, 37.008823>,  <46.103077, 31.664000, 36.882751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988609, 32.025944, 37.008823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571056, -0.425189, 0.702217,
		0.769419, 0.020967, 0.638400,
		-0.286164, 0.904861, 0.315175,
		45.902760, 32.297401, 37.103374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012634, 31.604506, 37.595417>,  <46.103077, 31.664000, 36.882751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012634, 31.604506, 37.595417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796402, 31.928705, 37.505203>,  <45.666664, 32.123226, 37.451073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796402, 31.928705, 37.505203>,  <46.012634, 31.604506, 37.595417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796402, 31.928705, 37.505203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594714, -0.178529, 0.783864,
		0.595056, 0.557870, 0.578523,
		-0.540578, 0.810499, -0.225539,
		45.634228, 32.171856, 37.437542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915195, 31.914726, 38.165298>,  <46.012634, 31.604506, 37.595417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915195, 31.914726, 38.165298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.601513, 32.037399, 37.949532>,  <45.413303, 32.111004, 37.820072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.601513, 32.037399, 37.949532>,  <45.915195, 31.914726, 38.165298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601513, 32.037399, 37.949532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607161, -0.199966, 0.769005,
		0.127978, 0.930569, 0.343021,
		-0.784205, 0.306685, -0.539414,
		45.366253, 32.129406, 37.787708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567104, 32.322865, 38.636303>,  <45.915195, 31.914726, 38.165298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567104, 32.322865, 38.636303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291801, 32.281334, 38.349102>,  <45.126621, 32.256416, 38.176781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291801, 32.281334, 38.349102>,  <45.567104, 32.322865, 38.636303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291801, 32.281334, 38.349102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709831, -0.107994, 0.696044,
		-0.149808, 0.988715, 0.000628,
		-0.688257, -0.103827, -0.717999,
		45.085323, 32.250187, 38.133701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076843, 32.752029, 38.823250>,  <45.567104, 32.322865, 38.636303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076843, 32.752029, 38.823250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922863, 32.476589, 38.577438>,  <44.830475, 32.311325, 38.429951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922863, 32.476589, 38.577438>,  <45.076843, 32.752029, 38.823250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922863, 32.476589, 38.577438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680684, -0.237830, 0.692897,
		-0.623281, 0.685031, -0.377166,
		-0.384955, -0.688600, -0.614524,
		44.807377, 32.270008, 38.393082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363510, 32.829025, 38.912193>,  <45.076843, 32.752029, 38.823250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363510, 32.829025, 38.912193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391022, 32.471436, 38.735069>,  <44.407528, 32.256882, 38.628796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.391022, 32.471436, 38.735069>,  <44.363510, 32.829025, 38.912193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391022, 32.471436, 38.735069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737100, -0.344639, 0.581298,
		-0.672275, 0.286413, -0.682652,
		0.068778, -0.893975, -0.442807,
		44.411655, 32.203243, 38.602226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641708, 32.618347, 38.570938>,  <44.363510, 32.829025, 38.912193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641708, 32.618347, 38.570938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870720, 32.306942, 38.673801>,  <44.008129, 32.120098, 38.735519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870720, 32.306942, 38.673801>,  <43.641708, 32.618347, 38.570938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870720, 32.306942, 38.673801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713497, -0.318590, 0.624037,
		-0.403894, -0.540759, -0.737868,
		0.572531, -0.778512, 0.257154,
		44.042480, 32.073387, 38.750950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162647, 32.085346, 38.688549>,  <43.641708, 32.618347, 38.570938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162647, 32.085346, 38.688549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498535, 31.944485, 38.853889>,  <43.700066, 31.859968, 38.953094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498535, 31.944485, 38.853889>,  <43.162647, 32.085346, 38.688549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498535, 31.944485, 38.853889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530941, -0.372770, 0.761015,
		-0.113905, -0.858506, -0.499994,
		0.839718, -0.352151, 0.413356,
		43.750450, 31.838839, 38.977898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027302, 31.471092, 38.735306>,  <43.162647, 32.085346, 38.688549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027302, 31.471092, 38.735306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.327305, 31.498184, 38.998486>,  <43.507309, 31.514439, 39.156391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.327305, 31.498184, 38.998486>,  <43.027302, 31.471092, 38.735306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327305, 31.498184, 38.998486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571249, -0.435085, 0.695971,
		0.333402, -0.897838, -0.287628,
		0.750012, 0.067731, 0.657947,
		43.552307, 31.518503, 39.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885933, 31.027153, 39.165222>,  <43.027302, 31.471092, 38.735306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885933, 31.027153, 39.165222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135258, 31.222805, 39.409264>,  <43.284855, 31.340197, 39.555691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135258, 31.222805, 39.409264>,  <42.885933, 31.027153, 39.165222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135258, 31.222805, 39.409264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400099, -0.470865, 0.786261,
		0.671862, -0.734191, -0.097797,
		0.623315, 0.489131, 0.610105,
		43.322254, 31.369545, 39.592297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190197, 30.569458, 39.603981>,  <42.885933, 31.027153, 39.165222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190197, 30.569458, 39.603981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209126, 30.919317, 39.796959>,  <43.220482, 31.129232, 39.912746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209126, 30.919317, 39.796959>,  <43.190197, 30.569458, 39.603981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209126, 30.919317, 39.796959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616250, -0.354551, 0.703229,
		0.786128, -0.330582, 0.522225,
		0.047320, 0.874648, 0.482443,
		43.223320, 31.181711, 39.941692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443176, 30.439861, 40.302464>,  <43.190197, 30.569458, 39.603981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443176, 30.439861, 40.302464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281090, 30.802364, 40.350632>,  <43.183838, 31.019865, 40.379532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281090, 30.802364, 40.350632>,  <43.443176, 30.439861, 40.302464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281090, 30.802364, 40.350632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483426, -0.324204, 0.813137,
		0.775952, 0.271279, 0.569479,
		-0.405214, 0.906256, 0.120424,
		43.159527, 31.074242, 40.386761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469486, 30.603619, 41.065392>,  <43.443176, 30.439861, 40.302464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469486, 30.603619, 41.065392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.191238, 30.838915, 40.900429>,  <43.024288, 30.980093, 40.801449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.191238, 30.838915, 40.900429>,  <43.469486, 30.603619, 41.065392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191238, 30.838915, 40.900429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619965, -0.201491, 0.758317,
		0.362976, 0.783182, 0.504851,
		-0.695623, 0.588241, -0.412409,
		42.982552, 31.015387, 40.776707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162613, 31.041552, 41.624352>,  <43.469486, 30.603619, 41.065392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162613, 31.041552, 41.624352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902596, 31.045364, 41.320415>,  <42.746586, 31.047651, 41.138054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902596, 31.045364, 41.320415>,  <43.162613, 31.041552, 41.624352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902596, 31.045364, 41.320415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756913, -0.096681, 0.646324,
		-0.067301, 0.995269, 0.070062,
		-0.650041, 0.009533, -0.759840,
		42.707584, 31.048223, 41.092464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577156, 31.363438, 41.881424>,  <43.162613, 31.041552, 41.624352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577156, 31.363438, 41.881424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416775, 31.197998, 41.554459>,  <42.320545, 31.098734, 41.358280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416775, 31.197998, 41.554459>,  <42.577156, 31.363438, 41.881424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416775, 31.197998, 41.554459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810115, -0.256522, 0.527171,
		-0.427723, 0.873575, -0.232207,
		-0.400957, -0.413598, -0.817417,
		42.296486, 31.073919, 41.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.913982, 37.307026, 42.208771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685204, 36.981064, 42.171238>,  <37.547935, 36.785488, 42.148720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685204, 36.981064, 42.171238>,  <37.913982, 37.307026, 42.208771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685204, 36.981064, 42.171238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374065, -0.157305, -0.913964,
		0.730032, -0.557842, 0.394798,
		-0.571952, -0.814903, -0.093831,
		37.513618, 36.736591, 42.143089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345562, 36.642902, 42.020298>,  <37.913982, 37.307026, 42.208771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345562, 36.642902, 42.020298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973919, 36.600155, 41.878685>,  <37.750935, 36.574509, 41.793716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973919, 36.600155, 41.878685>,  <38.345562, 36.642902, 42.020298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973919, 36.600155, 41.878685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363381, -0.086098, -0.927654,
		0.068655, -0.990538, 0.118828,
		-0.929107, -0.106868, -0.354032,
		37.695187, 36.568096, 41.772476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276436, 35.967014, 41.638592>,  <38.345562, 36.642902, 42.020298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276436, 35.967014, 41.638592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991817, 36.217308, 41.510742>,  <37.821049, 36.367485, 41.434032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991817, 36.217308, 41.510742>,  <38.276436, 35.967014, 41.638592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991817, 36.217308, 41.510742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228621, -0.223956, -0.947405,
		-0.664408, -0.747192, 0.016298,
		-0.711544, 0.625738, -0.319622,
		37.778355, 36.405029, 41.414856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050663, 35.614422, 40.924633>,  <38.276436, 35.967014, 41.638592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050663, 35.614422, 40.924633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873665, 35.972065, 40.896999>,  <37.767467, 36.186649, 40.880421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873665, 35.972065, 40.896999>,  <38.050663, 35.614422, 40.924633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873665, 35.972065, 40.896999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023684, -0.088659, -0.995780,
		-0.896459, -0.438990, 0.060407,
		-0.442494, 0.894107, -0.069082,
		37.740917, 36.240295, 40.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587322, 35.577629, 40.348606>,  <38.050663, 35.614422, 40.924633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587322, 35.577629, 40.348606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641060, 35.969601, 40.407524>,  <37.673302, 36.204784, 40.442875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641060, 35.969601, 40.407524>,  <37.587322, 35.577629, 40.348606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641060, 35.969601, 40.407524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202642, 0.118336, -0.972077,
		-0.969994, 0.160441, -0.182677,
		0.134344, 0.979926, 0.147297,
		37.681362, 36.263580, 40.451714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353157, 35.677258, 39.668270>,  <37.587322, 35.577629, 40.348606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353157, 35.677258, 39.668270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508205, 36.010990, 39.825054>,  <37.601234, 36.211231, 39.919125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508205, 36.010990, 39.825054>,  <37.353157, 35.677258, 39.668270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508205, 36.010990, 39.825054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387858, 0.238121, -0.890430,
		-0.836249, 0.497179, -0.231301,
		0.387626, 0.834333, 0.391963,
		37.624493, 36.261292, 39.942642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080017, 36.201698, 39.201725>,  <37.353157, 35.677258, 39.668270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080017, 36.201698, 39.201725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411140, 36.307789, 39.399467>,  <37.609814, 36.371445, 39.518112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411140, 36.307789, 39.399467>,  <37.080017, 36.201698, 39.201725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411140, 36.307789, 39.399467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476908, 0.131371, -0.869080,
		-0.295449, 0.955194, -0.017740,
		0.827810, 0.265229, 0.494353,
		37.659485, 36.387356, 39.547775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455700, 36.808022, 38.779026>,  <37.080017, 36.201698, 39.201725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455700, 36.808022, 38.779026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708439, 36.621838, 39.026936>,  <37.860081, 36.510128, 39.175682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708439, 36.621838, 39.026936>,  <37.455700, 36.808022, 38.779026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708439, 36.621838, 39.026936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651849, -0.113523, -0.749804,
		0.419365, 0.877756, 0.231684,
		0.631843, -0.465464, 0.619772,
		37.897991, 36.482197, 39.212868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975204, 37.272415, 38.750793>,  <37.455700, 36.808022, 38.779026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975204, 37.272415, 38.750793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076984, 36.900841, 38.858372>,  <38.138054, 36.677895, 38.922916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076984, 36.900841, 38.858372>,  <37.975204, 37.272415, 38.750793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076984, 36.900841, 38.858372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492651, -0.114798, -0.862622,
		0.832195, 0.351994, 0.428430,
		0.254455, -0.928936, 0.268944,
		38.153320, 36.622162, 38.939056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716667, 37.318211, 38.589058>,  <37.975204, 37.272415, 38.750793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716667, 37.318211, 38.589058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592361, 36.938854, 38.614307>,  <38.517780, 36.711239, 38.629456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592361, 36.938854, 38.614307>,  <38.716667, 37.318211, 38.589058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592361, 36.938854, 38.614307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431320, -0.199885, -0.879778,
		0.846989, -0.246176, 0.471176,
		-0.310761, -0.948390, 0.063120,
		38.499134, 36.654339, 38.633244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294674, 36.893810, 38.472668>,  <38.716667, 37.318211, 38.589058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294674, 36.893810, 38.472668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974651, 36.660263, 38.417519>,  <38.782639, 36.520134, 38.384430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974651, 36.660263, 38.417519>,  <39.294674, 36.893810, 38.472668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974651, 36.660263, 38.417519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383658, -0.321266, -0.865792,
		0.461218, -0.745574, 0.481037,
		-0.800053, -0.583872, -0.137872,
		38.734634, 36.485100, 38.376156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610348, 36.358963, 38.092735>,  <39.294674, 36.893810, 38.472668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610348, 36.358963, 38.092735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218666, 36.311646, 38.026810>,  <38.983658, 36.283253, 37.987255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218666, 36.311646, 38.026810>,  <39.610348, 36.358963, 38.092735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218666, 36.311646, 38.026810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178023, -0.111416, -0.977699,
		0.097296, -0.986708, 0.130159,
		-0.979205, -0.118297, -0.164816,
		38.924904, 36.276157, 37.977364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467693, 35.812550, 37.651325>,  <39.610348, 36.358963, 38.092735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467693, 35.812550, 37.651325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164806, 36.065228, 37.584881>,  <38.983074, 36.216835, 37.545013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164806, 36.065228, 37.584881>,  <39.467693, 35.812550, 37.651325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164806, 36.065228, 37.584881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190531, -0.029631, -0.981234,
		-0.624761, -0.774651, -0.097921,
		-0.757213, 0.631694, -0.166107,
		38.937641, 36.254734, 37.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993683, 35.588520, 37.139236>,  <39.467693, 35.812550, 37.651325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993683, 35.588520, 37.139236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000835, 35.987881, 37.160702>,  <39.005127, 36.227497, 37.173580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000835, 35.987881, 37.160702>,  <38.993683, 35.588520, 37.139236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000835, 35.987881, 37.160702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145355, 0.050502, -0.988090,
		-0.989218, 0.025473, -0.144219,
		0.017886, 0.998399, 0.053660,
		39.006203, 36.287399, 37.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678734, 35.890842, 36.936043>,  <38.993683, 35.588520, 37.139236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678734, 35.890842, 36.936043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940907, 35.588745, 36.937325>,  <40.098209, 35.407486, 36.938091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940907, 35.588745, 36.937325>,  <39.678734, 35.890842, 36.936043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940907, 35.588745, 36.937325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731152, -0.633446, 0.253304,
		-0.189279, -0.168364, -0.967382,
		0.655431, -0.755248, 0.003202,
		40.137535, 35.362171, 36.938286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391132, 35.265415, 36.620224>,  <39.678734, 35.890842, 36.936043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391132, 35.265415, 36.620224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673706, 35.135357, 36.871693>,  <39.843250, 35.057323, 37.022575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673706, 35.135357, 36.871693>,  <39.391132, 35.265415, 36.620224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673706, 35.135357, 36.871693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639635, -0.673550, 0.370400,
		0.303010, -0.663786, -0.683793,
		0.706435, -0.325143, 0.628674,
		39.885635, 35.037815, 37.060295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295303, 34.595249, 36.597054>,  <39.391132, 35.265415, 36.620224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295303, 34.595249, 36.597054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518639, 34.614506, 36.928337>,  <39.652641, 34.626060, 37.127110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518639, 34.614506, 36.928337>,  <39.295303, 34.595249, 36.597054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518639, 34.614506, 36.928337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695824, -0.516448, 0.499109,
		0.451755, -0.854964, -0.254859,
		0.558342, 0.048138, 0.828213,
		39.686142, 34.628948, 37.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380234, 33.900585, 36.795395>,  <39.295303, 34.595249, 36.597054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380234, 33.900585, 36.795395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446423, 34.124870, 37.119919>,  <39.486134, 34.259441, 37.314632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446423, 34.124870, 37.119919>,  <39.380234, 33.900585, 36.795395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446423, 34.124870, 37.119919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554848, -0.627176, 0.546620,
		0.815330, -0.540602, 0.207332,
		0.165470, 0.560714, 0.811308,
		39.496063, 34.293083, 37.363312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698105, 33.501175, 37.344219>,  <39.380234, 33.900585, 36.795395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698105, 33.501175, 37.344219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536411, 33.800438, 37.554688>,  <39.439396, 33.979996, 37.680969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536411, 33.800438, 37.554688>,  <39.698105, 33.501175, 37.344219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536411, 33.800438, 37.554688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584403, -0.653790, 0.480656,
		0.703612, -0.113199, 0.701510,
		-0.404231, 0.748161, 0.526169,
		39.415142, 34.024887, 37.712540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631096, 33.122318, 38.039349>,  <39.698105, 33.501175, 37.344219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631096, 33.122318, 38.039349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438572, 33.468712, 38.093620>,  <39.323059, 33.676548, 38.126183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438572, 33.468712, 38.093620>,  <39.631096, 33.122318, 38.039349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438572, 33.468712, 38.093620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607875, -0.441279, 0.660121,
		0.631530, 0.235243, 0.738803,
		-0.481307, 0.865987, 0.135683,
		39.294178, 33.728508, 38.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579529, 33.080856, 38.749104>,  <39.631096, 33.122318, 38.039349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579529, 33.080856, 38.749104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299183, 33.328049, 38.606617>,  <39.130974, 33.476364, 38.521126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299183, 33.328049, 38.606617>,  <39.579529, 33.080856, 38.749104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299183, 33.328049, 38.606617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678649, -0.423979, 0.599730,
		0.219595, 0.662074, 0.716545,
		-0.700866, 0.617980, -0.356212,
		39.088924, 33.513443, 38.499752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174747, 33.407940, 39.374790>,  <39.579529, 33.080856, 38.749104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174747, 33.407940, 39.374790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949631, 33.406322, 39.044155>,  <38.814560, 33.405350, 38.845772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949631, 33.406322, 39.044155>,  <39.174747, 33.407940, 39.374790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949631, 33.406322, 39.044155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772272, -0.353976, 0.527538,
		-0.294728, 0.935246, 0.196088,
		-0.562788, -0.004047, -0.826591,
		38.780796, 33.405109, 38.796177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479088, 33.589386, 39.679020>,  <39.174747, 33.407940, 39.374790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479088, 33.589386, 39.679020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417213, 33.456024, 39.307018>,  <38.380089, 33.376007, 39.083817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417213, 33.456024, 39.307018>,  <38.479088, 33.589386, 39.679020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417213, 33.456024, 39.307018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884973, -0.371711, 0.280452,
		-0.439197, 0.866414, -0.237554,
		-0.154686, -0.333402, -0.930008,
		38.370808, 33.356003, 39.028015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824871, 33.938950, 39.476677>,  <38.479088, 33.589386, 39.679020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824871, 33.938950, 39.476677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882336, 33.604897, 39.264294>,  <37.916817, 33.404465, 39.136864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882336, 33.604897, 39.264294>,  <37.824871, 33.938950, 39.476677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882336, 33.604897, 39.264294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827203, -0.395849, 0.398796,
		-0.543227, 0.381922, -0.747690,
		0.143663, -0.835128, -0.530963,
		37.925434, 33.354359, 39.105003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210457, 33.703941, 39.050442>,  <37.824871, 33.938950, 39.476677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210457, 33.703941, 39.050442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372444, 33.341206, 39.097168>,  <37.469635, 33.123566, 39.125206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372444, 33.341206, 39.097168>,  <37.210457, 33.703941, 39.050442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372444, 33.341206, 39.097168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875175, -0.347457, 0.336663,
		-0.264709, -0.238574, -0.934351,
		0.404966, -0.906838, 0.116819,
		37.493935, 33.069153, 39.132214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741085, 33.194820, 38.899704>,  <37.210457, 33.703941, 39.050442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741085, 33.194820, 38.899704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024204, 32.985462, 39.089470>,  <37.194077, 32.859848, 39.203331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024204, 32.985462, 39.089470>,  <36.741085, 33.194820, 38.899704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024204, 32.985462, 39.089470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705738, -0.553286, 0.442504,
		0.030882, -0.648018, -0.760998,
		0.707800, -0.523400, 0.474418,
		37.236546, 32.828442, 39.231796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567375, 32.412395, 38.866501>,  <36.741085, 33.194820, 38.899704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567375, 32.412395, 38.866501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793446, 32.482986, 39.188850>,  <36.929089, 32.525341, 39.382259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793446, 32.482986, 39.188850>,  <36.567375, 32.412395, 38.866501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793446, 32.482986, 39.188850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676832, -0.459316, 0.575263,
		0.471670, -0.870566, -0.140151,
		0.565178, 0.176476, 0.805873,
		36.962997, 32.535931, 39.430611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262501, 31.928745, 39.349621>,  <36.567375, 32.412395, 38.866501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262501, 31.928745, 39.349621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502357, 32.153812, 39.577244>,  <36.646271, 32.288853, 39.713818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502357, 32.153812, 39.577244>,  <36.262501, 31.928745, 39.349621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502357, 32.153812, 39.577244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568514, -0.200943, 0.797756,
		0.563220, -0.801890, 0.199390,
		0.599646, 0.562667, 0.569060,
		36.682251, 32.322613, 39.747963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815720, 31.539066, 39.257149>,  <36.262501, 31.928745, 39.349621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815720, 31.539066, 39.257149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607777, 31.237097, 39.097229>,  <36.483013, 31.055914, 39.001278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607777, 31.237097, 39.097229>,  <36.815720, 31.539066, 39.257149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607777, 31.237097, 39.097229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135995, 0.388901, -0.911187,
		0.843360, -0.528055, -0.099506,
		-0.519855, -0.754926, -0.399796,
		36.451820, 31.010618, 38.977291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134708, 31.468863, 38.639374>,  <36.815720, 31.539066, 39.257149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134708, 31.468863, 38.639374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767555, 31.317137, 38.592697>,  <36.547264, 31.226101, 38.564690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767555, 31.317137, 38.592697>,  <37.134708, 31.468863, 38.639374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767555, 31.317137, 38.592697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030769, 0.361176, -0.931990,
		0.395670, -0.851862, -0.343186,
		-0.917877, -0.379319, -0.116696,
		36.492191, 31.203342, 38.557690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185394, 31.192066, 38.048782>,  <37.134708, 31.468863, 38.639374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185394, 31.192066, 38.048782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790180, 31.238689, 38.089172>,  <36.553051, 31.266663, 38.113407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790180, 31.238689, 38.089172>,  <37.185394, 31.192066, 38.048782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790180, 31.238689, 38.089172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066972, 0.265467, -0.961791,
		-0.138907, -0.957049, -0.254486,
		-0.988038, 0.116556, 0.100970,
		36.493767, 31.273657, 38.119465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880745, 31.036726, 37.297173>,  <37.185394, 31.192066, 38.048782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880745, 31.036726, 37.297173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574722, 31.205139, 37.492077>,  <36.391109, 31.306187, 37.609020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574722, 31.205139, 37.492077>,  <36.880745, 31.036726, 37.297173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574722, 31.205139, 37.492077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352780, 0.358988, -0.864103,
		-0.538736, -0.832982, -0.126114,
		-0.765055, 0.421033, 0.487259,
		36.345207, 31.331450, 37.638256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263828, 30.930536, 36.792637>,  <36.880745, 31.036726, 37.297173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263828, 30.930536, 36.792637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156681, 31.225569, 37.040577>,  <36.092392, 31.402588, 37.189342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156681, 31.225569, 37.040577>,  <36.263828, 30.930536, 36.792637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156681, 31.225569, 37.040577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389162, 0.505714, -0.769939,
		-0.881362, -0.447465, 0.151574,
		-0.267868, 0.737582, 0.619854,
		36.076321, 31.446844, 37.226532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572247, 31.046202, 36.626461>,  <36.263828, 30.930536, 36.792637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572247, 31.046202, 36.626461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703041, 31.361656, 36.834743>,  <35.781517, 31.550928, 36.959713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703041, 31.361656, 36.834743>,  <35.572247, 31.046202, 36.626461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703041, 31.361656, 36.834743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336453, 0.612042, -0.715685,
		-0.883106, 0.058830, 0.465470,
		0.326991, 0.788634, 0.520704,
		35.801140, 31.598246, 36.990955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034939, 31.554966, 36.839985>,  <35.572247, 31.046202, 36.626461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034939, 31.554966, 36.839985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363689, 31.781754, 36.817841>,  <35.560940, 31.917826, 36.804554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363689, 31.781754, 36.817841>,  <35.034939, 31.554966, 36.839985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363689, 31.781754, 36.817841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482508, 0.641178, -0.596722,
		-0.302829, 0.517143, 0.800536,
		0.821876, 0.566970, -0.055358,
		35.610252, 31.951845, 36.801231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815071, 32.231903, 36.899895>,  <35.034939, 31.554966, 36.839985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815071, 32.231903, 36.899895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172768, 32.295135, 36.732403>,  <35.387386, 32.333076, 36.631908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172768, 32.295135, 36.732403>,  <34.815071, 32.231903, 36.899895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172768, 32.295135, 36.732403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415338, 0.641741, -0.644719,
		0.166800, 0.750452, 0.639530,
		0.894244, 0.158082, -0.418734,
		35.441040, 32.342560, 36.606781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760284, 32.890869, 36.748310>,  <34.815071, 32.231903, 36.899895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760284, 32.890869, 36.748310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066441, 32.750587, 36.532463>,  <35.250134, 32.666420, 36.402954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066441, 32.750587, 36.532463>,  <34.760284, 32.890869, 36.748310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066441, 32.750587, 36.532463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222007, 0.643125, -0.732874,
		0.604059, 0.680734, 0.414385,
		0.765392, -0.350703, -0.539613,
		35.296059, 32.645378, 36.370579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112118, 33.457130, 36.561897>,  <34.760284, 32.890869, 36.748310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112118, 33.457130, 36.561897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205433, 33.176716, 36.292343>,  <35.261421, 33.008469, 36.130611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205433, 33.176716, 36.292343>,  <35.112118, 33.457130, 36.561897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205433, 33.176716, 36.292343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202205, 0.642890, -0.738787,
		0.951153, 0.308611, 0.008223,
		0.233284, -0.701037, -0.673889,
		35.275417, 32.966404, 36.090176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309303, 33.820587, 35.981884>,  <35.112118, 33.457130, 36.561897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309303, 33.820587, 35.981884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293652, 33.469711, 35.790466>,  <35.284260, 33.259186, 35.675617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293652, 33.469711, 35.790466>,  <35.309303, 33.820587, 35.981884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293652, 33.469711, 35.790466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110749, 0.479768, -0.870377,
		0.993078, 0.018943, -0.115921,
		-0.039128, -0.877191, -0.478545,
		35.281914, 33.206554, 35.646904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756393, 33.860798, 35.363125>,  <35.309303, 33.820587, 35.981884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756393, 33.860798, 35.363125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484890, 33.571915, 35.309910>,  <35.321987, 33.398582, 35.277981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484890, 33.571915, 35.309910>,  <35.756393, 33.860798, 35.363125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484890, 33.571915, 35.309910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190145, 0.347827, -0.918075,
		0.709320, -0.597852, -0.373415,
		-0.678756, -0.722212, -0.133042,
		35.281261, 33.355251, 35.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.530449, 29.190039, 42.320377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176231, 29.115473, 42.150173>,  <35.963699, 29.070734, 42.048050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176231, 29.115473, 42.150173>,  <36.530449, 29.190039, 42.320377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176231, 29.115473, 42.150173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373440, 0.259172, -0.890715,
		0.276342, -0.947667, -0.159884,
		-0.885538, -0.186434, -0.425516,
		35.910568, 29.059547, 42.022518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630463, 28.651314, 41.694210>,  <36.530449, 29.190039, 42.320377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630463, 28.651314, 41.694210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315384, 28.894949, 41.657219>,  <36.126339, 29.041130, 41.635025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315384, 28.894949, 41.657219>,  <36.630463, 28.651314, 41.694210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315384, 28.894949, 41.657219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411592, 0.408600, -0.814639,
		-0.458400, -0.679749, -0.572547,
		-0.787694, 0.609087, -0.092478,
		36.079075, 29.077675, 41.629475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573456, 28.789719, 40.932098>,  <36.630463, 28.651314, 41.694210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573456, 28.789719, 40.932098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299614, 29.041445, 41.079220>,  <36.135307, 29.192480, 41.167492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299614, 29.041445, 41.079220>,  <36.573456, 28.789719, 40.932098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299614, 29.041445, 41.079220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044960, 0.540083, -0.840410,
		-0.727526, -0.558813, -0.398037,
		-0.684605, 0.629316, 0.367800,
		36.094231, 29.230240, 41.189560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043320, 28.758242, 40.447872>,  <36.573456, 28.789719, 40.932098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043320, 28.758242, 40.447872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978741, 29.096901, 40.650700>,  <35.939991, 29.300097, 40.772396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978741, 29.096901, 40.650700>,  <36.043320, 28.758242, 40.447872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978741, 29.096901, 40.650700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162053, 0.484092, -0.859880,
		-0.973485, -0.220999, 0.059046,
		-0.161449, 0.846649, 0.507070,
		35.930305, 29.350895, 40.802822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660801, 29.012262, 39.931988>,  <36.043320, 28.758242, 40.447872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660801, 29.012262, 39.931988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.754036, 29.312744, 40.179005>,  <35.809978, 29.493034, 40.327213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.754036, 29.312744, 40.179005>,  <35.660801, 29.012262, 39.931988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754036, 29.312744, 40.179005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111739, 0.610139, -0.784376,
		-0.966014, 0.251835, 0.058280,
		0.233092, 0.751206, 0.617542,
		35.823963, 29.538105, 40.364269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170574, 29.507759, 39.723980>,  <35.660801, 29.012262, 39.931988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170574, 29.507759, 39.723980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505066, 29.657660, 39.884121>,  <35.705761, 29.747601, 39.980206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.505066, 29.657660, 39.884121>,  <35.170574, 29.507759, 39.723980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505066, 29.657660, 39.884121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042716, 0.683335, -0.728855,
		-0.546719, 0.626589, 0.555414,
		0.836226, 0.374753, 0.400357,
		35.755936, 29.770086, 40.004227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017044, 30.236664, 39.740349>,  <35.170574, 29.507759, 39.723980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017044, 30.236664, 39.740349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415432, 30.219267, 39.771740>,  <35.654465, 30.208830, 39.790573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415432, 30.219267, 39.771740>,  <35.017044, 30.236664, 39.740349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415432, 30.219267, 39.771740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088601, 0.614570, -0.783871,
		-0.014139, 0.787663, 0.615945,
		0.995967, -0.043490, 0.078478,
		35.714222, 30.206221, 39.795284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233238, 30.963793, 39.664326>,  <35.017044, 30.236664, 39.740349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233238, 30.963793, 39.664326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570019, 30.753675, 39.615021>,  <35.772087, 30.627605, 39.585438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570019, 30.753675, 39.615021>,  <35.233238, 30.963793, 39.664326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570019, 30.753675, 39.615021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320219, 0.670338, -0.669408,
		0.434265, 0.524134, 0.732597,
		0.841947, -0.525292, -0.123267,
		35.822601, 30.596088, 39.578041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807247, 31.345776, 39.905941>,  <35.233238, 30.963793, 39.664326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807247, 31.345776, 39.905941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860878, 31.113060, 39.585056>,  <35.893055, 30.973431, 39.392525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860878, 31.113060, 39.585056>,  <35.807247, 31.345776, 39.905941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860878, 31.113060, 39.585056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381680, 0.777385, -0.499993,
		0.914518, -0.239151, 0.326286,
		0.134076, -0.581790, -0.802212,
		35.901100, 30.938522, 39.344391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510269, 31.499996, 40.013195>,  <35.807247, 31.345776, 39.905941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510269, 31.499996, 40.013195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548145, 31.886154, 40.110397>,  <36.570869, 32.117847, 40.168720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548145, 31.886154, 40.110397>,  <36.510269, 31.499996, 40.013195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548145, 31.886154, 40.110397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437506, -0.178910, 0.881238,
		0.894216, -0.189758, 0.405425,
		0.094687, 0.965393, 0.243004,
		36.576553, 32.175774, 40.183300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721226, 31.538553, 40.764458>,  <36.510269, 31.499996, 40.013195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721226, 31.538553, 40.764458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601856, 31.913107, 40.690559>,  <36.530235, 32.137840, 40.646221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601856, 31.913107, 40.690559>,  <36.721226, 31.538553, 40.764458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601856, 31.913107, 40.690559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396130, 0.054588, 0.916570,
		0.868347, 0.346705, 0.354640,
		-0.298420, 0.936384, -0.184741,
		36.512329, 32.194023, 40.635136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957081, 31.955618, 41.312210>,  <36.721226, 31.538553, 40.764458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957081, 31.955618, 41.312210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641068, 32.156616, 41.171730>,  <36.451458, 32.277214, 41.087444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641068, 32.156616, 41.171730>,  <36.957081, 31.955618, 41.312210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641068, 32.156616, 41.171730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368552, 0.068493, 0.927080,
		0.489909, 0.861862, 0.131084,
		-0.790037, 0.502496, -0.351197,
		36.404057, 32.307365, 41.066372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902805, 32.554420, 41.700832>,  <36.957081, 31.955618, 41.312210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902805, 32.554420, 41.700832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.549679, 32.453930, 41.542076>,  <36.337803, 32.393635, 41.446823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.549679, 32.453930, 41.542076>,  <36.902805, 32.554420, 41.700832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549679, 32.453930, 41.542076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403557, -0.026746, 0.914564,
		-0.240381, 0.967558, -0.077774,
		-0.882813, -0.251230, -0.396894,
		36.284836, 32.378559, 41.423008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444748, 33.000210, 42.110966>,  <36.902805, 32.554420, 41.700832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444748, 33.000210, 42.110966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199223, 32.735149, 41.939323>,  <36.051907, 32.576115, 41.836338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.199223, 32.735149, 41.939323>,  <36.444748, 33.000210, 42.110966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199223, 32.735149, 41.939323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560948, -0.016372, 0.827689,
		-0.555494, 0.748750, -0.361664,
		-0.613811, -0.662651, -0.429104,
		36.015079, 32.536354, 41.810593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749466, 33.227772, 42.146591>,  <36.444748, 33.000210, 42.110966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749466, 33.227772, 42.146591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716564, 32.830509, 42.113426>,  <35.696823, 32.592152, 42.093525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716564, 32.830509, 42.113426>,  <35.749466, 33.227772, 42.146591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716564, 32.830509, 42.113426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724354, 0.002436, 0.689424,
		-0.684504, 0.116769, -0.719597,
		-0.082256, -0.993156, -0.082915,
		35.691887, 32.532562, 42.088551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002167, 33.117924, 42.216354>,  <35.749466, 33.227772, 42.146591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002167, 33.117924, 42.216354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.179760, 32.766209, 42.285328>,  <35.286316, 32.555180, 42.326714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.179760, 32.766209, 42.285328>,  <35.002167, 33.117924, 42.216354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179760, 32.766209, 42.285328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603893, -0.151465, 0.782542,
		-0.661960, -0.451570, -0.598242,
		0.443985, -0.879286, 0.172436,
		35.312954, 32.502422, 42.337059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465290, 32.646828, 42.214298>,  <35.002167, 33.117924, 42.216354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465290, 32.646828, 42.214298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.746403, 32.451836, 42.421551>,  <34.915070, 32.334839, 42.545902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.746403, 32.451836, 42.421551>,  <34.465290, 32.646828, 42.214298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746403, 32.451836, 42.421551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670949, -0.212065, 0.710532,
		-0.236509, -0.846978, -0.476121,
		0.702774, -0.487500, 0.518124,
		34.957237, 32.305592, 42.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107857, 32.022926, 42.497078>,  <34.465290, 32.646828, 42.214298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107857, 32.022926, 42.497078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.436279, 32.090195, 42.715282>,  <34.633335, 32.130558, 42.846203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.436279, 32.090195, 42.715282>,  <34.107857, 32.022926, 42.497078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436279, 32.090195, 42.715282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488962, -0.285945, 0.824107,
		0.294578, -0.943373, -0.152548,
		0.821061, 0.168173, 0.545507,
		34.682598, 32.140648, 42.878933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193287, 31.496992, 42.927341>,  <34.107857, 32.022926, 42.497078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193287, 31.496992, 42.927341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.417400, 31.776505, 43.105236>,  <34.551868, 31.944212, 43.211971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.417400, 31.776505, 43.105236>,  <34.193287, 31.496992, 42.927341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417400, 31.776505, 43.105236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363711, -0.274843, 0.890042,
		0.744177, -0.660430, 0.100165,
		0.560281, 0.698780, 0.444737,
		34.585484, 31.986139, 43.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484509, 31.269058, 43.484886>,  <34.193287, 31.496992, 42.927341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484509, 31.269058, 43.484886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525772, 31.646509, 43.610691>,  <34.550529, 31.872980, 43.686176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525772, 31.646509, 43.610691>,  <34.484509, 31.269058, 43.484886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525772, 31.646509, 43.610691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035376, -0.312523, 0.949251,
		0.994035, -0.109052, 0.001142,
		0.103161, 0.943630, 0.314516,
		34.556721, 31.929598, 43.705048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873070, 31.246296, 44.031334>,  <34.484509, 31.269058, 43.484886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873070, 31.246296, 44.031334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.742538, 31.618689, 44.096794>,  <34.664219, 31.842125, 44.136070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.742538, 31.618689, 44.096794>,  <34.873070, 31.246296, 44.031334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742538, 31.618689, 44.096794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074922, -0.198061, 0.977322,
		0.942282, 0.306669, 0.134384,
		-0.326331, 0.930981, 0.163653,
		34.644638, 31.897984, 44.145889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170391, 31.441006, 44.564583>,  <34.873070, 31.246296, 44.031334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170391, 31.441006, 44.564583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870098, 31.705185, 44.570324>,  <34.689922, 31.863693, 44.573769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870098, 31.705185, 44.570324>,  <35.170391, 31.441006, 44.564583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870098, 31.705185, 44.570324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138494, -0.178590, 0.974128,
		0.645924, 0.729323, 0.225542,
		-0.750734, 0.660449, 0.014349,
		34.644878, 31.903320, 44.574627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343483, 31.821716, 45.096184>,  <35.170391, 31.441006, 44.564583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343483, 31.821716, 45.096184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950615, 31.852966, 45.027794>,  <34.714893, 31.871716, 44.986759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950615, 31.852966, 45.027794>,  <35.343483, 31.821716, 45.096184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950615, 31.852966, 45.027794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178644, -0.104836, 0.978313,
		0.058505, 0.991416, 0.116923,
		-0.982173, 0.078124, -0.170977,
		34.655964, 31.876404, 44.976501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.563122, 32.375526, 44.348759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.866377, 32.126305, 44.425732>,  <31.048330, 31.976770, 44.471916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.866377, 32.126305, 44.425732>,  <30.563122, 32.375526, 44.348759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866377, 32.126305, 44.425732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499704, 0.365500, -0.785307,
		0.418956, 0.691529, 0.588442,
		0.758137, -0.623055, 0.192431,
		31.093819, 31.939388, 44.483459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976187, 32.828526, 44.099266>,  <30.563122, 32.375526, 44.348759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976187, 32.828526, 44.099266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.169054, 32.478889, 44.122864>,  <31.284775, 32.269108, 44.137020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.169054, 32.478889, 44.122864>,  <30.976187, 32.828526, 44.099266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169054, 32.478889, 44.122864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596624, 0.278312, -0.752716,
		0.641523, 0.398133, 0.655697,
		0.482169, -0.874089, 0.058992,
		31.313705, 32.216663, 44.140560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700794, 32.953560, 44.117420>,  <30.976187, 32.828526, 44.099266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700794, 32.953560, 44.117420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.691561, 32.570763, 44.001743>,  <31.686022, 32.341084, 43.932339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.691561, 32.570763, 44.001743>,  <31.700794, 32.953560, 44.117420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691561, 32.570763, 44.001743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572407, 0.224510, -0.788635,
		0.819645, -0.183739, 0.542607,
		-0.023082, -0.956993, -0.289192,
		31.684637, 32.283665, 43.914986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288044, 32.886013, 43.794006>,  <31.700794, 32.953560, 44.117420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288044, 32.886013, 43.794006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110455, 32.547890, 43.675121>,  <32.003902, 32.345016, 43.603790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110455, 32.547890, 43.675121>,  <32.288044, 32.886013, 43.794006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110455, 32.547890, 43.675121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416862, 0.098758, -0.903589,
		0.793167, -0.525065, 0.308533,
		-0.443973, -0.845313, -0.297211,
		31.977262, 32.294296, 43.585957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781021, 32.393257, 43.438412>,  <32.288044, 32.886013, 43.794006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781021, 32.393257, 43.438412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.400272, 32.333111, 43.331573>,  <32.171825, 32.297024, 43.267471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.400272, 32.333111, 43.331573>,  <32.781021, 32.393257, 43.438412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400272, 32.333111, 43.331573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221721, 0.263873, -0.938728,
		0.211630, -0.952765, -0.217833,
		-0.951868, -0.150365, -0.267091,
		32.114712, 32.288002, 43.251446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927608, 32.186985, 42.750576>,  <32.781021, 32.393257, 43.438412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927608, 32.186985, 42.750576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535812, 32.267563, 42.752373>,  <32.300735, 32.315910, 42.753448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535812, 32.267563, 42.752373>,  <32.927608, 32.186985, 42.750576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535812, 32.267563, 42.752373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077401, 0.396727, -0.914668,
		-0.186039, -0.895559, -0.404182,
		-0.979489, 0.201448, 0.004489,
		32.241966, 32.327999, 42.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819572, 31.981804, 42.132957>,  <32.927608, 32.186985, 42.750576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819572, 31.981804, 42.132957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536301, 32.231976, 42.263992>,  <32.366337, 32.382080, 42.342613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536301, 32.231976, 42.263992>,  <32.819572, 31.981804, 42.132957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536301, 32.231976, 42.263992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130489, 0.571938, -0.809852,
		-0.693867, -0.530775, -0.486648,
		-0.708181, 0.625432, 0.327589,
		32.323845, 32.419605, 42.362270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426834, 32.126999, 41.564278>,  <32.819572, 31.981804, 42.132957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426834, 32.126999, 41.564278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337139, 32.427444, 41.812645>,  <32.283321, 32.607712, 41.961666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337139, 32.427444, 41.812645>,  <32.426834, 32.126999, 41.564278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337139, 32.427444, 41.812645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030947, 0.631338, -0.774890,
		-0.974042, -0.192978, -0.118327,
		-0.224241, 0.751114, 0.620922,
		32.269867, 32.652779, 41.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887976, 32.483017, 41.237789>,  <32.426834, 32.126999, 41.564278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887976, 32.483017, 41.237789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036327, 32.749462, 41.496628>,  <32.125340, 32.909328, 41.651932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036327, 32.749462, 41.496628>,  <31.887976, 32.483017, 41.237789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036327, 32.749462, 41.496628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116524, 0.657909, -0.744028,
		-0.921341, 0.351348, 0.166387,
		0.370881, 0.666115, 0.647100,
		32.147591, 32.949295, 41.690758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567200, 33.125526, 41.085445>,  <31.887976, 32.483017, 41.237789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567200, 33.125526, 41.085445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.881598, 33.248035, 41.300259>,  <32.070236, 33.321541, 41.429146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.881598, 33.248035, 41.300259>,  <31.567200, 33.125526, 41.085445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881598, 33.248035, 41.300259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170573, 0.727516, -0.664549,
		-0.594234, 0.613938, 0.519583,
		0.785997, 0.306271, 0.537036,
		32.117397, 33.339916, 41.461369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376451, 33.843174, 41.392632>,  <31.567200, 33.125526, 41.085445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376451, 33.843174, 41.392632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772329, 33.788479, 41.375637>,  <32.009857, 33.755661, 41.365440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772329, 33.788479, 41.375637>,  <31.376451, 33.843174, 41.392632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772329, 33.788479, 41.375637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081038, 0.779542, -0.621085,
		0.118044, 0.611243, 0.782591,
		0.989696, -0.136735, -0.042487,
		32.069237, 33.747459, 41.362892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637390, 34.523300, 41.379028>,  <31.376451, 33.843174, 41.392632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637390, 34.523300, 41.379028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920189, 34.293873, 41.213539>,  <32.089867, 34.156216, 41.114246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920189, 34.293873, 41.213539>,  <31.637390, 34.523300, 41.379028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920189, 34.293873, 41.213539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040230, 0.616678, -0.786187,
		0.706071, 0.539188, 0.459064,
		0.706997, -0.573572, -0.413727,
		32.132290, 34.121799, 41.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113201, 35.035465, 41.201458>,  <31.637390, 34.523300, 41.379028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113201, 35.035465, 41.201458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168201, 34.714935, 40.968571>,  <32.201202, 34.522617, 40.828838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168201, 34.714935, 40.968571>,  <32.113201, 35.035465, 41.201458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168201, 34.714935, 40.968571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097036, 0.574074, -0.813033,
		0.985737, 0.168288, 0.001178,
		0.137500, -0.801322, -0.582216,
		32.209450, 34.474537, 40.793907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527412, 35.256855, 40.709225>,  <32.113201, 35.035465, 41.201458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527412, 35.256855, 40.709225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.418861, 34.908680, 40.544933>,  <32.353729, 34.699776, 40.446358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.418861, 34.908680, 40.544933>,  <32.527412, 35.256855, 40.709225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418861, 34.908680, 40.544933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092783, 0.401092, -0.911327,
		0.957991, -0.285421, -0.028085,
		-0.271376, -0.870437, -0.410725,
		32.337448, 34.647549, 40.421715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316479, 35.139446, 40.786224>,  <32.527412, 35.256855, 40.709225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316479, 35.139446, 40.786224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552109, 35.447304, 40.884727>,  <33.693485, 35.632019, 40.943829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.552109, 35.447304, 40.884727>,  <33.316479, 35.139446, 40.786224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552109, 35.447304, 40.884727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066792, -0.257329, 0.964013,
		0.805314, -0.584322, -0.100179,
		0.589073, 0.769642, 0.246259,
		33.728832, 35.678196, 40.958607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816948, 34.856823, 41.166672>,  <33.316479, 35.139446, 40.786224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816948, 34.856823, 41.166672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804527, 35.241169, 41.276775>,  <33.797073, 35.471779, 41.342838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804527, 35.241169, 41.276775>,  <33.816948, 34.856823, 41.166672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804527, 35.241169, 41.276775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032454, -0.274278, 0.961103,
		0.998991, 0.038779, -0.022667,
		-0.031054, 0.960868, 0.275259,
		33.795212, 35.529430, 41.359352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312954, 35.020828, 41.762951>,  <33.816948, 34.856823, 41.166672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312954, 35.020828, 41.762951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038464, 35.311146, 41.782154>,  <33.873768, 35.485336, 41.793678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038464, 35.311146, 41.782154>,  <34.312954, 35.020828, 41.762951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038464, 35.311146, 41.782154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045101, -0.108333, 0.993091,
		0.725984, 0.679324, 0.107076,
		-0.686231, 0.725798, 0.048010,
		33.832596, 35.528885, 41.796558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411350, 35.410301, 42.425495>,  <34.312954, 35.020828, 41.762951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411350, 35.410301, 42.425495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.050091, 35.545376, 42.319443>,  <33.833336, 35.626419, 42.255810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.050091, 35.545376, 42.319443>,  <34.411350, 35.410301, 42.425495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050091, 35.545376, 42.319443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272688, 0.025813, 0.961756,
		0.331617, 0.940904, 0.068770,
		-0.903145, 0.337688, -0.265133,
		33.779148, 35.646683, 42.239902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332790, 35.874870, 42.858753>,  <34.411350, 35.410301, 42.425495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332790, 35.874870, 42.858753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.966797, 35.782742, 42.726238>,  <33.747200, 35.727467, 42.646729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.966797, 35.782742, 42.726238>,  <34.332790, 35.874870, 42.858753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966797, 35.782742, 42.726238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363395, 0.113604, 0.924683,
		-0.175335, 0.966462, -0.187642,
		-0.914987, -0.230317, -0.331289,
		33.692299, 35.713646, 42.626850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873569, 36.277233, 43.332657>,  <34.332790, 35.874870, 42.858753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873569, 36.277233, 43.332657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664406, 35.964848, 43.196030>,  <33.538910, 35.777416, 43.114052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664406, 35.964848, 43.196030>,  <33.873569, 36.277233, 43.332657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664406, 35.964848, 43.196030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373692, -0.150128, 0.915323,
		-0.766110, 0.606270, -0.213336,
		-0.522906, -0.780960, -0.341573,
		33.507534, 35.730560, 43.093559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152763, 36.278687, 43.703205>,  <33.873569, 36.277233, 43.332657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152763, 36.278687, 43.703205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183311, 35.909855, 43.551445>,  <33.201641, 35.688557, 43.460388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.183311, 35.909855, 43.551445>,  <33.152763, 36.278687, 43.703205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183311, 35.909855, 43.551445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481803, -0.367264, 0.795602,
		-0.872945, 0.122037, -0.472307,
		0.076369, -0.922076, -0.379399,
		33.206223, 35.633232, 43.437626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459175, 35.967770, 43.830662>,  <33.152763, 36.278687, 43.703205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459175, 35.967770, 43.830662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745510, 35.692070, 43.785915>,  <32.917309, 35.526649, 43.759068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745510, 35.692070, 43.785915>,  <32.459175, 35.967770, 43.830662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745510, 35.692070, 43.785915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342696, -0.486359, 0.803750,
		-0.608391, -0.537018, -0.584356,
		0.715835, -0.689251, -0.111863,
		32.960262, 35.485294, 43.752357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151161, 35.298256, 43.953835>,  <32.459175, 35.967770, 43.830662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151161, 35.298256, 43.953835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539391, 35.235027, 44.026501>,  <32.772327, 35.197090, 44.070099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539391, 35.235027, 44.026501>,  <32.151161, 35.298256, 43.953835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539391, 35.235027, 44.026501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240795, -0.644993, 0.725260,
		0.002528, -0.747661, -0.664075,
		0.970573, -0.158073, 0.181663,
		32.830563, 35.187607, 44.081001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216480, 34.628826, 44.014847>,  <32.151161, 35.298256, 43.953835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216480, 34.628826, 44.014847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546692, 34.758427, 44.199684>,  <32.744820, 34.836185, 44.310585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546692, 34.758427, 44.199684>,  <32.216480, 34.628826, 44.014847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546692, 34.758427, 44.199684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218641, -0.571238, 0.791128,
		0.520294, -0.754129, -0.400730,
		0.825525, 0.324003, 0.462095,
		32.794350, 34.855629, 44.338314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519981, 34.015072, 44.283909>,  <32.216480, 34.628826, 44.014847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519981, 34.015072, 44.283909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.671329, 34.318130, 44.496628>,  <32.762138, 34.499966, 44.624260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.671329, 34.318130, 44.496628>,  <32.519981, 34.015072, 44.283909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671329, 34.318130, 44.496628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091260, -0.541178, 0.835941,
		0.921145, -0.364826, -0.135622,
		0.378368, 0.757647, 0.531798,
		32.784840, 34.545425, 44.656166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159138, 33.717258, 44.650551>,  <32.519981, 34.015072, 44.283909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159138, 33.717258, 44.650551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060207, 34.053352, 44.843567>,  <33.000851, 34.255009, 44.959377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060207, 34.053352, 44.843567>,  <33.159138, 33.717258, 44.650551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060207, 34.053352, 44.843567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177371, -0.450332, 0.875066,
		0.952560, 0.302014, -0.037654,
		-0.247325, 0.840231, 0.482537,
		32.986012, 34.305420, 44.988327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721733, 33.896027, 45.234959>,  <33.159138, 33.717258, 44.650551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721733, 33.896027, 45.234959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361126, 34.048752, 45.316422>,  <33.144760, 34.140388, 45.365299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361126, 34.048752, 45.316422>,  <33.721733, 33.896027, 45.234959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361126, 34.048752, 45.316422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035247, -0.404284, 0.913954,
		0.431295, 0.831128, 0.351013,
		-0.901522, 0.381812, 0.203661,
		33.090668, 34.163296, 45.377522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804527, 34.133278, 45.899494>,  <33.721733, 33.896027, 45.234959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804527, 34.133278, 45.899494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413715, 34.103363, 45.819679>,  <33.179226, 34.085415, 45.771790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413715, 34.103363, 45.819679>,  <33.804527, 34.133278, 45.899494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413715, 34.103363, 45.819679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153375, -0.403268, 0.902137,
		-0.147939, 0.912021, 0.382534,
		-0.977031, -0.074790, -0.199540,
		33.120605, 34.080925, 45.759819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931957, 34.776630, 46.324684>,  <33.804527, 34.133278, 45.899494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931957, 34.776630, 46.324684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274345, 34.876076, 46.506020>,  <34.479778, 34.935741, 46.614819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.274345, 34.876076, 46.506020>,  <33.931957, 34.776630, 46.324684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274345, 34.876076, 46.506020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370893, 0.315628, -0.873394,
		-0.360219, 0.915736, 0.177960,
		0.855968, 0.248609, 0.453335,
		34.531136, 34.950657, 46.642021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184391, 35.534187, 46.182861>,  <33.931957, 34.776630, 46.324684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184391, 35.534187, 46.182861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514759, 35.341919, 46.300709>,  <34.712982, 35.226559, 46.371418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514759, 35.341919, 46.300709>,  <34.184391, 35.534187, 46.182861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514759, 35.341919, 46.300709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506242, 0.402313, -0.762800,
		0.248129, 0.779164, 0.575618,
		0.825924, -0.480675, 0.294620,
		34.762535, 35.197716, 46.389095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749645, 35.970551, 46.211647>,  <34.184391, 35.534187, 46.182861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749645, 35.970551, 46.211647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923851, 35.614658, 46.156940>,  <35.028374, 35.401123, 46.124119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923851, 35.614658, 46.156940>,  <34.749645, 35.970551, 46.211647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923851, 35.614658, 46.156940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674386, 0.423123, -0.605120,
		0.596261, 0.171311, 0.784300,
		0.435518, -0.889730, -0.136762,
		35.054508, 35.347740, 46.115913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447868, 36.162201, 46.264042>,  <34.749645, 35.970551, 46.211647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447868, 36.162201, 46.264042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423111, 35.801727, 46.092445>,  <35.408257, 35.585442, 45.989487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423111, 35.801727, 46.092445>,  <35.447868, 36.162201, 46.264042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423111, 35.801727, 46.092445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626783, 0.299399, -0.719376,
		0.776731, -0.313412, 0.546316,
		-0.061894, -0.901184, -0.428994,
		35.404541, 35.531372, 45.963745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045227, 36.061325, 45.989223>,  <35.447868, 36.162201, 46.264042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045227, 36.061325, 45.989223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802319, 35.818218, 45.784542>,  <35.656574, 35.672356, 45.661736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802319, 35.818218, 45.784542>,  <36.045227, 36.061325, 45.989223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802319, 35.818218, 45.784542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486217, 0.225072, -0.844355,
		0.628339, -0.761554, 0.158825,
		-0.607275, -0.607765, -0.511701,
		35.620136, 35.635887, 45.631031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537258, 35.626968, 45.649891>,  <36.045227, 36.061325, 45.989223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537258, 35.626968, 45.649891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204609, 35.560974, 45.437786>,  <36.005020, 35.521378, 45.310524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204609, 35.560974, 45.437786>,  <36.537258, 35.626968, 45.649891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204609, 35.560974, 45.437786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512428, 0.140064, -0.847231,
		0.214051, -0.976300, -0.031938,
		-0.831625, -0.164985, -0.530264,
		35.955120, 35.511478, 45.278706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767990, 35.264305, 45.054058>,  <36.537258, 35.626968, 45.649891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767990, 35.264305, 45.054058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.410297, 35.416393, 44.959591>,  <36.195683, 35.507648, 44.902912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.410297, 35.416393, 44.959591>,  <36.767990, 35.264305, 45.054058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410297, 35.416393, 44.959591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324421, 0.187072, -0.927230,
		-0.308376, -0.905778, -0.290639,
		-0.894234, 0.380225, -0.236165,
		36.142029, 35.530460, 44.888741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623642, 35.106674, 44.344444>,  <36.767990, 35.264305, 45.054058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623642, 35.106674, 44.344444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375881, 35.414043, 44.408791>,  <36.227226, 35.598465, 44.447399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375881, 35.414043, 44.408791>,  <36.623642, 35.106674, 44.344444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375881, 35.414043, 44.408791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252873, 0.389255, -0.885740,
		-0.743235, -0.507950, -0.435417,
		-0.619400, 0.768419, 0.160862,
		36.190060, 35.644569, 44.457050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269829, 35.190094, 43.709782>,  <36.623642, 35.106674, 44.344444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269829, 35.190094, 43.709782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260056, 35.548473, 43.887177>,  <36.254192, 35.763500, 43.993614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.260056, 35.548473, 43.887177>,  <36.269829, 35.190094, 43.709782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260056, 35.548473, 43.887177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286841, 0.431252, -0.855420,
		-0.957667, 0.106312, -0.267530,
		-0.024431, 0.895946, 0.443490,
		36.252728, 35.817257, 44.020226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793678, 35.566521, 43.229805>,  <36.269829, 35.190094, 43.709782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793678, 35.566521, 43.229805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011780, 35.810207, 43.460125>,  <36.142643, 35.956421, 43.598316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011780, 35.810207, 43.460125>,  <35.793678, 35.566521, 43.229805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011780, 35.810207, 43.460125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303236, 0.497031, -0.813024,
		-0.781499, 0.617912, 0.086274,
		0.545259, 0.609217, 0.575802,
		36.175358, 35.992973, 43.632866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743301, 36.245041, 42.895416>,  <35.793678, 35.566521, 43.229805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743301, 36.245041, 42.895416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048374, 36.283356, 43.151272>,  <36.231419, 36.306343, 43.304783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048374, 36.283356, 43.151272>,  <35.743301, 36.245041, 42.895416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048374, 36.283356, 43.151272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520404, 0.496357, -0.694845,
		-0.384043, 0.862818, 0.328718,
		0.762687, 0.095785, 0.639636,
		36.277180, 36.312092, 43.343163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887177, 36.970943, 42.864082>,  <35.743301, 36.245041, 42.895416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887177, 36.970943, 42.864082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212173, 36.772263, 42.986156>,  <36.407173, 36.653053, 43.059399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212173, 36.772263, 42.986156>,  <35.887177, 36.970943, 42.864082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212173, 36.772263, 42.986156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480526, 0.274217, -0.833006,
		0.330072, 0.823461, 0.461480,
		0.812494, -0.496706, 0.305183,
		36.455921, 36.623249, 43.077713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662727, 37.408379, 42.926842>,  <35.887177, 36.970943, 42.864082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662727, 37.408379, 42.926842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763626, 37.030247, 42.844158>,  <36.824165, 36.803368, 42.794548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.763626, 37.030247, 42.844158>,  <36.662727, 37.408379, 42.926842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763626, 37.030247, 42.844158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603998, 0.320705, -0.729613,
		0.756015, 0.059191, 0.651872,
		0.252245, -0.945328, -0.206706,
		36.839298, 36.746647, 42.782146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274975, 37.492741, 42.592403>,  <36.662727, 37.408379, 42.926842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274975, 37.492741, 42.592403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253113, 37.097664, 42.533791>,  <37.239998, 36.860619, 42.498623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253113, 37.097664, 42.533791>,  <37.274975, 37.492741, 42.592403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253113, 37.097664, 42.533791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586048, 0.087087, -0.805583,
		0.808431, -0.129901, 0.574078,
		-0.054651, -0.987695, -0.146532,
		37.236717, 36.801353, 42.489830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.673376, 35.345123, 41.231258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342375, 35.498638, 41.395184>,  <30.143774, 35.590748, 41.493538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342375, 35.498638, 41.395184>,  <30.673376, 35.345123, 41.231258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342375, 35.498638, 41.395184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515952, -0.231930, -0.824623,
		-0.221443, -0.893816, 0.389944,
		-0.827500, 0.383799, 0.409807,
		30.094124, 35.613773, 41.518127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257654, 34.899139, 41.022396>,  <30.673376, 35.345123, 41.231258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257654, 34.899139, 41.022396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082668, 35.254204, 41.079918>,  <29.977676, 35.467243, 41.114433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082668, 35.254204, 41.079918>,  <30.257654, 34.899139, 41.022396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082668, 35.254204, 41.079918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612154, -0.176823, -0.770714,
		-0.658706, -0.425191, 0.620740,
		-0.437462, 0.887663, 0.143808,
		29.951429, 35.520504, 41.123062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526430, 34.793350, 41.154259>,  <30.257654, 34.899139, 41.022396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526430, 34.793350, 41.154259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572536, 35.168575, 41.023563>,  <29.600201, 35.393711, 40.945148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.572536, 35.168575, 41.023563>,  <29.526430, 34.793350, 41.154259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572536, 35.168575, 41.023563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684010, -0.163565, -0.710898,
		-0.720308, 0.305433, 0.622790,
		0.115265, 0.938061, -0.326737,
		29.607117, 35.449993, 40.925541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920551, 34.845905, 40.856651>,  <29.526430, 34.793350, 41.154259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920551, 34.845905, 40.856651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141190, 35.142456, 40.703754>,  <29.273573, 35.320385, 40.612015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141190, 35.142456, 40.703754>,  <28.920551, 34.845905, 40.856651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141190, 35.142456, 40.703754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535540, -0.036560, -0.843718,
		-0.639485, 0.670096, 0.376869,
		0.551594, 0.741373, -0.382243,
		29.306667, 35.364868, 40.589081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383148, 35.386597, 40.580460>,  <28.920551, 34.845905, 40.856651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383148, 35.386597, 40.580460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728670, 35.469868, 40.396938>,  <28.935984, 35.519829, 40.286823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728670, 35.469868, 40.396938>,  <28.383148, 35.386597, 40.580460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728670, 35.469868, 40.396938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469007, -0.000409, -0.883194,
		-0.184048, 0.978091, 0.097283,
		0.863805, 0.208176, -0.458807,
		28.987812, 35.532322, 40.259296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157969, 35.591007, 40.063354>,  <28.383148, 35.386597, 40.580460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157969, 35.591007, 40.063354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531975, 35.582939, 39.921741>,  <28.756378, 35.578098, 39.836773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.531975, 35.582939, 39.921741>,  <28.157969, 35.591007, 40.063354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531975, 35.582939, 39.921741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354137, -0.104556, -0.929331,
		-0.018273, 0.994315, -0.104905,
		0.935015, -0.020169, -0.354034,
		28.812479, 35.576889, 39.815533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261648, 36.112358, 39.522980>,  <28.157969, 35.591007, 40.063354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261648, 36.112358, 39.522980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536469, 35.826958, 39.468018>,  <28.701361, 35.655720, 39.435040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536469, 35.826958, 39.468018>,  <28.261648, 36.112358, 39.522980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536469, 35.826958, 39.468018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328129, -0.135940, -0.934800,
		0.648299, 0.687343, -0.327517,
		0.687051, -0.713498, -0.137408,
		28.742584, 35.612907, 39.426796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526127, 36.233940, 38.896782>,  <28.261648, 36.112358, 39.522980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526127, 36.233940, 38.896782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.621580, 35.849552, 38.952774>,  <28.678852, 35.618919, 38.986370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.621580, 35.849552, 38.952774>,  <28.526127, 36.233940, 38.896782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621580, 35.849552, 38.952774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241320, -0.198302, -0.949969,
		0.940648, 0.192914, -0.279223,
		0.238633, -0.960969, 0.139979,
		28.693171, 35.561260, 38.994766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063480, 36.075657, 38.392048>,  <28.526127, 36.233940, 38.896782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063480, 36.075657, 38.392048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862894, 35.755157, 38.522602>,  <28.742542, 35.562859, 38.600933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.862894, 35.755157, 38.522602>,  <29.063480, 36.075657, 38.392048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862894, 35.755157, 38.522602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316897, -0.180925, -0.931044,
		0.805052, -0.570316, -0.163187,
		-0.501465, -0.801252, 0.326386,
		28.712454, 35.514782, 38.620518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236740, 35.504333, 37.911682>,  <29.063480, 36.075657, 38.392048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236740, 35.504333, 37.911682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900194, 35.370197, 38.081223>,  <28.698267, 35.289715, 38.182945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900194, 35.370197, 38.081223>,  <29.236740, 35.504333, 37.911682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900194, 35.370197, 38.081223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403957, -0.130813, -0.905377,
		0.359058, -0.932970, -0.025402,
		-0.841366, -0.335344, 0.423849,
		28.647785, 35.269596, 38.208378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068672, 34.902905, 37.571392>,  <29.236740, 35.504333, 37.911682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068672, 34.902905, 37.571392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711866, 34.949207, 37.746166>,  <28.497784, 34.976990, 37.851028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711866, 34.949207, 37.746166>,  <29.068672, 34.902905, 37.571392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711866, 34.949207, 37.746166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444968, -0.394803, -0.803825,
		0.079451, -0.911444, 0.403679,
		-0.892015, 0.115760, 0.436931,
		28.444262, 34.983936, 37.877247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657324, 34.306881, 37.452438>,  <29.068672, 34.902905, 37.571392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657324, 34.306881, 37.452438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388586, 34.591125, 37.536011>,  <28.227343, 34.761673, 37.586155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388586, 34.591125, 37.536011>,  <28.657324, 34.306881, 37.452438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388586, 34.591125, 37.536011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508185, -0.237018, -0.827992,
		-0.538861, -0.662459, 0.520362,
		-0.671846, 0.710613, 0.208932,
		28.187033, 34.804310, 37.598690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072250, 34.012623, 37.134918>,  <28.657324, 34.306881, 37.452438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072250, 34.012623, 37.134918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980776, 34.398861, 37.184444>,  <27.925892, 34.630604, 37.214161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980776, 34.398861, 37.184444>,  <28.072250, 34.012623, 37.134918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980776, 34.398861, 37.184444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579257, -0.032745, -0.814487,
		-0.782409, -0.257985, 0.566815,
		-0.228686, 0.965594, 0.123820,
		27.912170, 34.688538, 37.221592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366388, 34.032196, 37.279491>,  <28.072250, 34.012623, 37.134918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366388, 34.032196, 37.279491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483723, 34.388218, 37.139915>,  <27.554123, 34.601830, 37.056168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483723, 34.388218, 37.139915>,  <27.366388, 34.032196, 37.279491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483723, 34.388218, 37.139915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599821, -0.112870, -0.792133,
		-0.744425, 0.441664, 0.500763,
		0.293336, 0.890052, -0.348943,
		27.571724, 34.655235, 37.035233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755131, 34.289497, 37.052410>,  <27.366388, 34.032196, 37.279491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755131, 34.289497, 37.052410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061932, 34.474308, 36.874313>,  <27.246012, 34.585194, 36.767456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061932, 34.474308, 36.874313>,  <26.755131, 34.289497, 37.052410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061932, 34.474308, 36.874313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534617, 0.076451, -0.841630,
		-0.354814, 0.883566, 0.305644,
		0.767002, 0.462025, -0.445243,
		27.292032, 34.612915, 36.740742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435122, 34.780167, 36.749157>,  <26.755131, 34.289497, 37.052410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435122, 34.780167, 36.749157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778791, 34.768009, 36.544846>,  <26.984993, 34.760715, 36.422260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778791, 34.768009, 36.544846>,  <26.435122, 34.780167, 36.749157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778791, 34.768009, 36.544846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507568, 0.075701, -0.858280,
		0.064753, 0.996667, 0.049613,
		0.859175, -0.030395, -0.510778,
		27.036545, 34.758892, 36.391613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312611, 35.296268, 36.217037>,  <26.435122, 34.780167, 36.749157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312611, 35.296268, 36.217037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.612541, 35.070881, 36.078320>,  <26.792500, 34.935650, 35.995087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.612541, 35.070881, 36.078320>,  <26.312611, 35.296268, 36.217037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612541, 35.070881, 36.078320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426194, -0.010412, -0.904572,
		0.506084, 0.826074, -0.247953,
		0.749825, -0.563466, -0.346798,
		26.837488, 34.901840, 35.974281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576189, 35.622414, 35.678253>,  <26.312611, 35.296268, 36.217037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576189, 35.622414, 35.678253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725658, 35.261189, 35.593544>,  <26.815340, 35.044453, 35.542717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.725658, 35.261189, 35.593544>,  <26.576189, 35.622414, 35.678253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725658, 35.261189, 35.593544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307465, 0.094812, -0.946824,
		0.875118, 0.418918, -0.242231,
		0.373676, -0.903061, -0.211774,
		26.837761, 34.990269, 35.530010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888708, 35.619637, 34.958344>,  <26.576189, 35.622414, 35.678253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888708, 35.619637, 34.958344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829224, 35.232693, 35.040417>,  <26.793533, 35.000526, 35.089661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829224, 35.232693, 35.040417>,  <26.888708, 35.619637, 34.958344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829224, 35.232693, 35.040417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486425, -0.109093, -0.866885,
		0.860974, -0.228719, -0.454325,
		-0.148710, -0.967360, 0.205181,
		26.784611, 34.942486, 35.101971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176960, 35.070278, 34.380287>,  <26.888708, 35.619637, 34.958344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176960, 35.070278, 34.380287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861198, 34.942085, 34.589718>,  <26.671741, 34.865170, 34.715378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861198, 34.942085, 34.589718>,  <27.176960, 35.070278, 34.380287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861198, 34.942085, 34.589718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497674, -0.165218, -0.851483,
		0.359387, -0.932736, -0.029070,
		-0.789406, -0.320479, 0.523576,
		26.624376, 34.845943, 34.746792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871664, 35.644188, 34.378662>,  <27.176960, 35.070278, 34.380287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871664, 35.644188, 34.378662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197004, 35.815414, 34.221069>,  <28.392208, 35.918148, 34.126514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197004, 35.815414, 34.221069>,  <27.871664, 35.644188, 34.378662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197004, 35.815414, 34.221069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240673, 0.368965, 0.897742,
		0.529656, -0.825001, 0.197075,
		0.813352, 0.428063, -0.393980,
		28.441010, 35.943832, 34.102875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379581, 35.546761, 34.891792>,  <27.871664, 35.644188, 34.378662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379581, 35.546761, 34.891792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540241, 35.826618, 34.655426>,  <28.636637, 35.994534, 34.513607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540241, 35.826618, 34.655426>,  <28.379581, 35.546761, 34.891792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540241, 35.826618, 34.655426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441615, 0.417299, 0.794253,
		0.802279, -0.579969, -0.141363,
		0.401651, 0.699641, -0.590913,
		28.660736, 36.036510, 34.478153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139175, 35.723278, 35.155128>,  <28.379581, 35.546761, 34.891792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139175, 35.723278, 35.155128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020735, 36.026619, 34.922848>,  <28.949671, 36.208626, 34.783478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020735, 36.026619, 34.922848>,  <29.139175, 35.723278, 35.155128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020735, 36.026619, 34.922848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269244, 0.649584, 0.711019,
		0.916423, 0.054183, -0.396527,
		-0.296103, 0.758356, -0.580705,
		28.931904, 36.254128, 34.748634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655457, 36.140556, 35.208569>,  <29.139175, 35.723278, 35.155128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655457, 36.140556, 35.208569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356001, 36.383942, 35.103264>,  <29.176327, 36.529972, 35.040081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356001, 36.383942, 35.103264>,  <29.655457, 36.140556, 35.208569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356001, 36.383942, 35.103264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295518, 0.661729, 0.689046,
		0.593471, 0.438047, -0.675209,
		-0.748639, 0.608465, -0.263266,
		29.131409, 36.566483, 35.024284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945980, 36.743351, 35.293316>,  <29.655457, 36.140556, 35.208569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945980, 36.743351, 35.293316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551701, 36.810402, 35.286434>,  <29.315132, 36.850632, 35.282307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.551701, 36.810402, 35.286434>,  <29.945980, 36.743351, 35.293316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551701, 36.810402, 35.286434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124801, 0.794793, 0.593910,
		0.113230, 0.583270, -0.804347,
		-0.985700, 0.167632, -0.017202,
		29.255991, 36.860691, 35.281273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930609, 37.453846, 35.228172>,  <29.945980, 36.743351, 35.293316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930609, 37.453846, 35.228172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570494, 37.363232, 35.376854>,  <29.354425, 37.308865, 35.466064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570494, 37.363232, 35.376854>,  <29.930609, 37.453846, 35.228172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570494, 37.363232, 35.376854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105910, 0.714253, 0.691828,
		-0.422214, 0.662211, -0.619041,
		-0.900288, -0.226537, 0.371702,
		29.300407, 37.295269, 35.488365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591146, 38.125923, 35.450817>,  <29.930609, 37.453846, 35.228172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591146, 38.125923, 35.450817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413507, 37.823586, 35.643269>,  <29.306925, 37.642185, 35.758739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413507, 37.823586, 35.643269>,  <29.591146, 38.125923, 35.450817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413507, 37.823586, 35.643269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103108, 0.576531, 0.810543,
		-0.890026, 0.310351, -0.333969,
		-0.444097, -0.755840, 0.481128,
		29.280279, 37.596832, 35.787605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144756, 38.472481, 35.804111>,  <29.591146, 38.125923, 35.450817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144756, 38.472481, 35.804111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137972, 38.135330, 36.019249>,  <29.133902, 37.933041, 36.148331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137972, 38.135330, 36.019249>,  <29.144756, 38.472481, 35.804111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137972, 38.135330, 36.019249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181895, 0.531545, 0.827269,
		-0.983172, -0.083799, -0.162331,
		-0.016962, -0.842875, 0.537842,
		29.132883, 37.882469, 36.180603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550205, 38.449421, 36.312462>,  <29.144756, 38.472481, 35.804111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550205, 38.449421, 36.312462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.821856, 38.200802, 36.468651>,  <28.984846, 38.051632, 36.562366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.821856, 38.200802, 36.468651>,  <28.550205, 38.449421, 36.312462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821856, 38.200802, 36.468651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065006, 0.478948, 0.875433,
		-0.731137, -0.619913, 0.284862,
		0.679127, -0.621544, 0.390474,
		29.025593, 38.014339, 36.585793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200706, 38.166088, 36.921646>,  <28.550205, 38.449421, 36.312462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200706, 38.166088, 36.921646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594963, 38.122269, 36.973034>,  <28.831518, 38.095978, 37.003868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594963, 38.122269, 36.973034>,  <28.200706, 38.166088, 36.921646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594963, 38.122269, 36.973034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071741, 0.417059, 0.906044,
		-0.152838, -0.902253, 0.403212,
		0.985644, -0.109551, 0.128471,
		28.890656, 38.089405, 37.011574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255373, 37.941093, 37.546097>,  <28.200706, 38.166088, 36.921646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255373, 37.941093, 37.546097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626814, 38.073990, 37.479992>,  <28.849678, 38.153728, 37.440331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626814, 38.073990, 37.479992>,  <28.255373, 37.941093, 37.546097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626814, 38.073990, 37.479992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021781, 0.493399, 0.869530,
		0.370431, -0.803850, 0.465409,
		0.928605, 0.332238, -0.165261,
		28.905396, 38.173660, 37.430412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578396, 37.876507, 38.107494>,  <28.255373, 37.941093, 37.546097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578396, 37.876507, 38.107494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806475, 38.163200, 37.946911>,  <28.943321, 38.335217, 37.850559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806475, 38.163200, 37.946911>,  <28.578396, 37.876507, 38.107494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806475, 38.163200, 37.946911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165669, 0.378328, 0.910726,
		0.804630, -0.585803, 0.096981,
		0.570196, 0.716731, -0.401463,
		28.977533, 38.378220, 37.826473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249388, 37.887630, 38.464867>,  <28.578396, 37.876507, 38.107494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249388, 37.887630, 38.464867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195644, 38.242973, 38.289246>,  <29.163399, 38.456181, 38.183872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195644, 38.242973, 38.289246>,  <29.249388, 37.887630, 38.464867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195644, 38.242973, 38.289246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118515, 0.454294, 0.882933,
		0.983820, 0.066594, -0.166321,
		-0.134357, 0.888359, -0.439051,
		29.155338, 38.509480, 38.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638376, 38.343830, 38.882240>,  <29.249388, 37.887630, 38.464867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638376, 38.343830, 38.882240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410044, 38.600273, 38.677055>,  <29.273045, 38.754139, 38.553944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410044, 38.600273, 38.677055>,  <29.638376, 38.343830, 38.882240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410044, 38.600273, 38.677055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021470, 0.636192, 0.771232,
		0.820787, 0.429229, -0.376922,
		-0.570830, 0.641110, -0.512963,
		29.238794, 38.792606, 38.523167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970894, 38.932766, 38.999985>,  <29.638376, 38.343830, 38.882240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970894, 38.932766, 38.999985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598890, 39.040688, 38.900150>,  <29.375689, 39.105438, 38.840248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598890, 39.040688, 38.900150>,  <29.970894, 38.932766, 38.999985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598890, 39.040688, 38.900150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001129, 0.676973, 0.736007,
		0.367540, 0.684773, -0.629285,
		-0.930007, 0.269802, -0.249588,
		29.319889, 39.121628, 38.825275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026655, 39.564526, 39.039795>,  <29.970894, 38.932766, 38.999985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026655, 39.564526, 39.039795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643267, 39.460999, 39.087700>,  <29.413233, 39.398880, 39.116444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643267, 39.460999, 39.087700>,  <30.026655, 39.564526, 39.039795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643267, 39.460999, 39.087700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035824, 0.525876, 0.849806,
		-0.282925, 0.810226, -0.513310,
		-0.958473, -0.258821, 0.119758,
		29.355724, 39.383354, 39.123627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826033, 40.107487, 39.403069>,  <30.026655, 39.564526, 39.039795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826033, 40.107487, 39.403069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502401, 39.873978, 39.430202>,  <29.308222, 39.733871, 39.446484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502401, 39.873978, 39.430202>,  <29.826033, 40.107487, 39.403069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502401, 39.873978, 39.430202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292338, 0.499894, 0.815258,
		-0.509835, 0.639777, -0.575112,
		-0.809078, -0.583774, 0.067832,
		29.259678, 39.698845, 39.450554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214842, 40.636177, 39.450043>,  <29.826033, 40.107487, 39.403069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214842, 40.636177, 39.450043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130741, 40.266068, 39.576321>,  <29.080280, 40.044003, 39.652088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.130741, 40.266068, 39.576321>,  <29.214842, 40.636177, 39.450043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130741, 40.266068, 39.576321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277461, 0.366111, 0.888244,
		-0.937448, 0.099163, -0.333703,
		-0.210254, -0.925272, 0.315696,
		29.067665, 39.988487, 39.671028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591398, 40.786701, 39.830074>,  <29.214842, 40.636177, 39.450043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591398, 40.786701, 39.830074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.734980, 40.435558, 39.956890>,  <28.821129, 40.224873, 40.032978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.734980, 40.435558, 39.956890>,  <28.591398, 40.786701, 39.830074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734980, 40.435558, 39.956890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037781, 0.353061, 0.934837,
		-0.932590, -0.323586, 0.159899,
		0.358954, -0.877861, 0.317036,
		28.842667, 40.172199, 40.052002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286879, 40.634949, 40.485939>,  <28.591398, 40.786701, 39.830074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286879, 40.634949, 40.485939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.593689, 40.380497, 40.519436>,  <28.777775, 40.227825, 40.539536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.593689, 40.380497, 40.519436>,  <28.286879, 40.634949, 40.485939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593689, 40.380497, 40.519436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056354, 0.063222, 0.996407,
		-0.639137, -0.768989, 0.012645,
		0.767026, -0.636128, 0.083743,
		28.823797, 40.189659, 40.544559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055523, 40.212986, 40.973190>,  <28.286879, 40.634949, 40.485939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055523, 40.212986, 40.973190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453285, 40.170879, 40.969761>,  <28.691942, 40.145615, 40.967705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453285, 40.170879, 40.969761>,  <28.055523, 40.212986, 40.973190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453285, 40.170879, 40.969761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024310, 0.149140, 0.988517,
		-0.102778, -0.983197, 0.150865,
		0.994407, -0.105265, -0.008573,
		28.751608, 40.139301, 40.967190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318228, 39.644947, 41.368927>,  <28.055523, 40.212986, 40.973190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318228, 39.644947, 41.368927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582916, 39.944767, 41.362053>,  <28.741730, 40.124660, 41.357929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582916, 39.944767, 41.362053>,  <28.318228, 39.644947, 41.368927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582916, 39.944767, 41.362053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176021, 0.177591, 0.968234,
		0.728793, -0.637678, 0.249453,
		0.661723, 0.749552, -0.017183,
		28.781433, 40.169632, 41.356899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.163158, 32.442974, 45.402088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836056, 32.214195, 45.376335>,  <34.639793, 32.076927, 45.360886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836056, 32.214195, 45.376335>,  <35.163158, 32.442974, 45.402088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836056, 32.214195, 45.376335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132088, 0.077622, 0.988194,
		-0.560200, 0.816608, -0.139024,
		-0.817758, -0.571950, -0.064380,
		34.590729, 32.042610, 45.357021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715668, 32.773285, 45.844845>,  <35.163158, 32.442974, 45.402088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715668, 32.773285, 45.844845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604679, 32.394238, 45.781574>,  <34.538086, 32.166809, 45.743610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604679, 32.394238, 45.781574>,  <34.715668, 32.773285, 45.844845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604679, 32.394238, 45.781574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113785, -0.131070, 0.984822,
		-0.953971, 0.291260, -0.071457,
		-0.277474, -0.947622, -0.158178,
		34.521439, 32.109951, 45.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229179, 32.725735, 46.367924>,  <34.715668, 32.773285, 45.844845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229179, 32.725735, 46.367924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273071, 32.343204, 46.259548>,  <34.299408, 32.113686, 46.194523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273071, 32.343204, 46.259548>,  <34.229179, 32.725735, 46.367924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273071, 32.343204, 46.259548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086037, -0.280703, 0.955930,
		-0.990231, -0.081583, -0.113081,
		0.109730, -0.956321, -0.270942,
		34.305992, 32.056309, 46.178265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808750, 32.301407, 46.802315>,  <34.229179, 32.725735, 46.367924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808750, 32.301407, 46.802315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099590, 32.054562, 46.681988>,  <34.274094, 31.906454, 46.609791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099590, 32.054562, 46.681988>,  <33.808750, 32.301407, 46.802315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099590, 32.054562, 46.681988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028310, -0.410846, 0.911265,
		-0.685944, -0.671100, -0.281258,
		0.727104, -0.617114, -0.300816,
		34.317722, 31.869427, 46.591743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568947, 31.703627, 47.103943>,  <33.808750, 32.301407, 46.802315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568947, 31.703627, 47.103943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958649, 31.690689, 47.014694>,  <34.192471, 31.682926, 46.961143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958649, 31.690689, 47.014694>,  <33.568947, 31.703627, 47.103943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958649, 31.690689, 47.014694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198424, -0.346881, 0.916680,
		-0.107046, -0.937352, -0.331532,
		0.974253, -0.032343, -0.223125,
		34.250923, 31.680986, 46.947758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746643, 31.063124, 47.333321>,  <33.568947, 31.703627, 47.103943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746643, 31.063124, 47.333321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084881, 31.272703, 47.292439>,  <34.287823, 31.398451, 47.267910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.084881, 31.272703, 47.292439>,  <33.746643, 31.063124, 47.333321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084881, 31.272703, 47.292439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314959, -0.335083, 0.887987,
		0.431012, -0.783068, -0.448367,
		0.845594, 0.523950, -0.102209,
		34.338558, 31.429888, 47.261776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360073, 30.637129, 47.498898>,  <33.746643, 31.063124, 47.333321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360073, 30.637129, 47.498898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434700, 31.021925, 47.578663>,  <34.479477, 31.252804, 47.626522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434700, 31.021925, 47.578663>,  <34.360073, 30.637129, 47.498898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434700, 31.021925, 47.578663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405263, -0.260258, 0.876372,
		0.894961, -0.082689, -0.438415,
		0.186568, 0.961992, 0.199410,
		34.490669, 31.310522, 47.638485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871407, 30.583576, 48.019165>,  <34.360073, 30.637129, 47.498898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871407, 30.583576, 48.019165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780609, 30.972689, 48.037804>,  <34.726131, 31.206156, 48.048988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780609, 30.972689, 48.037804>,  <34.871407, 30.583576, 48.019165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780609, 30.972689, 48.037804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164217, -0.008932, 0.986384,
		0.959952, 0.231551, -0.157720,
		-0.226990, 0.972782, 0.046599,
		34.712513, 31.264523, 48.051785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466591, 30.932484, 48.240589>,  <34.871407, 30.583576, 48.019165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466591, 30.932484, 48.240589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133945, 31.130318, 48.341625>,  <34.934357, 31.249018, 48.402245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133945, 31.130318, 48.341625>,  <35.466591, 30.932484, 48.240589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133945, 31.130318, 48.341625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178544, -0.192570, 0.964904,
		0.525866, 0.847528, 0.071839,
		-0.831617, 0.494583, 0.252587,
		34.884460, 31.278692, 48.417400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670059, 31.353273, 48.782677>,  <35.466591, 30.932484, 48.240589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670059, 31.353273, 48.782677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275204, 31.395432, 48.830772>,  <35.038292, 31.420727, 48.859631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275204, 31.395432, 48.830772>,  <35.670059, 31.353273, 48.782677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275204, 31.395432, 48.830772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132724, 0.120800, 0.983764,
		0.089158, 0.987066, -0.133235,
		-0.987135, 0.105394, 0.120237,
		34.979065, 31.427050, 48.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593468, 31.905918, 49.255711>,  <35.670059, 31.353273, 48.782677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593468, 31.905918, 49.255711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249905, 31.703222, 49.285339>,  <35.043766, 31.581604, 49.303116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249905, 31.703222, 49.285339>,  <35.593468, 31.905918, 49.255711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249905, 31.703222, 49.285339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132736, -0.080579, 0.987870,
		-0.494624, 0.858325, 0.136473,
		-0.858911, -0.506740, 0.074074,
		34.992233, 31.551201, 49.307560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112888, 32.205326, 49.713852>,  <35.593468, 31.905918, 49.255711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112888, 32.205326, 49.713852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023186, 31.815798, 49.699017>,  <34.969364, 31.582081, 49.690117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023186, 31.815798, 49.699017>,  <35.112888, 32.205326, 49.713852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023186, 31.815798, 49.699017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051118, -0.049759, 0.997452,
		-0.973189, 0.221789, 0.060939,
		-0.224256, -0.973824, -0.037088,
		34.955910, 31.523651, 49.687889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471825, 32.082062, 50.058411>,  <35.112888, 32.205326, 49.713852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471825, 32.082062, 50.058411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732620, 31.778791, 50.062122>,  <34.889099, 31.596830, 50.064350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732620, 31.778791, 50.062122>,  <34.471825, 32.082062, 50.058411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732620, 31.778791, 50.062122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075695, 0.077256, 0.994134,
		-0.754441, -0.647462, 0.107760,
		0.651989, -0.758172, 0.009275,
		34.928215, 31.551340, 50.064903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391968, 31.622681, 50.723999>,  <34.471825, 32.082062, 50.058411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391968, 31.622681, 50.723999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733189, 31.500103, 50.555050>,  <34.937920, 31.426556, 50.453682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733189, 31.500103, 50.555050>,  <34.391968, 31.622681, 50.723999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733189, 31.500103, 50.555050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477946, 0.133920, 0.868120,
		-0.209467, -0.942421, 0.260705,
		0.853048, -0.306445, -0.422374,
		34.989101, 31.408169, 50.428337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878853, 32.027157, 51.090538>,  <34.391968, 31.622681, 50.723999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878853, 32.027157, 51.090538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491867, 32.117149, 51.044231>,  <33.259678, 32.171143, 51.016449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491867, 32.117149, 51.044231>,  <33.878853, 32.027157, 51.090538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491867, 32.117149, 51.044231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245879, 0.728081, -0.639877,
		-0.059672, -0.647521, -0.759708,
		-0.967462, 0.224979, -0.115766,
		33.201630, 32.184643, 51.009502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617630, 32.031673, 50.353622>,  <33.878853, 32.027157, 51.090538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617630, 32.031673, 50.353622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388870, 32.265343, 50.583988>,  <33.251614, 32.405544, 50.722206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388870, 32.265343, 50.583988>,  <33.617630, 32.031673, 50.353622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388870, 32.265343, 50.583988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037565, 0.719968, -0.692990,
		-0.819463, -0.374687, -0.433694,
		-0.571900, 0.584172, 0.575912,
		33.217300, 32.440594, 50.756763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058956, 32.297810, 49.897591>,  <33.617630, 32.031673, 50.353622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058956, 32.297810, 49.897591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097340, 32.547810, 50.207474>,  <33.120369, 32.697811, 50.393402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097340, 32.547810, 50.207474>,  <33.058956, 32.297810, 49.897591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097340, 32.547810, 50.207474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072784, 0.771807, -0.631677,
		-0.992721, 0.116998, 0.028568,
		0.095954, 0.625000, 0.774705,
		33.126125, 32.735310, 50.439884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595928, 32.754234, 49.776588>,  <33.058956, 32.297810, 49.897591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595928, 32.754234, 49.776588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849770, 32.929028, 50.031563>,  <33.002075, 33.033905, 50.184547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849770, 32.929028, 50.031563>,  <32.595928, 32.754234, 49.776588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849770, 32.929028, 50.031563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114689, 0.762418, -0.636840,
		-0.764281, 0.477248, 0.433716,
		0.634603, 0.436983, 0.637437,
		33.040150, 33.060123, 50.222794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426689, 33.443439, 49.848412>,  <32.595928, 32.754234, 49.776588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426689, 33.443439, 49.848412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804134, 33.448055, 49.980751>,  <33.030602, 33.450825, 50.060154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804134, 33.448055, 49.980751>,  <32.426689, 33.443439, 49.848412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804134, 33.448055, 49.980751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197000, 0.783609, -0.589193,
		-0.266050, 0.621148, 0.737152,
		0.943615, 0.011536, 0.330845,
		33.087219, 33.451515, 50.080006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681522, 34.147709, 49.857925>,  <32.426689, 33.443439, 49.848412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681522, 34.147709, 49.857925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028206, 33.949326, 49.879253>,  <33.236217, 33.830296, 49.892052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028206, 33.949326, 49.879253>,  <32.681522, 34.147709, 49.857925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028206, 33.949326, 49.879253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439864, 0.709492, -0.550582,
		0.235233, 0.500649, 0.833076,
		0.866709, -0.495955, 0.053322,
		33.288219, 33.800537, 49.895248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150154, 34.647709, 49.913429>,  <32.681522, 34.147709, 49.857925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150154, 34.647709, 49.913429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314068, 34.315487, 49.762562>,  <33.412418, 34.116154, 49.672039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314068, 34.315487, 49.762562>,  <33.150154, 34.647709, 49.913429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314068, 34.315487, 49.762562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504542, 0.550852, -0.664831,
		0.759942, 0.082141, 0.644780,
		0.409788, -0.830551, -0.377172,
		33.437004, 34.066322, 49.649410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915863, 34.938782, 49.762585>,  <33.150154, 34.647709, 49.913429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915863, 34.938782, 49.762585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860878, 34.598614, 49.559452>,  <33.827888, 34.394512, 49.437572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860878, 34.598614, 49.559452>,  <33.915863, 34.938782, 49.762585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860878, 34.598614, 49.559452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417502, 0.415183, -0.808280,
		0.898219, -0.323128, 0.297980,
		-0.137462, -0.850419, -0.507831,
		33.819641, 34.343487, 49.407104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602295, 34.751366, 49.610382>,  <33.915863, 34.938782, 49.762585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602295, 34.751366, 49.610382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351509, 34.565487, 49.360271>,  <34.201038, 34.453960, 49.210205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351509, 34.565487, 49.360271>,  <34.602295, 34.751366, 49.610382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351509, 34.565487, 49.360271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492604, 0.385322, -0.780300,
		0.603535, -0.797236, -0.012674,
		-0.626967, -0.464695, -0.625277,
		34.163418, 34.426079, 49.172688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987980, 34.438053, 49.075653>,  <34.602295, 34.751366, 49.610382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987980, 34.438053, 49.075653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650208, 34.419060, 48.862232>,  <34.447544, 34.407665, 48.734180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650208, 34.419060, 48.862232>,  <34.987980, 34.438053, 49.075653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650208, 34.419060, 48.862232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491897, 0.325605, -0.807477,
		0.212066, -0.944313, -0.251597,
		-0.844432, -0.047479, -0.533554,
		34.396877, 34.404816, 48.702168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130966, 33.954987, 48.406223>,  <34.987980, 34.438053, 49.075653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130966, 33.954987, 48.406223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798790, 34.167671, 48.339714>,  <34.599483, 34.295284, 48.299809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798790, 34.167671, 48.339714>,  <35.130966, 33.954987, 48.406223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798790, 34.167671, 48.339714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295995, 0.168265, -0.940252,
		-0.471969, -0.830039, -0.297120,
		-0.830441, 0.531716, -0.166272,
		34.549656, 34.327187, 48.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956795, 33.750565, 47.767498>,  <35.130966, 33.954987, 48.406223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956795, 33.750565, 47.767498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750908, 34.091866, 47.801052>,  <34.627377, 34.296646, 47.821182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750908, 34.091866, 47.801052>,  <34.956795, 33.750565, 47.767498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750908, 34.091866, 47.801052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296144, 0.268751, -0.916554,
		-0.804592, -0.446923, -0.391014,
		-0.514714, 0.853249, 0.083881,
		34.596493, 34.347839, 47.826218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537724, 33.756752, 47.182484>,  <34.956795, 33.750565, 47.767498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537724, 33.756752, 47.182484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530815, 34.139534, 47.298367>,  <34.526669, 34.369205, 47.367897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530815, 34.139534, 47.298367>,  <34.537724, 33.756752, 47.182484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530815, 34.139534, 47.298367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193765, 0.287465, -0.937986,
		-0.980896, 0.039937, -0.190390,
		-0.017270, 0.956958, 0.289712,
		34.525635, 34.426620, 47.385281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074329, 34.077190, 46.786720>,  <34.537724, 33.756752, 47.182484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074329, 34.077190, 46.786720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318798, 34.366333, 46.915684>,  <34.465481, 34.539818, 46.993061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318798, 34.366333, 46.915684>,  <34.074329, 34.077190, 46.786720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318798, 34.366333, 46.915684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154446, 0.290597, -0.944299,
		-0.776281, 0.626927, 0.065964,
		0.611175, 0.722853, 0.322411,
		34.502151, 34.583187, 47.012405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459011, 34.233105, 46.637089>,  <34.074329, 34.077190, 46.786720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459011, 34.233105, 46.637089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169331, 34.107746, 46.391384>,  <32.995522, 34.032532, 46.243961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169331, 34.107746, 46.391384>,  <33.459011, 34.233105, 46.637089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169331, 34.107746, 46.391384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540528, -0.295160, 0.787852,
		-0.428214, 0.902588, 0.044356,
		-0.724198, -0.313394, -0.614265,
		32.952072, 34.013729, 46.207104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928928, 34.484436, 46.914761>,  <33.459011, 34.233105, 46.637089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928928, 34.484436, 46.914761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797108, 34.191067, 46.676945>,  <32.718014, 34.015045, 46.534256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797108, 34.191067, 46.676945>,  <32.928928, 34.484436, 46.914761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797108, 34.191067, 46.676945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547710, -0.364413, 0.753138,
		-0.769030, 0.573836, -0.281611,
		-0.329555, -0.733427, -0.594540,
		32.698242, 33.971039, 46.498581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274498, 34.479523, 47.075409>,  <32.928928, 34.484436, 46.914761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274498, 34.479523, 47.075409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359291, 34.119740, 46.922546>,  <32.410168, 33.903870, 46.830830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359291, 34.119740, 46.922546>,  <32.274498, 34.479523, 47.075409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359291, 34.119740, 46.922546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408969, -0.436803, 0.801217,
		-0.887585, -0.013555, -0.460444,
		0.211983, -0.899455, -0.382156,
		32.422886, 33.849903, 46.807899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703218, 34.096424, 47.210373>,  <32.274498, 34.479523, 47.075409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703218, 34.096424, 47.210373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982914, 33.815781, 47.155506>,  <32.150730, 33.647396, 47.122585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982914, 33.815781, 47.155506>,  <31.703218, 34.096424, 47.210373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982914, 33.815781, 47.155506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288328, -0.452350, 0.843947,
		-0.654166, -0.550570, -0.518593,
		0.699238, -0.701606, -0.137168,
		32.192684, 33.605297, 47.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373272, 33.497101, 47.217865>,  <31.703218, 34.096424, 47.210373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373272, 33.497101, 47.217865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742565, 33.373684, 47.309467>,  <31.964142, 33.299633, 47.364429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742565, 33.373684, 47.309467>,  <31.373272, 33.497101, 47.217865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742565, 33.373684, 47.309467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359029, -0.480369, 0.800215,
		-0.136889, -0.821005, -0.554267,
		0.923233, -0.308539, 0.229008,
		32.019535, 33.281120, 47.378170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225992, 32.793015, 47.244915>,  <31.373272, 33.497101, 47.217865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225992, 32.793015, 47.244915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566696, 32.856865, 47.444527>,  <31.771118, 32.895176, 47.564293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566696, 32.856865, 47.444527>,  <31.225992, 32.793015, 47.244915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566696, 32.856865, 47.444527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355603, -0.523354, 0.774369,
		0.384780, -0.837030, -0.389006,
		0.851757, 0.159630, 0.499026,
		31.822224, 32.904755, 47.594234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379219, 32.182999, 47.583420>,  <31.225992, 32.793015, 47.244915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379219, 32.182999, 47.583420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.606565, 32.434490, 47.795708>,  <31.742973, 32.585384, 47.923080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.606565, 32.434490, 47.795708>,  <31.379219, 32.182999, 47.583420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606565, 32.434490, 47.795708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241278, -0.489315, 0.838067,
		0.786603, -0.604380, -0.126413,
		0.568367, 0.628726, 0.530720,
		31.777075, 32.623108, 47.954926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760664, 31.552986, 47.472065>,  <31.379219, 32.182999, 47.583420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760664, 31.552986, 47.472065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494604, 31.276928, 47.358028>,  <31.334969, 31.111294, 47.289608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494604, 31.276928, 47.358028>,  <31.760664, 31.552986, 47.472065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494604, 31.276928, 47.358028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108827, 0.288124, -0.951389,
		0.738738, -0.663841, -0.116539,
		-0.665149, -0.690144, -0.285092,
		31.295059, 31.069885, 47.272499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063942, 31.099123, 46.924015>,  <31.760664, 31.552986, 47.472065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063942, 31.099123, 46.924015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668482, 31.051188, 46.887794>,  <31.431204, 31.022427, 46.866062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668482, 31.051188, 46.887794>,  <32.063942, 31.099123, 46.924015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668482, 31.051188, 46.887794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086073, 0.042062, -0.995401,
		0.123097, -0.991902, -0.031270,
		-0.988655, -0.119840, -0.090554,
		31.371885, 31.015236, 46.860630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964821, 30.710880, 46.330025>,  <32.063942, 31.099123, 46.924015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964821, 30.710880, 46.330025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592585, 30.850636, 46.373707>,  <31.369242, 30.934488, 46.399918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592585, 30.850636, 46.373707>,  <31.964821, 30.710880, 46.330025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592585, 30.850636, 46.373707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083413, 0.088080, -0.992615,
		-0.356429, -0.932828, -0.052822,
		-0.930592, 0.349390, 0.109204,
		31.313408, 30.955452, 46.406467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499435, 30.351265, 45.928787>,  <31.964821, 30.710880, 46.330025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499435, 30.351265, 45.928787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281626, 30.681286, 45.989155>,  <31.150940, 30.879299, 46.025375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281626, 30.681286, 45.989155>,  <31.499435, 30.351265, 45.928787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281626, 30.681286, 45.989155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115023, 0.104779, -0.987821,
		-0.830820, -0.555254, 0.037845,
		-0.544526, 0.825054, 0.150919,
		31.118267, 30.928802, 46.034431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011189, 30.360617, 45.436916>,  <31.499435, 30.351265, 45.928787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011189, 30.360617, 45.436916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.015421, 30.749481, 45.530544>,  <31.017962, 30.982800, 45.586720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.015421, 30.749481, 45.530544>,  <31.011189, 30.360617, 45.436916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015421, 30.749481, 45.530544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015132, 0.234210, -0.972068,
		-0.999830, 0.006746, 0.017189,
		0.010583, 0.972163, 0.234068,
		31.018597, 31.041130, 45.600765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568157, 30.746691, 44.865326>,  <31.011189, 30.360617, 45.436916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568157, 30.746691, 44.865326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.786747, 31.033863, 45.037811>,  <30.917900, 31.206167, 45.141300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.786747, 31.033863, 45.037811>,  <30.568157, 30.746691, 44.865326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786747, 31.033863, 45.037811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130616, 0.435526, -0.890650,
		-0.827228, 0.543039, 0.144230,
		0.546473, 0.717932, 0.431209,
		30.950689, 31.249243, 45.167175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224457, 31.392056, 44.602768>,  <30.568157, 30.746691, 44.865326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224457, 31.392056, 44.602768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.599937, 31.475632, 44.712448>,  <30.825226, 31.525778, 44.778255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.599937, 31.475632, 44.712448>,  <30.224457, 31.392056, 44.602768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599937, 31.475632, 44.712448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164200, 0.428397, -0.888546,
		-0.303120, 0.879102, 0.367828,
		0.938700, 0.208938, 0.274204,
		30.881548, 31.538313, 44.794708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.348934, 28.609093, 48.469170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552742, 28.953064, 48.481270>,  <33.675026, 29.159447, 48.488529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552742, 28.953064, 48.481270>,  <33.348934, 28.609093, 48.469170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552742, 28.953064, 48.481270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009694, 0.040892, -0.999117,
		-0.860405, 0.508775, 0.029172,
		0.509519, 0.859928, 0.030252,
		33.705597, 29.211042, 48.490345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129402, 29.013100, 47.968353>,  <33.348934, 28.609093, 48.469170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129402, 29.013100, 47.968353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.498619, 29.158461, 48.018856>,  <33.720150, 29.245678, 48.049156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.498619, 29.158461, 48.018856>,  <33.129402, 29.013100, 47.968353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498619, 29.158461, 48.018856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181804, -0.122825, -0.975634,
		-0.339041, 0.923500, -0.179440,
		0.923038, 0.363403, 0.126254,
		33.775532, 29.267481, 48.056732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327927, 29.543938, 47.426449>,  <33.129402, 29.013100, 47.968353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327927, 29.543938, 47.426449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.689548, 29.405645, 47.526970>,  <33.906521, 29.322670, 47.587284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.689548, 29.405645, 47.526970>,  <33.327927, 29.543938, 47.426449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689548, 29.405645, 47.526970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247637, -0.055527, -0.967260,
		0.348366, 0.936689, 0.035416,
		0.904056, -0.345731, 0.251303,
		33.960766, 29.301926, 47.602360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809921, 29.928524, 47.037346>,  <33.327927, 29.543938, 47.426449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809921, 29.928524, 47.037346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004749, 29.598621, 47.152267>,  <34.121647, 29.400681, 47.221222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004749, 29.598621, 47.152267>,  <33.809921, 29.928524, 47.037346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004749, 29.598621, 47.152267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361235, -0.109259, -0.926052,
		0.795157, 0.554833, 0.244714,
		0.487067, -0.824756, 0.287303,
		34.150867, 29.351194, 47.238457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385868, 30.039106, 46.820614>,  <33.809921, 29.928524, 47.037346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385868, 30.039106, 46.820614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387276, 29.641388, 46.863255>,  <34.388119, 29.402758, 46.888840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387276, 29.641388, 46.863255>,  <34.385868, 30.039106, 46.820614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387276, 29.641388, 46.863255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216141, -0.103325, -0.970880,
		0.976356, 0.026458, 0.214544,
		0.003520, -0.994296, 0.106600,
		34.388332, 29.343100, 46.895233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939404, 29.888214, 46.413902>,  <34.385868, 30.039106, 46.820614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939404, 29.888214, 46.413902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737076, 29.544294, 46.441868>,  <34.615681, 29.337942, 46.458649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737076, 29.544294, 46.441868>,  <34.939404, 29.888214, 46.413902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737076, 29.544294, 46.441868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258828, -0.228583, -0.938487,
		0.822894, -0.456609, 0.338163,
		-0.505820, -0.859801, 0.069916,
		34.585331, 29.286354, 46.462841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407845, 29.270039, 46.157001>,  <34.939404, 29.888214, 46.413902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407845, 29.270039, 46.157001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021008, 29.178961, 46.111588>,  <34.788906, 29.124313, 46.084339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.021008, 29.178961, 46.111588>,  <35.407845, 29.270039, 46.157001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021008, 29.178961, 46.111588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160650, -0.200439, -0.966445,
		0.197297, -0.952880, 0.230421,
		-0.967091, -0.227694, -0.113534,
		34.730881, 29.110653, 46.077526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422852, 28.643887, 45.741238>,  <35.407845, 29.270039, 46.157001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422852, 28.643887, 45.741238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032055, 28.717655, 45.698406>,  <34.797577, 28.761917, 45.672707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032055, 28.717655, 45.698406>,  <35.422852, 28.643887, 45.741238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032055, 28.717655, 45.698406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052393, -0.279167, -0.958812,
		-0.206719, -0.942367, 0.263083,
		-0.976996, 0.184421, -0.107082,
		34.738956, 28.772982, 45.666283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157711, 28.086691, 45.485455>,  <35.422852, 28.643887, 45.741238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157711, 28.086691, 45.485455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.920914, 28.388346, 45.371738>,  <34.778835, 28.569338, 45.303509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.920914, 28.388346, 45.371738>,  <35.157711, 28.086691, 45.485455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920914, 28.388346, 45.371738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141715, -0.249848, -0.957858,
		-0.793386, -0.607333, 0.041036,
		-0.591992, 0.754136, -0.284294,
		34.743317, 28.614586, 45.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732063, 27.810041, 45.018318>,  <35.157711, 28.086691, 45.485455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732063, 27.810041, 45.018318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724312, 28.197851, 44.920631>,  <34.719662, 28.430538, 44.862019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724312, 28.197851, 44.920631>,  <34.732063, 27.810041, 45.018318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724312, 28.197851, 44.920631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071874, -0.242282, -0.967540,
		-0.997226, -0.036301, -0.064989,
		-0.019377, 0.969527, -0.244219,
		34.718498, 28.488708, 44.847366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242821, 27.884081, 44.513596>,  <34.732063, 27.810041, 45.018318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242821, 27.884081, 44.513596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.452026, 28.223024, 44.476860>,  <34.577549, 28.426392, 44.454819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.452026, 28.223024, 44.476860>,  <34.242821, 27.884081, 44.513596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452026, 28.223024, 44.476860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037333, -0.130425, -0.990755,
		-0.851505, 0.514752, -0.099849,
		0.523016, 0.847360, -0.091840,
		34.608932, 28.477232, 44.449306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027874, 28.079010, 43.952011>,  <34.242821, 27.884081, 44.513596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027874, 28.079010, 43.952011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.324699, 28.345774, 43.979076>,  <34.502796, 28.505831, 43.995316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.324699, 28.345774, 43.979076>,  <34.027874, 28.079010, 43.952011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324699, 28.345774, 43.979076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112249, -0.024112, -0.993388,
		-0.660866, 0.744750, -0.092752,
		0.742062, 0.666907, 0.067663,
		34.547318, 28.545845, 43.999374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349052, 28.193611, 44.448975>,  <34.027874, 28.079010, 43.952011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349052, 28.193611, 44.448975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.984074, 28.236862, 44.291111>,  <32.765087, 28.262814, 44.196392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.984074, 28.236862, 44.291111>,  <33.349052, 28.193611, 44.448975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984074, 28.236862, 44.291111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393042, 0.036806, 0.918784,
		0.113873, 0.993455, 0.008916,
		-0.912442, 0.108129, -0.394661,
		32.710342, 28.269300, 44.172714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058540, 28.609861, 44.960182>,  <33.349052, 28.193611, 44.448975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058540, 28.609861, 44.960182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773289, 28.438829, 44.737965>,  <32.602139, 28.336210, 44.604633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773289, 28.438829, 44.737965>,  <33.058540, 28.609861, 44.960182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773289, 28.438829, 44.737965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598839, -0.040464, 0.799847,
		-0.364477, 0.903072, -0.227194,
		-0.713126, -0.427578, -0.555543,
		32.559349, 28.310556, 44.571301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449226, 28.971361, 45.019558>,  <33.058540, 28.609861, 44.960182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449226, 28.971361, 45.019558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304550, 28.608776, 44.932377>,  <32.217743, 28.391226, 44.880070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.304550, 28.608776, 44.932377>,  <32.449226, 28.971361, 45.019558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304550, 28.608776, 44.932377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493547, -0.012163, 0.869634,
		-0.790942, 0.422109, -0.442984,
		-0.361693, -0.906463, -0.217951,
		32.196041, 28.336838, 44.866993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714510, 28.980156, 45.306496>,  <32.449226, 28.971361, 45.019558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714510, 28.980156, 45.306496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810627, 28.596582, 45.246216>,  <31.868298, 28.366438, 45.210049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810627, 28.596582, 45.246216>,  <31.714510, 28.980156, 45.306496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810627, 28.596582, 45.246216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501035, -0.255493, 0.826854,
		-0.831399, -0.123182, -0.541851,
		0.240292, -0.958932, -0.150698,
		31.882715, 28.308903, 45.201008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160690, 28.513273, 45.378674>,  <31.714510, 28.980156, 45.306496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160690, 28.513273, 45.378674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.454264, 28.255234, 45.463703>,  <31.630407, 28.100410, 45.514721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.454264, 28.255234, 45.463703>,  <31.160690, 28.513273, 45.378674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454264, 28.255234, 45.463703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393436, -0.148659, 0.907253,
		-0.553668, -0.749498, -0.362911,
		0.733935, -0.645100, 0.212572,
		31.674444, 28.061705, 45.527473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906776, 27.948181, 45.802982>,  <31.160690, 28.513273, 45.378674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906776, 27.948181, 45.802982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.294395, 27.884741, 45.878654>,  <31.526968, 27.846678, 45.924057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.294395, 27.884741, 45.878654>,  <30.906776, 27.948181, 45.802982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294395, 27.884741, 45.878654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238425, -0.402574, 0.883792,
		-0.064008, -0.901544, -0.427928,
		0.969049, -0.158598, 0.189183,
		31.585110, 27.837162, 45.935410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919313, 27.359747, 46.211044>,  <30.906776, 27.948181, 45.802982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919313, 27.359747, 46.211044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293871, 27.492485, 46.256733>,  <31.518606, 27.572128, 46.284145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293871, 27.492485, 46.256733>,  <30.919313, 27.359747, 46.211044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293871, 27.492485, 46.256733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032224, -0.242789, 0.969544,
		0.349470, -0.911555, -0.216652,
		0.936393, 0.331845, 0.114221,
		31.574789, 27.592039, 46.291000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309565, 26.806303, 46.498615>,  <30.919313, 27.359747, 46.211044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309565, 26.806303, 46.498615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.495476, 27.147833, 46.592396>,  <31.607023, 27.352751, 46.648663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.495476, 27.147833, 46.592396>,  <31.309565, 26.806303, 46.498615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495476, 27.147833, 46.592396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049322, -0.239409, 0.969665,
		0.884051, -0.462244, -0.069160,
		0.464780, 0.853823, 0.234449,
		31.634911, 27.403980, 46.662731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687254, 26.614109, 47.049744>,  <31.309565, 26.806303, 46.498615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687254, 26.614109, 47.049744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726337, 27.010393, 47.087570>,  <31.749788, 27.248163, 47.110264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.726337, 27.010393, 47.087570>,  <31.687254, 26.614109, 47.049744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726337, 27.010393, 47.087570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074523, -0.102036, 0.991985,
		0.992421, -0.089878, -0.083801,
		0.097708, 0.990712, 0.094564,
		31.755650, 27.307608, 47.115940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159184, 26.687002, 47.525181>,  <31.687254, 26.614109, 47.049744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159184, 26.687002, 47.525181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960747, 27.034309, 47.524273>,  <31.841684, 27.242693, 47.523727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.960747, 27.034309, 47.524273>,  <32.159184, 26.687002, 47.525181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960747, 27.034309, 47.524273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009584, -0.002860, 0.999950,
		0.868218, 0.496088, 0.009740,
		-0.496091, 0.868268, -0.002271,
		31.811920, 27.294790, 47.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433468, 27.072149, 48.062210>,  <32.159184, 26.687002, 47.525181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433468, 27.072149, 48.062210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088013, 27.260498, 47.990192>,  <31.880741, 27.373508, 47.946983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088013, 27.260498, 47.990192>,  <32.433468, 27.072149, 48.062210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088013, 27.260498, 47.990192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109567, 0.173277, 0.978759,
		0.492069, 0.865016, -0.098056,
		-0.863634, 0.470874, -0.180042,
		31.828922, 27.401760, 47.936180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504978, 27.655703, 48.434738>,  <32.433468, 27.072149, 48.062210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504978, 27.655703, 48.434738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114613, 27.589262, 48.378159>,  <31.880394, 27.549398, 48.344212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114613, 27.589262, 48.378159>,  <32.504978, 27.655703, 48.434738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114613, 27.589262, 48.378159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150821, 0.045167, 0.987529,
		-0.157639, 0.985074, -0.069130,
		-0.975911, -0.166099, -0.141450,
		31.821838, 27.539433, 48.335724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175045, 28.023178, 48.948303>,  <32.504978, 27.655703, 48.434738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175045, 28.023178, 48.948303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881947, 27.765013, 48.862030>,  <31.706087, 27.610113, 48.810265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881947, 27.765013, 48.862030>,  <32.175045, 28.023178, 48.948303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881947, 27.765013, 48.862030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296571, 0.017605, 0.954848,
		-0.612477, 0.763629, -0.204311,
		-0.732747, -0.645415, -0.215687,
		31.662123, 27.571388, 48.797325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545042, 28.251928, 49.255173>,  <32.175045, 28.023178, 48.948303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545042, 28.251928, 49.255173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449137, 27.867975, 49.197010>,  <31.391594, 27.637604, 49.162113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449137, 27.867975, 49.197010>,  <31.545042, 28.251928, 49.255173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449137, 27.867975, 49.197010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100648, -0.124391, 0.987115,
		-0.965600, 0.251308, -0.066786,
		-0.239762, -0.959881, -0.145405,
		31.377209, 27.580011, 49.153389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890638, 28.620560, 48.892517>,  <31.545042, 28.251928, 49.255173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890638, 28.620560, 48.892517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.776730, 28.900522, 49.154522>,  <30.708385, 29.068499, 49.311726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.776730, 28.900522, 49.154522>,  <30.890638, 28.620560, 48.892517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776730, 28.900522, 49.154522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074925, 0.664960, -0.743111,
		-0.955663, -0.260692, -0.136921,
		-0.284770, 0.699905, 0.655010,
		30.691299, 29.110495, 49.351025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279547, 28.912083, 48.724873>,  <30.890638, 28.620560, 48.892517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279547, 28.912083, 48.724873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474443, 29.190506, 48.935814>,  <30.591381, 29.357561, 49.062378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474443, 29.190506, 48.935814>,  <30.279547, 28.912083, 48.724873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474443, 29.190506, 48.935814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024797, 0.592608, -0.805109,
		-0.872915, 0.405359, 0.271483,
		0.487241, 0.696060, 0.527349,
		30.620615, 29.399324, 49.094017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000340, 29.585218, 48.601437>,  <30.279547, 28.912083, 48.724873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000340, 29.585218, 48.601437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.361185, 29.671295, 48.751038>,  <30.577692, 29.722942, 48.840797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.361185, 29.671295, 48.751038>,  <30.000340, 29.585218, 48.601437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361185, 29.671295, 48.751038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096377, 0.744379, -0.660766,
		-0.420594, 0.632133, 0.650776,
		0.902116, 0.215194, 0.374004,
		30.631821, 29.735853, 48.863239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094198, 30.288017, 48.832256>,  <30.000340, 29.585218, 48.601437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094198, 30.288017, 48.832256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.457066, 30.162767, 48.719826>,  <30.674786, 30.087618, 48.652367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.457066, 30.162767, 48.719826>,  <30.094198, 30.288017, 48.832256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457066, 30.162767, 48.719826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023333, 0.704398, -0.709422,
		0.420125, 0.637006, 0.646312,
		0.907166, -0.313127, -0.281072,
		30.729216, 30.068829, 48.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238024, 30.660580, 48.270943>,  <30.094198, 30.288017, 48.832256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238024, 30.660580, 48.270943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.604059, 30.500160, 48.287788>,  <30.823681, 30.403910, 48.297894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.604059, 30.500160, 48.287788>,  <30.238024, 30.660580, 48.270943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604059, 30.500160, 48.287788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301539, 0.611195, -0.731789,
		0.267743, 0.682350, 0.680229,
		0.915089, -0.401047, 0.042112,
		30.878586, 30.379847, 48.300423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610851, 31.243731, 48.309322>,  <30.238024, 30.660580, 48.270943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610851, 31.243731, 48.309322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840389, 30.954996, 48.154583>,  <30.978113, 30.781755, 48.061741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840389, 30.954996, 48.154583>,  <30.610851, 31.243731, 48.309322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840389, 30.954996, 48.154583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024357, 0.487197, -0.872953,
		0.818601, 0.491518, 0.297158,
		0.573847, -0.721837, -0.386848,
		31.012543, 30.738445, 48.038528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149914, 31.582127, 47.993401>,  <30.610851, 31.243731, 48.309322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149914, 31.582127, 47.993401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129009, 31.223160, 47.818169>,  <31.116467, 31.007780, 47.713028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129009, 31.223160, 47.818169>,  <31.149914, 31.582127, 47.993401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129009, 31.223160, 47.818169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156618, 0.425886, -0.891118,
		0.986276, -0.115182, 0.118294,
		-0.052261, -0.897415, -0.438080,
		31.113331, 30.953936, 47.686745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909510, 31.771744, 48.159637>,  <31.149914, 31.582127, 47.993401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909510, 31.771744, 48.159637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864464, 32.147713, 48.288548>,  <31.837437, 32.373295, 48.365894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864464, 32.147713, 48.288548>,  <31.909510, 31.771744, 48.159637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864464, 32.147713, 48.288548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114977, -0.334486, 0.935361,
		0.986964, 0.068283, 0.145738,
		-0.112616, 0.939924, 0.322275,
		31.830679, 32.429691, 48.385231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260498, 31.790398, 48.802738>,  <31.909510, 31.771744, 48.159637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260498, 31.790398, 48.802738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.019375, 32.108135, 48.832767>,  <31.874701, 32.298779, 48.850784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.019375, 32.108135, 48.832767>,  <32.260498, 31.790398, 48.802738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019375, 32.108135, 48.832767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203330, -0.243921, 0.948240,
		0.771543, 0.556342, 0.308552,
		-0.602808, 0.794346, 0.075074,
		31.838531, 32.346439, 48.855289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261925, 31.910635, 49.405788>,  <32.260498, 31.790398, 48.802738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261925, 31.910635, 49.405788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954906, 32.160320, 49.347504>,  <31.770695, 32.310131, 49.312534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954906, 32.160320, 49.347504>,  <32.261925, 31.910635, 49.405788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954906, 32.160320, 49.347504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353068, -0.221978, 0.908883,
		0.534992, 0.749055, 0.390768,
		-0.767545, 0.624213, -0.145711,
		31.724644, 32.347584, 49.303791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136047, 32.181755, 50.054218>,  <32.261925, 31.910635, 49.405788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136047, 32.181755, 50.054218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.792685, 32.221924, 49.853004>,  <31.586666, 32.246025, 49.732277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.792685, 32.221924, 49.853004>,  <32.136047, 32.181755, 50.054218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792685, 32.221924, 49.853004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511959, -0.229109, 0.827893,
		-0.032108, 0.968206, 0.248083,
		-0.858410, 0.100426, -0.503038,
		31.535162, 32.252052, 49.702091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837326, 32.557789, 50.418949>,  <32.136047, 32.181755, 50.054218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837326, 32.557789, 50.418949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.544128, 32.389309, 50.205292>,  <31.368210, 32.288219, 50.077099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.544128, 32.389309, 50.205292>,  <31.837326, 32.557789, 50.418949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544128, 32.389309, 50.205292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460739, -0.270263, 0.845386,
		-0.500437, 0.865764, 0.004037,
		-0.732995, -0.421202, -0.534141,
		31.324230, 32.262947, 50.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199303, 32.798538, 50.648521>,  <31.837326, 32.557789, 50.418949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199303, 32.798538, 50.648521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.089552, 32.461159, 50.463776>,  <31.023701, 32.258732, 50.352928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.089552, 32.461159, 50.463776>,  <31.199303, 32.798538, 50.648521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089552, 32.461159, 50.463776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412752, -0.330502, 0.848766,
		-0.868534, 0.423517, -0.257452,
		-0.274378, -0.843446, -0.461860,
		31.007238, 32.208126, 50.325218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395693, 32.804741, 50.752407>,  <31.199303, 32.798538, 50.648521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395693, 32.804741, 50.752407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.545717, 32.440681, 50.682034>,  <30.635733, 32.222244, 50.639809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.545717, 32.440681, 50.682034>,  <30.395693, 32.804741, 50.752407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545717, 32.440681, 50.682034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449751, -0.344619, 0.823991,
		-0.810588, -0.229919, -0.538595,
		0.375061, -0.910151, -0.175937,
		30.658236, 32.167637, 50.629253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799334, 32.379208, 50.690205>,  <30.395693, 32.804741, 50.752407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799334, 32.379208, 50.690205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.120029, 32.164906, 50.796173>,  <30.312447, 32.036324, 50.859753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.120029, 32.164906, 50.796173>,  <29.799334, 32.379208, 50.690205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120029, 32.164906, 50.796173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550556, -0.489524, 0.676206,
		-0.232597, -0.687993, -0.687434,
		0.801740, -0.535754, 0.264917,
		30.360552, 32.004181, 50.875648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543118, 31.755051, 50.780006>,  <29.799334, 32.379208, 50.690205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543118, 31.755051, 50.780006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.900990, 31.723036, 50.955799>,  <30.115713, 31.703827, 51.061275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.900990, 31.723036, 50.955799>,  <29.543118, 31.755051, 50.780006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900990, 31.723036, 50.955799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403529, -0.566804, 0.718260,
		0.191611, -0.819956, -0.539405,
		0.894679, -0.080039, 0.439481,
		30.169394, 31.699024, 51.087643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.442360, 36.347591, 36.398205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751347, 36.216373, 36.615707>,  <35.936741, 36.137642, 36.746208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751347, 36.216373, 36.615707>,  <35.442360, 36.347591, 36.398205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751347, 36.216373, 36.615707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589268, -0.051051, 0.806323,
		-0.236754, -0.943280, -0.232745,
		0.772470, -0.328050, 0.543758,
		35.983089, 36.117958, 36.778835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106148, 35.886127, 36.877300>,  <35.442360, 36.347591, 36.398205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106148, 35.886127, 36.877300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457390, 35.937275, 37.061726>,  <35.668137, 35.967964, 37.172382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457390, 35.937275, 37.061726>,  <35.106148, 35.886127, 36.877300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457390, 35.937275, 37.061726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472257, 0.076848, 0.878105,
		0.076848, -0.988810, 0.127866,
		-0.878105, -0.127866, -0.461067,
		35.720821, 35.975636, 37.200047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058899, 35.529026, 37.431641>,  <35.106148, 35.886127, 36.877300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058899, 35.529026, 37.431641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357193, 35.775352, 37.533344>,  <35.536171, 35.923149, 37.594368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357193, 35.775352, 37.533344>,  <35.058899, 35.529026, 37.431641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357193, 35.775352, 37.533344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429402, 0.152467, 0.890151,
		0.509400, -0.772999, 0.378132,
		0.745739, 0.615813, 0.254260,
		35.580914, 35.960098, 37.609623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197216, 35.338482, 38.068508>,  <35.058899, 35.529026, 37.431641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197216, 35.338482, 38.068508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343433, 35.710484, 38.053226>,  <35.431164, 35.933685, 38.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343433, 35.710484, 38.053226>,  <35.197216, 35.338482, 38.068508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343433, 35.710484, 38.053226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397012, 0.192914, 0.897310,
		0.841877, -0.312840, 0.439744,
		0.365547, 0.930008, -0.038209,
		35.453098, 35.989487, 38.041763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600811, 35.381550, 38.642597>,  <35.197216, 35.338482, 38.068508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600811, 35.381550, 38.642597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495106, 35.755081, 38.546162>,  <35.431683, 35.979202, 38.488300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495106, 35.755081, 38.546162>,  <35.600811, 35.381550, 38.642597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495106, 35.755081, 38.546162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422461, 0.112638, 0.899355,
		0.867001, 0.339520, 0.364741,
		-0.264265, 0.933830, -0.241091,
		35.415825, 36.035229, 38.473835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713425, 35.677155, 39.156303>,  <35.600811, 35.381550, 38.642597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713425, 35.677155, 39.156303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475422, 35.941200, 38.972908>,  <35.332619, 36.099628, 38.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475422, 35.941200, 38.972908>,  <35.713425, 35.677155, 39.156303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475422, 35.941200, 38.972908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439668, 0.210200, 0.873217,
		0.672795, 0.721158, 0.165159,
		-0.595011, 0.660111, -0.458492,
		35.296917, 36.139233, 38.835361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714798, 36.276821, 39.577793>,  <35.713425, 35.677155, 39.156303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714798, 36.276821, 39.577793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382317, 36.291050, 39.355862>,  <35.182827, 36.299587, 39.222702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382317, 36.291050, 39.355862>,  <35.714798, 36.276821, 39.577793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382317, 36.291050, 39.355862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529074, 0.256005, 0.809038,
		0.170818, 0.966021, -0.193972,
		-0.831205, 0.035573, -0.554827,
		35.132954, 36.301723, 39.189415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319851, 36.937805, 39.599548>,  <35.714798, 36.276821, 39.577793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319851, 36.937805, 39.599548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052376, 36.657104, 39.501240>,  <34.891891, 36.488686, 39.442253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052376, 36.657104, 39.501240>,  <35.319851, 36.937805, 39.599548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052376, 36.657104, 39.501240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536780, 0.226878, 0.812646,
		-0.514514, 0.675332, -0.528396,
		-0.668687, -0.701750, -0.245772,
		34.851768, 36.446579, 39.427509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688232, 37.197674, 39.931824>,  <35.319851, 36.937805, 39.599548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688232, 37.197674, 39.931824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602440, 36.817116, 39.843422>,  <34.550964, 36.588779, 39.790379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602440, 36.817116, 39.843422>,  <34.688232, 37.197674, 39.931824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602440, 36.817116, 39.843422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601479, -0.049626, 0.797345,
		-0.769559, 0.303948, -0.561601,
		-0.214482, -0.951395, -0.221008,
		34.538094, 36.531696, 39.777119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911678, 37.148689, 39.947960>,  <34.688232, 37.197674, 39.931824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911678, 37.148689, 39.947960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068733, 36.783306, 39.990746>,  <34.162964, 36.564075, 40.016415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068733, 36.783306, 39.990746>,  <33.911678, 37.148689, 39.947960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068733, 36.783306, 39.990746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663851, -0.200997, 0.720349,
		-0.636507, -0.353838, -0.685315,
		0.392633, -0.913455, 0.106959,
		34.186523, 36.509270, 40.022835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296116, 36.570591, 39.967583>,  <33.911678, 37.148689, 39.947960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296116, 36.570591, 39.967583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605564, 36.371124, 40.123966>,  <33.791233, 36.251446, 40.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605564, 36.371124, 40.123966>,  <33.296116, 36.570591, 39.967583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605564, 36.371124, 40.123966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586437, -0.329742, 0.739839,
		-0.240011, -0.801629, -0.547528,
		0.773619, -0.498660, 0.390963,
		33.837650, 36.221527, 40.241253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055668, 35.841228, 40.235645>,  <33.296116, 36.570591, 39.967583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055668, 35.841228, 40.235645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396336, 35.936447, 40.422401>,  <33.600739, 35.993580, 40.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396336, 35.936447, 40.422401>,  <33.055668, 35.841228, 40.235645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396336, 35.936447, 40.422401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368227, -0.362103, 0.856324,
		0.372910, -0.901229, -0.220736,
		0.851673, 0.238051, 0.466888,
		33.651836, 36.007862, 40.562469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053360, 35.131222, 39.954269>,  <33.055668, 35.841228, 40.235645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053360, 35.131222, 39.954269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756935, 34.864471, 39.923035>,  <32.579079, 34.704422, 39.904293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756935, 34.864471, 39.923035>,  <33.053360, 35.131222, 39.954269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756935, 34.864471, 39.923035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048152, 0.168789, -0.984475,
		0.669708, -0.725796, -0.157195,
		-0.741061, -0.666880, -0.078091,
		32.534618, 34.664406, 39.899609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231560, 34.637337, 39.505947>,  <33.053360, 35.131222, 39.954269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231560, 34.637337, 39.505947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831764, 34.645424, 39.515846>,  <32.591888, 34.650276, 39.521786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831764, 34.645424, 39.515846>,  <33.231560, 34.637337, 39.505947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831764, 34.645424, 39.515846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020937, 0.170743, -0.985093,
		-0.024144, -0.985108, -0.170233,
		-0.999489, 0.020220, 0.024747,
		32.531918, 34.651489, 39.523270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011963, 34.239357, 38.903286>,  <33.231560, 34.637337, 39.505947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011963, 34.239357, 38.903286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679573, 34.439083, 39.001400>,  <32.480141, 34.558918, 39.060268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679573, 34.439083, 39.001400>,  <33.011963, 34.239357, 38.903286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679573, 34.439083, 39.001400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093627, 0.309092, -0.946412,
		-0.548375, -0.809410, -0.210098,
		-0.830975, 0.499317, 0.245281,
		32.430279, 34.588879, 39.074986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593990, 34.025864, 38.405907>,  <33.011963, 34.239357, 38.903286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593990, 34.025864, 38.405907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421974, 34.361042, 38.540321>,  <32.318764, 34.562149, 38.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421974, 34.361042, 38.540321>,  <32.593990, 34.025864, 38.405907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421974, 34.361042, 38.540321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314444, 0.209888, -0.925781,
		-0.846282, -0.503784, 0.173227,
		-0.430036, 0.837943, 0.336037,
		32.292965, 34.612427, 38.641132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934845, 33.997456, 38.135033>,  <32.593990, 34.025864, 38.405907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934845, 33.997456, 38.135033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034515, 34.380268, 38.194363>,  <32.094318, 34.609955, 38.229961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034515, 34.380268, 38.194363>,  <31.934845, 33.997456, 38.135033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034515, 34.380268, 38.194363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358169, 0.233362, -0.904023,
		-0.899793, 0.172135, 0.400927,
		0.249175, 0.957033, 0.148324,
		32.109268, 34.667377, 38.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352932, 34.381863, 37.931526>,  <31.934845, 33.997456, 38.135033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352932, 34.381863, 37.931526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634111, 34.666279, 37.938286>,  <31.802818, 34.836929, 37.942341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634111, 34.666279, 37.938286>,  <31.352932, 34.381863, 37.931526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634111, 34.666279, 37.938286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423187, 0.437236, -0.793560,
		-0.571642, 0.550679, 0.608257,
		0.702949, 0.711039, 0.016902,
		31.844995, 34.879589, 37.943356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048000, 35.081181, 37.770657>,  <31.352932, 34.381863, 37.931526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048000, 35.081181, 37.770657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438242, 35.134529, 37.700909>,  <31.672388, 35.166538, 37.659061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438242, 35.134529, 37.700909>,  <31.048000, 35.081181, 37.770657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438242, 35.134529, 37.700909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214821, 0.416417, -0.883430,
		-0.045216, 0.899338, 0.434911,
		0.975606, 0.133373, -0.174368,
		31.730925, 35.174541, 37.648598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067520, 35.769924, 37.588787>,  <31.048000, 35.081181, 37.770657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067520, 35.769924, 37.588787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368286, 35.545952, 37.449589>,  <31.548746, 35.411568, 37.366070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368286, 35.545952, 37.449589>,  <31.067520, 35.769924, 37.588787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368286, 35.545952, 37.449589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270761, 0.218995, -0.937406,
		0.601091, 0.799074, 0.013058,
		0.751916, -0.559931, -0.347994,
		31.593861, 35.377972, 37.345192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234060, 36.104206, 37.004597>,  <31.067520, 35.769924, 37.588787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234060, 36.104206, 37.004597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447029, 35.769943, 36.950626>,  <31.574810, 35.569386, 36.918243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447029, 35.769943, 36.950626>,  <31.234060, 36.104206, 37.004597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447029, 35.769943, 36.950626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136401, 0.072615, -0.987988,
		0.835416, 0.544432, -0.075322,
		0.532423, -0.835656, -0.134925,
		31.606756, 35.519245, 36.910149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670845, 36.242065, 36.458519>,  <31.234060, 36.104206, 37.004597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670845, 36.242065, 36.458519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633039, 35.843861, 36.460052>,  <31.610355, 35.604939, 36.460972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633039, 35.843861, 36.460052>,  <31.670845, 36.242065, 36.458519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633039, 35.843861, 36.460052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036560, -0.000375, -0.999331,
		0.994852, -0.094592, -0.036361,
		-0.094515, -0.995516, 0.003831,
		31.604685, 35.545204, 36.461201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998566, 36.087963, 35.863407>,  <31.670845, 36.242065, 36.458519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998566, 36.087963, 35.863407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794422, 35.753227, 35.942638>,  <31.671936, 35.552387, 35.990177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794422, 35.753227, 35.942638>,  <31.998566, 36.087963, 35.863407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794422, 35.753227, 35.942638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235347, -0.085624, -0.968133,
		0.827131, -0.540712, -0.153248,
		-0.510359, -0.836839, 0.198077,
		31.641315, 35.502174, 36.002060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187588, 35.805435, 35.270081>,  <31.998566, 36.087963, 35.863407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187588, 35.805435, 35.270081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884470, 35.603195, 35.435059>,  <31.702599, 35.481850, 35.534046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884470, 35.603195, 35.435059>,  <32.187588, 35.805435, 35.270081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884470, 35.603195, 35.435059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451057, -0.050825, -0.891047,
		0.471478, -0.861268, -0.189540,
		-0.757797, -0.505603, 0.412444,
		31.657131, 35.451515, 35.558792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498814, 35.018478, 35.280346>,  <32.187588, 35.805435, 35.270081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498814, 35.018478, 35.280346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592892, 35.366558, 35.453518>,  <32.649338, 35.575405, 35.557423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592892, 35.366558, 35.453518>,  <32.498814, 35.018478, 35.280346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592892, 35.366558, 35.453518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962637, 0.270066, -0.019878,
		-0.134218, -0.412082, 0.901207,
		0.235194, 0.870203, 0.432933,
		32.663448, 35.627621, 35.583397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091610, 35.256454, 34.895573>,  <32.498814, 35.018478, 35.280346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091610, 35.256454, 34.895573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353050, 35.102303, 35.156120>,  <33.509914, 35.009811, 35.312450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353050, 35.102303, 35.156120>,  <33.091610, 35.256454, 34.895573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353050, 35.102303, 35.156120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755209, -0.388509, 0.527940,
		0.049605, -0.836984, -0.544975,
		0.653605, -0.385382, 0.651369,
		33.549133, 34.986687, 35.351532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862835, 34.520859, 34.877182>,  <33.091610, 35.256454, 34.895573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862835, 34.520859, 34.877182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072384, 34.606323, 35.207008>,  <33.198112, 34.657604, 35.404903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072384, 34.606323, 35.207008>,  <32.862835, 34.520859, 34.877182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072384, 34.606323, 35.207008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679578, -0.478781, 0.555826,
		0.513544, -0.851538, -0.105621,
		0.523876, 0.213664, 0.824561,
		33.229546, 34.670422, 35.454376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883007, 33.926964, 35.301376>,  <32.862835, 34.520859, 34.877182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883007, 33.926964, 35.301376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924076, 34.231972, 35.556885>,  <32.948715, 34.414974, 35.710190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924076, 34.231972, 35.556885>,  <32.883007, 33.926964, 35.301376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924076, 34.231972, 35.556885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708615, -0.394599, 0.584941,
		0.698085, -0.512698, 0.499818,
		0.102671, 0.762517, 0.638769,
		32.954876, 34.460728, 35.748516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206985, 33.511330, 35.088570>,  <32.883007, 33.926964, 35.301376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206985, 33.511330, 35.088570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421288, 33.189754, 34.985294>,  <32.549870, 32.996811, 34.923328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421288, 33.189754, 34.985294>,  <32.206985, 33.511330, 35.088570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421288, 33.189754, 34.985294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188845, -0.412108, 0.891350,
		-0.822986, -0.428787, -0.372607,
		0.535754, -0.803933, -0.258184,
		32.582012, 32.948574, 34.907841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755375, 32.994278, 35.253925>,  <32.206985, 33.511330, 35.088570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755375, 32.994278, 35.253925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141445, 32.889660, 35.251598>,  <32.373085, 32.826889, 35.250202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141445, 32.889660, 35.251598>,  <31.755375, 32.994278, 35.253925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141445, 32.889660, 35.251598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137452, -0.525909, 0.839361,
		-0.222590, -0.809330, -0.543543,
		0.965174, -0.261544, -0.005818,
		32.430996, 32.811195, 35.249851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880703, 32.242699, 35.209057>,  <31.755375, 32.994278, 35.253925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880703, 32.242699, 35.209057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185650, 32.400806, 35.414021>,  <32.368618, 32.495670, 35.536999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185650, 32.400806, 35.414021>,  <31.880703, 32.242699, 35.209057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185650, 32.400806, 35.414021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215396, -0.591661, 0.776880,
		0.610247, -0.702637, -0.365923,
		0.762366, 0.395270, 0.512405,
		32.414360, 32.519386, 35.567741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277668, 31.653896, 35.371071>,  <31.880703, 32.242699, 35.209057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277668, 31.653896, 35.371071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346703, 31.956509, 35.623383>,  <32.388123, 32.138077, 35.774769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346703, 31.956509, 35.623383>,  <32.277668, 31.653896, 35.371071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346703, 31.956509, 35.623383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161959, -0.609873, 0.775774,
		0.971588, -0.236046, 0.017273,
		0.172584, 0.756530, 0.630775,
		32.398479, 32.183468, 35.812614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865059, 31.499998, 35.750153>,  <32.277668, 31.653896, 35.371071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865059, 31.499998, 35.750153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679379, 31.783400, 35.962772>,  <32.567970, 31.953440, 36.090343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679379, 31.783400, 35.962772>,  <32.865059, 31.499998, 35.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679379, 31.783400, 35.962772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161068, -0.522594, 0.837229,
		0.870962, 0.474257, 0.128472,
		-0.464201, 0.708502, 0.531547,
		32.540119, 31.995951, 36.122238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379616, 31.698214, 36.348637>,  <32.865059, 31.499998, 35.750153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379616, 31.698214, 36.348637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006577, 31.806675, 36.443909>,  <32.782753, 31.871752, 36.501072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006577, 31.806675, 36.443909>,  <33.379616, 31.698214, 36.348637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006577, 31.806675, 36.443909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023637, -0.612634, 0.790013,
		0.360132, 0.742398, 0.564935,
		-0.932602, 0.271155, 0.238177,
		32.726795, 31.888021, 36.515362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362537, 31.962957, 37.109463>,  <33.379616, 31.698214, 36.348637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362537, 31.962957, 37.109463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987762, 31.859621, 37.015301>,  <32.762897, 31.797619, 36.958805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987762, 31.859621, 37.015301>,  <33.362537, 31.962957, 37.109463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987762, 31.859621, 37.015301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103177, -0.439079, 0.892505,
		-0.333930, 0.860506, 0.384733,
		-0.936934, -0.258339, -0.235406,
		32.706684, 31.782120, 36.944679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048710, 32.070389, 37.757351>,  <33.362537, 31.962957, 37.109463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048710, 32.070389, 37.757351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795547, 31.837978, 37.552670>,  <32.643650, 31.698532, 37.429863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795547, 31.837978, 37.552670>,  <33.048710, 32.070389, 37.757351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795547, 31.837978, 37.552670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249565, -0.472538, 0.845237,
		-0.732905, 0.662656, 0.154067,
		-0.632904, -0.581029, -0.511701,
		32.605675, 31.663670, 37.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488945, 32.131939, 38.112255>,  <33.048710, 32.070389, 37.757351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488945, 32.131939, 38.112255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474804, 31.782578, 37.917973>,  <32.466320, 31.572960, 37.801403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474804, 31.782578, 37.917973>,  <32.488945, 32.131939, 38.112255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474804, 31.782578, 37.917973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158163, -0.475000, 0.865656,
		-0.986780, 0.107424, -0.121349,
		-0.035352, -0.873405, -0.485711,
		32.464199, 31.520555, 37.772259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935896, 31.793657, 38.340511>,  <32.488945, 32.131939, 38.112255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935896, 31.793657, 38.340511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135105, 31.479300, 38.193901>,  <32.254631, 31.290686, 38.105934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135105, 31.479300, 38.193901>,  <31.935896, 31.793657, 38.340511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135105, 31.479300, 38.193901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253373, -0.536110, 0.805226,
		-0.829321, -0.308154, -0.466120,
		0.498025, -0.785893, -0.366529,
		32.284512, 31.243532, 38.083942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502600, 31.261280, 38.390648>,  <31.935896, 31.793657, 38.340511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502600, 31.261280, 38.390648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868837, 31.101740, 38.370235>,  <32.088581, 31.006016, 38.357990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868837, 31.101740, 38.370235>,  <31.502600, 31.261280, 38.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868837, 31.101740, 38.370235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193985, -0.549299, 0.812798,
		-0.352215, -0.734295, -0.580306,
		0.915595, -0.398850, -0.051029,
		32.143517, 30.982084, 38.354927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393995, 30.567232, 38.595520>,  <31.502600, 31.261280, 38.390648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393995, 30.567232, 38.595520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791462, 30.606001, 38.618248>,  <32.029942, 30.629261, 38.631886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791462, 30.606001, 38.618248>,  <31.393995, 30.567232, 38.595520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791462, 30.606001, 38.618248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020241, -0.651934, 0.758005,
		0.110512, -0.752056, -0.649769,
		0.993669, 0.096920, 0.056825,
		32.089561, 30.635077, 38.635296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675018, 29.849903, 38.569286>,  <31.393995, 30.567232, 38.595520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675018, 29.849903, 38.569286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981840, 30.066378, 38.707123>,  <32.165932, 30.196262, 38.789825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981840, 30.066378, 38.707123>,  <31.675018, 29.849903, 38.569286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981840, 30.066378, 38.707123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233761, -0.735922, 0.635432,
		0.597481, -0.406859, -0.691001,
		0.767054, 0.541188, 0.344592,
		32.211956, 30.228733, 38.810501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145195, 29.366407, 38.833977>,  <31.675018, 29.849903, 38.569286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145195, 29.366407, 38.833977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284695, 29.709684, 38.984642>,  <32.368397, 29.915649, 39.075043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284695, 29.709684, 38.984642>,  <32.145195, 29.366407, 38.833977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284695, 29.709684, 38.984642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234068, -0.468921, 0.851660,
		0.907515, -0.208854, -0.364413,
		0.348754, 0.858192, 0.376667,
		32.389320, 29.967142, 39.097641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760143, 29.167274, 39.003727>,  <32.145195, 29.366407, 38.833977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760143, 29.167274, 39.003727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644569, 29.490257, 39.209457>,  <32.575226, 29.684046, 39.332897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644569, 29.490257, 39.209457>,  <32.760143, 29.167274, 39.003727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644569, 29.490257, 39.209457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138433, -0.496358, 0.857009,
		0.947288, 0.318817, 0.031635,
		-0.288931, 0.807455, 0.514329,
		32.557892, 29.732494, 39.363754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269920, 29.265812, 39.539684>,  <32.760143, 29.167274, 39.003727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269920, 29.265812, 39.539684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945511, 29.449034, 39.685242>,  <32.750866, 29.558966, 39.772575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945511, 29.449034, 39.685242>,  <33.269920, 29.265812, 39.539684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945511, 29.449034, 39.685242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251554, -0.288535, 0.923834,
		0.528162, 0.840795, 0.118785,
		-0.811028, 0.458053, 0.363898,
		32.702202, 29.586449, 39.794411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467487, 29.675531, 40.122620>,  <33.269920, 29.265812, 39.539684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467487, 29.675531, 40.122620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079556, 29.590231, 40.169876>,  <32.846798, 29.539051, 40.198231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079556, 29.590231, 40.169876>,  <33.467487, 29.675531, 40.122620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079556, 29.590231, 40.169876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182821, -0.315616, 0.931108,
		-0.161271, 0.924614, 0.345080,
		-0.969829, -0.213249, 0.118139,
		32.788609, 29.526257, 40.205318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239170, 29.961462, 40.811123>,  <33.467487, 29.675531, 40.122620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239170, 29.961462, 40.811123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932369, 29.719469, 40.725613>,  <32.748287, 29.574274, 40.674305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932369, 29.719469, 40.725613>,  <33.239170, 29.961462, 40.811123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932369, 29.719469, 40.725613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080397, -0.239935, 0.967454,
		-0.636585, 0.759229, 0.135393,
		-0.767004, -0.604982, -0.213779,
		32.702267, 29.537975, 40.661480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615280, 30.184811, 41.207912>,  <33.239170, 29.961462, 40.811123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615280, 30.184811, 41.207912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563400, 29.798344, 41.118736>,  <32.532272, 29.566463, 41.065231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563400, 29.798344, 41.118736>,  <32.615280, 30.184811, 41.207912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563400, 29.798344, 41.118736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026517, -0.228137, 0.973268,
		-0.991199, 0.120322, 0.055209,
		-0.129701, -0.966166, -0.222939,
		32.524490, 29.508493, 41.051853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087589, 30.018444, 41.650646>,  <32.615280, 30.184811, 41.207912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087589, 30.018444, 41.650646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260323, 29.674910, 41.540432>,  <32.363964, 29.468790, 41.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260323, 29.674910, 41.540432>,  <32.087589, 30.018444, 41.650646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260323, 29.674910, 41.540432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115385, -0.355582, 0.927495,
		-0.894541, -0.368733, -0.252650,
		0.431836, -0.858835, -0.275536,
		32.389874, 29.417259, 41.457771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630274, 29.544811, 41.894611>,  <32.087589, 30.018444, 41.650646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630274, 29.544811, 41.894611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958652, 29.322725, 41.841263>,  <32.155678, 29.189474, 41.809254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958652, 29.322725, 41.841263>,  <31.630274, 29.544811, 41.894611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958652, 29.322725, 41.841263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200897, -0.499480, 0.842710,
		-0.534504, -0.665022, -0.521585,
		0.820942, -0.555217, -0.133373,
		32.204937, 29.156160, 41.801250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421272, 28.873636, 42.075367>,  <31.630274, 29.544811, 41.894611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421272, 28.873636, 42.075367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818218, 28.868977, 42.124481>,  <32.056385, 28.866180, 42.153950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818218, 28.868977, 42.124481>,  <31.421272, 28.873636, 42.075367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818218, 28.868977, 42.124481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101775, -0.639704, 0.761853,
		0.069672, -0.768533, -0.636005,
		0.992365, -0.011650, 0.122787,
		32.115929, 28.865482, 42.161316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748522, 28.108088, 42.171150>,  <31.421272, 28.873636, 42.075367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748522, 28.108088, 42.171150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996050, 28.384735, 42.320133>,  <32.144566, 28.550724, 42.409523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996050, 28.384735, 42.320133>,  <31.748522, 28.108088, 42.171150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996050, 28.384735, 42.320133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018578, -0.461125, 0.887141,
		0.785313, -0.555900, -0.272504,
		0.618820, 0.691621, 0.372456,
		32.181694, 28.592222, 42.431870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258656, 27.762444, 42.561810>,  <31.748522, 28.108088, 42.171150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258656, 27.762444, 42.561810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293282, 28.134537, 42.704453>,  <32.314056, 28.357794, 42.790039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293282, 28.134537, 42.704453>,  <32.258656, 27.762444, 42.561810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293282, 28.134537, 42.704453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065814, -0.362509, 0.929653,
		0.994070, -0.057002, -0.092602,
		0.086561, 0.930235, 0.356608,
		32.319248, 28.413607, 42.811436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754925, 27.720198, 42.968163>,  <32.258656, 27.762444, 42.561810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754925, 27.720198, 42.968163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575497, 28.054802, 43.094044>,  <32.467838, 28.255564, 43.169571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575497, 28.054802, 43.094044>,  <32.754925, 27.720198, 42.968163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575497, 28.054802, 43.094044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154190, -0.274402, 0.949173,
		0.880346, 0.474295, -0.005893,
		-0.448571, 0.836509, 0.314700,
		32.440926, 28.305756, 43.188454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283005, 28.168505, 43.316654>,  <32.754925, 27.720198, 42.968163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283005, 28.168505, 43.316654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915226, 28.250208, 43.451050>,  <32.694557, 28.299231, 43.531689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915226, 28.250208, 43.451050>,  <33.283005, 28.168505, 43.316654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915226, 28.250208, 43.451050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319479, -0.110081, 0.941178,
		0.229231, 0.972708, 0.035958,
		-0.919449, 0.204259, 0.335993,
		32.639393, 28.311485, 43.551849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012421, 28.424433, 43.324772>,  <33.283005, 28.168505, 43.316654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012421, 28.424433, 43.324772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368214, 28.525434, 43.477119>,  <34.581688, 28.586037, 43.568527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368214, 28.525434, 43.477119>,  <34.012421, 28.424433, 43.324772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368214, 28.525434, 43.477119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382031, 0.046429, -0.922982,
		-0.250743, 0.966481, -0.055168,
		0.889483, 0.252507, 0.380868,
		34.635059, 28.601187, 43.591381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136742, 29.089062, 43.075054>,  <34.012421, 28.424433, 43.324772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136742, 29.089062, 43.075054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481441, 28.912254, 43.174660>,  <34.688263, 28.806170, 43.234421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481441, 28.912254, 43.174660>,  <34.136742, 29.089062, 43.075054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481441, 28.912254, 43.174660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371269, 0.214946, -0.903304,
		0.345751, 0.870873, 0.349337,
		0.861751, -0.442016, 0.249010,
		34.739967, 28.779650, 43.249363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677399, 29.554281, 42.942867>,  <34.136742, 29.089062, 43.075054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677399, 29.554281, 42.942867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864883, 29.201082, 42.952847>,  <34.977375, 28.989162, 42.958832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864883, 29.201082, 42.952847>,  <34.677399, 29.554281, 42.942867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864883, 29.201082, 42.952847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519131, 0.252496, -0.816547,
		0.714711, 0.395675, 0.576740,
		0.468712, -0.882999, 0.024945,
		35.005497, 28.936182, 42.960331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245064, 29.697910, 42.733883>,  <34.677399, 29.554281, 42.942867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245064, 29.697910, 42.733883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245632, 29.300802, 42.685871>,  <35.245975, 29.062538, 42.657063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245632, 29.300802, 42.685871>,  <35.245064, 29.697910, 42.733883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245632, 29.300802, 42.685871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548810, 0.101114, -0.829810,
		0.835946, -0.064690, 0.544986,
		0.001425, -0.992769, -0.120028,
		35.246059, 29.002972, 42.649864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004948, 29.550879, 42.734177>,  <35.245064, 29.697910, 42.733883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004948, 29.550879, 42.734177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815639, 29.266350, 42.526318>,  <35.702053, 29.095633, 42.401604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815639, 29.266350, 42.526318>,  <36.004948, 29.550879, 42.734177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815639, 29.266350, 42.526318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513149, 0.256861, -0.818963,
		0.716024, -0.654249, 0.243449,
		-0.473273, -0.711323, -0.519646,
		35.673656, 29.052954, 42.370422>
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
