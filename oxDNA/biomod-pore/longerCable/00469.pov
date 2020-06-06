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
	<23.937191, 34.864567, 35.307098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161497, 35.007984, 35.008572>,  <24.296080, 35.094036, 34.829456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161497, 35.007984, 35.008572>,  <23.937191, 34.864567, 35.307098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.161497, 35.007984, 35.008572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752027, -0.597676, 0.277919,
		-0.346409, -0.717097, -0.604791,
		0.560764, 0.358545, -0.746317,
		24.329727, 35.115547, 34.784676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142107, 34.366634, 34.915794>,  <23.937191, 34.864567, 35.307098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142107, 34.366634, 34.915794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404272, 34.667770, 34.940018>,  <24.561571, 34.848450, 34.954552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404272, 34.667770, 34.940018>,  <24.142107, 34.366634, 34.915794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404272, 34.667770, 34.940018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656890, -0.607777, 0.446210,
		0.372729, -0.252672, -0.892877,
		0.655415, 0.752837, 0.060558,
		24.600897, 34.893623, 34.958183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915493, 34.160194, 34.676006>,  <24.142107, 34.366634, 34.915794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915493, 34.160194, 34.676006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902969, 34.474884, 34.922611>,  <24.895454, 34.663696, 35.070572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902969, 34.474884, 34.922611>,  <24.915493, 34.160194, 34.676006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902969, 34.474884, 34.922611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570399, -0.492445, 0.657376,
		0.820771, 0.372239, -0.433329,
		-0.031310, 0.786725, 0.616509,
		24.893576, 34.710903, 35.107563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681322, 34.081360, 34.914570>,  <24.915493, 34.160194, 34.676006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681322, 34.081360, 34.914570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883600, 34.416302, 34.831516>,  <26.004967, 34.617268, 34.781685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883600, 34.416302, 34.831516>,  <25.681322, 34.081360, 34.914570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883600, 34.416302, 34.831516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703345, -0.260794, 0.661281,
		0.499578, -0.480443, -0.720831,
		0.505696, 0.837354, -0.207630,
		26.035309, 34.667507, 34.769226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394377, 33.983681, 34.758125>,  <25.681322, 34.081360, 34.914570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394377, 33.983681, 34.758125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351458, 34.346779, 34.920349>,  <26.325706, 34.564640, 35.017685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351458, 34.346779, 34.920349>,  <26.394377, 33.983681, 34.758125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351458, 34.346779, 34.920349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720040, -0.210338, 0.661287,
		0.685587, 0.362976, -0.631045,
		-0.107298, 0.907748, 0.405562,
		26.319267, 34.619102, 35.042019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553795, 34.572662, 34.489510>,  <26.394377, 33.983681, 34.758125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553795, 34.572662, 34.489510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870634, 34.806080, 34.417892>,  <27.060738, 34.946129, 34.374924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870634, 34.806080, 34.417892>,  <26.553795, 34.572662, 34.489510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870634, 34.806080, 34.417892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389203, 0.256886, -0.884607,
		-0.470212, 0.770381, 0.430596,
		0.792099, 0.583542, -0.179044,
		27.108263, 34.981144, 34.364178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311567, 35.214813, 34.322144>,  <26.553795, 34.572662, 34.489510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311567, 35.214813, 34.322144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677868, 35.186317, 34.163994>,  <26.897648, 35.169220, 34.069103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677868, 35.186317, 34.163994>,  <26.311567, 35.214813, 34.322144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677868, 35.186317, 34.163994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361217, 0.284745, -0.887943,
		0.175840, 0.955952, 0.235023,
		0.915753, -0.071242, -0.395375,
		26.952593, 35.164944, 34.045380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424179, 35.747738, 33.808029>,  <26.311567, 35.214813, 34.322144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424179, 35.747738, 33.808029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718401, 35.489552, 33.725727>,  <26.894934, 35.334641, 33.676346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718401, 35.489552, 33.725727>,  <26.424179, 35.747738, 33.808029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718401, 35.489552, 33.725727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120826, 0.173859, -0.977330,
		0.666606, 0.743739, 0.049893,
		0.735553, -0.645466, -0.205758,
		26.939066, 35.295914, 33.664001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025501, 36.037872, 33.405201>,  <26.424179, 35.747738, 33.808029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025501, 36.037872, 33.405201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039846, 35.645847, 33.327026>,  <27.048452, 35.410633, 33.280121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039846, 35.645847, 33.327026>,  <27.025501, 36.037872, 33.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039846, 35.645847, 33.327026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035702, 0.196697, -0.979814,
		0.998719, 0.028160, 0.042044,
		0.035861, -0.980060, -0.195440,
		27.050604, 35.351830, 33.268394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493944, 35.915665, 32.818611>,  <27.025501, 36.037872, 33.405201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493944, 35.915665, 32.818611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304552, 35.563385, 32.824142>,  <27.190918, 35.352016, 32.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304552, 35.563385, 32.824142>,  <27.493944, 35.915665, 32.818611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304552, 35.563385, 32.824142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093725, -0.065985, -0.993409,
		0.875805, -0.469062, 0.113786,
		-0.473478, -0.880697, 0.013828,
		27.162508, 35.299175, 32.828289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866032, 35.498238, 32.435062>,  <27.493944, 35.915665, 32.818611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866032, 35.498238, 32.435062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499304, 35.341114, 32.406372>,  <27.279268, 35.246838, 32.389160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499304, 35.341114, 32.406372>,  <27.866032, 35.498238, 32.435062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499304, 35.341114, 32.406372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093454, -0.036455, -0.994956,
		0.388216, -0.918896, 0.070132,
		-0.916818, -0.392812, -0.071722,
		27.224258, 35.223270, 32.384857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844929, 34.801083, 32.002357>,  <27.866032, 35.498238, 32.435062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844929, 34.801083, 32.002357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500904, 35.004070, 31.981289>,  <27.294489, 35.125862, 31.968647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500904, 35.004070, 31.981289>,  <27.844929, 34.801083, 32.002357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500904, 35.004070, 31.981289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113953, -0.291702, -0.949697,
		-0.497305, -0.810794, 0.308708,
		-0.860060, 0.507467, -0.052672,
		27.242886, 35.156311, 31.965487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048306, 35.531921, 31.574539>,  <27.844929, 34.801083, 32.002357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048306, 35.531921, 31.574539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236666, 35.663464, 31.901979>,  <28.349682, 35.742390, 32.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236666, 35.663464, 31.901979>,  <28.048306, 35.531921, 31.574539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236666, 35.663464, 31.901979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373964, -0.766012, 0.522855,
		0.799003, -0.552339, -0.237733,
		0.470899, 0.328859, 0.818600,
		28.377935, 35.762123, 32.147560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368803, 35.908947, 31.681244>,  <28.048306, 35.531921, 31.574539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368803, 35.908947, 31.681244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155985, 35.626869, 31.493786>,  <27.028294, 35.457623, 31.381311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155985, 35.626869, 31.493786>,  <27.368803, 35.908947, 31.681244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155985, 35.626869, 31.493786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346194, -0.323934, 0.880464,
		-0.772709, 0.630688, -0.071787,
		-0.532044, -0.705194, -0.468647,
		26.996372, 35.415310, 31.353191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780256, 35.856300, 32.023781>,  <27.368803, 35.908947, 31.681244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780256, 35.856300, 32.023781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813221, 35.507488, 31.830791>,  <26.833000, 35.298203, 31.714998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813221, 35.507488, 31.830791>,  <26.780256, 35.856300, 32.023781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813221, 35.507488, 31.830791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132257, -0.489407, 0.861968,
		-0.987783, -0.007227, -0.155664,
		0.082413, -0.872026, -0.482472,
		26.837944, 35.245880, 31.686050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094606, 35.390022, 32.156551>,  <26.780256, 35.856300, 32.023781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094606, 35.390022, 32.156551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439354, 35.200047, 32.085426>,  <26.646202, 35.086063, 32.042751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439354, 35.200047, 32.085426>,  <26.094606, 35.390022, 32.156551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439354, 35.200047, 32.085426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058449, -0.441313, 0.895448,
		-0.503753, -0.761365, -0.408113,
		0.861868, -0.474939, -0.177812,
		26.697914, 35.057564, 32.032082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088598, 34.640579, 32.416767>,  <26.094606, 35.390022, 32.156551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088598, 34.640579, 32.416767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456558, 34.796535, 32.399975>,  <26.677334, 34.890110, 32.389900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456558, 34.796535, 32.399975>,  <26.088598, 34.640579, 32.416767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456558, 34.796535, 32.399975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185460, -0.338234, 0.922606,
		0.345521, -0.856493, -0.383452,
		0.919902, 0.389895, -0.041978,
		26.732529, 34.913506, 32.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504740, 34.155106, 32.755558>,  <26.088598, 34.640579, 32.416767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504740, 34.155106, 32.755558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707067, 34.499912, 32.768623>,  <26.828465, 34.706799, 32.776463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707067, 34.499912, 32.768623>,  <26.504740, 34.155106, 32.755558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707067, 34.499912, 32.768623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218269, -0.164525, 0.961920,
		0.834568, -0.479429, -0.271372,
		0.505820, 0.862020, 0.032662,
		26.858814, 34.758518, 32.778423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209560, 34.102779, 33.145748>,  <26.504740, 34.155106, 32.755558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209560, 34.102779, 33.145748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147785, 34.497135, 33.171555>,  <27.110720, 34.733749, 33.187038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147785, 34.497135, 33.171555>,  <27.209560, 34.102779, 33.145748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147785, 34.497135, 33.171555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468800, 0.015640, 0.883166,
		0.869699, 0.166639, -0.464603,
		-0.154437, 0.985894, 0.064518,
		27.101454, 34.792904, 33.190910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896599, 34.405212, 33.405182>,  <27.209560, 34.102779, 33.145748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896599, 34.405212, 33.405182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580793, 34.638931, 33.480301>,  <27.391310, 34.779163, 33.525372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580793, 34.638931, 33.480301>,  <27.896599, 34.405212, 33.405182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580793, 34.638931, 33.480301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220067, -0.016135, 0.975351,
		0.572924, 0.811380, -0.115845,
		-0.789512, 0.584296, 0.187802,
		27.343941, 34.814220, 33.536640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146944, 34.970894, 33.700558>,  <27.896599, 34.405212, 33.405182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146944, 34.970894, 33.700558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788298, 34.892338, 33.859310>,  <27.573111, 34.845203, 33.954563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788298, 34.892338, 33.859310>,  <28.146944, 34.970894, 33.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788298, 34.892338, 33.859310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439906, -0.292527, 0.849065,
		-0.050649, 0.935874, 0.348676,
		-0.896614, -0.196389, 0.396881,
		27.519314, 34.833420, 33.978374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047438, 35.278564, 34.381149>,  <28.146944, 34.970894, 33.700558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047438, 35.278564, 34.381149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781509, 34.981052, 34.408875>,  <27.621952, 34.802544, 34.425510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781509, 34.981052, 34.408875>,  <28.047438, 35.278564, 34.381149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781509, 34.981052, 34.408875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475138, -0.349438, 0.807550,
		-0.576420, 0.569809, 0.585712,
		-0.664819, -0.743782, 0.069315,
		27.582064, 34.757919, 34.429668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584312, 35.242214, 34.991493>,  <28.047438, 35.278564, 34.381149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584312, 35.242214, 34.991493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674511, 34.873909, 34.864151>,  <27.728630, 34.652927, 34.787746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674511, 34.873909, 34.864151>,  <27.584312, 35.242214, 34.991493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674511, 34.873909, 34.864151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386593, -0.215379, 0.896748,
		-0.894258, -0.325289, 0.307392,
		0.225496, -0.920760, -0.318358,
		27.742161, 34.597679, 34.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305593, 34.799973, 35.454235>,  <27.584312, 35.242214, 34.991493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305593, 34.799973, 35.454235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628496, 34.652657, 35.269756>,  <27.822237, 34.564266, 35.159069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628496, 34.652657, 35.269756>,  <27.305593, 34.799973, 35.454235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628496, 34.652657, 35.269756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376976, -0.279500, 0.883045,
		-0.454120, -0.886703, -0.086792,
		0.807257, -0.368290, -0.461192,
		27.870674, 34.542168, 35.131397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433161, 34.149670, 35.838158>,  <27.305593, 34.799973, 35.454235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433161, 34.149670, 35.838158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765493, 34.146416, 35.615574>,  <27.964893, 34.144463, 35.482021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765493, 34.146416, 35.615574>,  <27.433161, 34.149670, 35.838158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765493, 34.146416, 35.615574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510865, -0.385479, 0.768390,
		-0.220754, -0.922681, -0.316114,
		0.830834, -0.008134, -0.556461,
		28.014744, 34.143974, 35.448635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778156, 33.500271, 36.024948>,  <27.433161, 34.149670, 35.838158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778156, 33.500271, 36.024948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047274, 33.728714, 35.836826>,  <28.208744, 33.865780, 35.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047274, 33.728714, 35.836826>,  <27.778156, 33.500271, 36.024948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047274, 33.728714, 35.836826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727031, -0.392633, 0.563263,
		0.137027, -0.720885, -0.679374,
		0.672792, 0.571108, -0.470304,
		28.249111, 33.900047, 35.695736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338509, 33.086147, 35.631081>,  <27.778156, 33.500271, 36.024948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338509, 33.086147, 35.631081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493959, 33.440361, 35.732906>,  <28.587231, 33.652889, 35.794003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493959, 33.440361, 35.732906>,  <28.338509, 33.086147, 35.631081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493959, 33.440361, 35.732906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749554, -0.464520, 0.471583,
		0.535852, 0.007539, -0.844278,
		0.388629, 0.885531, 0.254565,
		28.610548, 33.706020, 35.809277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853094, 32.585613, 35.616856>,  <28.338509, 33.086147, 35.631081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853094, 32.585613, 35.616856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245810, 32.514103, 35.642551>,  <29.481440, 32.471195, 35.657970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245810, 32.514103, 35.642551>,  <28.853094, 32.585613, 35.616856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245810, 32.514103, 35.642551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178831, -0.755706, 0.630022,
		-0.064083, -0.630038, -0.773916,
		0.981791, -0.178774, 0.064242,
		29.540346, 32.460472, 35.661823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037149, 31.877796, 35.578133>,  <28.853094, 32.585613, 35.616856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037149, 31.877796, 35.578133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290672, 32.080017, 35.812298>,  <29.442785, 32.201351, 35.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290672, 32.080017, 35.812298>,  <29.037149, 31.877796, 35.578133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290672, 32.080017, 35.812298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082082, -0.708609, 0.700811,
		0.769124, -0.492230, -0.407624,
		0.633806, 0.505552, 0.585412,
		29.480814, 32.231682, 35.987923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619402, 31.552999, 35.758064>,  <29.037149, 31.877796, 35.578133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619402, 31.552999, 35.758064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537903, 31.767252, 36.085865>,  <29.489004, 31.895803, 36.282547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537903, 31.767252, 36.085865>,  <29.619402, 31.552999, 35.758064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537903, 31.767252, 36.085865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080896, -0.824990, 0.559328,
		0.975676, 0.180256, 0.124759,
		-0.203747, 0.535630, 0.819504,
		29.476778, 31.927940, 36.331715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144375, 31.636889, 36.303051>,  <29.619402, 31.552999, 35.758064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144375, 31.636889, 36.303051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779961, 31.604198, 36.464710>,  <29.561312, 31.584583, 36.561707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779961, 31.604198, 36.464710>,  <30.144375, 31.636889, 36.303051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779961, 31.604198, 36.464710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249386, -0.889775, 0.382241,
		0.328359, 0.449023, 0.830999,
		-0.911037, -0.081727, 0.404145,
		29.506649, 31.579679, 36.585953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286617, 31.210333, 36.955219>,  <30.144375, 31.636889, 36.303051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286617, 31.210333, 36.955219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904617, 31.187790, 36.838737>,  <29.675417, 31.174265, 36.768848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904617, 31.187790, 36.838737>,  <30.286617, 31.210333, 36.955219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904617, 31.187790, 36.838737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027332, -0.994327, 0.102796,
		-0.295342, 0.090211, 0.951123,
		-0.955000, -0.056356, -0.291201,
		29.618116, 31.170883, 36.751377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923189, 30.753164, 37.578766>,  <30.286617, 31.210333, 36.955219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923189, 30.753164, 37.578766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660858, 30.741537, 37.277027>,  <29.503460, 30.734560, 37.095982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660858, 30.741537, 37.277027>,  <29.923189, 30.753164, 37.578766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660858, 30.741537, 37.277027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200739, -0.956568, 0.211381,
		-0.727732, 0.290057, 0.621509,
		-0.655828, -0.029068, -0.754351,
		29.464109, 30.732817, 37.050720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255919, 30.390652, 37.825489>,  <29.923189, 30.753164, 37.578766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255919, 30.390652, 37.825489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285255, 30.351734, 37.428471>,  <29.302856, 30.328382, 37.190258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285255, 30.351734, 37.428471>,  <29.255919, 30.390652, 37.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285255, 30.351734, 37.428471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219618, -0.972375, 0.079090,
		-0.972825, 0.212180, -0.092690,
		0.073348, -0.097297, -0.992549,
		29.307259, 30.322546, 37.130707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800552, 29.816523, 37.706333>,  <29.255919, 30.390652, 37.825489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800552, 29.816523, 37.706333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035576, 29.882425, 37.389439>,  <29.176590, 29.921967, 37.199303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035576, 29.882425, 37.389439>,  <28.800552, 29.816523, 37.706333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035576, 29.882425, 37.389439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072585, -0.964374, -0.254388,
		-0.805920, 0.206972, -0.554667,
		0.587558, 0.164756, -0.792232,
		29.211843, 29.931852, 37.151768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523464, 29.384327, 37.215611>,  <28.800552, 29.816523, 37.706333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523464, 29.384327, 37.215611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784153, 29.597984, 37.000221>,  <28.940567, 29.726179, 36.870987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784153, 29.597984, 37.000221>,  <28.523464, 29.384327, 37.215611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784153, 29.597984, 37.000221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186320, -0.800948, -0.569005,
		-0.735216, 0.270506, -0.621517,
		0.651722, 0.534143, -0.538469,
		28.979670, 29.758226, 36.838680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395924, 29.087786, 36.509617>,  <28.523464, 29.384327, 37.215611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395924, 29.087786, 36.509617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759535, 29.246977, 36.559063>,  <28.977701, 29.342491, 36.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759535, 29.246977, 36.559063>,  <28.395924, 29.087786, 36.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759535, 29.246977, 36.559063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401975, -0.759125, -0.512001,
		-0.109923, 0.515115, -0.850043,
		0.909029, 0.397977, 0.123618,
		29.032244, 29.366369, 36.596149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589485, 29.063650, 35.817539>,  <28.395924, 29.087786, 36.509617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589485, 29.063650, 35.817539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931040, 29.074846, 36.025425>,  <29.135973, 29.081564, 36.150154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931040, 29.074846, 36.025425>,  <28.589485, 29.063650, 35.817539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931040, 29.074846, 36.025425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353498, -0.764080, -0.539649,
		0.381995, 0.644515, -0.662329,
		0.853884, 0.027989, 0.519710,
		29.187204, 29.083242, 36.181339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354504, 29.145332, 35.417130>,  <28.589485, 29.063650, 35.817539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354504, 29.145332, 35.417130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373028, 28.929831, 35.753605>,  <29.384142, 28.800529, 35.955490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373028, 28.929831, 35.753605>,  <29.354504, 29.145332, 35.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373028, 28.929831, 35.753605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268759, -0.804323, -0.529936,
		0.962094, 0.250618, 0.107548,
		0.046308, -0.538753, 0.841190,
		29.386921, 28.768204, 36.005962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419386, 28.351776, 35.721607>,  <29.354504, 29.145332, 35.417130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419386, 28.351776, 35.721607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093525, 28.172060, 35.574921>,  <28.898008, 28.064230, 35.486908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093525, 28.172060, 35.574921>,  <29.419386, 28.351776, 35.721607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093525, 28.172060, 35.574921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577135, -0.565797, -0.588888,
		0.057092, -0.691385, 0.720227,
		-0.814651, -0.449289, -0.366720,
		28.849131, 28.037273, 35.464905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400364, 27.852400, 36.256077>,  <29.419386, 28.351776, 35.721607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400364, 27.852400, 36.256077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760057, 27.980299, 36.375504>,  <29.975874, 28.057039, 36.447159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760057, 27.980299, 36.375504>,  <29.400364, 27.852400, 36.256077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760057, 27.980299, 36.375504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365118, 0.924487, 0.109600,
		-0.240980, -0.207569, 0.948074,
		0.899231, 0.319748, 0.298570,
		30.029827, 28.076223, 36.465076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328852, 28.272633, 36.930225>,  <29.400364, 27.852400, 36.256077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328852, 28.272633, 36.930225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660248, 28.368458, 36.727753>,  <29.859085, 28.425953, 36.606270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660248, 28.368458, 36.727753>,  <29.328852, 28.272633, 36.930225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660248, 28.368458, 36.727753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298319, 0.953753, -0.036887,
		0.473931, 0.181563, 0.861640,
		0.828489, 0.239562, -0.506177,
		29.908794, 28.440327, 36.575901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630924, 28.828682, 37.328148>,  <29.328852, 28.272633, 36.930225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630924, 28.828682, 37.328148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740028, 28.816111, 36.943520>,  <29.805490, 28.808569, 36.712742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740028, 28.816111, 36.943520>,  <29.630924, 28.828682, 37.328148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740028, 28.816111, 36.943520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191994, 0.977585, -0.086411,
		0.942731, 0.208184, 0.260610,
		0.272758, -0.031427, -0.961569,
		29.821856, 28.806683, 36.655048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106962, 29.281694, 37.195419>,  <29.630924, 28.828682, 37.328148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106962, 29.281694, 37.195419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872433, 29.234365, 36.874863>,  <29.731714, 29.205967, 36.682529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872433, 29.234365, 36.874863>,  <30.106962, 29.281694, 37.195419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872433, 29.234365, 36.874863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266626, 0.962343, 0.052984,
		0.764940, 0.244737, -0.595794,
		-0.586325, -0.118324, -0.801388,
		29.696535, 29.198868, 36.634445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263838, 29.761284, 36.718330>,  <30.106962, 29.281694, 37.195419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263838, 29.761284, 36.718330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881248, 29.649477, 36.684784>,  <29.651695, 29.582394, 36.664658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881248, 29.649477, 36.684784>,  <30.263838, 29.761284, 36.718330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881248, 29.649477, 36.684784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286897, 0.953247, 0.094917,
		0.053413, 0.114846, -0.991946,
		-0.956471, -0.279517, -0.083865,
		29.594307, 29.565622, 36.659626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908222, 30.032331, 36.106300>,  <30.263838, 29.761284, 36.718330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908222, 30.032331, 36.106300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624947, 29.990992, 36.385666>,  <29.454981, 29.966187, 36.553288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624947, 29.990992, 36.385666>,  <29.908222, 30.032331, 36.106300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624947, 29.990992, 36.385666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190198, 0.980584, -0.047752,
		-0.679921, -0.166655, -0.714096,
		-0.708189, -0.103352, 0.698417,
		29.412489, 29.959986, 36.595192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272867, 30.385124, 35.833252>,  <29.908222, 30.032331, 36.106300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272867, 30.385124, 35.833252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241590, 30.354431, 36.230843>,  <29.222824, 30.336016, 36.469398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241590, 30.354431, 36.230843>,  <29.272867, 30.385124, 35.833252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241590, 30.354431, 36.230843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262472, 0.963443, 0.053726,
		-0.961766, -0.256691, -0.095474,
		-0.078193, -0.076731, 0.993981,
		29.218132, 30.331411, 36.529037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616335, 30.556669, 36.099972>,  <29.272867, 30.385124, 35.833252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616335, 30.556669, 36.099972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887228, 30.632944, 36.384224>,  <29.049765, 30.678709, 36.554775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887228, 30.632944, 36.384224>,  <28.616335, 30.556669, 36.099972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887228, 30.632944, 36.384224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353614, 0.931329, 0.087086,
		-0.645223, -0.310265, 0.698157,
		0.677233, 0.190688, 0.710629,
		29.090399, 30.690151, 36.597412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349512, 31.088936, 36.511345>,  <28.616335, 30.556669, 36.099972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349512, 31.088936, 36.511345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744268, 31.114981, 36.570412>,  <28.981123, 31.130608, 36.605854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744268, 31.114981, 36.570412>,  <28.349512, 31.088936, 36.511345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744268, 31.114981, 36.570412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075317, 0.995066, 0.064583,
		-0.142735, -0.074859, 0.986926,
		0.986891, 0.065114, 0.147669,
		29.040337, 31.134516, 36.614712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373867, 31.561493, 37.070580>,  <28.349512, 31.088936, 36.511345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373867, 31.561493, 37.070580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713810, 31.552851, 36.859951>,  <28.917776, 31.547667, 36.733574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713810, 31.552851, 36.859951>,  <28.373867, 31.561493, 37.070580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713810, 31.552851, 36.859951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008242, 0.999582, -0.027708,
		0.526949, 0.019208, 0.849680,
		0.849857, -0.021604, -0.526570,
		28.968767, 31.546370, 36.701981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771671, 32.089169, 36.776680>,  <28.373867, 31.561493, 37.070580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771671, 32.089169, 36.776680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112423, 32.298550, 36.783646>,  <29.316874, 32.424179, 36.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112423, 32.298550, 36.783646>,  <28.771671, 32.089169, 36.776680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112423, 32.298550, 36.783646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509659, -0.836177, 0.202624,
		0.120629, -0.163733, -0.979102,
		0.851878, 0.523450, 0.017419,
		29.367987, 32.455585, 36.788872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189312, 31.793972, 37.312691>,  <28.771671, 32.089169, 36.776680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189312, 31.793972, 37.312691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571909, 31.898554, 37.364483>,  <29.801468, 31.961302, 37.395557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571909, 31.898554, 37.364483>,  <29.189312, 31.793972, 37.312691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571909, 31.898554, 37.364483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148691, -0.818663, 0.554691,
		0.251026, -0.511305, -0.821920,
		0.956492, 0.261453, 0.129479,
		29.858856, 31.976990, 37.403328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326351, 31.481579, 38.036831>,  <29.189312, 31.793972, 37.312691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326351, 31.481579, 38.036831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713640, 31.392467, 37.991371>,  <29.946014, 31.339001, 37.964096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713640, 31.392467, 37.991371>,  <29.326351, 31.481579, 38.036831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713640, 31.392467, 37.991371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057651, -0.243356, 0.968222,
		-0.243356, -0.944006, -0.222779,
		-0.968222, 0.222779, 0.113645,
		30.004107, 31.325634, 37.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519377, 30.913557, 38.414074>,  <29.326351, 31.481579, 38.036831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519377, 30.913557, 38.414074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893373, 31.027155, 38.329094>,  <30.117771, 31.095314, 38.278107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893373, 31.027155, 38.329094>,  <29.519377, 30.913557, 38.414074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893373, 31.027155, 38.329094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305242, -0.339348, 0.889759,
		0.180592, -0.896767, -0.403974,
		0.934994, 0.283993, -0.212448,
		30.173872, 31.112352, 38.265358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038261, 30.321934, 38.574142>,  <29.519377, 30.913557, 38.414074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038261, 30.321934, 38.574142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163158, 30.697598, 38.631393>,  <30.238096, 30.922997, 38.665745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163158, 30.697598, 38.631393>,  <30.038261, 30.321934, 38.574142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163158, 30.697598, 38.631393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227259, -0.220125, 0.948630,
		0.922420, -0.263675, -0.282164,
		0.312241, 0.939159, 0.143126,
		30.256830, 30.979345, 38.674332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558046, 30.528336, 38.126171>,  <30.038261, 30.321934, 38.574142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558046, 30.528336, 38.126171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757069, 30.628904, 38.458248>,  <30.876482, 30.689245, 38.657494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757069, 30.628904, 38.458248>,  <30.558046, 30.528336, 38.126171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757069, 30.628904, 38.458248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846636, -0.349065, -0.401699,
		0.188796, 0.902741, -0.386542,
		0.497558, 0.251421, 0.830195,
		30.906336, 30.704330, 38.707306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977240, 31.128193, 38.175049>,  <30.558046, 30.528336, 38.126171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977240, 31.128193, 38.175049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097517, 30.835033, 38.419163>,  <31.169683, 30.659138, 38.565632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097517, 30.835033, 38.419163>,  <30.977240, 31.128193, 38.175049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097517, 30.835033, 38.419163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664204, -0.298277, -0.685466,
		0.684411, 0.611465, 0.397105,
		0.300692, -0.732899, 0.610281,
		31.187725, 30.615164, 38.602245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800207, 31.161800, 38.150303>,  <30.977240, 31.128193, 38.175049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800207, 31.161800, 38.150303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644169, 30.800369, 38.221157>,  <31.550547, 30.583511, 38.263668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644169, 30.800369, 38.221157>,  <31.800207, 31.161800, 38.150303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644169, 30.800369, 38.221157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578914, -0.390275, -0.715922,
		0.716020, -0.176733, 0.675337,
		-0.390094, -0.903577, 0.177131,
		31.527140, 30.529297, 38.274296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345398, 30.841972, 38.211555>,  <31.800207, 31.161800, 38.150303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345398, 30.841972, 38.211555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029621, 30.616348, 38.114712>,  <31.840155, 30.480974, 38.056606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029621, 30.616348, 38.114712>,  <32.345398, 30.841972, 38.211555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029621, 30.616348, 38.114712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497256, -0.356420, -0.791013,
		0.359885, -0.744850, 0.561855,
		-0.789443, -0.564059, -0.242112,
		31.792788, 30.447130, 38.042080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505871, 30.030823, 37.966751>,  <32.345398, 30.841972, 38.211555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505871, 30.030823, 37.966751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186939, 30.206160, 37.800804>,  <31.995579, 30.311361, 37.701237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186939, 30.206160, 37.800804>,  <32.505871, 30.030823, 37.966751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186939, 30.206160, 37.800804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323377, -0.270119, -0.906898,
		-0.509596, -0.857258, 0.073624,
		-0.797333, 0.438343, -0.414869,
		31.947739, 30.337662, 37.676342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217915, 29.596302, 37.364368>,  <32.505871, 30.030823, 37.966751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217915, 29.596302, 37.364368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101494, 29.973906, 37.302231>,  <32.031639, 30.200468, 37.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101494, 29.973906, 37.302231>,  <32.217915, 29.596302, 37.364368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101494, 29.973906, 37.302231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382726, -0.033924, -0.923239,
		-0.876817, -0.328166, -0.351424,
		-0.291054, 0.944011, -0.155343,
		32.014179, 30.257109, 37.255627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692612, 29.528740, 36.814861>,  <32.217915, 29.596302, 37.364368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692612, 29.528740, 36.814861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891048, 29.874063, 36.851940>,  <32.010109, 30.081257, 36.874187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891048, 29.874063, 36.851940>,  <31.692612, 29.528740, 36.814861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891048, 29.874063, 36.851940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177912, 0.003422, -0.984041,
		-0.849848, 0.504664, -0.151895,
		0.496091, 0.863309, 0.092694,
		32.039875, 30.133057, 36.879749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426443, 30.005339, 36.224976>,  <31.692612, 29.528740, 36.814861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426443, 30.005339, 36.224976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793495, 30.078424, 36.366154>,  <32.013725, 30.122276, 36.450859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793495, 30.078424, 36.366154>,  <31.426443, 30.005339, 36.224976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793495, 30.078424, 36.366154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372280, -0.084244, -0.924289,
		-0.139147, 0.979550, -0.145326,
		0.917630, 0.182714, 0.352944,
		32.068783, 30.133238, 36.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932482, 30.565704, 35.936882>,  <31.426443, 30.005339, 36.224976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932482, 30.565704, 35.936882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132355, 30.239679, 36.054180>,  <32.252277, 30.044064, 36.124557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132355, 30.239679, 36.054180>,  <31.932482, 30.565704, 35.936882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132355, 30.239679, 36.054180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328210, -0.135141, -0.934888,
		0.801621, 0.563392, 0.199984,
		0.499682, -0.815062, 0.293242,
		32.282261, 29.995161, 36.142155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706680, 30.611683, 35.748779>,  <31.932482, 30.565704, 35.936882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706680, 30.611683, 35.748779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556465, 30.241028, 35.755894>,  <32.466335, 30.018635, 35.760162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556465, 30.241028, 35.755894>,  <32.706680, 30.611683, 35.748779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556465, 30.241028, 35.755894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314152, -0.145326, -0.938184,
		0.871942, -0.346732, 0.345680,
		-0.375535, -0.926638, 0.017789,
		32.443806, 29.963036, 35.761230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148811, 29.988482, 35.595131>,  <32.706680, 30.611683, 35.748779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148811, 29.988482, 35.595131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773941, 29.924406, 35.471169>,  <32.549019, 29.885962, 35.396790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773941, 29.924406, 35.471169>,  <33.148811, 29.988482, 35.595131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773941, 29.924406, 35.471169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337211, -0.188297, -0.922406,
		0.089405, -0.968960, 0.230485,
		-0.937174, -0.160189, -0.309909,
		32.492790, 29.876348, 35.378197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922012, 29.361975, 35.364021>,  <33.148811, 29.988482, 35.595131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922012, 29.361975, 35.364021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675220, 29.577906, 35.134964>,  <32.527145, 29.707464, 34.997532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675220, 29.577906, 35.134964>,  <32.922012, 29.361975, 35.364021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675220, 29.577906, 35.134964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384451, -0.428159, -0.817849,
		-0.686679, -0.724752, 0.056630,
		-0.616984, 0.539829, -0.572639,
		32.490124, 29.739855, 34.963173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613007, 28.849701, 34.962063>,  <32.922012, 29.361975, 35.364021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613007, 28.849701, 34.962063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628891, 29.202045, 34.773380>,  <32.638420, 29.413452, 34.660172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628891, 29.202045, 34.773380>,  <32.613007, 28.849701, 34.962063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628891, 29.202045, 34.773380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385391, -0.449056, -0.806115,
		-0.921898, -0.149784, -0.357307,
		0.039707, 0.880859, -0.471710,
		32.640804, 29.466303, 34.631866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473080, 28.719828, 34.244041>,  <32.613007, 28.849701, 34.962063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473080, 28.719828, 34.244041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622620, 29.089886, 34.217686>,  <32.712341, 29.311920, 34.201874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622620, 29.089886, 34.217686>,  <32.473080, 28.719828, 34.244041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622620, 29.089886, 34.217686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283775, -0.181725, -0.941514,
		-0.883012, 0.333285, -0.330471,
		0.373847, 0.925147, -0.065887,
		32.734776, 29.367430, 34.197918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164482, 29.127619, 33.635216>,  <32.473080, 28.719828, 34.244041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164482, 29.127619, 33.635216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527073, 29.265266, 33.733097>,  <32.744629, 29.347855, 33.791828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527073, 29.265266, 33.733097>,  <32.164482, 29.127619, 33.635216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527073, 29.265266, 33.733097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306775, -0.138487, -0.941653,
		-0.290154, 0.928656, -0.231103,
		0.906477, 0.344121, 0.244706,
		32.799015, 29.368504, 33.806507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360920, 29.610971, 33.075813>,  <32.164482, 29.127619, 33.635216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360920, 29.610971, 33.075813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695587, 29.471161, 33.244484>,  <32.896389, 29.387274, 33.345688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695587, 29.471161, 33.244484>,  <32.360920, 29.610971, 33.075813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695587, 29.471161, 33.244484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389580, -0.161365, -0.906746,
		0.384977, 0.922925, 0.001160,
		0.836672, -0.349528, 0.421675,
		32.946590, 29.366302, 33.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881012, 29.957136, 32.677338>,  <32.360920, 29.610971, 33.075813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881012, 29.957136, 32.677338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047005, 29.650900, 32.873974>,  <33.146599, 29.467157, 32.991955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047005, 29.650900, 32.873974>,  <32.881012, 29.957136, 32.677338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047005, 29.650900, 32.873974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597465, -0.178183, -0.781848,
		0.686169, 0.618159, 0.383472,
		0.414978, -0.765591, 0.491593,
		33.171497, 29.421223, 33.021450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644897, 29.946056, 32.618092>,  <32.881012, 29.957136, 32.677338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644897, 29.946056, 32.618092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545513, 29.563700, 32.680748>,  <33.485882, 29.334286, 32.718342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545513, 29.563700, 32.680748>,  <33.644897, 29.946056, 32.618092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545513, 29.563700, 32.680748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454866, -0.257915, -0.852395,
		0.855198, -0.140537, 0.498885,
		-0.248463, -0.955892, 0.156642,
		33.470974, 29.276932, 32.727741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290913, 29.460567, 32.448750>,  <33.644897, 29.946056, 32.618092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290913, 29.460567, 32.448750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964420, 29.229576, 32.455559>,  <33.768524, 29.090981, 32.459644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964420, 29.229576, 32.455559>,  <34.290913, 29.460567, 32.448750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964420, 29.229576, 32.455559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311779, -0.465103, -0.828537,
		0.486380, -0.670967, 0.559676,
		-0.816228, -0.577479, 0.017023,
		33.719551, 29.056332, 32.460667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556355, 28.806404, 32.246422>,  <34.290913, 29.460567, 32.448750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556355, 28.806404, 32.246422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160637, 28.805159, 32.188061>,  <33.923206, 28.804411, 32.153042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160637, 28.805159, 32.188061>,  <34.556355, 28.806404, 32.246422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160637, 28.805159, 32.188061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137395, -0.356901, -0.923983,
		-0.049198, -0.934137, 0.353507,
		-0.989294, -0.003112, -0.145904,
		33.863850, 28.804226, 32.144291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591686, 28.182831, 31.889555>,  <34.556355, 28.806404, 32.246422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591686, 28.182831, 31.889555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248119, 28.371687, 31.810209>,  <34.041981, 28.485001, 31.762602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248119, 28.371687, 31.810209>,  <34.591686, 28.182831, 31.889555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248119, 28.371687, 31.810209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117063, -0.196075, -0.973576,
		-0.498559, -0.859441, 0.113142,
		-0.858916, 0.472140, -0.198363,
		33.990444, 28.513329, 31.750700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279808, 27.852684, 31.347887>,  <34.591686, 28.182831, 31.889555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279808, 27.852684, 31.347887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116890, 28.217236, 31.324242>,  <34.019138, 28.435966, 31.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116890, 28.217236, 31.324242>,  <34.279808, 27.852684, 31.347887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116890, 28.217236, 31.324242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297737, 0.071311, -0.951981,
		-0.863402, -0.405339, -0.300396,
		-0.407296, 0.911381, -0.059114,
		33.994701, 28.490650, 31.306507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856922, 27.847639, 30.738585>,  <34.279808, 27.852684, 31.347887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856922, 27.847639, 30.738585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938023, 28.232347, 30.812225>,  <33.986683, 28.463173, 30.856409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938023, 28.232347, 30.812225>,  <33.856922, 27.847639, 30.738585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938023, 28.232347, 30.812225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086697, 0.169638, -0.981686,
		-0.975385, 0.214996, -0.048989,
		0.202748, 0.961769, 0.184102,
		33.998848, 28.520878, 30.867456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428501, 28.196648, 30.276783>,  <33.856922, 27.847639, 30.738585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428501, 28.196648, 30.276783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698299, 28.469757, 30.389122>,  <33.860180, 28.633623, 30.456526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698299, 28.469757, 30.389122>,  <33.428501, 28.196648, 30.276783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698299, 28.469757, 30.389122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033872, 0.351389, -0.935617,
		-0.737501, 0.640583, 0.213884,
		0.674496, 0.682774, 0.280847,
		33.900650, 28.674589, 30.473375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228878, 28.821306, 30.022301>,  <33.428501, 28.196648, 30.276783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228878, 28.821306, 30.022301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620914, 28.892756, 30.056982>,  <33.856136, 28.935625, 30.077791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620914, 28.892756, 30.056982>,  <33.228878, 28.821306, 30.022301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620914, 28.892756, 30.056982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034946, 0.274681, -0.960900,
		-0.195457, 0.944798, 0.262970,
		0.980089, 0.178625, 0.086705,
		33.914940, 28.946342, 30.082994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385075, 29.369932, 29.673075>,  <33.228878, 28.821306, 30.022301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385075, 29.369932, 29.673075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751778, 29.217287, 29.720287>,  <33.971798, 29.125700, 29.748615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751778, 29.217287, 29.720287>,  <33.385075, 29.369932, 29.673075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751778, 29.217287, 29.720287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218638, 0.232092, -0.947803,
		0.334300, 0.894710, 0.296207,
		0.916755, -0.381613, 0.118029,
		34.026806, 29.102804, 29.755695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801609, 29.897123, 29.397837>,  <33.385075, 29.369932, 29.673075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801609, 29.897123, 29.397837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018730, 29.561844, 29.376707>,  <34.149002, 29.360676, 29.364029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018730, 29.561844, 29.376707>,  <33.801609, 29.897123, 29.397837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018730, 29.561844, 29.376707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155179, 0.161910, -0.974528,
		0.825399, 0.520780, 0.217956,
		0.542804, -0.838196, -0.052826,
		34.181572, 29.310385, 29.360859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440918, 29.998508, 29.042994>,  <33.801609, 29.897123, 29.397837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440918, 29.998508, 29.042994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407158, 29.601309, 29.009941>,  <34.386902, 29.362989, 28.990110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407158, 29.601309, 29.009941>,  <34.440918, 29.998508, 29.042994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407158, 29.601309, 29.009941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252748, 0.058879, -0.965739,
		0.963844, -0.102390, 0.246009,
		-0.084398, -0.993000, -0.082629,
		34.381840, 29.303410, 28.985153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011353, 29.742033, 28.646973>,  <34.440918, 29.998508, 29.042994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011353, 29.742033, 28.646973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745457, 29.443256, 28.641396>,  <34.585918, 29.263990, 28.638048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745457, 29.443256, 28.641396>,  <35.011353, 29.742033, 28.646973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745457, 29.443256, 28.641396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193098, -0.153758, -0.969057,
		0.721685, -0.646867, 0.246443,
		-0.664744, -0.746942, -0.013944,
		34.546032, 29.219173, 28.637213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404568, 29.270653, 28.205511>,  <35.011353, 29.742033, 28.646973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404568, 29.270653, 28.205511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019135, 29.164513, 28.192226>,  <34.787876, 29.100828, 28.184256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019135, 29.164513, 28.192226>,  <35.404568, 29.270653, 28.205511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019135, 29.164513, 28.192226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158106, -0.465115, -0.871017,
		0.215679, -0.844545, 0.490129,
		-0.963579, -0.265352, -0.033211,
		34.730061, 29.084908, 28.182262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545872, 28.580629, 27.939209>,  <35.404568, 29.270653, 28.205511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545872, 28.580629, 27.939209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176983, 28.727116, 27.889591>,  <34.955650, 28.815006, 27.859821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176983, 28.727116, 27.889591>,  <35.545872, 28.580629, 27.939209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176983, 28.727116, 27.889591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052417, -0.199441, -0.978507,
		-0.383083, -0.908906, 0.164734,
		-0.922226, 0.366215, -0.124044,
		34.900314, 28.836979, 27.852379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081829, 28.064386, 27.546371>,  <35.545872, 28.580629, 27.939209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081829, 28.064386, 27.546371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885120, 28.410437, 27.506935>,  <34.767097, 28.618067, 27.483274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885120, 28.410437, 27.506935>,  <35.081829, 28.064386, 27.546371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885120, 28.410437, 27.506935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183574, -0.213693, -0.959498,
		-0.851155, -0.453752, 0.263902,
		-0.491768, 0.865127, -0.098589,
		34.737591, 28.669975, 27.477358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504269, 27.874575, 27.155956>,  <35.081829, 28.064386, 27.546371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504269, 27.874575, 27.155956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560383, 28.267054, 27.102928>,  <34.594051, 28.502541, 27.071112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560383, 28.267054, 27.102928>,  <34.504269, 27.874575, 27.155956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560383, 28.267054, 27.102928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026429, -0.130134, -0.991144,
		-0.989759, 0.142543, 0.007676,
		0.140282, 0.981197, -0.132568,
		34.602467, 28.561413, 27.063158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972645, 28.017323, 26.693993>,  <34.504269, 27.874575, 27.155956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972645, 28.017323, 26.693993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219124, 28.332342, 26.690601>,  <34.367012, 28.521355, 26.688566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219124, 28.332342, 26.690601>,  <33.972645, 28.017323, 26.693993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219124, 28.332342, 26.690601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253996, 0.188521, -0.948655,
		-0.745514, 0.586709, 0.316200,
		0.616194, 0.787549, -0.008477,
		34.403980, 28.568607, 26.688059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564880, 28.418358, 26.310122>,  <33.972645, 28.017323, 26.693993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564880, 28.418358, 26.310122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937958, 28.560743, 26.286900>,  <34.161804, 28.646175, 26.272966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937958, 28.560743, 26.286900>,  <33.564880, 28.418358, 26.310122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937958, 28.560743, 26.286900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141683, 0.213589, -0.966595,
		-0.331673, 0.909763, 0.249647,
		0.932694, 0.355964, -0.058056,
		34.217766, 28.667532, 26.269484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556522, 29.036469, 25.794064>,  <33.564880, 28.418358, 26.310122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556522, 29.036469, 25.794064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936409, 28.914795, 25.823782>,  <34.164341, 28.841791, 25.841614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936409, 28.914795, 25.823782>,  <33.556522, 29.036469, 25.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936409, 28.914795, 25.823782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167670, 0.293626, -0.941101,
		0.264451, 0.906232, 0.329862,
		0.949712, -0.304183, 0.074298,
		34.221321, 28.823540, 25.846071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998356, 29.611933, 25.519451>,  <33.556522, 29.036469, 25.794064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998356, 29.611933, 25.519451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192608, 29.263027, 25.496420>,  <34.309158, 29.053684, 25.482601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192608, 29.263027, 25.496420>,  <33.998356, 29.611933, 25.519451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192608, 29.263027, 25.496420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316982, 0.237098, -0.918317,
		0.814667, 0.427714, 0.391635,
		0.485633, -0.872265, -0.057578,
		34.338299, 29.001348, 25.479147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610855, 29.761713, 25.357199>,  <33.998356, 29.611933, 25.519451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610855, 29.761713, 25.357199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576180, 29.381109, 25.239138>,  <34.555374, 29.152746, 25.168301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576180, 29.381109, 25.239138>,  <34.610855, 29.761713, 25.357199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576180, 29.381109, 25.239138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410557, 0.235821, -0.880813,
		0.907705, -0.197530, 0.370207,
		-0.086685, -0.951510, -0.295153,
		34.550175, 29.095655, 25.150591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328014, 29.521893, 25.047012>,  <34.610855, 29.761713, 25.357199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328014, 29.521893, 25.047012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038849, 29.270056, 24.933157>,  <34.865349, 29.118954, 24.864843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038849, 29.270056, 24.933157>,  <35.328014, 29.521893, 25.047012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038849, 29.270056, 24.933157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329373, 0.048123, -0.942973,
		0.607384, -0.775435, 0.172581,
		-0.722909, -0.629590, -0.284637,
		34.821976, 29.081179, 24.847765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619907, 28.937033, 24.725201>,  <35.328014, 29.521893, 25.047012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619907, 28.937033, 24.725201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247944, 28.951052, 24.578753>,  <35.024765, 28.959463, 24.490885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247944, 28.951052, 24.578753>,  <35.619907, 28.937033, 24.725201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247944, 28.951052, 24.578753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360131, -0.115349, -0.925743,
		-0.074674, -0.992707, 0.094643,
		-0.929909, 0.035045, -0.366118,
		34.968971, 28.961565, 24.468918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766502, 28.554543, 24.080048>,  <35.619907, 28.937033, 24.725201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766502, 28.554543, 24.080048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404926, 28.721796, 24.044138>,  <35.187981, 28.822147, 24.022593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404926, 28.721796, 24.044138>,  <35.766502, 28.554543, 24.080048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404926, 28.721796, 24.044138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096958, -0.004085, -0.995280,
		-0.416528, -0.908376, -0.036848,
		-0.903938, 0.418135, -0.089776,
		35.133743, 28.847237, 24.017206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258408, 28.139132, 23.820471>,  <35.766502, 28.554543, 24.080048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258408, 28.139132, 23.820471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112373, 28.500368, 23.730017>,  <35.024754, 28.717110, 23.675745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112373, 28.500368, 23.730017>,  <35.258408, 28.139132, 23.820471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112373, 28.500368, 23.730017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088089, -0.208302, -0.974090,
		-0.926798, -0.375544, -0.003505,
		-0.365084, 0.903093, -0.226135,
		35.002850, 28.771296, 23.662176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753155, 28.134651, 23.261658>,  <35.258408, 28.139132, 23.820471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753155, 28.134651, 23.261658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874012, 28.515852, 23.252739>,  <34.946526, 28.744572, 23.247389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874012, 28.515852, 23.252739>,  <34.753155, 28.134651, 23.261658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874012, 28.515852, 23.252739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123162, -0.062219, -0.990434,
		-0.945273, 0.296507, -0.136173,
		0.302143, 0.953002, -0.022295,
		34.964653, 28.801752, 23.246050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494446, 28.386929, 22.645006>,  <34.753155, 28.134651, 23.261658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494446, 28.386929, 22.645006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762199, 28.667440, 22.743090>,  <34.922852, 28.835749, 22.801939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762199, 28.667440, 22.743090>,  <34.494446, 28.386929, 22.645006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762199, 28.667440, 22.743090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166297, 0.180246, -0.969462,
		-0.724063, 0.689722, 0.004034,
		0.669386, 0.701281, 0.245208,
		34.963017, 28.877825, 22.816652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262531, 28.984123, 22.230244>,  <34.494446, 28.386929, 22.645006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262531, 28.984123, 22.230244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651901, 29.017607, 22.315502>,  <34.885525, 29.037697, 22.366657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651901, 29.017607, 22.315502>,  <34.262531, 28.984123, 22.230244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651901, 29.017607, 22.315502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199442, 0.147457, -0.968751,
		-0.112524, 0.985520, 0.126844,
		0.973427, 0.083710, 0.213147,
		34.943928, 29.042719, 22.379446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443333, 29.556332, 21.881731>,  <34.262531, 28.984123, 22.230244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443333, 29.556332, 21.881731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800842, 29.398163, 21.966396>,  <35.015350, 29.303261, 22.017195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800842, 29.398163, 21.966396>,  <34.443333, 29.556332, 21.881731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800842, 29.398163, 21.966396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367351, 0.374648, -0.851289,
		0.257319, 0.838618, 0.480111,
		0.893779, -0.395422, 0.211663,
		35.068977, 29.279537, 22.029896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877205, 30.040241, 21.625935>,  <34.443333, 29.556332, 21.881731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877205, 30.040241, 21.625935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141270, 29.740841, 21.651018>,  <35.299709, 29.561201, 21.666069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141270, 29.740841, 21.651018>,  <34.877205, 30.040241, 21.625935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141270, 29.740841, 21.651018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412468, 0.291478, -0.863082,
		0.627738, 0.595642, 0.501155,
		0.660164, -0.748499, 0.062711,
		35.339317, 29.516291, 21.669832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568161, 30.289717, 21.542528>,  <34.877205, 30.040241, 21.625935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568161, 30.289717, 21.542528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580925, 29.905699, 21.431316>,  <35.588585, 29.675289, 21.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580925, 29.905699, 21.431316>,  <35.568161, 30.289717, 21.542528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580925, 29.905699, 21.431316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562133, 0.247244, -0.789226,
		0.826431, -0.131104, 0.547562,
		0.031911, -0.960043, -0.278028,
		35.590500, 29.617685, 21.347908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220253, 30.250980, 21.356241>,  <35.568161, 30.289717, 21.542528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220253, 30.250980, 21.356241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043365, 29.937496, 21.181772>,  <35.937233, 29.749407, 21.077091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043365, 29.937496, 21.181772>,  <36.220253, 30.250980, 21.356241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043365, 29.937496, 21.181772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590505, 0.111634, -0.799275,
		0.675090, -0.611015, 0.413418,
		-0.442218, -0.783708, -0.436171,
		35.910702, 29.702383, 21.050920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712719, 29.733406, 21.107944>,  <36.220253, 30.250980, 21.356241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712719, 29.733406, 21.107944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373035, 29.683947, 20.902596>,  <36.169224, 29.654270, 20.779387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373035, 29.683947, 20.902596>,  <36.712719, 29.733406, 21.107944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373035, 29.683947, 20.902596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512107, 0.044278, -0.857779,
		0.128795, -0.991337, 0.025720,
		-0.849210, -0.123650, -0.513374,
		36.118271, 29.646852, 20.748583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907867, 29.304958, 20.493410>,  <36.712719, 29.733406, 21.107944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907867, 29.304958, 20.493410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563469, 29.472645, 20.378206>,  <36.356831, 29.573256, 20.309084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563469, 29.472645, 20.378206>,  <36.907867, 29.304958, 20.493410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563469, 29.472645, 20.378206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321912, 0.010737, -0.946709,
		-0.393783, -0.907823, -0.144195,
		-0.860992, 0.419215, -0.288012,
		36.305172, 29.598410, 20.291803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702396, 28.916845, 19.937197>,  <36.907867, 29.304958, 20.493410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702396, 28.916845, 19.937197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501411, 29.261770, 19.912064>,  <36.380821, 29.468725, 19.896984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501411, 29.261770, 19.912064>,  <36.702396, 28.916845, 19.937197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501411, 29.261770, 19.912064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123671, -0.000244, -0.992323,
		-0.855710, -0.506373, -0.106521,
		-0.502460, 0.862314, -0.062833,
		36.350674, 29.520464, 19.893213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390564, 28.900095, 19.301058>,  <36.702396, 28.916845, 19.937197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390564, 28.900095, 19.301058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343693, 29.290043, 19.376842>,  <36.315571, 29.524012, 19.422314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343693, 29.290043, 19.376842>,  <36.390564, 28.900095, 19.301058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343693, 29.290043, 19.376842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042781, 0.185642, -0.981686,
		-0.992189, -0.123138, 0.019953,
		-0.117179, 0.974871, 0.189460,
		36.308540, 29.582504, 19.433681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894009, 29.115381, 18.821175>,  <36.390564, 28.900095, 19.301058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894009, 29.115381, 18.821175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037971, 29.472916, 18.928152>,  <36.124348, 29.687437, 18.992338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037971, 29.472916, 18.928152>,  <35.894009, 29.115381, 18.821175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037971, 29.472916, 18.928152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104283, 0.323396, -0.940500,
		-0.927142, 0.310602, 0.209604,
		0.359906, 0.893835, 0.267443,
		36.145943, 29.741066, 19.008385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400681, 29.533316, 18.576708>,  <35.894009, 29.115381, 18.821175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400681, 29.533316, 18.576708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745735, 29.734390, 18.599230>,  <35.952766, 29.855034, 18.612743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745735, 29.734390, 18.599230>,  <35.400681, 29.533316, 18.576708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745735, 29.734390, 18.599230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101905, 0.281738, -0.954064,
		-0.495457, 0.817271, 0.294263,
		0.862634, 0.502685, 0.056306,
		36.004524, 29.885195, 18.616121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228695, 30.171295, 18.298033>,  <35.400681, 29.533316, 18.576708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228695, 30.171295, 18.298033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618603, 30.085409, 18.273603>,  <35.852547, 30.033876, 18.258945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618603, 30.085409, 18.273603>,  <35.228695, 30.171295, 18.298033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618603, 30.085409, 18.273603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003535, 0.288403, -0.957502,
		0.223206, 0.933124, 0.281884,
		0.974765, -0.214716, -0.061075,
		35.911034, 30.020994, 18.255281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609921, 30.828867, 18.419617>,  <35.228695, 30.171295, 18.298033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609921, 30.828867, 18.419617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900997, 30.825750, 18.693960>,  <36.075642, 30.823881, 18.858566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900997, 30.825750, 18.693960>,  <35.609921, 30.828867, 18.419617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900997, 30.825750, 18.693960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637853, 0.375364, -0.672492,
		-0.252209, 0.926845, 0.278118,
		0.727691, -0.007790, 0.685861,
		36.119305, 30.823414, 18.899719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859230, 31.457802, 18.341511>,  <35.609921, 30.828867, 18.419617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859230, 31.457802, 18.341511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125637, 31.205605, 18.500959>,  <36.285480, 31.054287, 18.596628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125637, 31.205605, 18.500959>,  <35.859230, 31.457802, 18.341511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125637, 31.205605, 18.500959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661537, 0.252343, -0.706181,
		0.344652, 0.734032, 0.585159,
		0.666020, -0.630491, 0.398619,
		36.325443, 31.016457, 18.620544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529888, 31.679537, 18.313141>,  <35.859230, 31.457802, 18.341511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529888, 31.679537, 18.313141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803757, 31.961123, 18.237602>,  <36.968079, 32.130074, 18.192280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803757, 31.961123, 18.237602>,  <36.529888, 31.679537, 18.313141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803757, 31.961123, 18.237602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041274, -0.221236, -0.974346,
		-0.727682, 0.674901, -0.122419,
		0.684671, 0.703962, -0.188846,
		37.009159, 32.172310, 18.180948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312237, 32.008369, 17.708025>,  <36.529888, 31.679537, 18.313141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312237, 32.008369, 17.708025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703026, 32.079163, 17.755695>,  <36.937500, 32.121639, 17.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703026, 32.079163, 17.755695>,  <36.312237, 32.008369, 17.708025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703026, 32.079163, 17.755695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129630, -0.048677, -0.990367,
		-0.169473, 0.983010, -0.070498,
		0.976972, 0.176979, 0.119178,
		36.996117, 32.132256, 17.791449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902405, 31.666704, 17.314587>,  <36.312237, 32.008369, 17.708025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902405, 31.666704, 17.314587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024788, 31.587152, 17.687002>,  <37.098217, 31.539421, 17.910452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024788, 31.587152, 17.687002>,  <36.902405, 31.666704, 17.314587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024788, 31.587152, 17.687002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078872, -0.969281, -0.232969,
		0.948772, 0.144712, -0.280874,
		0.305959, -0.198881, 0.931040,
		37.116577, 31.527489, 17.966314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446926, 31.170774, 17.269119>,  <36.902405, 31.666704, 17.314587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446926, 31.170774, 17.269119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242893, 31.162563, 17.613071>,  <37.120472, 31.157637, 17.819443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242893, 31.162563, 17.613071>,  <37.446926, 31.170774, 17.269119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242893, 31.162563, 17.613071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265902, -0.946981, -0.180340,
		0.817993, -0.320633, 0.477580,
		-0.510082, -0.020528, 0.859881,
		37.089867, 31.156404, 17.871037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946060, 31.685036, 17.573591>,  <37.446926, 31.170774, 17.269119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946060, 31.685036, 17.573591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743130, 31.986517, 17.406473>,  <37.621372, 32.167404, 17.306202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743130, 31.986517, 17.406473>,  <37.946060, 31.685036, 17.573591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743130, 31.986517, 17.406473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375508, 0.243026, 0.894389,
		0.775640, 0.610630, 0.159730,
		-0.507323, 0.753704, -0.417797,
		37.590935, 32.212627, 17.281134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149235, 32.244831, 17.876484>,  <37.946060, 31.685036, 17.573591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149235, 32.244831, 17.876484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774456, 32.293850, 17.745571>,  <37.549587, 32.323261, 17.667023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774456, 32.293850, 17.745571>,  <38.149235, 32.244831, 17.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774456, 32.293850, 17.745571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260741, 0.378421, 0.888150,
		0.232690, 0.917485, -0.322608,
		-0.936947, 0.122547, -0.327281,
		37.493374, 32.330612, 17.647387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948792, 33.046188, 17.974329>,  <38.149235, 32.244831, 17.876484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948792, 33.046188, 17.974329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656910, 32.781258, 18.042278>,  <37.481781, 32.622299, 18.083048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656910, 32.781258, 18.042278>,  <37.948792, 33.046188, 17.974329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656910, 32.781258, 18.042278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226627, 0.468663, 0.853812,
		-0.645119, 0.584528, -0.492085,
		-0.729699, -0.662330, 0.169874,
		37.438000, 32.582558, 18.093241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332214, 33.391521, 18.272978>,  <37.948792, 33.046188, 17.974329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332214, 33.391521, 18.272978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278450, 33.009098, 18.377195>,  <37.246193, 32.779644, 18.439726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278450, 33.009098, 18.377195>,  <37.332214, 33.391521, 18.272978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278450, 33.009098, 18.377195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203446, 0.283953, 0.937006,
		-0.969816, 0.072937, -0.232673,
		-0.134410, -0.956060, 0.260543,
		37.238129, 32.722279, 18.455359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552437, 33.238621, 18.628195>,  <37.332214, 33.391521, 18.272978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552437, 33.238621, 18.628195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790970, 32.937378, 18.739346>,  <36.934090, 32.756634, 18.806036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790970, 32.937378, 18.739346>,  <36.552437, 33.238621, 18.628195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790970, 32.937378, 18.739346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365226, 0.053712, 0.929368,
		-0.714838, -0.655703, -0.243024,
		0.596336, -0.753106, 0.277875,
		36.969872, 32.711445, 18.822708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029205, 32.770630, 19.021196>,  <36.552437, 33.238621, 18.628195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029205, 32.770630, 19.021196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401817, 32.699299, 19.147970>,  <36.625385, 32.656502, 19.224035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401817, 32.699299, 19.147970>,  <36.029205, 32.770630, 19.021196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401817, 32.699299, 19.147970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286385, 0.177392, 0.941550,
		-0.224126, -0.967849, 0.114176,
		0.931532, -0.178327, 0.316936,
		36.681278, 32.645802, 19.243052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030346, 32.289078, 19.544994>,  <36.029205, 32.770630, 19.021196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030346, 32.289078, 19.544994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380547, 32.475208, 19.597095>,  <36.590668, 32.586887, 19.628355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380547, 32.475208, 19.597095>,  <36.030346, 32.289078, 19.544994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380547, 32.475208, 19.597095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172344, 0.048873, 0.983824,
		0.451438, -0.883786, 0.122985,
		0.875501, 0.465332, 0.130252,
		36.643196, 32.614807, 19.636171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242550, 31.978956, 20.150028>,  <36.030346, 32.289078, 19.544994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242550, 31.978956, 20.150028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445995, 32.320370, 20.104784>,  <36.568062, 32.525219, 20.077639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445995, 32.320370, 20.104784>,  <36.242550, 31.978956, 20.150028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445995, 32.320370, 20.104784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125013, 0.203187, 0.971127,
		0.851870, -0.479789, 0.210046,
		0.508615, 0.853532, -0.113109,
		36.598579, 32.576431, 20.070852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810726, 31.954678, 20.667255>,  <36.242550, 31.978956, 20.150028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810726, 31.954678, 20.667255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743198, 32.332188, 20.553562>,  <36.702682, 32.558693, 20.485346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743198, 32.332188, 20.553562>,  <36.810726, 31.954678, 20.667255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743198, 32.332188, 20.553562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136203, 0.263268, 0.955060,
		0.976192, 0.199943, 0.084102,
		-0.168816, 0.943776, -0.284233,
		36.692554, 32.615322, 20.468292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089066, 32.222591, 21.258156>,  <36.810726, 31.954678, 20.667255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089066, 32.222591, 21.258156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913757, 32.545338, 21.099716>,  <36.808571, 32.738983, 21.004652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913757, 32.545338, 21.099716>,  <37.089066, 32.222591, 21.258156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913757, 32.545338, 21.099716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139990, 0.374024, 0.916793,
		0.887875, 0.457253, -0.050971,
		-0.438271, 0.806862, -0.396097,
		36.782276, 32.787395, 20.980886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418320, 32.891106, 21.423347>,  <37.089066, 32.222591, 21.258156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418320, 32.891106, 21.423347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039936, 32.995174, 21.345921>,  <36.812904, 33.057617, 21.299465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039936, 32.995174, 21.345921>,  <37.418320, 32.891106, 21.423347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039936, 32.995174, 21.345921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091189, 0.359409, 0.928714,
		0.311195, 0.896179, -0.316262,
		-0.945961, 0.260172, -0.193568,
		36.756149, 33.073227, 21.287849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304817, 33.459694, 21.763014>,  <37.418320, 32.891106, 21.423347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304817, 33.459694, 21.763014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927788, 33.354836, 21.680225>,  <36.701569, 33.291920, 21.630552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927788, 33.354836, 21.680225>,  <37.304817, 33.459694, 21.763014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927788, 33.354836, 21.680225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307149, 0.436874, 0.845459,
		-0.131214, 0.860477, -0.492304,
		-0.942572, -0.262146, -0.206970,
		36.645016, 33.276192, 21.618134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845592, 34.010502, 22.154549>,  <37.304817, 33.459694, 21.763014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845592, 34.010502, 22.154549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611290, 33.695797, 22.076687>,  <36.470707, 33.506973, 22.029970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611290, 33.695797, 22.076687>,  <36.845592, 34.010502, 22.154549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611290, 33.695797, 22.076687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470244, 0.134296, 0.872259,
		-0.660118, 0.602470, -0.448635,
		-0.585759, -0.786762, -0.194657,
		36.435562, 33.459766, 22.018290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160664, 34.166328, 22.415043>,  <36.845592, 34.010502, 22.154549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160664, 34.166328, 22.415043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170509, 33.766506, 22.408369>,  <36.176414, 33.526611, 22.404366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170509, 33.766506, 22.408369>,  <36.160664, 34.166328, 22.415043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170509, 33.766506, 22.408369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383969, -0.024860, 0.923011,
		-0.923018, -0.016312, -0.384411,
		0.024613, -0.999558, -0.016683,
		36.177895, 33.466640, 22.403364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514549, 33.976479, 22.588717>,  <36.160664, 34.166328, 22.415043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514549, 33.976479, 22.588717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746620, 33.663097, 22.677799>,  <35.885860, 33.475067, 22.731249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746620, 33.663097, 22.677799>,  <35.514549, 33.976479, 22.588717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746620, 33.663097, 22.677799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410866, -0.045421, 0.910563,
		-0.703268, -0.619789, -0.348246,
		0.580175, -0.783453, 0.222708,
		35.920673, 33.428062, 22.744612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044987, 33.392025, 22.883718>,  <35.514549, 33.976479, 22.588717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044987, 33.392025, 22.883718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426910, 33.327446, 22.983536>,  <35.656063, 33.288700, 23.043427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426910, 33.327446, 22.983536>,  <35.044987, 33.392025, 22.883718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426910, 33.327446, 22.983536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296029, -0.441614, 0.846962,
		-0.026538, -0.882560, -0.469450,
		0.954810, -0.161448, 0.249543,
		35.713352, 33.279011, 23.058399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957016, 32.783176, 23.302170>,  <35.044987, 33.392025, 22.883718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957016, 32.783176, 23.302170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310410, 32.955765, 23.375153>,  <35.522446, 33.059319, 23.418943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310410, 32.955765, 23.375153>,  <34.957016, 32.783176, 23.302170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310410, 32.955765, 23.375153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084032, -0.237200, 0.967819,
		0.460866, -0.870384, -0.173305,
		0.883482, 0.431472, 0.182458,
		35.575455, 33.085205, 23.429890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317913, 32.278008, 23.637049>,  <34.957016, 32.783176, 23.302170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317913, 32.278008, 23.637049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489880, 32.624023, 23.740496>,  <35.593060, 32.831635, 23.802563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489880, 32.624023, 23.740496>,  <35.317913, 32.278008, 23.637049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489880, 32.624023, 23.740496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046204, -0.307142, 0.950541,
		0.901687, -0.396702, -0.172012,
		0.429914, 0.865038, 0.258616,
		35.618855, 32.883533, 23.818081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975227, 32.159771, 24.096739>,  <35.317913, 32.278008, 23.637049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975227, 32.159771, 24.096739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878971, 32.535408, 24.194878>,  <35.821217, 32.760792, 24.253761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878971, 32.535408, 24.194878>,  <35.975227, 32.159771, 24.096739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878971, 32.535408, 24.194878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182466, -0.204499, 0.961710,
		0.953310, 0.276190, -0.122143,
		-0.240636, 0.939095, 0.245347,
		35.806782, 32.817135, 24.268482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479641, 32.339725, 24.508043>,  <35.975227, 32.159771, 24.096739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479641, 32.339725, 24.508043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176159, 32.587086, 24.589966>,  <35.994068, 32.735500, 24.639120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176159, 32.587086, 24.589966>,  <36.479641, 32.339725, 24.508043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176159, 32.587086, 24.589966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064621, -0.241399, 0.968272,
		0.648216, 0.747872, 0.143191,
		-0.758709, 0.618397, 0.204807,
		35.948547, 32.772606, 24.651407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707989, 32.481453, 25.168634>,  <36.479641, 32.339725, 24.508043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707989, 32.481453, 25.168634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339245, 32.630932, 25.127594>,  <36.118000, 32.720619, 25.102970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339245, 32.630932, 25.127594>,  <36.707989, 32.481453, 25.168634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339245, 32.630932, 25.127594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125105, -0.036399, 0.991476,
		0.366779, 0.926836, 0.080306,
		-0.921858, 0.373699, -0.102601,
		36.062687, 32.743042, 25.096813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652210, 32.753387, 25.864742>,  <36.707989, 32.481453, 25.168634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652210, 32.753387, 25.864742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296093, 32.768047, 25.683176>,  <36.082424, 32.776844, 25.574236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296093, 32.768047, 25.683176>,  <36.652210, 32.753387, 25.864742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296093, 32.768047, 25.683176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454392, -0.137466, 0.880131,
		-0.030144, 0.989828, 0.139037,
		-0.890292, 0.036646, -0.453914,
		36.029007, 32.779041, 25.547003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234604, 33.263596, 26.168884>,  <36.652210, 32.753387, 25.864742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234604, 33.263596, 26.168884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965237, 33.028229, 25.989874>,  <35.803616, 32.887009, 25.882467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965237, 33.028229, 25.989874>,  <36.234604, 33.263596, 26.168884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965237, 33.028229, 25.989874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456104, -0.145721, 0.877915,
		-0.581791, 0.795321, -0.170247,
		-0.673415, -0.588414, -0.447528,
		35.763210, 32.851704, 25.855616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617241, 33.581047, 26.236040>,  <36.234604, 33.263596, 26.168884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617241, 33.581047, 26.236040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551434, 33.186951, 26.217131>,  <35.511948, 32.950493, 26.205786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551434, 33.186951, 26.217131>,  <35.617241, 33.581047, 26.236040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551434, 33.186951, 26.217131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284799, 0.001561, 0.958586,
		-0.944364, 0.171168, -0.280852,
		-0.164518, -0.985241, -0.047274,
		35.502079, 32.891380, 26.202948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913601, 33.433456, 26.413420>,  <35.617241, 33.581047, 26.236040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913601, 33.433456, 26.413420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104267, 33.088596, 26.482098>,  <35.218666, 32.881680, 26.523304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104267, 33.088596, 26.482098>,  <34.913601, 33.433456, 26.413420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104267, 33.088596, 26.482098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474211, -0.087721, 0.876030,
		-0.740212, -0.498994, -0.450657,
		0.476666, -0.862154, 0.171696,
		35.247269, 32.829948, 26.533607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420654, 32.935234, 26.578371>,  <34.913601, 33.433456, 26.413420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420654, 32.935234, 26.578371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765278, 32.837051, 26.756117>,  <34.972054, 32.778141, 26.862764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765278, 32.837051, 26.756117>,  <34.420654, 32.935234, 26.578371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765278, 32.837051, 26.756117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476507, -0.089145, 0.874640,
		-0.175077, -0.965299, -0.193768,
		0.861562, -0.245461, 0.444365,
		35.023746, 32.763412, 26.889427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128773, 32.331562, 26.956554>,  <34.420654, 32.935234, 26.578371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128773, 32.331562, 26.956554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499542, 32.401722, 27.089243>,  <34.722004, 32.443817, 27.168856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499542, 32.401722, 27.089243>,  <34.128773, 32.331562, 26.956554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499542, 32.401722, 27.089243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320966, -0.087338, 0.943055,
		0.194383, -0.980616, -0.024659,
		0.926928, 0.175399, 0.331722,
		34.777622, 32.454342, 27.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222202, 31.856934, 27.406895>,  <34.128773, 32.331562, 26.956554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222202, 31.856934, 27.406895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493698, 32.127502, 27.521275>,  <34.656597, 32.289845, 27.589903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493698, 32.127502, 27.521275>,  <34.222202, 31.856934, 27.406895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493698, 32.127502, 27.521275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299556, -0.100499, 0.948771,
		0.670508, -0.729624, 0.134415,
		0.678738, 0.676423, 0.285949,
		34.697319, 32.330429, 27.607059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631210, 31.580931, 28.076754>,  <34.222202, 31.856934, 27.406895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631210, 31.580931, 28.076754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696789, 31.974802, 28.052990>,  <34.736137, 32.211124, 28.038731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696789, 31.974802, 28.052990>,  <34.631210, 31.580931, 28.076754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696789, 31.974802, 28.052990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154842, 0.085167, 0.984262,
		0.974240, -0.152170, 0.166433,
		0.163950, 0.984678, -0.059411,
		34.745975, 32.270206, 28.035166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114956, 31.703026, 28.612658>,  <34.631210, 31.580931, 28.076754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114956, 31.703026, 28.612658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943485, 32.050694, 28.514038>,  <34.840603, 32.259293, 28.454866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943485, 32.050694, 28.514038>,  <35.114956, 31.703026, 28.612658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943485, 32.050694, 28.514038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308745, 0.115532, 0.944102,
		0.849068, 0.480832, 0.218826,
		-0.428673, 0.869168, -0.246549,
		34.814884, 32.311443, 28.440073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304821, 32.187134, 29.055014>,  <35.114956, 31.703026, 28.612658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304821, 32.187134, 29.055014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963631, 32.341103, 28.914003>,  <34.758919, 32.433483, 28.829397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963631, 32.341103, 28.914003>,  <35.304821, 32.187134, 29.055014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963631, 32.341103, 28.914003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233617, 0.322420, 0.917316,
		0.466758, 0.864800, -0.185090,
		-0.852971, 0.384924, -0.352524,
		34.707741, 32.456581, 28.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267719, 32.869362, 29.270657>,  <35.304821, 32.187134, 29.055014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267719, 32.869362, 29.270657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897900, 32.725048, 29.221607>,  <34.676006, 32.638458, 29.192179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897900, 32.725048, 29.221607>,  <35.267719, 32.869362, 29.270657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897900, 32.725048, 29.221607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175063, 0.116335, 0.977660,
		-0.338458, 0.925366, -0.170718,
		-0.924554, -0.360783, -0.122623,
		34.620533, 32.616814, 29.184820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957497, 33.064335, 29.829319>,  <35.267719, 32.869362, 29.270657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957497, 33.064335, 29.829319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660736, 32.840668, 29.681307>,  <34.482681, 32.706467, 29.592501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660736, 32.840668, 29.681307>,  <34.957497, 33.064335, 29.829319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660736, 32.840668, 29.681307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359337, -0.134350, 0.923486,
		-0.566093, 0.818099, -0.101254,
		-0.741900, -0.559163, -0.370028,
		34.438168, 32.672920, 29.570299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278133, 33.324383, 30.070723>,  <34.957497, 33.064335, 29.829319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278133, 33.324383, 30.070723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212971, 32.941303, 29.975836>,  <34.173874, 32.711456, 29.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212971, 32.941303, 29.975836>,  <34.278133, 33.324383, 30.070723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212971, 32.941303, 29.975836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247277, -0.193126, 0.949503,
		-0.955151, 0.213343, -0.205355,
		-0.162911, -0.957699, -0.237219,
		34.164097, 32.653992, 29.904671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669857, 33.234455, 30.416126>,  <34.278133, 33.324383, 30.070723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669857, 33.234455, 30.416126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820221, 32.868626, 30.356472>,  <33.910439, 32.649128, 30.320679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820221, 32.868626, 30.356472>,  <33.669857, 33.234455, 30.416126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820221, 32.868626, 30.356472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436600, -0.316762, 0.842047,
		-0.817356, -0.251422, -0.518378,
		0.375911, -0.914576, -0.149136,
		33.932995, 32.594254, 30.311731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037857, 32.814320, 30.468901>,  <33.669857, 33.234455, 30.416126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037857, 32.814320, 30.468901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358944, 32.584942, 30.534393>,  <33.551594, 32.447315, 30.573689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358944, 32.584942, 30.534393>,  <33.037857, 32.814320, 30.468901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358944, 32.584942, 30.534393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441635, -0.387109, 0.809386,
		-0.400768, -0.722008, -0.563995,
		0.802710, -0.573456, 0.163723,
		33.599758, 32.412907, 30.583511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738323, 32.322083, 30.921288>,  <33.037857, 32.814320, 30.468901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738323, 32.322083, 30.921288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129677, 32.249615, 30.961191>,  <33.364487, 32.206135, 30.985134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129677, 32.249615, 30.961191>,  <32.738323, 32.322083, 30.921288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129677, 32.249615, 30.961191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147980, -0.276253, 0.949624,
		-0.144479, -0.943856, -0.297089,
		0.978380, -0.181164, 0.099759,
		33.423191, 32.195267, 30.991119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864048, 31.659573, 31.046795>,  <32.738323, 32.322083, 30.921288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864048, 31.659573, 31.046795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174004, 31.861704, 31.198683>,  <33.359978, 31.982983, 31.289816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174004, 31.861704, 31.198683>,  <32.864048, 31.659573, 31.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174004, 31.861704, 31.198683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105497, -0.488914, 0.865929,
		0.623232, -0.711058, -0.325543,
		0.774888, 0.505331, 0.379722,
		33.406471, 32.013302, 31.312599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144730, 31.224222, 31.540291>,  <32.864048, 31.659573, 31.046795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144730, 31.224222, 31.540291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293121, 31.580881, 31.644091>,  <33.382156, 31.794876, 31.706369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293121, 31.580881, 31.644091>,  <33.144730, 31.224222, 31.540291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293121, 31.580881, 31.644091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013104, -0.284438, 0.958605,
		0.928549, -0.352223, -0.117205,
		0.370980, 0.891647, 0.259499,
		33.404415, 31.848375, 31.721941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766621, 30.972269, 31.976070>,  <33.144730, 31.224222, 31.540291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766621, 30.972269, 31.976070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669365, 31.353125, 32.050167>,  <33.611012, 31.581638, 32.094624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669365, 31.353125, 32.050167>,  <33.766621, 30.972269, 31.976070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669365, 31.353125, 32.050167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055905, -0.176901, 0.982640,
		0.968379, 0.249274, -0.010217,
		-0.243139, 0.952139, 0.185243,
		33.596424, 31.638767, 32.105740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148022, 31.089861, 32.607841>,  <33.766621, 30.972269, 31.976070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148022, 31.089861, 32.607841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850639, 31.357164, 32.597179>,  <33.672211, 31.517546, 32.590782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850639, 31.357164, 32.597179>,  <34.148022, 31.089861, 32.607841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850639, 31.357164, 32.597179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093828, -0.064758, 0.993480,
		0.662176, 0.741105, 0.110846,
		-0.743452, 0.668259, -0.026655,
		33.627605, 31.557642, 32.589184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244717, 31.499086, 33.188522>,  <34.148022, 31.089861, 32.607841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244717, 31.499086, 33.188522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863552, 31.554621, 33.080688>,  <33.634853, 31.587940, 33.015987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863552, 31.554621, 33.080688>,  <34.244717, 31.499086, 33.188522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863552, 31.554621, 33.080688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272714, -0.003641, 0.962088,
		0.132589, 0.990309, 0.041331,
		-0.952915, 0.138834, -0.269588,
		33.577679, 31.596272, 32.999813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488834, 32.123070, 32.655033>,  <34.244717, 31.499086, 33.188522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488834, 32.123070, 32.655033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846699, 31.998116, 32.782780>,  <35.061417, 31.923143, 32.859428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846699, 31.998116, 32.782780>,  <34.488834, 32.123070, 32.655033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846699, 31.998116, 32.782780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421754, 0.826343, -0.373204,
		-0.147323, 0.468586, 0.871047,
		0.894662, -0.312386, 0.319367,
		35.115097, 31.904400, 32.878590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974854, 32.751961, 32.909096>,  <34.488834, 32.123070, 32.655033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974854, 32.751961, 32.909096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232849, 32.452564, 32.847466>,  <35.387646, 32.272926, 32.810490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232849, 32.452564, 32.847466>,  <34.974854, 32.751961, 32.909096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232849, 32.452564, 32.847466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654742, 0.645240, -0.393672,
		0.394076, 0.153038, 0.906247,
		0.644993, -0.748495, -0.154073,
		35.426346, 32.228016, 32.801243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588825, 33.063053, 32.882744>,  <34.974854, 32.751961, 32.909096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588825, 33.063053, 32.882744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697495, 32.710754, 32.727577>,  <35.762695, 32.499374, 32.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697495, 32.710754, 32.727577>,  <35.588825, 33.063053, 32.882744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697495, 32.710754, 32.727577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605859, 0.469699, -0.642119,
		0.747748, -0.060575, 0.661214,
		0.271675, -0.880746, -0.387916,
		35.778996, 32.446529, 32.611202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316822, 32.995003, 32.864220>,  <35.588825, 33.063053, 32.882744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316822, 32.995003, 32.864220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211472, 32.720848, 32.592667>,  <36.148262, 32.556355, 32.429733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211472, 32.720848, 32.592667>,  <36.316822, 32.995003, 32.864220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211472, 32.720848, 32.592667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744362, 0.303258, -0.594945,
		0.613642, -0.662031, 0.430300,
		-0.263380, -0.685382, -0.678883,
		36.132458, 32.515232, 32.389000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901001, 32.533615, 32.679298>,  <36.316822, 32.995003, 32.864220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901001, 32.533615, 32.679298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641579, 32.526154, 32.374924>,  <36.485924, 32.521675, 32.192299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641579, 32.526154, 32.374924>,  <36.901001, 32.533615, 32.679298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641579, 32.526154, 32.374924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707842, 0.352815, -0.611949,
		0.279887, -0.935507, -0.215614,
		-0.648555, -0.018656, -0.760940,
		36.447014, 32.520557, 32.146641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319649, 32.392597, 32.044758>,  <36.901001, 32.533615, 32.679298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319649, 32.392597, 32.044758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975220, 32.520287, 31.886442>,  <36.768562, 32.596901, 31.791452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975220, 32.520287, 31.886442>,  <37.319649, 32.392597, 32.044758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975220, 32.520287, 31.886442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506585, 0.471467, -0.721866,
		-0.043833, -0.822081, -0.567680,
		-0.861075, 0.319220, -0.395788,
		36.716896, 32.616051, 31.767706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313889, 32.064552, 31.381718>,  <37.319649, 32.392597, 32.044758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313889, 32.064552, 31.381718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083424, 32.391434, 31.375854>,  <36.945145, 32.587563, 31.372337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083424, 32.391434, 31.375854>,  <37.313889, 32.064552, 31.381718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083424, 32.391434, 31.375854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658873, 0.453774, -0.599979,
		-0.483653, -0.355345, -0.799881,
		-0.576165, 0.817202, -0.014658,
		36.910576, 32.636593, 31.371456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168999, 32.151844, 30.618856>,  <37.313889, 32.064552, 31.381718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168999, 32.151844, 30.618856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035229, 32.501995, 30.758493>,  <36.954967, 32.712086, 30.842276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035229, 32.501995, 30.758493>,  <37.168999, 32.151844, 30.618856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035229, 32.501995, 30.758493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383590, 0.464787, -0.798018,
		-0.860824, -0.132969, -0.491225,
		-0.334426, 0.875382, 0.349093,
		36.934902, 32.764610, 30.863222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747421, 32.344742, 30.093882>,  <37.168999, 32.151844, 30.618856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747421, 32.344742, 30.093882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870640, 32.660023, 30.306992>,  <36.944572, 32.849190, 30.434858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870640, 32.660023, 30.306992>,  <36.747421, 32.344742, 30.093882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870640, 32.660023, 30.306992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306180, 0.448079, -0.839928,
		-0.900755, 0.421865, -0.103300,
		0.308049, 0.788198, 0.532776,
		36.963055, 32.896481, 30.466824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370998, 32.910637, 29.838699>,  <36.747421, 32.344742, 30.093882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370998, 32.910637, 29.838699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692497, 33.063431, 30.021164>,  <36.885395, 33.155106, 30.130644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692497, 33.063431, 30.021164>,  <36.370998, 32.910637, 29.838699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692497, 33.063431, 30.021164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294768, 0.410339, -0.862980,
		-0.516823, 0.828078, 0.217212,
		0.803745, 0.381981, 0.456163,
		36.933620, 33.178024, 30.158012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449776, 33.627697, 29.636412>,  <36.370998, 32.910637, 29.838699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449776, 33.627697, 29.636412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817066, 33.524364, 29.756498>,  <37.037441, 33.462364, 29.828550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817066, 33.524364, 29.756498>,  <36.449776, 33.627697, 29.636412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817066, 33.524364, 29.756498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380987, 0.368994, -0.847757,
		0.108222, 0.892810, 0.437239,
		0.918225, -0.258328, 0.300215,
		37.092533, 33.446865, 29.846563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797287, 34.207195, 29.586023>,  <36.449776, 33.627697, 29.636412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797287, 34.207195, 29.586023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074955, 33.919712, 29.601917>,  <37.241554, 33.747223, 29.611454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074955, 33.919712, 29.601917>,  <36.797287, 34.207195, 29.586023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074955, 33.919712, 29.601917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456991, 0.397393, -0.795763,
		0.556135, 0.570554, 0.604304,
		0.694171, -0.718712, 0.039734,
		37.283207, 33.704098, 29.613838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400494, 34.593288, 29.315178>,  <36.797287, 34.207195, 29.586023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400494, 34.593288, 29.315178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470543, 34.200214, 29.290955>,  <37.512573, 33.964371, 29.276421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470543, 34.200214, 29.290955>,  <37.400494, 34.593288, 29.315178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470543, 34.200214, 29.290955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492988, 0.140765, -0.858573,
		0.852229, 0.120503, 0.509102,
		0.175124, -0.982682, -0.060558,
		37.523079, 33.905411, 29.272787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040749, 34.606426, 29.230076>,  <37.400494, 34.593288, 29.315178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040749, 34.606426, 29.230076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907837, 34.249519, 29.107794>,  <37.828091, 34.035378, 29.034426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907837, 34.249519, 29.107794>,  <38.040749, 34.606426, 29.230076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907837, 34.249519, 29.107794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346477, 0.185984, -0.919437,
		0.877235, -0.411432, 0.247350,
		-0.332282, -0.892263, -0.305703,
		37.808151, 33.981842, 29.016083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569393, 34.233440, 28.873932>,  <38.040749, 34.606426, 29.230076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569393, 34.233440, 28.873932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220772, 34.093300, 28.736734>,  <38.011597, 34.009216, 28.654415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220772, 34.093300, 28.736734>,  <38.569393, 34.233440, 28.873932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220772, 34.093300, 28.736734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369921, -0.010744, -0.929001,
		0.321789, -0.936558, 0.138965,
		-0.871556, -0.350349, -0.342995,
		37.959305, 33.988197, 28.633835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722435, 33.722343, 28.306202>,  <38.569393, 34.233440, 28.873932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722435, 33.722343, 28.306202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337646, 33.814869, 28.248098>,  <38.106773, 33.870384, 28.213236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337646, 33.814869, 28.248098>,  <38.722435, 33.722343, 28.306202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337646, 33.814869, 28.248098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151977, 0.011388, -0.988318,
		-0.226955, -0.972813, -0.046109,
		-0.961974, 0.231311, -0.145261,
		38.049053, 33.884262, 28.204519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613571, 33.417507, 27.630354>,  <38.722435, 33.722343, 28.306202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613571, 33.417507, 27.630354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295719, 33.655910, 27.676542>,  <38.105007, 33.798954, 27.704256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295719, 33.655910, 27.676542>,  <38.613571, 33.417507, 27.630354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295719, 33.655910, 27.676542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118941, 0.033677, -0.992330,
		-0.595328, -0.802270, 0.044129,
		-0.794631, 0.596011, 0.115472,
		38.057331, 33.834713, 27.711184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986469, 33.065826, 27.456175>,  <38.613571, 33.417507, 27.630354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986469, 33.065826, 27.456175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923817, 33.453068, 27.377953>,  <37.886223, 33.685413, 27.331018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923817, 33.453068, 27.377953>,  <37.986469, 33.065826, 27.456175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923817, 33.453068, 27.377953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051489, -0.205736, -0.977252,
		-0.986314, -0.143003, 0.082072,
		-0.156635, 0.968103, -0.195557,
		37.876827, 33.743500, 27.319284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514980, 33.019459, 26.973396>,  <37.986469, 33.065826, 27.456175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514980, 33.019459, 26.973396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640556, 33.398849, 26.956270>,  <37.715900, 33.626484, 26.945993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640556, 33.398849, 26.956270>,  <37.514980, 33.019459, 26.973396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640556, 33.398849, 26.956270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141218, 0.002051, -0.989976,
		-0.938883, 0.316837, 0.134587,
		0.313938, 0.948478, -0.042817,
		37.734737, 33.683392, 26.943424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096424, 33.373711, 26.532757>,  <37.514980, 33.019459, 26.973396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096424, 33.373711, 26.532757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409229, 33.623009, 26.530729>,  <37.596912, 33.772587, 26.529512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409229, 33.623009, 26.530729>,  <37.096424, 33.373711, 26.532757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409229, 33.623009, 26.530729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027141, 0.025926, -0.999295,
		-0.622676, 0.781595, 0.037190,
		0.782009, 0.623247, -0.005069,
		37.643833, 33.809982, 26.529209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026821, 33.899933, 25.906361>,  <37.096424, 33.373711, 26.532757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026821, 33.899933, 25.906361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418823, 33.889629, 25.985287>,  <37.654022, 33.883450, 26.032642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418823, 33.889629, 25.985287>,  <37.026821, 33.899933, 25.906361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418823, 33.889629, 25.985287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198960, 0.110521, -0.973756,
		0.003273, 0.993540, 0.113435,
		0.980002, -0.025756, 0.197313,
		37.712826, 33.881901, 26.044481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205585, 34.337982, 25.349903>,  <37.026821, 33.899933, 25.906361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205585, 34.337982, 25.349903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530537, 34.159851, 25.500486>,  <37.725510, 34.052975, 25.590837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530537, 34.159851, 25.500486>,  <37.205585, 34.337982, 25.349903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530537, 34.159851, 25.500486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420744, 0.000647, -0.907179,
		0.403746, 0.895369, 0.187893,
		0.812382, -0.445325, 0.376460,
		37.774250, 34.026253, 25.613424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665356, 34.621181, 24.932127>,  <37.205585, 34.337982, 25.349903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665356, 34.621181, 24.932127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840607, 34.300114, 25.093996>,  <37.945759, 34.107471, 25.191116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840607, 34.300114, 25.093996>,  <37.665356, 34.621181, 24.932127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840607, 34.300114, 25.093996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424899, -0.211789, -0.880117,
		0.792152, 0.557548, 0.248265,
		0.438128, -0.802674, 0.404671,
		37.972046, 34.059311, 25.215397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382702, 34.634468, 24.765562>,  <37.665356, 34.621181, 24.932127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382702, 34.634468, 24.765562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276760, 34.254444, 24.831573>,  <38.213196, 34.026428, 24.871181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276760, 34.254444, 24.831573>,  <38.382702, 34.634468, 24.765562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276760, 34.254444, 24.831573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354064, -0.255001, -0.899785,
		0.896934, -0.179880, 0.403921,
		-0.264854, -0.950062, 0.165030,
		38.197304, 33.969425, 24.881083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874435, 34.204300, 24.403334>,  <38.382702, 34.634468, 24.765562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874435, 34.204300, 24.403334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588333, 33.937321, 24.486208>,  <38.416672, 33.777134, 24.535933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588333, 33.937321, 24.486208>,  <38.874435, 34.204300, 24.403334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588333, 33.937321, 24.486208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211641, -0.489408, -0.845983,
		0.666044, -0.561247, 0.491311,
		-0.715258, -0.667444, 0.207184,
		38.373756, 33.737087, 24.548363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205559, 33.561657, 24.315680>,  <38.874435, 34.204300, 24.403334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205559, 33.561657, 24.315680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811295, 33.500698, 24.286703>,  <38.574738, 33.464123, 24.269318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811295, 33.500698, 24.286703>,  <39.205559, 33.561657, 24.315680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811295, 33.500698, 24.286703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163681, -0.759287, -0.629834,
		0.040980, -0.632661, 0.773344,
		-0.985662, -0.152393, -0.072439,
		38.515594, 33.454979, 24.264971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124405, 32.815914, 24.341957>,  <39.205559, 33.561657, 24.315680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124405, 32.815914, 24.341957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780148, 32.966545, 24.204849>,  <38.573593, 33.056923, 24.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780148, 32.966545, 24.204849>,  <39.124405, 32.815914, 24.341957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780148, 32.966545, 24.204849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048611, -0.730817, -0.680841,
		-0.506889, -0.569296, 0.647275,
		-0.860639, 0.376575, -0.342769,
		38.521957, 33.079517, 24.102018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682571, 32.284832, 24.381935>,  <39.124405, 32.815914, 24.341957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682571, 32.284832, 24.381935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542053, 32.511219, 24.083601>,  <38.457741, 32.647053, 23.904600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542053, 32.511219, 24.083601>,  <38.682571, 32.284832, 24.381935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542053, 32.511219, 24.083601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162625, -0.821384, -0.546700,
		-0.922034, -0.070761, 0.380588,
		-0.351293, 0.565968, -0.745837,
		38.436665, 32.681011, 23.859850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033401, 31.947716, 24.047873>,  <38.682571, 32.284832, 24.381935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033401, 31.947716, 24.047873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147598, 32.206398, 23.764954>,  <38.216114, 32.361607, 23.595203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147598, 32.206398, 23.764954>,  <38.033401, 31.947716, 24.047873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147598, 32.206398, 23.764954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119003, -0.708378, -0.695729,
		-0.950965, 0.282793, -0.125274,
		0.285488, 0.646706, -0.707296,
		38.233246, 32.400410, 23.552765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497986, 31.960787, 23.454069>,  <38.033401, 31.947716, 24.047873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497986, 31.960787, 23.454069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835102, 32.090965, 23.282585>,  <38.037373, 32.169071, 23.179695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835102, 32.090965, 23.282585>,  <37.497986, 31.960787, 23.454069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835102, 32.090965, 23.282585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150958, -0.621609, -0.768644,
		-0.516645, 0.712521, -0.474755,
		0.842787, 0.325448, -0.428711,
		38.087936, 32.188599, 23.153973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369041, 32.093124, 22.703865>,  <37.497986, 31.960787, 23.454069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369041, 32.093124, 22.703865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765987, 32.047329, 22.722218>,  <38.004154, 32.019852, 22.733229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765987, 32.047329, 22.722218>,  <37.369041, 32.093124, 22.703865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765987, 32.047329, 22.722218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024139, -0.545081, -0.838035,
		0.120953, 0.830529, -0.543683,
		0.992365, -0.114486, 0.045881,
		38.063698, 32.012981, 22.735981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539669, 32.229557, 22.103348>,  <37.369041, 32.093124, 22.703865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539669, 32.229557, 22.103348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882755, 32.059010, 22.218260>,  <38.088608, 31.956682, 22.287207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882755, 32.059010, 22.218260>,  <37.539669, 32.229557, 22.103348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882755, 32.059010, 22.218260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080473, -0.440555, -0.894111,
		0.507782, 0.790015, -0.343562,
		0.857719, -0.426366, 0.287281,
		38.140072, 31.931099, 22.304443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902100, 32.285534, 21.513838>,  <37.539669, 32.229557, 22.103348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902100, 32.285534, 21.513838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095493, 32.002651, 21.720179>,  <38.211529, 31.832922, 21.843983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095493, 32.002651, 21.720179>,  <37.902100, 32.285534, 21.513838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095493, 32.002651, 21.720179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063048, -0.559642, -0.826332,
		0.873078, 0.432045, -0.225993,
		0.483488, -0.707204, 0.515851,
		38.240540, 31.790489, 21.874933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521084, 32.143417, 21.108791>,  <37.902100, 32.285534, 21.513838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521084, 32.143417, 21.108791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459076, 31.815172, 21.328815>,  <38.421871, 31.618225, 21.460831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459076, 31.815172, 21.328815>,  <38.521084, 32.143417, 21.108791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459076, 31.815172, 21.328815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041725, -0.561733, -0.826266,
		0.987030, -0.105133, 0.121318,
		-0.155017, -0.820611, 0.550061,
		38.412571, 31.568989, 21.493834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022263, 31.654224, 20.926910>,  <38.521084, 32.143417, 21.108791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022263, 31.654224, 20.926910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730320, 31.435530, 21.091049>,  <38.555153, 31.304314, 21.189533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730320, 31.435530, 21.091049>,  <39.022263, 31.654224, 20.926910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730320, 31.435530, 21.091049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121113, -0.487362, -0.864760,
		0.672784, -0.680851, 0.289489,
		-0.729859, -0.546735, 0.410349,
		38.511364, 31.271509, 21.214153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162815, 30.973227, 20.701797>,  <39.022263, 31.654224, 20.926910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162815, 30.973227, 20.701797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778221, 30.974718, 20.811728>,  <38.547462, 30.975613, 20.877686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778221, 30.974718, 20.811728>,  <39.162815, 30.973227, 20.701797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778221, 30.974718, 20.811728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237713, -0.513212, -0.824686,
		0.137968, -0.858254, 0.494333,
		-0.961487, 0.003729, 0.274825,
		38.489777, 30.975838, 20.894175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948219, 30.280941, 20.506731>,  <39.162815, 30.973227, 20.701797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948219, 30.280941, 20.506731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606190, 30.486406, 20.535007>,  <38.400970, 30.609686, 20.551973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606190, 30.486406, 20.535007>,  <38.948219, 30.280941, 20.506731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606190, 30.486406, 20.535007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391626, -0.550449, -0.737316,
		-0.339820, -0.658144, 0.671839,
		-0.855074, 0.513665, 0.070693,
		38.349667, 30.640507, 20.556215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348122, 29.753416, 20.554417>,  <38.948219, 30.280941, 20.506731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348122, 29.753416, 20.554417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225136, 30.104815, 20.408154>,  <38.151344, 30.315655, 20.320396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225136, 30.104815, 20.408154>,  <38.348122, 29.753416, 20.554417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225136, 30.104815, 20.408154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393214, -0.467229, -0.791884,
		-0.866514, -0.099698, 0.489095,
		-0.307468, 0.878497, -0.365658,
		38.132896, 30.368364, 20.298456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466007, 29.057831, 20.203770>,  <38.348122, 29.753416, 20.554417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466007, 29.057831, 20.203770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701687, 28.738661, 20.152924>,  <38.843094, 28.547159, 20.122416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701687, 28.738661, 20.152924>,  <38.466007, 29.057831, 20.203770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701687, 28.738661, 20.152924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099355, -0.084579, 0.991451,
		-0.801857, -0.596791, 0.029444,
		0.589198, -0.797927, -0.127114,
		38.878445, 28.499283, 20.114790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309227, 28.471399, 20.657597>,  <38.466007, 29.057831, 20.203770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309227, 28.471399, 20.657597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692822, 28.399931, 20.569574>,  <38.922977, 28.357050, 20.516762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692822, 28.399931, 20.569574>,  <38.309227, 28.471399, 20.657597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692822, 28.399931, 20.569574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246550, 0.142726, 0.958563,
		-0.139859, -0.973502, 0.180923,
		0.958985, -0.178670, -0.220056,
		38.980518, 28.346331, 20.503557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559570, 28.025919, 21.122690>,  <38.309227, 28.471399, 20.657597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559570, 28.025919, 21.122690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883854, 28.209103, 20.976799>,  <39.078423, 28.319014, 20.889265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883854, 28.209103, 20.976799>,  <38.559570, 28.025919, 21.122690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883854, 28.209103, 20.976799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340734, 0.137521, 0.930047,
		0.476083, -0.878271, -0.044554,
		0.810707, 0.457961, -0.364728,
		39.127068, 28.346491, 20.867380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041046, 27.754133, 21.473177>,  <38.559570, 28.025919, 21.122690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041046, 27.754133, 21.473177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205292, 28.086056, 21.322014>,  <39.303841, 28.285210, 21.231316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205292, 28.086056, 21.322014>,  <39.041046, 27.754133, 21.473177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205292, 28.086056, 21.322014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283065, 0.277974, 0.917935,
		0.866759, -0.483889, -0.120750,
		0.410613, 0.829809, -0.377908,
		39.328476, 28.334999, 21.208641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659206, 27.782972, 21.795742>,  <39.041046, 27.754133, 21.473177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659206, 27.782972, 21.795742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546890, 28.154119, 21.697590>,  <39.479500, 28.376808, 21.638699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546890, 28.154119, 21.697590>,  <39.659206, 27.782972, 21.795742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546890, 28.154119, 21.697590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290349, 0.325809, 0.899747,
		0.914796, 0.181398, -0.360892,
		-0.280795, 0.927870, -0.245380,
		39.462650, 28.432480, 21.623976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153294, 28.183149, 22.216679>,  <39.659206, 27.782972, 21.795742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153294, 28.183149, 22.216679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866886, 28.440977, 22.109457>,  <39.695042, 28.595673, 22.045124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866886, 28.440977, 22.109457>,  <40.153294, 28.183149, 22.216679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866886, 28.440977, 22.109457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022040, 0.404668, 0.914198,
		0.697737, 0.648672, -0.303955,
		-0.716015, 0.644568, -0.268055,
		39.652081, 28.634348, 22.029041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340187, 28.838995, 22.567305>,  <40.153294, 28.183149, 22.216679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340187, 28.838995, 22.567305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952530, 28.897175, 22.487698>,  <39.719936, 28.932083, 22.439934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952530, 28.897175, 22.487698>,  <40.340187, 28.838995, 22.567305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952530, 28.897175, 22.487698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103112, 0.494133, 0.863250,
		0.223899, 0.857133, -0.463888,
		-0.969142, 0.145449, -0.199017,
		39.661789, 28.940809, 22.427992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209824, 29.582832, 22.687063>,  <40.340187, 28.838995, 22.567305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209824, 29.582832, 22.687063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864803, 29.381132, 22.703711>,  <39.657791, 29.260111, 22.713699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864803, 29.381132, 22.703711>,  <40.209824, 29.582832, 22.687063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864803, 29.381132, 22.703711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282907, 0.548852, 0.786590,
		-0.419482, 0.666702, -0.616071,
		-0.862553, -0.504252, 0.041619,
		39.606037, 29.229856, 22.716196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799454, 29.971828, 23.064308>,  <40.209824, 29.582832, 22.687063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799454, 29.971828, 23.064308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601551, 29.627056, 23.108669>,  <39.482811, 29.420193, 23.135286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601551, 29.627056, 23.108669>,  <39.799454, 29.971828, 23.064308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601551, 29.627056, 23.108669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316306, 0.297467, 0.900813,
		-0.809426, 0.410600, -0.419806,
		-0.494752, -0.861928, 0.110903,
		39.453125, 29.368477, 23.141939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154549, 30.205408, 23.214321>,  <39.799454, 29.971828, 23.064308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154549, 30.205408, 23.214321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195061, 29.838627, 23.368690>,  <39.219368, 29.618557, 23.461313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195061, 29.838627, 23.368690>,  <39.154549, 30.205408, 23.214321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195061, 29.838627, 23.368690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391152, 0.319975, 0.862911,
		-0.914736, -0.238349, -0.326262,
		0.101278, -0.916954, 0.385924,
		39.225445, 29.563541, 23.484468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562145, 30.181753, 23.540995>,  <39.154549, 30.205408, 23.214321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562145, 30.181753, 23.540995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736671, 29.848574, 23.677126>,  <38.841389, 29.648666, 23.758804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736671, 29.848574, 23.677126>,  <38.562145, 30.181753, 23.540995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736671, 29.848574, 23.677126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378388, 0.173306, 0.909278,
		-0.816362, -0.525512, -0.239561,
		0.436320, -0.832947, 0.340329,
		38.867569, 29.598690, 23.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987198, 29.831982, 23.726240>,  <38.562145, 30.181753, 23.540995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987198, 29.831982, 23.726240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318695, 29.717203, 23.918425>,  <38.517593, 29.648336, 24.033735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318695, 29.717203, 23.918425>,  <37.987198, 29.831982, 23.726240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318695, 29.717203, 23.918425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395641, 0.306773, 0.865655,
		-0.395788, -0.907498, 0.140710,
		0.828746, -0.286945, 0.480461,
		38.567318, 29.631121, 24.062563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733849, 29.389006, 24.311352>,  <37.987198, 29.831982, 23.726240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733849, 29.389006, 24.311352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108006, 29.512026, 24.381165>,  <38.332500, 29.585838, 24.423052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108006, 29.512026, 24.381165>,  <37.733849, 29.389006, 24.311352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108006, 29.512026, 24.381165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248665, 0.221148, 0.943006,
		0.251435, -0.925473, 0.283338,
		0.935386, 0.307561, 0.174528,
		38.388622, 29.604292, 24.433523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929329, 29.071722, 24.886894>,  <37.733849, 29.389006, 24.311352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929329, 29.071722, 24.886894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186497, 29.376707, 24.857775>,  <38.340797, 29.559698, 24.840303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186497, 29.376707, 24.857775>,  <37.929329, 29.071722, 24.886894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186497, 29.376707, 24.857775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037916, 0.063249, 0.997277,
		0.764991, -0.643934, 0.011755,
		0.642924, 0.762462, -0.072801,
		38.379375, 29.605446, 24.835934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508621, 28.793112, 25.302860>,  <37.929329, 29.071722, 24.886894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508621, 28.793112, 25.302860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487564, 29.190378, 25.261190>,  <38.474930, 29.428738, 25.236189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487564, 29.190378, 25.261190>,  <38.508621, 28.793112, 25.302860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487564, 29.190378, 25.261190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072885, 0.100219, 0.992292,
		0.995950, 0.059826, 0.067112,
		-0.052639, 0.993165, -0.104174,
		38.471771, 29.488327, 25.229939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707531, 29.044775, 25.904102>,  <38.508621, 28.793112, 25.302860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707531, 29.044775, 25.904102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549915, 29.378672, 25.750252>,  <38.455345, 29.579010, 25.657942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549915, 29.378672, 25.750252>,  <38.707531, 29.044775, 25.904102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549915, 29.378672, 25.750252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211966, 0.324668, 0.921771,
		0.894315, 0.444746, 0.049003,
		-0.394044, 0.834740, -0.384627,
		38.431702, 29.629093, 25.634863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945610, 29.568949, 26.327805>,  <38.707531, 29.044775, 25.904102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945610, 29.568949, 26.327805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628040, 29.734985, 26.150093>,  <38.437500, 29.834606, 26.043467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628040, 29.734985, 26.150093>,  <38.945610, 29.568949, 26.327805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628040, 29.734985, 26.150093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295786, 0.374735, 0.878684,
		0.531219, 0.829020, -0.174733,
		-0.793925, 0.415090, -0.444279,
		38.389862, 29.859512, 26.016809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952744, 30.296543, 26.398869>,  <38.945610, 29.568949, 26.327805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952744, 30.296543, 26.398869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562748, 30.231785, 26.337963>,  <38.328751, 30.192930, 26.301420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562748, 30.231785, 26.337963>,  <38.952744, 30.296543, 26.398869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562748, 30.231785, 26.337963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220800, 0.627516, 0.746640,
		-0.025329, 0.761586, -0.647568,
		-0.974990, -0.161895, -0.152264,
		38.270252, 30.183216, 26.292284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569080, 30.933508, 26.497999>,  <38.952744, 30.296543, 26.398869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569080, 30.933508, 26.497999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289997, 30.648285, 26.525578>,  <38.122547, 30.477150, 26.542124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289997, 30.648285, 26.525578>,  <38.569080, 30.933508, 26.497999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289997, 30.648285, 26.525578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325958, 0.401686, 0.855804,
		-0.637934, 0.574625, -0.512686,
		-0.697705, -0.713060, 0.068946,
		38.080685, 30.434366, 26.546261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998711, 31.351320, 26.641939>,  <38.569080, 30.933508, 26.497999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998711, 31.351320, 26.641939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955647, 30.977564, 26.777775>,  <37.929810, 30.753309, 26.859276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955647, 30.977564, 26.777775>,  <37.998711, 31.351320, 26.641939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955647, 30.977564, 26.777775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262445, 0.356168, 0.896809,
		-0.958923, 0.007425, -0.283571,
		-0.107658, -0.934393, 0.339589,
		37.923347, 30.697247, 26.879652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314598, 31.305864, 27.043985>,  <37.998711, 31.351320, 26.641939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314598, 31.305864, 27.043985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517239, 30.974560, 27.139767>,  <37.638824, 30.775776, 27.197235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517239, 30.974560, 27.139767>,  <37.314598, 31.305864, 27.043985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517239, 30.974560, 27.139767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147816, 0.190182, 0.970557,
		-0.849416, -0.527079, -0.026085,
		0.506600, -0.828262, 0.239454,
		37.669220, 30.726082, 27.211603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219784, 31.179020, 27.776670>,  <37.314598, 31.305864, 27.043985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219784, 31.179020, 27.776670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497410, 30.891495, 27.760729>,  <37.663986, 30.718979, 27.751163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497410, 30.891495, 27.760729>,  <37.219784, 31.179020, 27.776670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497410, 30.891495, 27.760729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174135, 0.113911, 0.978111,
		-0.698539, -0.685808, 0.204232,
		0.694061, -0.718813, -0.039852,
		37.705627, 30.675852, 27.748774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076397, 30.897228, 28.363367>,  <37.219784, 31.179020, 27.776670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076397, 30.897228, 28.363367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457317, 30.809544, 28.278446>,  <37.685871, 30.756933, 28.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457317, 30.809544, 28.278446>,  <37.076397, 30.897228, 28.363367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457317, 30.809544, 28.278446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246315, 0.141460, 0.958811,
		-0.180152, -0.965368, 0.188708,
		0.952299, -0.219213, -0.212300,
		37.743008, 30.743780, 28.214756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392887, 30.551247, 29.035851>,  <37.076397, 30.897228, 28.363367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392887, 30.551247, 29.035851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707981, 30.672634, 28.821419>,  <37.897038, 30.745466, 28.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707981, 30.672634, 28.821419>,  <37.392887, 30.551247, 29.035851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707981, 30.672634, 28.821419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444620, 0.322228, 0.835753,
		0.426364, -0.896703, 0.118902,
		0.787736, 0.303469, -0.536078,
		37.944302, 30.763674, 28.660595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868771, 30.328566, 29.375381>,  <37.392887, 30.551247, 29.035851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868771, 30.328566, 29.375381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035957, 30.614975, 29.151733>,  <38.136269, 30.786821, 29.017544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035957, 30.614975, 29.151733>,  <37.868771, 30.328566, 29.375381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035957, 30.614975, 29.151733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503421, 0.329770, 0.798636,
		0.756224, -0.615273, -0.222630,
		0.417962, 0.716025, -0.559121,
		38.161346, 30.829782, 28.983997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566357, 30.345757, 29.508554>,  <37.868771, 30.328566, 29.375381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566357, 30.345757, 29.508554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514885, 30.710566, 29.352781>,  <38.484001, 30.929451, 29.259317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514885, 30.710566, 29.352781>,  <38.566357, 30.345757, 29.508554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514885, 30.710566, 29.352781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631360, 0.378172, 0.677031,
		0.764740, -0.158756, -0.624476,
		-0.128677, 0.912021, -0.389435,
		38.476280, 30.984173, 29.235950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248383, 30.567862, 29.367641>,  <38.566357, 30.345757, 29.508554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248383, 30.567862, 29.367641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994884, 30.874172, 29.411373>,  <38.842785, 31.057959, 29.437613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994884, 30.874172, 29.411373>,  <39.248383, 30.567862, 29.367641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994884, 30.874172, 29.411373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623136, 0.421656, 0.658717,
		0.458329, 0.485587, -0.744406,
		-0.633748, 0.765775, 0.109329,
		38.804760, 31.103905, 29.444172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651482, 31.192766, 29.517748>,  <39.248383, 30.567862, 29.367641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651482, 31.192766, 29.517748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285568, 31.252491, 29.667885>,  <39.066021, 31.288326, 29.757967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285568, 31.252491, 29.667885>,  <39.651482, 31.192766, 29.517748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285568, 31.252491, 29.667885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403297, 0.390307, 0.827655,
		-0.022921, 0.908497, -0.417262,
		-0.914782, 0.149310, 0.375340,
		39.011135, 31.297283, 29.780487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804478, 31.669724, 30.087719>,  <39.651482, 31.192766, 29.517748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804478, 31.669724, 30.087719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413940, 31.599226, 30.137825>,  <39.179619, 31.556929, 30.167889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413940, 31.599226, 30.137825>,  <39.804478, 31.669724, 30.087719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413940, 31.599226, 30.137825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065261, 0.312128, 0.947796,
		-0.206141, 0.933550, -0.293242,
		-0.976344, -0.176242, 0.125267,
		39.121037, 31.546352, 30.175406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471695, 32.261673, 30.349564>,  <39.804478, 31.669724, 30.087719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471695, 32.261673, 30.349564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283634, 31.929161, 30.468170>,  <39.170799, 31.729652, 30.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283634, 31.929161, 30.468170>,  <39.471695, 32.261673, 30.349564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283634, 31.929161, 30.468170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077123, 0.295984, 0.952074,
		-0.879209, 0.470489, -0.075047,
		-0.470153, -0.831284, 0.296517,
		39.142590, 31.679775, 30.557125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016327, 32.476559, 30.925499>,  <39.471695, 32.261673, 30.349564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016327, 32.476559, 30.925499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053432, 32.079571, 30.957476>,  <39.075695, 31.841377, 30.976662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053432, 32.079571, 30.957476>,  <39.016327, 32.476559, 30.925499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053432, 32.079571, 30.957476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085996, 0.087972, 0.992404,
		-0.991968, -0.085181, 0.093509,
		0.092760, -0.992474, 0.079940,
		39.081261, 31.781828, 30.981457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008068, 32.390594, 31.638136>,  <39.016327, 32.476559, 30.925499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008068, 32.390594, 31.638136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037128, 31.999842, 31.557707>,  <39.054565, 31.765390, 31.509449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037128, 31.999842, 31.557707>,  <39.008068, 32.390594, 31.638136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037128, 31.999842, 31.557707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282988, -0.173130, 0.943368,
		-0.956368, -0.125440, 0.263867,
		0.072652, -0.976878, -0.201074,
		39.058926, 31.706778, 31.497385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545570, 31.960680, 32.176483>,  <39.008068, 32.390594, 31.638136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545570, 31.960680, 32.176483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853519, 31.754662, 32.025742>,  <39.038288, 31.631050, 31.935295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853519, 31.754662, 32.025742>,  <38.545570, 31.960680, 32.176483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853519, 31.754662, 32.025742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260668, -0.285229, 0.922332,
		-0.582534, -0.808315, -0.085335,
		0.769875, -0.515046, -0.376857,
		39.084480, 31.600147, 31.912685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573498, 31.263193, 32.492832>,  <38.545570, 31.960680, 32.176483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573498, 31.263193, 32.492832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946556, 31.323608, 32.361771>,  <39.170391, 31.359858, 32.283134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946556, 31.323608, 32.361771>,  <38.573498, 31.263193, 32.492832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946556, 31.323608, 32.361771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358390, -0.283297, 0.889550,
		0.041533, -0.947064, -0.318346,
		0.932648, 0.151038, -0.327652,
		39.226349, 31.368919, 32.263474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042629, 30.611563, 32.571083>,  <38.573498, 31.263193, 32.492832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042629, 30.611563, 32.571083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238354, 30.960274, 32.580750>,  <39.355789, 31.169500, 32.586548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238354, 30.960274, 32.580750>,  <39.042629, 30.611563, 32.571083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238354, 30.960274, 32.580750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363968, -0.229310, 0.902743,
		0.792531, -0.432923, -0.429502,
		0.489307, 0.871777, 0.024165,
		39.385147, 31.221807, 32.587997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568916, 30.400517, 32.957867>,  <39.042629, 30.611563, 32.571083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568916, 30.400517, 32.957867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644135, 30.793373, 32.955517>,  <39.689266, 31.029087, 32.954105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644135, 30.793373, 32.955517>,  <39.568916, 30.400517, 32.957867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644135, 30.793373, 32.955517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539880, -0.098363, 0.835975,
		0.820469, -0.160373, -0.548736,
		0.188043, 0.982143, -0.005879,
		39.700546, 31.088017, 32.953754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270012, 30.441656, 33.141171>,  <39.568916, 30.400517, 32.957867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270012, 30.441656, 33.141171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083500, 30.786196, 33.221832>,  <39.971592, 30.992920, 33.270229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083500, 30.786196, 33.221832>,  <40.270012, 30.441656, 33.141171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083500, 30.786196, 33.221832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387533, -0.006032, 0.921836,
		0.795238, 0.507980, -0.330988,
		-0.466277, 0.861348, 0.201656,
		39.943615, 31.044600, 33.282330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709332, 30.818583, 33.572556>,  <40.270012, 30.441656, 33.141171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709332, 30.818583, 33.572556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359856, 30.998276, 33.647232>,  <40.150169, 31.106091, 33.692039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359856, 30.998276, 33.647232>,  <40.709332, 30.818583, 33.572556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359856, 30.998276, 33.647232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213781, 0.009813, 0.976832,
		0.436991, 0.893362, -0.104610,
		-0.873691, 0.449231, 0.186695,
		40.097748, 31.133045, 33.703239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926579, 31.146841, 34.086945>,  <40.709332, 30.818583, 33.572556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926579, 31.146841, 34.086945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528751, 31.172329, 34.119858>,  <40.290054, 31.187622, 34.139606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528751, 31.172329, 34.119858>,  <40.926579, 31.146841, 34.086945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528751, 31.172329, 34.119858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080874, -0.024465, 0.996424,
		0.065505, 0.997668, 0.019179,
		-0.994570, 0.063719, 0.082288,
		40.230381, 31.191444, 34.144543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904175, 31.740513, 34.568134>,  <40.926579, 31.146841, 34.086945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904175, 31.740513, 34.568134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593102, 31.489050, 34.567348>,  <40.406460, 31.338173, 34.566875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593102, 31.489050, 34.567348>,  <40.904175, 31.740513, 34.568134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593102, 31.489050, 34.567348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017001, -0.024158, 0.999564,
		-0.628430, 0.777307, 0.029475,
		-0.777680, -0.628657, -0.001966,
		40.359798, 31.300453, 34.566757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371994, 31.921099, 35.002342>,  <40.904175, 31.740513, 34.568134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371994, 31.921099, 35.002342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308975, 31.526371, 34.987560>,  <40.271164, 31.289534, 34.978691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308975, 31.526371, 34.987560>,  <40.371994, 31.921099, 35.002342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308975, 31.526371, 34.987560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040298, -0.030967, 0.998708,
		-0.986689, 0.158832, -0.034888,
		-0.157546, -0.986820, -0.036955,
		40.261711, 31.230326, 34.976475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716892, 31.707140, 35.457268>,  <40.371994, 31.921099, 35.002342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716892, 31.707140, 35.457268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991489, 31.419481, 35.414265>,  <40.156246, 31.246885, 35.388462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991489, 31.419481, 35.414265>,  <39.716892, 31.707140, 35.457268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991489, 31.419481, 35.414265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056067, -0.199760, 0.978239,
		-0.724973, -0.665525, -0.177454,
		0.686491, -0.719147, -0.107507,
		40.197437, 31.203737, 35.382011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006180, 31.742865, 36.136307>,  <39.716892, 31.707140, 35.457268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006180, 31.742865, 36.136307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897953, 31.493015, 36.429329>,  <39.833015, 31.343105, 36.605141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897953, 31.493015, 36.429329>,  <40.006180, 31.742865, 36.136307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897953, 31.493015, 36.429329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826042, 0.240164, 0.509877,
		-0.494415, 0.743079, 0.450985,
		-0.270568, -0.624624, 0.732556,
		39.816784, 31.305628, 36.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297623, 31.960997, 36.819592>,  <40.006180, 31.742865, 36.136307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297623, 31.960997, 36.819592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208160, 31.581781, 36.910099>,  <40.154484, 31.354252, 36.964405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208160, 31.581781, 36.910099>,  <40.297623, 31.960997, 36.819592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208160, 31.581781, 36.910099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718739, -0.003621, 0.695271,
		-0.658324, 0.318134, 0.682202,
		-0.223660, -0.948039, 0.226271,
		40.141064, 31.297369, 36.977982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251389, 31.854309, 37.566425>,  <40.297623, 31.960997, 36.819592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251389, 31.854309, 37.566425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331638, 31.511892, 37.375874>,  <40.379787, 31.306442, 37.261543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331638, 31.511892, 37.375874>,  <40.251389, 31.854309, 37.566425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331638, 31.511892, 37.375874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726486, -0.196226, 0.658569,
		-0.657242, -0.478213, 0.582534,
		0.200628, -0.856042, -0.476383,
		40.391827, 31.255079, 37.232960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178841, 31.210070, 37.991123>,  <40.251389, 31.854309, 37.566425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178841, 31.210070, 37.991123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458649, 31.219374, 37.705429>,  <40.626534, 31.224957, 37.534012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458649, 31.219374, 37.705429>,  <40.178841, 31.210070, 37.991123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458649, 31.219374, 37.705429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711967, -0.108665, 0.693754,
		-0.061472, -0.993806, -0.092577,
		0.699517, 0.023265, -0.714237,
		40.668503, 31.226353, 37.491158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659630, 30.568272, 37.984207>,  <40.178841, 31.210070, 37.991123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659630, 30.568272, 37.984207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821297, 30.919762, 37.882626>,  <40.918297, 31.130655, 37.821674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821297, 30.919762, 37.882626>,  <40.659630, 30.568272, 37.984207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821297, 30.919762, 37.882626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724850, -0.138351, 0.674871,
		0.557889, -0.456842, -0.692860,
		0.404167, 0.878723, -0.253958,
		40.942547, 31.183378, 37.806438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304661, 30.340631, 37.928570>,  <40.659630, 30.568272, 37.984207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304661, 30.340631, 37.928570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297249, 30.736076, 37.988300>,  <41.292801, 30.973343, 38.024139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297249, 30.736076, 37.988300>,  <41.304661, 30.340631, 37.928570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297249, 30.736076, 37.988300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648913, -0.101732, 0.754031,
		0.760637, 0.110875, -0.639639,
		-0.018531, 0.988614, 0.149330,
		41.291691, 31.032661, 38.033100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567955, 29.982725, 38.495674>,  <41.304661, 30.340631, 37.928570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567955, 29.982725, 38.495674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672516, 30.322790, 38.678493>,  <41.735252, 30.526829, 38.788185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672516, 30.322790, 38.678493>,  <41.567955, 29.982725, 38.495674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672516, 30.322790, 38.678493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797932, -0.456767, 0.393278,
		0.543114, 0.261889, -0.797772,
		0.261401, 0.850164, 0.457046,
		41.750935, 30.577839, 38.815609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283073, 30.013193, 38.331032>,  <41.567955, 29.982725, 38.495674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283073, 30.013193, 38.331032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195969, 30.217157, 38.663914>,  <42.143707, 30.339537, 38.863644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195969, 30.217157, 38.663914>,  <42.283073, 30.013193, 38.331032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195969, 30.217157, 38.663914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801353, -0.393334, 0.450691,
		0.557148, 0.765035, -0.322966,
		-0.217761, 0.509911, 0.832208,
		42.130642, 30.370131, 38.913578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899910, 30.495790, 38.469208>,  <42.283073, 30.013193, 38.331032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899910, 30.495790, 38.469208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713379, 30.338919, 38.786381>,  <42.601460, 30.244797, 38.976685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713379, 30.338919, 38.786381>,  <42.899910, 30.495790, 38.469208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713379, 30.338919, 38.786381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832975, -0.496438, 0.244340,
		0.297816, 0.774433, 0.558174,
		-0.466324, -0.392177, 0.792931,
		42.573483, 30.221266, 39.024261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220581, 30.666721, 39.148735>,  <42.899910, 30.495790, 38.469208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220581, 30.666721, 39.148735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075436, 30.300234, 39.080765>,  <42.988346, 30.080341, 39.039982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075436, 30.300234, 39.080765>,  <43.220581, 30.666721, 39.148735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075436, 30.300234, 39.080765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888284, -0.395204, 0.234021,
		-0.281568, -0.066021, 0.957267,
		-0.362866, -0.916218, -0.169922,
		42.966576, 30.025368, 39.029789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902744, 30.871159, 38.946598>,  <43.220581, 30.666721, 39.148735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902744, 30.871159, 38.946598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161877, 31.105591, 39.141258>,  <44.317356, 31.246250, 39.258053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161877, 31.105591, 39.141258>,  <43.902744, 30.871159, 38.946598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161877, 31.105591, 39.141258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753011, -0.589349, -0.292649,
		0.115288, 0.556036, -0.823124,
		0.647830, 0.586082, 0.486646,
		44.356224, 31.281416, 39.287251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477200, 31.015823, 38.548977>,  <43.902744, 30.871159, 38.946598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477200, 31.015823, 38.548977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597771, 31.049259, 38.928905>,  <44.670113, 31.069321, 39.156860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597771, 31.049259, 38.928905>,  <44.477200, 31.015823, 38.548977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597771, 31.049259, 38.928905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896481, -0.364126, -0.252455,
		0.324750, 0.927591, -0.184696,
		0.301428, 0.083592, 0.949818,
		44.688198, 31.074337, 39.213852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167168, 31.125841, 38.537418>,  <44.477200, 31.015823, 38.548977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167168, 31.125841, 38.537418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160362, 31.004900, 38.918636>,  <45.156281, 30.932335, 39.147366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160362, 31.004900, 38.918636>,  <45.167168, 31.125841, 38.537418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160362, 31.004900, 38.918636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937081, -0.337243, -0.090261,
		0.348698, 0.891544, 0.289066,
		-0.017014, -0.302352, 0.953045,
		45.155258, 30.914194, 39.204548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842644, 30.873549, 38.642696>,  <45.167168, 31.125841, 38.537418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842644, 30.873549, 38.642696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759052, 30.761448, 39.017456>,  <45.708897, 30.694187, 39.242313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759052, 30.761448, 39.017456>,  <45.842644, 30.873549, 38.642696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759052, 30.761448, 39.017456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743770, -0.667581, -0.033790,
		0.634928, 0.689778, 0.347956,
		-0.208981, -0.280253, 0.936902,
		45.696358, 30.677372, 39.298527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493889, 30.968979, 39.063007>,  <45.842644, 30.873549, 38.642696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493889, 30.968979, 39.063007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240902, 30.677940, 39.169277>,  <46.089108, 30.503317, 39.233040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240902, 30.677940, 39.169277>,  <46.493889, 30.968979, 39.063007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240902, 30.677940, 39.169277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731117, -0.674048, -0.105489,
		0.255830, 0.127520, 0.958274,
		-0.632470, -0.727598, 0.265674,
		46.051159, 30.459661, 39.248978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.756310, 30.622442, 39.715740>,  <46.493889, 30.968979, 39.063007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.756310, 30.622442, 39.715740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518890, 30.378845, 39.505283>,  <46.376438, 30.232687, 39.379009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518890, 30.378845, 39.505283>,  <46.756310, 30.622442, 39.715740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518890, 30.378845, 39.505283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734318, -0.677352, -0.044388,
		-0.329351, -0.412702, 0.849238,
		-0.593553, -0.608992, -0.526141,
		46.340824, 30.196148, 39.347443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818478, 30.109253, 40.091888>,  <46.756310, 30.622442, 39.715740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818478, 30.109253, 40.091888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682659, 29.964441, 39.744640>,  <46.601166, 29.877554, 39.536289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682659, 29.964441, 39.744640>,  <46.818478, 30.109253, 40.091888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682659, 29.964441, 39.744640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665532, -0.744677, 0.050240,
		-0.664661, -0.560705, 0.493798,
		-0.339550, -0.362031, -0.868124,
		46.580795, 29.855833, 39.484203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521206, 29.470083, 40.229675>,  <46.818478, 30.109253, 40.091888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521206, 29.470083, 40.229675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662720, 29.496777, 39.856499>,  <46.747627, 29.512793, 39.632591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662720, 29.496777, 39.856499>,  <46.521206, 29.470083, 40.229675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662720, 29.496777, 39.856499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659423, -0.725177, 0.198188,
		-0.663324, -0.685321, -0.300561,
		0.353783, 0.066734, -0.932944,
		46.768856, 29.516796, 39.576614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482883, 28.755209, 40.049446>,  <46.521206, 29.470083, 40.229675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482883, 28.755209, 40.049446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756004, 28.962339, 39.843285>,  <46.919876, 29.086618, 39.719589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756004, 28.962339, 39.843285>,  <46.482883, 28.755209, 40.049446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756004, 28.962339, 39.843285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670026, -0.725075, 0.159162,
		-0.291287, -0.454008, -0.842039,
		0.682802, 0.517826, -0.515402,
		46.960846, 29.117687, 39.688663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834099, 28.397816, 39.442398>,  <46.482883, 28.755209, 40.049446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834099, 28.397816, 39.442398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084621, 28.665779, 39.601879>,  <47.234936, 28.826557, 39.697567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084621, 28.665779, 39.601879>,  <46.834099, 28.397816, 39.442398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084621, 28.665779, 39.601879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694627, -0.711714, 0.104673,
		0.353886, 0.211395, -0.911086,
		0.626305, 0.669907, 0.398706,
		47.272514, 28.866751, 39.721493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.532673, 28.361326, 39.178013>,  <46.834099, 28.397816, 39.442398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.532673, 28.361326, 39.178013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524170, 28.497169, 39.554142>,  <47.519066, 28.578674, 39.779819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524170, 28.497169, 39.554142>,  <47.532673, 28.361326, 39.178013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.524170, 28.497169, 39.554142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626408, -0.728515, 0.277271,
		0.779205, 0.594923, -0.197245,
		-0.021259, 0.339607, 0.940327,
		47.517792, 28.599052, 39.836239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647888, 29.026251, 39.333561>,  <47.532673, 28.361326, 39.178013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647888, 29.026251, 39.333561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396473, 28.854691, 39.074028>,  <47.245625, 28.751755, 38.918308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396473, 28.854691, 39.074028>,  <47.647888, 29.026251, 39.333561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.396473, 28.854691, 39.074028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664118, 0.730154, 0.160691,
		0.404824, 0.531899, -0.743775,
		-0.628542, -0.428903, -0.648828,
		47.207909, 28.726019, 38.879379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.357304, 29.585461, 38.914757>,  <47.647888, 29.026251, 39.333561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.357304, 29.585461, 38.914757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.075809, 29.301321, 38.909615>,  <46.906914, 29.130836, 38.906528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.075809, 29.301321, 38.909615>,  <47.357304, 29.585461, 38.914757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.075809, 29.301321, 38.909615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693321, 0.682686, 0.230752,
		-0.155136, 0.171303, -0.972928,
		-0.703732, -0.710349, -0.012859,
		46.864689, 29.088217, 38.905758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761345, 29.654535, 38.358650>,  <47.357304, 29.585461, 38.914757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761345, 29.654535, 38.358650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.674908, 29.490450, 38.713058>,  <46.623047, 29.391998, 38.925701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.674908, 29.490450, 38.713058>,  <46.761345, 29.654535, 38.358650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674908, 29.490450, 38.713058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698688, 0.698842, 0.153150,
		-0.682012, -0.585956, -0.437625,
		-0.216092, -0.410213, 0.886019,
		46.610081, 29.367386, 38.978863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050991, 29.419537, 38.368973>,  <46.761345, 29.654535, 38.358650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050991, 29.419537, 38.368973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.185249, 29.533648, 38.728073>,  <46.265804, 29.602114, 38.943535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.185249, 29.533648, 38.728073>,  <46.050991, 29.419537, 38.368973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.185249, 29.533648, 38.728073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791326, 0.602410, 0.104426,
		-0.511025, -0.745465, 0.427942,
		0.335643, 0.285278, 0.897753,
		46.285942, 29.619230, 38.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526131, 29.315216, 38.832516>,  <46.050991, 29.419537, 38.368973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526131, 29.315216, 38.832516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756588, 29.595310, 39.001144>,  <45.894863, 29.763367, 39.102322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756588, 29.595310, 39.001144>,  <45.526131, 29.315216, 38.832516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756588, 29.595310, 39.001144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815616, 0.526101, 0.240809,
		-0.053168, -0.482584, 0.874234,
		0.576146, 0.700236, 0.421575,
		45.929432, 29.805382, 39.127617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168137, 29.525467, 39.407387>,  <45.526131, 29.315216, 38.832516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168137, 29.525467, 39.407387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434883, 29.820396, 39.364227>,  <45.594933, 29.997355, 39.338333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434883, 29.820396, 39.364227>,  <45.168137, 29.525467, 39.407387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434883, 29.820396, 39.364227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673624, 0.658391, 0.335785,
		0.318623, -0.151239, 0.935738,
		0.666866, 0.737324, -0.107900,
		45.634941, 30.041594, 39.331856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003342, 29.860226, 39.968731>,  <45.168137, 29.525467, 39.407387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003342, 29.860226, 39.968731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187382, 30.133854, 39.742332>,  <45.297806, 30.298031, 39.606495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.187382, 30.133854, 39.742332>,  <45.003342, 29.860226, 39.968731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187382, 30.133854, 39.742332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613740, 0.705695, 0.354002,
		0.641583, 0.184497, 0.744535,
		0.460102, 0.684072, -0.565995,
		45.325413, 30.339075, 39.572533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011524, 30.474081, 40.448887>,  <45.003342, 29.860226, 39.968731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011524, 30.474081, 40.448887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065292, 30.641993, 40.089840>,  <45.097553, 30.742741, 39.874413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065292, 30.641993, 40.089840>,  <45.011524, 30.474081, 40.448887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065292, 30.641993, 40.089840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600961, 0.754776, 0.262983,
		0.787894, 0.504082, 0.353729,
		0.134421, 0.419780, -0.897617,
		45.105618, 30.767927, 39.820557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153545, 31.259148, 40.472778>,  <45.011524, 30.474081, 40.448887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153545, 31.259148, 40.472778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989731, 31.178705, 40.116837>,  <44.891441, 31.130440, 39.903271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989731, 31.178705, 40.116837>,  <45.153545, 31.259148, 40.472778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989731, 31.178705, 40.116837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740477, 0.643030, 0.195466,
		0.532892, 0.738966, -0.412257,
		-0.409536, -0.201105, -0.889853,
		44.866871, 31.118374, 39.849880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126228, 31.926298, 39.960049>,  <45.153545, 31.259148, 40.472778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126228, 31.926298, 39.960049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826553, 31.670662, 39.890446>,  <44.646748, 31.517281, 39.848682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.826553, 31.670662, 39.890446>,  <45.126228, 31.926298, 39.960049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826553, 31.670662, 39.890446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653856, 0.671633, 0.348399,
		-0.105788, 0.374793, -0.921053,
		-0.749187, -0.639092, -0.174010,
		44.601799, 31.478933, 39.838242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591965, 32.148502, 39.402306>,  <45.126228, 31.926298, 39.960049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591965, 32.148502, 39.402306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461071, 31.942137, 39.718975>,  <44.382534, 31.818317, 39.908978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461071, 31.942137, 39.718975>,  <44.591965, 32.148502, 39.402306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461071, 31.942137, 39.718975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514449, 0.800024, 0.308715,
		-0.792631, -0.306256, -0.527204,
		-0.327230, -0.515916, 0.791676,
		44.362904, 31.787361, 39.956478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874516, 32.117577, 39.461643>,  <44.591965, 32.148502, 39.402306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874516, 32.117577, 39.461643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016796, 32.094105, 39.834747>,  <44.102165, 32.080021, 40.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016796, 32.094105, 39.834747>,  <43.874516, 32.117577, 39.461643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016796, 32.094105, 39.834747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535070, 0.805493, 0.254717,
		-0.766275, -0.589693, 0.255116,
		0.355700, -0.058679, 0.932756,
		44.123505, 32.076500, 40.114574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358246, 32.288849, 39.909592>,  <43.874516, 32.117577, 39.461643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358246, 32.288849, 39.909592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688892, 32.329304, 40.131031>,  <43.887280, 32.353577, 40.263893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688892, 32.329304, 40.131031>,  <43.358246, 32.288849, 39.909592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688892, 32.329304, 40.131031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381440, 0.823968, 0.419023,
		-0.413766, -0.557537, 0.719688,
		0.826620, 0.101140, 0.553597,
		43.936878, 32.359646, 40.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123096, 32.324818, 40.599926>,  <43.358246, 32.288849, 39.909592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123096, 32.324818, 40.599926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475334, 32.502991, 40.535240>,  <43.686676, 32.609894, 40.496429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475334, 32.502991, 40.535240>,  <43.123096, 32.324818, 40.599926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475334, 32.502991, 40.535240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318440, 0.808951, 0.494160,
		0.350933, -0.383657, 0.854198,
		0.880591, 0.445428, -0.161716,
		43.739513, 32.636620, 40.486725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529339, 32.543564, 41.226868>,  <43.123096, 32.324818, 40.599926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529339, 32.543564, 41.226868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630962, 32.784431, 40.924122>,  <43.691936, 32.928951, 40.742474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630962, 32.784431, 40.924122>,  <43.529339, 32.543564, 41.226868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630962, 32.784431, 40.924122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221280, 0.797973, 0.560601,
		0.941535, 0.025053, 0.335982,
		0.254060, 0.602172, -0.756864,
		43.707180, 32.965084, 40.697063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881588, 33.193626, 41.512379>,  <43.529339, 32.543564, 41.226868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881588, 33.193626, 41.512379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741928, 33.265900, 41.144585>,  <43.658134, 33.309265, 40.923908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741928, 33.265900, 41.144585>,  <43.881588, 33.193626, 41.512379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741928, 33.265900, 41.144585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578738, 0.730151, 0.363239,
		0.736993, 0.658963, -0.150360,
		-0.349146, 0.180685, -0.919483,
		43.637184, 33.320107, 40.868740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007778, 33.924984, 41.145447>,  <43.881588, 33.193626, 41.512379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007778, 33.924984, 41.145447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655449, 33.781609, 41.021725>,  <43.444050, 33.695583, 40.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655449, 33.781609, 41.021725>,  <44.007778, 33.924984, 41.145447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655449, 33.781609, 41.021725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443783, 0.852687, 0.275647,
		0.164937, 0.380061, -0.910137,
		-0.880825, -0.358439, -0.309304,
		43.391201, 33.674076, 40.928932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614994, 34.449894, 41.301163>,  <44.007778, 33.924984, 41.145447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614994, 34.449894, 41.301163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359428, 34.183292, 41.147503>,  <43.206089, 34.023331, 41.055309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359428, 34.183292, 41.147503>,  <43.614994, 34.449894, 41.301163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359428, 34.183292, 41.147503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768933, 0.538316, 0.344902,
		-0.023086, 0.515743, -0.856432,
		-0.638912, -0.666501, -0.384145,
		43.167755, 33.983341, 41.032261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479183, 34.110497, 40.623043>,  <43.614994, 34.449894, 41.301163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479183, 34.110497, 40.623043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598240, 34.035938, 40.248524>,  <43.669674, 33.991203, 40.023811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598240, 34.035938, 40.248524>,  <43.479183, 34.110497, 40.623043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598240, 34.035938, 40.248524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555500, 0.763812, -0.328650,
		0.776419, 0.617937, 0.123801,
		0.297646, -0.186398, -0.936303,
		43.687534, 33.980019, 39.967632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614742, 34.735817, 40.311657>,  <43.479183, 34.110497, 40.623043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614742, 34.735817, 40.311657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528473, 34.479183, 40.017216>,  <43.476711, 34.325203, 39.840549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528473, 34.479183, 40.017216>,  <43.614742, 34.735817, 40.311657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528473, 34.479183, 40.017216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580593, 0.690373, -0.431621,
		0.785111, 0.334289, -0.521394,
		-0.215670, -0.641588, -0.736105,
		43.463772, 34.286705, 39.796383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880501, 35.082939, 39.684425>,  <43.614742, 34.735817, 40.311657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880501, 35.082939, 39.684425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543972, 34.866730, 39.683319>,  <43.342056, 34.737003, 39.682655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543972, 34.866730, 39.683319>,  <43.880501, 35.082939, 39.684425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543972, 34.866730, 39.683319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488969, 0.763237, -0.422350,
		0.230403, -0.353980, -0.906429,
		-0.841323, -0.540526, -0.002767,
		43.291576, 34.704571, 39.682487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648205, 34.899281, 38.958996>,  <43.880501, 35.082939, 39.684425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648205, 34.899281, 38.958996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377007, 34.979313, 39.241920>,  <43.214287, 35.027332, 39.411674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377007, 34.979313, 39.241920>,  <43.648205, 34.899281, 38.958996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377007, 34.979313, 39.241920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470039, 0.621794, -0.626447,
		-0.565145, -0.757191, -0.327526,
		-0.677994, 0.200083, 0.707313,
		43.173607, 35.039337, 39.454113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361164, 34.654327, 39.103863>,  <43.648205, 34.899281, 38.958996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361164, 34.654327, 39.103863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761036, 34.645226, 39.099419>,  <45.000957, 34.639763, 39.096752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761036, 34.645226, 39.099419>,  <44.361164, 34.654327, 39.103863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761036, 34.645226, 39.099419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025080, 0.828949, 0.558762,
		-0.003503, -0.558862, 0.829253,
		0.999679, -0.022755, -0.011112,
		45.060940, 34.638397, 39.096085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739479, 34.698387, 39.881802>,  <44.361164, 34.654327, 39.103863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739479, 34.698387, 39.881802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988857, 34.853371, 39.610157>,  <45.138485, 34.946362, 39.447170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988857, 34.853371, 39.610157>,  <44.739479, 34.698387, 39.881802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988857, 34.853371, 39.610157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035647, 0.881761, 0.470347,
		0.781054, -0.269027, 0.563542,
		0.623446, 0.387455, -0.679113,
		45.175892, 34.969608, 39.406422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160393, 35.159710, 40.215916>,  <44.739479, 34.698387, 39.881802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160393, 35.159710, 40.215916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188046, 35.308708, 39.845734>,  <45.204639, 35.398106, 39.623623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188046, 35.308708, 39.845734>,  <45.160393, 35.159710, 40.215916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188046, 35.308708, 39.845734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088091, 0.926331, 0.366265,
		0.993711, 0.056202, 0.096854,
		0.069134, 0.372494, -0.925456,
		45.208786, 35.420456, 39.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608944, 35.642033, 40.185905>,  <45.160393, 35.159710, 40.215916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608944, 35.642033, 40.185905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402184, 35.753326, 39.862080>,  <45.278126, 35.820103, 39.667786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402184, 35.753326, 39.862080>,  <45.608944, 35.642033, 40.185905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402184, 35.753326, 39.862080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025505, 0.950292, 0.310315,
		0.855664, 0.139755, -0.498305,
		-0.516903, 0.278235, -0.809566,
		45.247112, 35.836796, 39.619209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881733, 36.246296, 39.822506>,  <45.608944, 35.642033, 40.185905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881733, 36.246296, 39.822506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483025, 36.227383, 39.796524>,  <45.243801, 36.216034, 39.780937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483025, 36.227383, 39.796524>,  <45.881733, 36.246296, 39.822506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483025, 36.227383, 39.796524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076241, 0.811558, 0.579277,
		0.025325, 0.582356, -0.812539,
		-0.996768, -0.047279, -0.064952,
		45.183994, 36.213200, 39.777039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830425, 36.902020, 39.934879>,  <45.881733, 36.246296, 39.822506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830425, 36.902020, 39.934879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704788, 37.095287, 39.607979>,  <45.629406, 37.211250, 39.411839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704788, 37.095287, 39.607979>,  <45.830425, 36.902020, 39.934879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704788, 37.095287, 39.607979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278832, -0.869794, -0.407075,
		-0.907524, 0.100017, 0.407917,
		-0.314089, 0.483171, -0.817248,
		45.610561, 37.240238, 39.362804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130333, 36.762478, 39.749279>,  <45.830425, 36.902020, 39.934879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130333, 36.762478, 39.749279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275520, 36.820530, 39.381107>,  <45.362633, 36.855362, 39.160206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275520, 36.820530, 39.381107>,  <45.130333, 36.762478, 39.749279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275520, 36.820530, 39.381107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131328, -0.969968, -0.204734,
		-0.922499, 0.195191, -0.333011,
		0.362972, 0.145133, -0.920428,
		45.384411, 36.864071, 39.104980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756035, 36.682358, 39.061920>,  <45.130333, 36.762478, 39.749279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756035, 36.682358, 39.061920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129570, 36.539433, 39.055286>,  <45.353691, 36.453678, 39.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129570, 36.539433, 39.055286>,  <44.756035, 36.682358, 39.061920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129570, 36.539433, 39.055286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357208, -0.929150, -0.095300,
		0.018640, 0.094920, -0.995310,
		0.933839, -0.357309, -0.016587,
		45.409721, 36.432240, 39.050312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701904, 36.118919, 38.574978>,  <44.756035, 36.682358, 39.061920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701904, 36.118919, 38.574978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010353, 36.061565, 38.823109>,  <45.195423, 36.027153, 38.971989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010353, 36.061565, 38.823109>,  <44.701904, 36.118919, 38.574978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010353, 36.061565, 38.823109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143607, -0.988374, -0.049936,
		0.620278, -0.050577, -0.782749,
		0.771124, -0.143382, 0.620330,
		45.241692, 36.018551, 39.009209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289608, 35.812920, 38.297554>,  <44.701904, 36.118919, 38.574978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289608, 35.812920, 38.297554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234894, 35.692787, 38.675144>,  <45.202065, 35.620708, 38.901699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.234894, 35.692787, 38.675144>,  <45.289608, 35.812920, 38.297554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234894, 35.692787, 38.675144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078907, -0.946603, -0.312598,
		0.987454, -0.117244, 0.105780,
		-0.136782, -0.300329, 0.943977,
		45.193859, 35.602688, 38.958336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744640, 35.411407, 38.468414>,  <45.289608, 35.812920, 38.297554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744640, 35.411407, 38.468414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433754, 35.304996, 38.696507>,  <45.247223, 35.241150, 38.833363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433754, 35.304996, 38.696507>,  <45.744640, 35.411407, 38.468414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433754, 35.304996, 38.696507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176168, -0.961988, -0.208671,
		0.604064, -0.061727, 0.794542,
		-0.777220, -0.266024, 0.570228,
		45.200588, 35.225189, 38.867577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756828, 34.900017, 39.052689>,  <45.744640, 35.411407, 38.468414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756828, 34.900017, 39.052689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052441, 34.630554, 39.050804>,  <46.229809, 34.468876, 39.049671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052441, 34.630554, 39.050804>,  <45.756828, 34.900017, 39.052689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052441, 34.630554, 39.050804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370438, 0.412208, -0.832382,
		0.562687, 0.613405, 0.554182,
		0.739026, -0.673660, -0.004716,
		46.274147, 34.428455, 39.049389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364014, 35.156059, 38.943588>,  <45.756828, 34.900017, 39.052689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364014, 35.156059, 38.943588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482689, 34.795223, 38.818233>,  <46.553894, 34.578720, 38.743019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482689, 34.795223, 38.818233>,  <46.364014, 35.156059, 38.943588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482689, 34.795223, 38.818233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336820, 0.405921, -0.849576,
		0.893604, 0.146505, 0.424274,
		0.296689, -0.902089, -0.313387,
		46.571697, 34.524597, 38.724216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893383, 35.281219, 38.325321>,  <46.364014, 35.156059, 38.943588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893383, 35.281219, 38.325321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785702, 34.898998, 38.277225>,  <46.721092, 34.669666, 38.248367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785702, 34.898998, 38.277225>,  <46.893383, 35.281219, 38.325321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785702, 34.898998, 38.277225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302421, 0.034657, -0.952544,
		0.914370, -0.292788, 0.279648,
		-0.269202, -0.955549, -0.120235,
		46.704941, 34.612335, 38.241154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544483, 34.848076, 38.036438>,  <46.893383, 35.281219, 38.325321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544483, 34.848076, 38.036438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168373, 34.738663, 37.955387>,  <46.942707, 34.673016, 37.906757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168373, 34.738663, 37.955387>,  <47.544483, 34.848076, 38.036438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168373, 34.738663, 37.955387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195494, 0.053387, -0.979251,
		0.278679, -0.960379, 0.003276,
		-0.940277, -0.273537, -0.202626,
		46.886292, 34.656601, 37.894600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575363, 34.263306, 37.606968>,  <47.544483, 34.848076, 38.036438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575363, 34.263306, 37.606968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248180, 34.480343, 37.530506>,  <47.051872, 34.610565, 37.484631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248180, 34.480343, 37.530506>,  <47.575363, 34.263306, 37.606968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248180, 34.480343, 37.530506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291892, 0.105111, -0.950658,
		-0.495731, -0.833391, -0.244355,
		-0.817955, 0.542596, -0.191153,
		47.002792, 34.643120, 37.473160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276703, 34.062180, 36.984112>,  <47.575363, 34.263306, 37.606968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276703, 34.062180, 36.984112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160404, 34.440521, 37.041840>,  <47.090626, 34.667526, 37.076477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160404, 34.440521, 37.041840>,  <47.276703, 34.062180, 36.984112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.160404, 34.440521, 37.041840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212825, 0.210991, -0.954038,
		-0.932831, -0.246666, -0.262646,
		-0.290744, 0.945853, 0.144322,
		47.073181, 34.724277, 37.085136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583744, 34.281700, 36.651409>,  <47.276703, 34.062180, 36.984112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583744, 34.281700, 36.651409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856834, 34.570267, 36.697796>,  <47.020687, 34.743404, 36.725628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856834, 34.570267, 36.697796>,  <46.583744, 34.281700, 36.651409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856834, 34.570267, 36.697796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083151, 0.234391, -0.968580,
		-0.725927, 0.651633, 0.220011,
		0.682727, 0.721412, 0.115967,
		47.061653, 34.786690, 36.732586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408169, 34.684319, 36.168152>,  <46.583744, 34.281700, 36.651409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408169, 34.684319, 36.168152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781643, 34.804962, 36.245365>,  <47.005726, 34.877350, 36.291691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781643, 34.804962, 36.245365>,  <46.408169, 34.684319, 36.168152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781643, 34.804962, 36.245365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177421, 0.078595, -0.980992,
		-0.311048, 0.950186, 0.019871,
		0.933687, 0.301610, 0.193030,
		47.061749, 34.895447, 36.303272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613689, 35.316021, 35.786854>,  <46.408169, 34.684319, 36.168152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613689, 35.316021, 35.786854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918247, 35.061729, 35.837662>,  <47.100983, 34.909157, 35.868145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918247, 35.061729, 35.837662>,  <46.613689, 35.316021, 35.786854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918247, 35.061729, 35.837662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048020, -0.140083, -0.988975,
		0.646510, 0.759098, -0.076131,
		0.761393, -0.635726, 0.127017,
		47.146664, 34.871010, 35.875767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252274, 35.584480, 35.413425>,  <46.613689, 35.316021, 35.786854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252274, 35.584480, 35.413425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230320, 35.185120, 35.418743>,  <47.217148, 34.945503, 35.421936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230320, 35.185120, 35.418743>,  <47.252274, 35.584480, 35.413425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230320, 35.185120, 35.418743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115484, -0.006882, -0.993286,
		0.991792, -0.056053, -0.114922,
		-0.054886, -0.998404, 0.013299,
		47.213856, 34.885597, 35.422733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.767078, 35.173103, 34.886765>,  <47.252274, 35.584480, 35.413425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.767078, 35.173103, 34.886765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451725, 34.947521, 34.985069>,  <47.262512, 34.812172, 35.044052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451725, 34.947521, 34.985069>,  <47.767078, 35.173103, 34.886765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451725, 34.947521, 34.985069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175484, -0.176725, -0.968490,
		0.589619, -0.806673, 0.040363,
		-0.788388, -0.563957, 0.245759,
		47.215210, 34.778336, 35.058796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.900043, 25.572214, 26.577801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619686, 25.836220, 26.469629>,  <36.451473, 25.994623, 26.404726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619686, 25.836220, 26.469629>,  <36.900043, 25.572214, 26.577801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619686, 25.836220, 26.469629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081798, 0.302263, 0.949709,
		0.708560, 0.687766, -0.157866,
		-0.700894, 0.660012, -0.270429,
		36.409416, 26.034224, 26.388500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109726, 26.300484, 26.869858>,  <36.900043, 25.572214, 26.577801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109726, 26.300484, 26.869858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718681, 26.318178, 26.787563>,  <36.484055, 26.328794, 26.738188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718681, 26.318178, 26.787563>,  <37.109726, 26.300484, 26.869858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718681, 26.318178, 26.787563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174666, 0.374700, 0.910545,
		0.117368, 0.926090, -0.358583,
		-0.977608, 0.044237, -0.205734,
		36.425400, 26.331450, 26.725843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815899, 26.944782, 27.142115>,  <37.109726, 26.300484, 26.869858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815899, 26.944782, 27.142115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505535, 26.692537, 27.135296>,  <36.319317, 26.541191, 27.131205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505535, 26.692537, 27.135296>,  <36.815899, 26.944782, 27.142115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505535, 26.692537, 27.135296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249814, 0.282334, 0.926218,
		-0.579269, 0.722923, -0.376601,
		-0.775912, -0.630610, -0.017049,
		36.272762, 26.503355, 27.130180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163235, 27.340857, 27.354626>,  <36.815899, 26.944782, 27.142115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163235, 27.340857, 27.354626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073498, 26.955727, 27.414806>,  <36.019653, 26.724648, 27.450914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073498, 26.955727, 27.414806>,  <36.163235, 27.340857, 27.354626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073498, 26.955727, 27.414806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383154, 0.229102, 0.894821,
		-0.896026, 0.143104, -0.420309,
		-0.224346, -0.962826, 0.150450,
		36.006195, 26.666880, 27.459942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513634, 27.375422, 27.526052>,  <36.163235, 27.340857, 27.354626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513634, 27.375422, 27.526052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664425, 27.031181, 27.663025>,  <35.754898, 26.824638, 27.745209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664425, 27.031181, 27.663025>,  <35.513634, 27.375422, 27.526052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664425, 27.031181, 27.663025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358754, 0.205177, 0.910603,
		-0.853923, -0.466124, -0.231396,
		0.376977, -0.860599, 0.342429,
		35.777519, 26.773001, 27.765753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061512, 27.146139, 28.038427>,  <35.513634, 27.375422, 27.526052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061512, 27.146139, 28.038427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382381, 26.923635, 28.125231>,  <35.574902, 26.790133, 28.177313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382381, 26.923635, 28.125231>,  <35.061512, 27.146139, 28.038427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382381, 26.923635, 28.125231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071529, 0.271303, 0.959832,
		-0.592791, -0.785474, 0.177843,
		0.802173, -0.556259, 0.217010,
		35.623032, 26.756758, 28.190334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880966, 26.723282, 28.702374>,  <35.061512, 27.146139, 28.038427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880966, 26.723282, 28.702374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278854, 26.697819, 28.670183>,  <35.517586, 26.682541, 28.650869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278854, 26.697819, 28.670183>,  <34.880966, 26.723282, 28.702374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278854, 26.697819, 28.670183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089886, 0.162332, 0.982634,
		-0.049488, -0.984681, 0.167197,
		0.994722, -0.063657, -0.080475,
		35.577271, 26.678722, 28.646040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110241, 26.358067, 29.307751>,  <34.880966, 26.723282, 28.702374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110241, 26.358067, 29.307751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434303, 26.557827, 29.184948>,  <35.628738, 26.677683, 29.111267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434303, 26.557827, 29.184948>,  <35.110241, 26.358067, 29.307751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434303, 26.557827, 29.184948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220049, 0.226341, 0.948867,
		0.543353, -0.836283, 0.073478,
		0.810152, 0.499400, -0.307006,
		35.677349, 26.707647, 29.092846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615044, 26.178942, 29.787558>,  <35.110241, 26.358067, 29.307751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615044, 26.178942, 29.787558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754749, 26.513458, 29.618500>,  <35.838573, 26.714169, 29.517065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754749, 26.513458, 29.618500>,  <35.615044, 26.178942, 29.787558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754749, 26.513458, 29.618500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351848, 0.300992, 0.886344,
		0.868456, -0.458276, -0.189122,
		0.349266, 0.836293, -0.422642,
		35.859528, 26.764347, 29.491707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396236, 26.231163, 29.928791>,  <35.615044, 26.178942, 29.787558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396236, 26.231163, 29.928791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270576, 26.600780, 29.841658>,  <36.195179, 26.822552, 29.789377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270576, 26.600780, 29.841658>,  <36.396236, 26.231163, 29.928791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270576, 26.600780, 29.841658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342095, 0.324216, 0.881961,
		0.885595, 0.202553, -0.417965,
		-0.314154, 0.924044, -0.217831,
		36.176331, 26.877993, 29.776308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890793, 26.621700, 30.286663>,  <36.396236, 26.231163, 29.928791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890793, 26.621700, 30.286663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589569, 26.873613, 30.210482>,  <36.408833, 27.024761, 30.164772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589569, 26.873613, 30.210482>,  <36.890793, 26.621700, 30.286663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589569, 26.873613, 30.210482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207136, 0.501677, 0.839890,
		0.624494, 0.593039, -0.508245,
		-0.753062, 0.629781, -0.190455,
		36.363651, 27.062548, 30.153345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195656, 27.254160, 30.327684>,  <36.890793, 26.621700, 30.286663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195656, 27.254160, 30.327684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807983, 27.319727, 30.401239>,  <36.575378, 27.359066, 30.445374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807983, 27.319727, 30.401239>,  <37.195656, 27.254160, 30.327684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807983, 27.319727, 30.401239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242964, 0.512879, 0.823361,
		0.040649, 0.842666, -0.536899,
		-0.969183, 0.163916, 0.183890,
		36.517227, 27.368902, 30.456406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037449, 27.966341, 30.484236>,  <37.195656, 27.254160, 30.327684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037449, 27.966341, 30.484236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713810, 27.810427, 30.660154>,  <36.519627, 27.716879, 30.765705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713810, 27.810427, 30.660154>,  <37.037449, 27.966341, 30.484236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713810, 27.810427, 30.660154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148979, 0.587881, 0.795111,
		-0.568471, 0.708846, -0.417586,
		-0.809102, -0.389786, 0.439796,
		36.471081, 27.693491, 30.792093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680252, 28.484837, 30.763309>,  <37.037449, 27.966341, 30.484236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680252, 28.484837, 30.763309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532951, 28.175404, 30.969597>,  <36.444572, 27.989744, 31.093369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532951, 28.175404, 30.969597>,  <36.680252, 28.484837, 30.763309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532951, 28.175404, 30.969597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176203, 0.486575, 0.855685,
		-0.912877, 0.405977, -0.042874,
		-0.368250, -0.773581, 0.515717,
		36.422478, 27.943329, 31.124311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106297, 28.741467, 31.154747>,  <36.680252, 28.484837, 30.763309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106297, 28.741467, 31.154747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258118, 28.414125, 31.327370>,  <36.349209, 28.217722, 31.430943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258118, 28.414125, 31.327370>,  <36.106297, 28.741467, 31.154747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258118, 28.414125, 31.327370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048091, 0.448378, 0.892549,
		-0.923919, -0.359524, 0.130828,
		0.379553, -0.818352, 0.431555,
		36.371983, 28.168619, 31.456837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653381, 28.612528, 31.732927>,  <36.106297, 28.741467, 31.154747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653381, 28.612528, 31.732927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979900, 28.407576, 31.839605>,  <36.175812, 28.284605, 31.903612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979900, 28.407576, 31.839605>,  <35.653381, 28.612528, 31.732927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979900, 28.407576, 31.839605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030697, 0.499533, 0.865750,
		-0.576816, -0.698523, 0.423496,
		0.816297, -0.512379, 0.266696,
		36.224789, 28.253862, 31.919615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565720, 28.350758, 32.441177>,  <35.653381, 28.612528, 31.732927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565720, 28.350758, 32.441177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958256, 28.382572, 32.371159>,  <36.193779, 28.401661, 32.329147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.958256, 28.382572, 32.371159>,  <35.565720, 28.350758, 32.441177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958256, 28.382572, 32.371159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139852, 0.329519, 0.933734,
		0.131947, -0.940793, 0.312247,
		0.981342, 0.079535, -0.175051,
		36.252659, 28.406433, 32.318642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898235, 27.997759, 33.006054>,  <35.565720, 28.350758, 32.441177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898235, 27.997759, 33.006054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204895, 28.216421, 32.871349>,  <36.388893, 28.347618, 32.790527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204895, 28.216421, 32.871349>,  <35.898235, 27.997759, 33.006054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204895, 28.216421, 32.871349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077500, 0.441884, 0.893718,
		0.637367, -0.711271, 0.296405,
		0.766653, 0.546655, -0.336766,
		36.434891, 28.380417, 32.770321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393032, 27.972466, 33.567753>,  <35.898235, 27.997759, 33.006054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393032, 27.972466, 33.567753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519573, 28.274874, 33.338547>,  <36.595497, 28.456320, 33.201023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.519573, 28.274874, 33.338547>,  <36.393032, 27.972466, 33.567753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519573, 28.274874, 33.338547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279971, 0.502730, 0.817850,
		0.906387, -0.419158, -0.052624,
		0.316352, 0.756022, -0.573020,
		36.614479, 28.501680, 33.166641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053879, 28.135761, 33.733795>,  <36.393032, 27.972466, 33.567753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053879, 28.135761, 33.733795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938324, 28.481678, 33.569511>,  <36.868992, 28.689228, 33.470940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938324, 28.481678, 33.569511>,  <37.053879, 28.135761, 33.733795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938324, 28.481678, 33.569511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286950, 0.487491, 0.824629,
		0.913349, 0.120368, -0.388980,
		-0.288883, 0.864791, -0.410710,
		36.851658, 28.741116, 33.446297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586197, 28.626598, 33.901497>,  <37.053879, 28.135761, 33.733795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586197, 28.626598, 33.901497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252335, 28.819073, 33.794315>,  <37.052017, 28.934557, 33.730007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252335, 28.819073, 33.794315>,  <37.586197, 28.626598, 33.901497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252335, 28.819073, 33.794315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093351, 0.603075, 0.792203,
		0.542797, 0.636207, -0.548282,
		-0.834660, 0.481188, -0.267956,
		37.001938, 28.963428, 33.713928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131500, 28.961643, 34.380749>,  <37.586197, 28.626598, 33.901497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131500, 28.961643, 34.380749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490852, 29.136740, 34.366318>,  <38.706463, 29.241796, 34.357658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490852, 29.136740, 34.366318>,  <38.131500, 28.961643, 34.380749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490852, 29.136740, 34.366318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162711, -0.407974, -0.898378,
		-0.407974, 0.801213, -0.437739,
		0.898378, 0.437739, -0.036077,
		38.760365, 29.268061, 34.355495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198494, 29.416838, 33.896969>,  <38.131500, 28.961643, 34.380749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198494, 29.416838, 33.896969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577587, 29.297060, 33.941036>,  <38.805042, 29.225193, 33.967476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577587, 29.297060, 33.941036>,  <38.198494, 29.416838, 33.896969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577587, 29.297060, 33.941036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003620, -0.335181, -0.942147,
		0.319048, 0.893301, -0.316578,
		0.947732, -0.299444, 0.110173,
		38.861908, 29.207226, 33.974087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572353, 29.777454, 33.374565>,  <38.198494, 29.416838, 33.896969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572353, 29.777454, 33.374565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814480, 29.482492, 33.494450>,  <38.959755, 29.305515, 33.566380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814480, 29.482492, 33.494450>,  <38.572353, 29.777454, 33.374565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814480, 29.482492, 33.494450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200105, -0.223460, -0.953952,
		0.770419, 0.637419, 0.012294,
		0.605320, -0.737402, 0.299708,
		38.996075, 29.261272, 33.584362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159531, 29.814749, 32.970417>,  <38.572353, 29.777454, 33.374565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159531, 29.814749, 32.970417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193882, 29.435562, 33.093044>,  <39.214493, 29.208050, 33.166622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193882, 29.435562, 33.093044>,  <39.159531, 29.814749, 32.970417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193882, 29.435562, 33.093044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336360, -0.262052, -0.904539,
		0.937809, 0.180801, 0.296352,
		0.085882, -0.947966, 0.306569,
		39.219646, 29.151173, 33.185017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865044, 29.641987, 32.801262>,  <39.159531, 29.814749, 32.970417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865044, 29.641987, 32.801262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631344, 29.320234, 32.844376>,  <39.491123, 29.127182, 32.870243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631344, 29.320234, 32.844376>,  <39.865044, 29.641987, 32.801262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631344, 29.320234, 32.844376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239081, -0.297501, -0.924301,
		0.775556, -0.514259, 0.366129,
		-0.584254, -0.804382, 0.107780,
		39.456066, 29.078920, 32.876709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196529, 29.131500, 32.389790>,  <39.865044, 29.641987, 32.801262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196529, 29.131500, 32.389790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824642, 28.997049, 32.449989>,  <39.601509, 28.916380, 32.486107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824642, 28.997049, 32.449989>,  <40.196529, 29.131500, 32.389790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824642, 28.997049, 32.449989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013222, -0.377920, -0.925744,
		0.368042, -0.862668, 0.346913,
		-0.929715, -0.336125, 0.150496,
		39.545727, 28.896212, 32.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112747, 28.432135, 32.267006>,  <40.196529, 29.131500, 32.389790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112747, 28.432135, 32.267006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.727680, 28.532772, 32.227051>,  <39.496639, 28.593155, 32.203075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.727680, 28.532772, 32.227051>,  <40.112747, 28.432135, 32.267006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727680, 28.532772, 32.227051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015189, -0.418637, -0.908027,
		-0.270273, -0.872607, 0.406828,
		-0.962664, 0.251594, -0.099892,
		39.438881, 28.608250, 32.197083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760506, 27.838652, 32.037365>,  <40.112747, 28.432135, 32.267006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760506, 27.838652, 32.037365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555946, 28.164600, 31.928223>,  <39.433212, 28.360170, 31.862736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555946, 28.164600, 31.928223>,  <39.760506, 27.838652, 32.037365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555946, 28.164600, 31.928223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056935, -0.348951, -0.935410,
		-0.857455, -0.462833, 0.224849,
		-0.511400, 0.814874, -0.272859,
		39.402527, 28.409061, 31.846365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236660, 27.531393, 31.606918>,  <39.760506, 27.838652, 32.037365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236660, 27.531393, 31.606918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217590, 27.922447, 31.524986>,  <39.206150, 28.157080, 31.475826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217590, 27.922447, 31.524986>,  <39.236660, 27.531393, 31.606918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217590, 27.922447, 31.524986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085529, -0.208305, -0.974317,
		-0.995194, -0.028930, 0.093547,
		-0.047673, 0.977636, -0.204829,
		39.203289, 28.215738, 31.463537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733681, 27.541037, 31.099781>,  <39.236660, 27.531393, 31.606918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733681, 27.541037, 31.099781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918797, 27.892277, 31.051176>,  <39.029865, 28.103022, 31.022013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918797, 27.892277, 31.051176>,  <38.733681, 27.541037, 31.099781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918797, 27.892277, 31.051176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201527, -0.029268, -0.979046,
		-0.863258, 0.477578, 0.163416,
		0.462788, 0.878102, -0.121511,
		39.057632, 28.155706, 31.014723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348194, 27.907871, 30.552649>,  <38.733681, 27.541037, 31.099781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348194, 27.907871, 30.552649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704636, 28.088381, 30.571783>,  <38.918499, 28.196686, 30.583263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704636, 28.088381, 30.571783>,  <38.348194, 27.907871, 30.552649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704636, 28.088381, 30.571783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047712, 0.011666, -0.998793,
		-0.451286, 0.892310, -0.011136,
		0.891103, 0.451273, 0.047838,
		38.971966, 28.223763, 30.586134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307941, 28.451988, 30.087994>,  <38.348194, 27.907871, 30.552649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307941, 28.451988, 30.087994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700756, 28.405220, 30.147230>,  <38.936447, 28.377159, 30.182772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.700756, 28.405220, 30.147230>,  <38.307941, 28.451988, 30.087994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700756, 28.405220, 30.147230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131051, -0.141991, -0.981154,
		0.135742, 0.982939, -0.124119,
		0.982038, -0.116918, 0.148089,
		38.995369, 28.370144, 30.191656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563606, 28.809080, 29.470535>,  <38.307941, 28.451988, 30.087994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563606, 28.809080, 29.470535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843231, 28.568504, 29.625237>,  <39.011005, 28.424158, 29.718058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843231, 28.568504, 29.625237>,  <38.563606, 28.809080, 29.470535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843231, 28.568504, 29.625237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219283, -0.334494, -0.916531,
		0.680607, 0.725521, -0.101947,
		0.699063, -0.601442, 0.386754,
		39.052952, 28.388071, 29.741262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142731, 29.003345, 29.153303>,  <38.563606, 28.809080, 29.470535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142731, 29.003345, 29.153303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.153561, 28.618553, 29.262014>,  <39.160061, 28.387678, 29.327242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.153561, 28.618553, 29.262014>,  <39.142731, 29.003345, 29.153303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153561, 28.618553, 29.262014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117291, -0.266943, -0.956548,
		0.992729, 0.057777, 0.105603,
		0.027077, -0.961979, 0.271779,
		39.161682, 28.329960, 29.343548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769588, 28.779594, 28.784761>,  <39.142731, 29.003345, 29.153303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769588, 28.779594, 28.784761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547821, 28.469488, 28.905811>,  <39.414761, 28.283424, 28.978441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547821, 28.469488, 28.905811>,  <39.769588, 28.779594, 28.784761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547821, 28.469488, 28.905811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160971, -0.456657, -0.874958,
		0.816520, -0.436382, 0.377976,
		-0.554421, -0.775265, 0.302625,
		39.381496, 28.236908, 28.996599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175350, 28.021534, 28.693171>,  <39.769588, 28.779594, 28.784761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175350, 28.021534, 28.693171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784931, 27.940945, 28.726013>,  <39.550678, 27.892591, 28.745718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784931, 27.940945, 28.726013>,  <40.175350, 28.021534, 28.693171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784931, 27.940945, 28.726013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031105, -0.502737, -0.863880,
		0.215328, -0.840633, 0.496961,
		-0.976047, -0.201475, 0.082105,
		39.492119, 27.880503, 28.750645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089436, 27.230806, 28.660704>,  <40.175350, 28.021534, 28.693171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089436, 27.230806, 28.660704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.748314, 27.406971, 28.548441>,  <39.543640, 27.512669, 28.481083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.748314, 27.406971, 28.548441>,  <40.089436, 27.230806, 28.660704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748314, 27.406971, 28.548441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015952, -0.515199, -0.856922,
		-0.522029, -0.735242, 0.432324,
		-0.852779, 0.440442, -0.280677,
		39.492474, 27.539093, 28.464243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663975, 26.704466, 28.448328>,  <40.089436, 27.230806, 28.660704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663975, 26.704466, 28.448328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485744, 27.025143, 28.288954>,  <39.378807, 27.217548, 28.193329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.485744, 27.025143, 28.288954>,  <39.663975, 26.704466, 28.448328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485744, 27.025143, 28.288954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006702, -0.448032, -0.893992,
		-0.895217, -0.395674, 0.205007,
		-0.445579, 0.801691, -0.398435,
		39.352070, 27.265650, 28.169424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995991, 26.503925, 28.129513>,  <39.663975, 26.704466, 28.448328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995991, 26.503925, 28.129513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103523, 26.848551, 27.957262>,  <39.168045, 27.055326, 27.853912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103523, 26.848551, 27.957262>,  <38.995991, 26.503925, 28.129513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103523, 26.848551, 27.957262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306209, -0.347442, -0.886296,
		-0.913216, 0.370129, 0.170413,
		0.268835, 0.861562, -0.430626,
		39.184174, 27.107019, 27.828074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.657078, 26.534262, 27.437117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893871, 26.851208, 27.378172>,  <39.035946, 27.041376, 27.342804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893871, 26.851208, 27.378172>,  <38.657078, 26.534262, 27.437117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893871, 26.851208, 27.378172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124681, -0.090607, -0.988051,
		-0.796250, 0.603280, 0.045156,
		0.591980, 0.792366, -0.147363,
		39.071465, 27.088917, 27.333963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321281, 27.006075, 26.947666>,  <38.657078, 26.534262, 27.437117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321281, 27.006075, 26.947666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.711666, 27.088490, 26.919233>,  <38.945896, 27.137939, 26.902174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.711666, 27.088490, 26.919233>,  <38.321281, 27.006075, 26.947666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711666, 27.088490, 26.919233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034518, -0.175903, -0.983802,
		-0.215204, 0.962604, -0.164562,
		0.975959, 0.206038, -0.071082,
		39.004456, 27.150301, 26.897909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312073, 27.373934, 26.395765>,  <38.321281, 27.006075, 26.947666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312073, 27.373934, 26.395765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697334, 27.276417, 26.441210>,  <38.928490, 27.217907, 26.468477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697334, 27.276417, 26.441210>,  <38.312073, 27.373934, 26.395765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697334, 27.276417, 26.441210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044489, -0.272178, -0.961218,
		0.265262, 0.930851, -0.251302,
		0.963149, -0.243795, 0.113611,
		38.986279, 27.203278, 26.475294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615177, 27.671604, 25.851261>,  <38.312073, 27.373934, 26.395765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615177, 27.671604, 25.851261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846054, 27.367807, 25.971275>,  <38.984581, 27.185530, 26.043283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846054, 27.367807, 25.971275>,  <38.615177, 27.671604, 25.851261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846054, 27.367807, 25.971275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042049, -0.394571, -0.917903,
		0.815525, 0.517190, -0.259679,
		0.577192, -0.759492, 0.300036,
		39.019211, 27.139959, 26.061287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040550, 27.596825, 25.306494>,  <38.615177, 27.671604, 25.851261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040550, 27.596825, 25.306494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057926, 27.252735, 25.509720>,  <39.068352, 27.046282, 25.631657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057926, 27.252735, 25.509720>,  <39.040550, 27.596825, 25.306494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057926, 27.252735, 25.509720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071095, -0.509919, -0.857280,
		0.996523, 0.001121, -0.083310,
		0.043442, -0.860222, 0.508066,
		39.070957, 26.994669, 25.662140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474289, 27.194691, 24.881929>,  <39.040550, 27.596825, 25.306494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474289, 27.194691, 24.881929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293476, 26.917339, 25.106390>,  <39.184990, 26.750929, 25.241066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293476, 26.917339, 25.106390>,  <39.474289, 27.194691, 24.881929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293476, 26.917339, 25.106390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077087, -0.596374, -0.798996,
		0.888666, -0.404427, 0.216129,
		-0.452030, -0.693380, 0.561153,
		39.157867, 26.709326, 25.274736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546673, 26.613745, 24.539616>,  <39.474289, 27.194691, 24.881929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546673, 26.613745, 24.539616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.287033, 26.438940, 24.788675>,  <39.131248, 26.334057, 24.938112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.287033, 26.438940, 24.788675>,  <39.546673, 26.613745, 24.539616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287033, 26.438940, 24.788675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245342, -0.654513, -0.715137,
		0.720057, -0.616954, 0.317624,
		-0.649096, -0.437013, 0.622651,
		39.092304, 26.307837, 24.975471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724056, 25.854343, 24.543364>,  <39.546673, 26.613745, 24.539616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724056, 25.854343, 24.543364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343113, 25.908293, 24.652784>,  <39.114548, 25.940662, 24.718437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343113, 25.908293, 24.652784>,  <39.724056, 25.854343, 24.543364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343113, 25.908293, 24.652784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294922, -0.635854, -0.713240,
		0.077742, -0.759934, 0.645335,
		-0.952353, 0.134875, 0.273553,
		39.057407, 25.948755, 24.734850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326092, 25.206684, 24.564539>,  <39.724056, 25.854343, 24.543364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326092, 25.206684, 24.564539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056347, 25.492849, 24.491419>,  <38.894501, 25.664549, 24.447546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056347, 25.492849, 24.491419>,  <39.326092, 25.206684, 24.564539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056347, 25.492849, 24.491419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290530, -0.484670, -0.825038,
		-0.678842, -0.503266, 0.534693,
		-0.674363, 0.715415, -0.182800,
		38.854038, 25.707474, 24.436579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752937, 24.828144, 24.225639>,  <39.326092, 25.206684, 24.564539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752937, 24.828144, 24.225639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678799, 25.215897, 24.161211>,  <38.634315, 25.448549, 24.122553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678799, 25.215897, 24.161211>,  <38.752937, 24.828144, 24.225639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678799, 25.215897, 24.161211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283359, -0.209673, -0.935813,
		-0.940934, -0.127805, 0.313544,
		-0.185343, 0.969383, -0.161073,
		38.623196, 25.506712, 24.112888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139107, 24.819883, 23.794968>,  <38.752937, 24.828144, 24.225639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139107, 24.819883, 23.794968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.304379, 25.177465, 23.725538>,  <38.403542, 25.392015, 23.683880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.304379, 25.177465, 23.725538>,  <38.139107, 24.819883, 23.794968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304379, 25.177465, 23.725538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038516, -0.207588, -0.977458,
		-0.909836, 0.397178, -0.120203,
		0.413177, 0.893956, -0.173573,
		38.428333, 25.445652, 23.673466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782452, 25.190033, 23.276995>,  <38.139107, 24.819883, 23.794968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782452, 25.190033, 23.276995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146698, 25.355177, 23.269695>,  <38.365246, 25.454264, 23.265316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146698, 25.355177, 23.269695>,  <37.782452, 25.190033, 23.276995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146698, 25.355177, 23.269695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056461, 0.080545, -0.995150,
		-0.409387, 0.907227, 0.096656,
		0.910612, 0.412859, -0.018249,
		38.419880, 25.479034, 23.264221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717094, 25.834473, 22.861750>,  <37.782452, 25.190033, 23.276995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717094, 25.834473, 22.861750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099533, 25.717260, 22.859972>,  <38.328995, 25.646933, 22.858906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099533, 25.717260, 22.859972>,  <37.717094, 25.834473, 22.861750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099533, 25.717260, 22.859972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029753, 0.112147, -0.993246,
		0.291548, 0.949504, 0.115942,
		0.956093, -0.293028, -0.004446,
		38.386360, 25.629353, 22.858639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845795, 26.016399, 22.194052>,  <37.717094, 25.834473, 22.861750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845795, 26.016399, 22.194052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169090, 25.803879, 22.295618>,  <38.363068, 25.676367, 22.356558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169090, 25.803879, 22.295618>,  <37.845795, 26.016399, 22.194052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169090, 25.803879, 22.295618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214159, -0.136456, -0.967221,
		0.548533, 0.836121, 0.003495,
		0.808237, -0.531301, 0.253914,
		38.411560, 25.644489, 22.371792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494171, 26.414812, 22.025265>,  <37.845795, 26.016399, 22.194052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494171, 26.414812, 22.025265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517719, 26.015507, 22.025856>,  <38.531849, 25.775923, 22.026211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517719, 26.015507, 22.025856>,  <38.494171, 26.414812, 22.025265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517719, 26.015507, 22.025856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271241, 0.014568, -0.962402,
		0.960710, 0.057055, 0.271627,
		0.058867, -0.998265, 0.001480,
		38.535378, 25.716028, 22.026300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021381, 26.311764, 21.566963>,  <38.494171, 26.414812, 22.025265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021381, 26.311764, 21.566963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846519, 25.952009, 21.566944>,  <38.741604, 25.736156, 21.566933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846519, 25.952009, 21.566944>,  <39.021381, 26.311764, 21.566963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846519, 25.952009, 21.566944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305960, -0.148663, -0.940366,
		0.845747, -0.411097, 0.340165,
		-0.437151, -0.899388, -0.000048,
		38.715374, 25.682192, 21.566931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580551, 25.855518, 21.336506>,  <39.021381, 26.311764, 21.566963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580551, 25.855518, 21.336506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239559, 25.649639, 21.299929>,  <39.034962, 25.526112, 21.277983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239559, 25.649639, 21.299929>,  <39.580551, 25.855518, 21.336506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239559, 25.649639, 21.299929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249513, -0.246904, -0.936366,
		0.459366, -0.821052, 0.338904,
		-0.852482, -0.514696, -0.091444,
		38.983814, 25.495230, 21.272495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673840, 25.253159, 21.126322>,  <39.580551, 25.855518, 21.336506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673840, 25.253159, 21.126322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299000, 25.302608, 20.995743>,  <39.074097, 25.332279, 20.917395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299000, 25.302608, 20.995743>,  <39.673840, 25.253159, 21.126322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299000, 25.302608, 20.995743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300382, -0.190832, -0.934534,
		-0.177819, -0.973808, 0.141697,
		-0.937097, 0.123615, -0.326448,
		39.017872, 25.339697, 20.897808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656792, 24.762047, 20.632656>,  <39.673840, 25.253159, 21.126322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656792, 24.762047, 20.632656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349251, 24.998350, 20.534782>,  <39.164726, 25.140133, 20.476059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349251, 24.998350, 20.534782>,  <39.656792, 24.762047, 20.632656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349251, 24.998350, 20.534782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120265, -0.242229, -0.962737,
		-0.628016, -0.769628, 0.115190,
		-0.768852, 0.590760, -0.244683,
		39.118595, 25.175579, 20.461378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315258, 24.398157, 20.018700>,  <39.656792, 24.762047, 20.632656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315258, 24.398157, 20.018700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187119, 24.777075, 20.020084>,  <39.110233, 25.004425, 20.020914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187119, 24.777075, 20.020084>,  <39.315258, 24.398157, 20.018700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187119, 24.777075, 20.020084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051276, -0.013692, -0.998591,
		-0.945911, -0.320075, 0.052960,
		-0.320349, 0.947293, 0.003460,
		39.091015, 25.061262, 20.021122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827526, 24.242342, 19.644321>,  <39.315258, 24.398157, 20.018700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827526, 24.242342, 19.644321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909412, 24.631697, 19.603130>,  <38.958546, 24.865311, 19.578415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909412, 24.631697, 19.603130>,  <38.827526, 24.242342, 19.644321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909412, 24.631697, 19.603130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007778, -0.103587, -0.994590,
		-0.978790, 0.204413, -0.013635,
		0.204720, 0.973389, -0.102980,
		38.970829, 24.923714, 19.572237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228306, 24.617073, 19.229309>,  <38.827526, 24.242342, 19.644321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228306, 24.617073, 19.229309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591846, 24.778690, 19.187870>,  <38.809971, 24.875662, 19.163006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591846, 24.778690, 19.187870>,  <38.228306, 24.617073, 19.229309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591846, 24.778690, 19.187870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097670, -0.035319, -0.994592,
		-0.405519, 0.914057, 0.007363,
		0.908854, 0.404045, -0.103599,
		38.864502, 24.899904, 19.156790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101742, 25.169222, 18.798140>,  <38.228306, 24.617073, 19.229309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101742, 25.169222, 18.798140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468334, 25.009283, 18.803623>,  <38.688290, 24.913321, 18.806913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468334, 25.009283, 18.803623>,  <38.101742, 25.169222, 18.798140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468334, 25.009283, 18.803623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050234, -0.149002, -0.987560,
		0.396916, 0.904390, -0.156644,
		0.916479, -0.399847, 0.013711,
		38.743279, 24.889328, 18.807735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715363, 25.534874, 18.430269>,  <38.101742, 25.169222, 18.798140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715363, 25.534874, 18.430269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030319, 25.289005, 18.449020>,  <39.219292, 25.141483, 18.460272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030319, 25.289005, 18.449020>,  <38.715363, 25.534874, 18.430269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030319, 25.289005, 18.449020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105388, 0.209148, 0.972188,
		-0.607383, -0.760548, 0.229460,
		0.787387, -0.614673, 0.046880,
		39.266537, 25.104603, 18.463085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395439, 26.028660, 19.052229>,  <38.715363, 25.534874, 18.430269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395439, 26.028660, 19.052229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040379, 26.013475, 18.868649>,  <37.827343, 26.004366, 18.758501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040379, 26.013475, 18.868649>,  <38.395439, 26.028660, 19.052229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040379, 26.013475, 18.868649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426326, 0.444575, 0.787781,
		0.174135, 0.894937, -0.410810,
		-0.887650, -0.037959, -0.458951,
		37.774082, 26.002089, 18.730963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095821, 26.661533, 19.235184>,  <38.395439, 26.028660, 19.052229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095821, 26.661533, 19.235184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778561, 26.452707, 19.109732>,  <37.588203, 26.327412, 19.034460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.778561, 26.452707, 19.109732>,  <38.095821, 26.661533, 19.235184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778561, 26.452707, 19.109732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530526, 0.339361, 0.776773,
		-0.299092, 0.782485, -0.546133,
		-0.793149, -0.522065, -0.313629,
		37.540615, 26.296087, 19.015642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586269, 27.108513, 19.454914>,  <38.095821, 26.661533, 19.235184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586269, 27.108513, 19.454914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398548, 26.763649, 19.378565>,  <37.285915, 26.556730, 19.332756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398548, 26.763649, 19.378565>,  <37.586269, 27.108513, 19.454914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398548, 26.763649, 19.378565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574644, 0.134063, 0.807349,
		-0.670474, 0.488578, -0.558351,
		-0.469307, -0.862159, -0.190873,
		37.257755, 26.505001, 19.321302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876511, 27.249197, 19.270483>,  <37.586269, 27.108513, 19.454914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876511, 27.249197, 19.270483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889950, 26.877304, 19.417162>,  <36.898014, 26.654167, 19.505169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889950, 26.877304, 19.417162>,  <36.876511, 27.249197, 19.270483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889950, 26.877304, 19.417162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662003, 0.254169, 0.705089,
		-0.748748, -0.266446, -0.606946,
		0.033601, -0.929733, 0.366697,
		36.900032, 26.598385, 19.527170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118641, 27.098398, 19.444683>,  <36.876511, 27.249197, 19.270483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118641, 27.098398, 19.444683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.341267, 26.837090, 19.650002>,  <36.474842, 26.680304, 19.773193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.341267, 26.837090, 19.650002>,  <36.118641, 27.098398, 19.444683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341267, 26.837090, 19.650002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497909, 0.232307, 0.835536,
		-0.665076, -0.720602, -0.195978,
		0.556561, -0.653274, 0.513296,
		36.508236, 26.641108, 19.803989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667713, 26.587233, 19.946514>,  <36.118641, 27.098398, 19.444683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667713, 26.587233, 19.946514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037239, 26.594381, 20.099480>,  <36.258957, 26.598671, 20.191259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037239, 26.594381, 20.099480>,  <35.667713, 26.587233, 19.946514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037239, 26.594381, 20.099480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382396, -0.004604, 0.923987,
		0.018280, -0.999830, 0.002584,
		0.923818, 0.017878, 0.382415,
		36.314384, 26.599743, 20.214205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563435, 26.148285, 20.507656>,  <35.667713, 26.587233, 19.946514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563435, 26.148285, 20.507656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925453, 26.296810, 20.590614>,  <36.142666, 26.385925, 20.640390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925453, 26.296810, 20.590614>,  <35.563435, 26.148285, 20.507656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925453, 26.296810, 20.590614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271033, 0.127738, 0.954057,
		0.327761, -0.919679, 0.216247,
		0.905049, 0.371313, 0.207396,
		36.196968, 26.408203, 20.652834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882515, 25.878782, 21.097012>,  <35.563435, 26.148285, 20.507656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882515, 25.878782, 21.097012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076000, 26.228390, 21.078646>,  <36.192093, 26.438154, 21.067627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076000, 26.228390, 21.078646>,  <35.882515, 25.878782, 21.097012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076000, 26.228390, 21.078646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182045, 0.151784, 0.971505,
		0.856084, -0.461572, 0.232531,
		0.483714, 0.874021, -0.045913,
		36.221115, 26.490597, 21.064873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348881, 25.808170, 21.656855>,  <35.882515, 25.878782, 21.097012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348881, 25.808170, 21.656855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334175, 26.191017, 21.541914>,  <36.325352, 26.420725, 21.472950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.334175, 26.191017, 21.541914>,  <36.348881, 25.808170, 21.656855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334175, 26.191017, 21.541914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259276, 0.286836, 0.922226,
		0.965103, -0.040595, -0.258704,
		-0.036768, 0.957119, -0.287352,
		36.323143, 26.478153, 21.455708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965649, 26.154799, 21.894062>,  <36.348881, 25.808170, 21.656855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965649, 26.154799, 21.894062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.704304, 26.443779, 21.803566>,  <36.547497, 26.617168, 21.749268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.704304, 26.443779, 21.803566>,  <36.965649, 26.154799, 21.894062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704304, 26.443779, 21.803566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184676, 0.441914, 0.877842,
		0.734178, 0.531764, -0.422148,
		-0.653358, 0.722453, -0.226240,
		36.508297, 26.660515, 21.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311176, 26.715891, 22.176901>,  <36.965649, 26.154799, 21.894062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311176, 26.715891, 22.176901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922100, 26.803062, 22.144958>,  <36.688652, 26.855366, 22.125793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922100, 26.803062, 22.144958>,  <37.311176, 26.715891, 22.176901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922100, 26.803062, 22.144958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039930, 0.181798, 0.982525,
		0.228637, 0.958883, -0.168132,
		-0.972692, 0.217928, -0.079854,
		36.630291, 26.868441, 22.121002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262199, 27.152411, 22.710239>,  <37.311176, 26.715891, 22.176901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262199, 27.152411, 22.710239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.876511, 27.063957, 22.651768>,  <36.645096, 27.010885, 22.616684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.876511, 27.063957, 22.651768>,  <37.262199, 27.152411, 22.710239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876511, 27.063957, 22.651768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156192, 0.028393, 0.987318,
		-0.214180, 0.974830, -0.061917,
		-0.964225, -0.221135, -0.146180,
		36.587242, 26.997616, 22.607914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905739, 27.736538, 23.132244>,  <37.262199, 27.152411, 22.710239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905739, 27.736538, 23.132244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696266, 27.398329, 23.090576>,  <36.570583, 27.195404, 23.065575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696266, 27.398329, 23.090576>,  <36.905739, 27.736538, 23.132244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696266, 27.398329, 23.090576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166648, -0.018244, 0.985848,
		-0.835456, 0.533629, -0.131350,
		-0.523681, -0.845522, -0.104170,
		36.539162, 27.144672, 23.059324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255527, 27.785664, 23.481010>,  <36.905739, 27.736538, 23.132244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255527, 27.785664, 23.481010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282436, 27.387634, 23.451887>,  <36.298580, 27.148817, 23.434414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282436, 27.387634, 23.451887>,  <36.255527, 27.785664, 23.481010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282436, 27.387634, 23.451887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139143, -0.081617, 0.986903,
		-0.987985, -0.056259, -0.143948,
		0.067271, -0.995075, -0.072808,
		36.302616, 27.089111, 23.430044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710365, 27.456444, 23.938179>,  <36.255527, 27.785664, 23.481010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710365, 27.456444, 23.938179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933483, 27.126194, 23.904215>,  <36.067352, 26.928043, 23.883837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933483, 27.126194, 23.904215>,  <35.710365, 27.456444, 23.938179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933483, 27.126194, 23.904215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152037, -0.202213, 0.967468,
		-0.815936, -0.526738, -0.238319,
		0.557793, -0.825625, -0.084909,
		36.100822, 26.878506, 23.878742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365021, 26.907436, 24.337303>,  <35.710365, 27.456444, 23.938179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365021, 26.907436, 24.337303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746235, 26.792189, 24.299953>,  <35.974964, 26.723040, 24.277544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746235, 26.792189, 24.299953>,  <35.365021, 26.907436, 24.337303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746235, 26.792189, 24.299953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003576, -0.297565, 0.954695,
		-0.302883, -0.910178, -0.282555,
		0.953021, -0.288150, -0.093382,
		36.032143, 26.705753, 24.271942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372097, 26.206409, 24.569418>,  <35.365021, 26.907436, 24.337303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372097, 26.206409, 24.569418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749111, 26.335590, 24.603676>,  <35.975319, 26.413099, 24.624229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749111, 26.335590, 24.603676>,  <35.372097, 26.206409, 24.569418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749111, 26.335590, 24.603676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000065, -0.256150, 0.966637,
		0.334118, -0.911091, -0.241409,
		0.942531, 0.322955, 0.085644,
		36.031872, 26.432476, 24.629370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696888, 25.587238, 24.904432>,  <35.372097, 26.206409, 24.569418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696888, 25.587238, 24.904432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955750, 25.886738, 24.961802>,  <36.111065, 26.066437, 24.996223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.955750, 25.886738, 24.961802>,  <35.696888, 25.587238, 24.904432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955750, 25.886738, 24.961802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081906, -0.255328, 0.963379,
		0.757947, -0.611707, -0.226563,
		0.647153, 0.748747, 0.143423,
		36.149895, 26.111362, 25.004827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432384, 25.281540, 25.258215>,  <35.696888, 25.587238, 24.904432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432384, 25.281540, 25.258215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355946, 25.664854, 25.343229>,  <36.310081, 25.894842, 25.394238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355946, 25.664854, 25.343229>,  <36.432384, 25.281540, 25.258215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355946, 25.664854, 25.343229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075078, -0.230164, 0.970251,
		0.978696, 0.169453, 0.115929,
		-0.191095, 0.958285, 0.212538,
		36.298618, 25.952339, 25.406990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519848, 25.274847, 25.949026>,  <36.432384, 25.281540, 25.258215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519848, 25.274847, 25.949026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371353, 25.642553, 25.896667>,  <36.282257, 25.863176, 25.865252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371353, 25.642553, 25.896667>,  <36.519848, 25.274847, 25.949026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371353, 25.642553, 25.896667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138247, 0.084679, 0.986771,
		0.918188, 0.384424, 0.095649,
		-0.371239, 0.919265, -0.130897,
		36.259983, 25.918333, 25.857399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.924515, 27.457321, 30.011921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674458, 27.757074, 29.924631>,  <39.524422, 27.936926, 29.872257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674458, 27.757074, 29.924631>,  <39.924515, 27.457321, 30.011921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674458, 27.757074, 29.924631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319770, 0.500956, 0.804233,
		0.711999, 0.432979, -0.552799,
		-0.625144, 0.749382, -0.218226,
		39.486916, 27.981890, 29.859163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212738, 28.157099, 30.362761>,  <39.924515, 27.457321, 30.011921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212738, 28.157099, 30.362761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831875, 28.253128, 30.287117>,  <39.603355, 28.310745, 30.241730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831875, 28.253128, 30.287117>,  <40.212738, 28.157099, 30.362761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831875, 28.253128, 30.287117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056684, 0.469326, 0.881204,
		0.300307, 0.849764, -0.433263,
		-0.952157, 0.240073, -0.189110,
		39.546227, 28.325150, 30.230385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147335, 28.778948, 30.563097>,  <40.212738, 28.157099, 30.362761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147335, 28.778948, 30.563097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789536, 28.601305, 30.583630>,  <39.574856, 28.494719, 30.595949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789536, 28.601305, 30.583630>,  <40.147335, 28.778948, 30.563097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789536, 28.601305, 30.583630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114565, 0.338691, 0.933897,
		-0.432136, 0.829492, -0.353839,
		-0.894502, -0.444108, 0.051330,
		39.521187, 28.468073, 30.599028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790707, 29.231361, 30.895512>,  <40.147335, 28.778948, 30.563097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790707, 29.231361, 30.895512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.549809, 28.913694, 30.928001>,  <39.405270, 28.723095, 30.947495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.549809, 28.913694, 30.928001>,  <39.790707, 29.231361, 30.895512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549809, 28.913694, 30.928001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339326, 0.346757, 0.874424,
		-0.722602, 0.499060, -0.478315,
		-0.602249, -0.794165, 0.081223,
		39.369133, 28.675446, 30.952368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157448, 29.511269, 31.170160>,  <39.790707, 29.231361, 30.895512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157448, 29.511269, 31.170160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.188412, 29.123295, 31.262455>,  <39.206989, 28.890511, 31.317831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.188412, 29.123295, 31.262455>,  <39.157448, 29.511269, 31.170160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188412, 29.123295, 31.262455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235916, 0.207039, 0.949462,
		-0.968685, -0.127931, -0.212796,
		0.077408, -0.969932, 0.230737,
		39.211636, 28.832315, 31.331676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561256, 29.319719, 31.516623>,  <39.157448, 29.511269, 31.170160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561256, 29.319719, 31.516623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823750, 29.036140, 31.619965>,  <38.981247, 28.865993, 31.681971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823750, 29.036140, 31.619965>,  <38.561256, 29.319719, 31.516623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823750, 29.036140, 31.619965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211527, 0.155820, 0.964871,
		-0.724300, -0.687833, -0.047707,
		0.656236, -0.708947, 0.258356,
		39.020622, 28.823456, 31.697472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201553, 28.998981, 32.130299>,  <38.561256, 29.319719, 31.516623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201553, 28.998981, 32.130299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.587097, 28.893919, 32.148144>,  <38.818424, 28.830881, 32.158852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.587097, 28.893919, 32.148144>,  <38.201553, 28.998981, 32.130299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587097, 28.893919, 32.148144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006107, 0.189201, 0.981919,
		-0.266347, -0.946158, 0.183967,
		0.963858, -0.262655, 0.044615,
		38.876255, 28.815123, 32.161530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274319, 28.547901, 32.672649>,  <38.201553, 28.998981, 32.130299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274319, 28.547901, 32.672649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650780, 28.671513, 32.617908>,  <38.876656, 28.745680, 32.585064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650780, 28.671513, 32.617908>,  <38.274319, 28.547901, 32.672649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650780, 28.671513, 32.617908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113569, 0.092211, 0.989242,
		0.318325, -0.946572, 0.051689,
		0.941154, 0.309030, -0.136854,
		38.933125, 28.764221, 32.576851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717491, 27.984705, 33.012165>,  <38.274319, 28.547901, 32.672649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717491, 27.984705, 33.012165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.911942, 28.331104, 32.965305>,  <39.028614, 28.538944, 32.937191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.911942, 28.331104, 32.965305>,  <38.717491, 27.984705, 33.012165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911942, 28.331104, 32.965305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080611, 0.089048, 0.992760,
		0.870161, -0.492054, -0.026521,
		0.486130, 0.865999, -0.117151,
		39.057781, 28.590904, 32.930161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282494, 27.897747, 33.448868>,  <38.717491, 27.984705, 33.012165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282494, 27.897747, 33.448868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233604, 28.287167, 33.371647>,  <39.204273, 28.520819, 33.325314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233604, 28.287167, 33.371647>,  <39.282494, 27.897747, 33.448868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233604, 28.287167, 33.371647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216202, 0.215954, 0.952166,
		0.968669, 0.074635, -0.236877,
		-0.122220, 0.973547, -0.193052,
		39.196938, 28.579231, 33.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756126, 28.238337, 33.885784>,  <39.282494, 27.897747, 33.448868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756126, 28.238337, 33.885784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522488, 28.549002, 33.791447>,  <39.382305, 28.735401, 33.734844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522488, 28.549002, 33.791447>,  <39.756126, 28.238337, 33.885784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522488, 28.549002, 33.791447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134728, 0.379300, 0.915412,
		0.800423, 0.502917, -0.326187,
		-0.584099, 0.776663, -0.235843,
		39.347260, 28.782001, 33.720695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102871, 28.914795, 34.097309>,  <39.756126, 28.238337, 33.885784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102871, 28.914795, 34.097309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718006, 29.019781, 34.068016>,  <39.487087, 29.082773, 34.050438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718006, 29.019781, 34.068016>,  <40.102871, 28.914795, 34.097309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718006, 29.019781, 34.068016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028559, 0.364409, 0.930801,
		0.270992, 0.893486, -0.358114,
		-0.962158, 0.262468, -0.073234,
		39.429359, 29.098522, 34.046047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059093, 29.550749, 34.315350>,  <40.102871, 28.914795, 34.097309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059093, 29.550749, 34.315350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675541, 29.443245, 34.351810>,  <39.445408, 29.378742, 34.373688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675541, 29.443245, 34.351810>,  <40.059093, 29.550749, 34.315350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675541, 29.443245, 34.351810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073417, 0.545166, 0.835107,
		-0.274134, 0.794080, -0.542483,
		-0.958885, -0.268758, 0.091149,
		39.387875, 29.362617, 34.379154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665230, 30.034100, 34.529343>,  <40.059093, 29.550749, 34.315350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665230, 30.034100, 34.529343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387619, 29.765053, 34.632042>,  <39.221054, 29.603624, 34.693661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387619, 29.765053, 34.632042>,  <39.665230, 30.034100, 34.529343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387619, 29.765053, 34.632042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316907, 0.605617, 0.729930,
		-0.646451, 0.425226, -0.633470,
		-0.694026, -0.672615, 0.256745,
		39.179413, 29.563269, 34.709064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251366, 30.703953, 34.709591>,  <39.665230, 30.034100, 34.529343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251366, 30.703953, 34.709591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.572319, 30.940819, 34.679855>,  <39.764889, 31.082939, 34.662014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.572319, 30.940819, 34.679855>,  <39.251366, 30.703953, 34.709591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572319, 30.940819, 34.679855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082503, -0.013310, -0.996502,
		-0.591082, 0.805707, 0.038176,
		0.802381, 0.592164, -0.074340,
		39.813034, 31.118467, 34.657555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979095, 31.156952, 34.364628>,  <39.251366, 30.703953, 34.709591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979095, 31.156952, 34.364628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368919, 31.170599, 34.276020>,  <39.602814, 31.178787, 34.222855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368919, 31.170599, 34.276020>,  <38.979095, 31.156952, 34.364628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368919, 31.170599, 34.276020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223799, 0.202074, -0.953457,
		0.012232, 0.978776, 0.204569,
		0.974559, 0.034119, -0.221521,
		39.661285, 31.180836, 34.209564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995636, 31.782404, 33.947575>,  <38.979095, 31.156952, 34.364628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995636, 31.782404, 33.947575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329411, 31.580158, 33.859871>,  <39.529675, 31.458811, 33.807251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329411, 31.580158, 33.859871>,  <38.995636, 31.782404, 33.947575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329411, 31.580158, 33.859871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082247, 0.279142, -0.956721,
		0.544935, 0.816355, 0.191340,
		0.834435, -0.505613, -0.219257,
		39.579742, 31.428474, 33.794094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363613, 32.210983, 33.522045>,  <38.995636, 31.782404, 33.947575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363613, 32.210983, 33.522045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558723, 31.867441, 33.459496>,  <39.675789, 31.661316, 33.421967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558723, 31.867441, 33.459496>,  <39.363613, 32.210983, 33.522045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558723, 31.867441, 33.459496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151042, 0.259452, -0.953871,
		0.859805, 0.441654, 0.256276,
		0.487772, -0.858852, -0.156369,
		39.705055, 31.609785, 33.412586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951614, 32.338081, 32.989059>,  <39.363613, 32.210983, 33.522045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951614, 32.338081, 32.989059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.867115, 31.948074, 32.961617>,  <39.816414, 31.714069, 32.945148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.867115, 31.948074, 32.961617>,  <39.951614, 32.338081, 32.989059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867115, 31.948074, 32.961617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059896, 0.057151, -0.996567,
		0.975596, -0.214632, 0.046326,
		-0.211247, -0.975021, -0.068612,
		39.803741, 31.655567, 32.941032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339420, 32.077572, 32.453674>,  <39.951614, 32.338081, 32.989059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339420, 32.077572, 32.453674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032333, 31.827477, 32.509804>,  <39.848080, 31.677420, 32.543480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032333, 31.827477, 32.509804>,  <40.339420, 32.077572, 32.453674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032333, 31.827477, 32.509804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112028, -0.084648, -0.990093,
		0.630920, -0.775832, -0.005058,
		-0.767718, -0.625236, 0.140321,
		39.802017, 31.639906, 32.551899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402088, 31.674641, 31.895012>,  <40.339420, 32.077572, 32.453674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402088, 31.674641, 31.895012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031013, 31.568390, 31.999958>,  <39.808369, 31.504641, 32.062927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031013, 31.568390, 31.999958>,  <40.402088, 31.674641, 31.895012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031013, 31.568390, 31.999958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260740, -0.042029, -0.964494,
		0.267223, -0.963159, -0.030269,
		-0.927689, -0.265627, 0.262365,
		39.752708, 31.488703, 32.078667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186508, 31.044998, 31.440117>,  <40.402088, 31.674641, 31.895012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186508, 31.044998, 31.440117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858074, 31.230742, 31.572895>,  <39.661015, 31.342188, 31.652561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858074, 31.230742, 31.572895>,  <40.186508, 31.044998, 31.440117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858074, 31.230742, 31.572895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472321, -0.226179, -0.851913,
		-0.320514, -0.856279, 0.405039,
		-0.821087, 0.464359, 0.331945,
		39.611748, 31.370049, 31.672480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571815, 30.530256, 31.316751>,  <40.186508, 31.044998, 31.440117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571815, 30.530256, 31.316751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399975, 30.889778, 31.351597>,  <39.296871, 31.105492, 31.372505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399975, 30.889778, 31.351597>,  <39.571815, 30.530256, 31.316751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399975, 30.889778, 31.351597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568806, -0.194415, -0.799164,
		-0.701356, -0.392875, 0.594767,
		-0.429604, 0.898806, 0.087115,
		39.271095, 31.159420, 31.377731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875553, 30.435995, 31.241465>,  <39.571815, 30.530256, 31.316751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875553, 30.435995, 31.241465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946831, 30.820204, 31.156008>,  <38.989597, 31.050730, 31.104733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946831, 30.820204, 31.156008>,  <38.875553, 30.435995, 31.241465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946831, 30.820204, 31.156008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521253, -0.092011, -0.848428,
		-0.834592, 0.262544, 0.484280,
		0.178191, 0.960523, -0.213644,
		39.000286, 31.108360, 31.091915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466148, 30.527857, 30.699078>,  <38.875553, 30.435995, 31.241465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466148, 30.527857, 30.699078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645733, 30.885265, 30.696341>,  <38.753483, 31.099710, 30.694698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.645733, 30.885265, 30.696341>,  <38.466148, 30.527857, 30.699078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645733, 30.885265, 30.696341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268309, 0.127505, -0.954857,
		-0.852314, 0.430534, 0.296986,
		0.448966, 0.893523, -0.006841,
		38.780422, 31.153322, 30.694288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968327, 31.102745, 30.582338>,  <38.466148, 30.527857, 30.699078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968327, 31.102745, 30.582338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317326, 31.238594, 30.441818>,  <38.526726, 31.320103, 30.357506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317326, 31.238594, 30.441818>,  <37.968327, 31.102745, 30.582338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317326, 31.238594, 30.441818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404013, 0.097053, -0.909590,
		-0.274823, 0.935541, 0.221890,
		0.872494, 0.339622, -0.351298,
		38.579075, 31.340481, 30.336430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741676, 31.513323, 30.105183>,  <37.968327, 31.102745, 30.582338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741676, 31.513323, 30.105183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132267, 31.472370, 30.029280>,  <38.366623, 31.447800, 29.983738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132267, 31.472370, 30.029280>,  <37.741676, 31.513323, 30.105183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132267, 31.472370, 30.029280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172389, 0.157906, -0.972290,
		0.129508, 0.982132, 0.136543,
		0.976478, -0.102381, -0.189759,
		38.425209, 31.441656, 29.972351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880447, 32.052315, 29.645441>,  <37.741676, 31.513323, 30.105183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880447, 32.052315, 29.645441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159271, 31.768959, 29.601082>,  <38.326565, 31.598946, 29.574467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159271, 31.768959, 29.601082>,  <37.880447, 32.052315, 29.645441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159271, 31.768959, 29.601082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270083, -0.116131, -0.955808,
		0.664203, 0.696206, -0.272273,
		0.697058, -0.708386, -0.110899,
		38.368389, 31.556442, 29.567812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162670, 32.793716, 29.701260>,  <37.880447, 32.052315, 29.645441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162670, 32.793716, 29.701260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.902607, 33.096359, 29.673429>,  <37.746571, 33.277946, 29.656731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.902607, 33.096359, 29.673429>,  <38.162670, 32.793716, 29.701260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902607, 33.096359, 29.673429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318218, -0.187999, 0.929190,
		0.689953, 0.626257, 0.362996,
		-0.650155, 0.756609, -0.069576,
		37.707561, 33.323341, 29.652557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263641, 33.100899, 30.288599>,  <38.162670, 32.793716, 29.701260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263641, 33.100899, 30.288599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899754, 33.202370, 30.157106>,  <37.681423, 33.263252, 30.078211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899754, 33.202370, 30.157106>,  <38.263641, 33.100899, 30.288599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899754, 33.202370, 30.157106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363385, -0.103310, 0.925893,
		0.200919, 0.961756, 0.186166,
		-0.909716, 0.253679, -0.328731,
		37.626839, 33.278473, 30.058487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975819, 33.578823, 30.751974>,  <38.263641, 33.100899, 30.288599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975819, 33.578823, 30.751974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662502, 33.421341, 30.559538>,  <37.474510, 33.326851, 30.444077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662502, 33.421341, 30.559538>,  <37.975819, 33.578823, 30.751974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662502, 33.421341, 30.559538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521542, -0.004954, 0.853211,
		-0.338299, 0.919222, -0.201455,
		-0.783293, -0.393708, -0.481089,
		37.427513, 33.303230, 30.415211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485119, 33.880108, 31.087444>,  <37.975819, 33.578823, 30.751974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485119, 33.880108, 31.087444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293549, 33.574711, 30.914145>,  <37.178608, 33.391472, 30.810165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.293549, 33.574711, 30.914145>,  <37.485119, 33.880108, 31.087444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293549, 33.574711, 30.914145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526833, -0.144795, 0.837545,
		-0.702195, 0.629370, -0.332889,
		-0.478925, -0.763497, -0.433247,
		37.149872, 33.345661, 30.784170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736847, 33.961452, 31.301331>,  <37.485119, 33.880108, 31.087444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736847, 33.961452, 31.301331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798836, 33.590069, 31.166306>,  <36.836029, 33.367237, 31.085291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798836, 33.590069, 31.166306>,  <36.736847, 33.961452, 31.301331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798836, 33.590069, 31.166306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587252, -0.361347, 0.724268,
		-0.794429, 0.085993, -0.601238,
		0.154974, -0.928458, -0.337564,
		36.845329, 33.311531, 31.065037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112888, 33.684990, 31.404650>,  <36.736847, 33.961452, 31.301331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112888, 33.684990, 31.404650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354473, 33.368492, 31.366346>,  <36.499424, 33.178593, 31.343365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.354473, 33.368492, 31.366346>,  <36.112888, 33.684990, 31.404650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354473, 33.368492, 31.366346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621173, -0.542576, 0.565469,
		-0.499378, -0.282039, -0.819192,
		0.603958, -0.791243, -0.095756,
		36.535660, 33.131119, 31.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655163, 33.068737, 31.229633>,  <36.112888, 33.684990, 31.404650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655163, 33.068737, 31.229633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987297, 32.931973, 31.405653>,  <36.186577, 32.849915, 31.511265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987297, 32.931973, 31.405653>,  <35.655163, 33.068737, 31.229633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987297, 32.931973, 31.405653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548939, -0.637871, 0.540173,
		0.096001, -0.690083, -0.717335,
		0.830332, -0.341916, 0.440050,
		36.236397, 32.829399, 31.537668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627224, 32.378654, 31.140413>,  <35.655163, 33.068737, 31.229633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627224, 32.378654, 31.140413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879757, 32.434269, 31.445591>,  <36.031277, 32.467636, 31.628698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879757, 32.434269, 31.445591>,  <35.627224, 32.378654, 31.140413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879757, 32.434269, 31.445591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468551, -0.715550, 0.518120,
		0.617961, -0.684586, -0.386607,
		0.631335, 0.139033, 0.762946,
		36.069157, 32.475979, 31.674475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595734, 31.742426, 31.477789>,  <35.627224, 32.378654, 31.140413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595734, 31.742426, 31.477789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.784195, 31.964838, 31.751677>,  <35.897274, 32.098286, 31.916010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.784195, 31.964838, 31.751677>,  <35.595734, 31.742426, 31.477789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784195, 31.964838, 31.751677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440695, -0.524055, 0.728804,
		0.764067, -0.645134, -0.001872,
		0.471157, 0.556030, 0.684720,
		35.925541, 32.131645, 31.957092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044159, 31.313786, 31.995647>,  <35.595734, 31.742426, 31.477789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044159, 31.313786, 31.995647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950794, 31.660042, 32.172821>,  <35.894775, 31.867796, 32.279125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950794, 31.660042, 32.172821>,  <36.044159, 31.313786, 31.995647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950794, 31.660042, 32.172821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441219, -0.500206, 0.745064,
		0.866514, -0.021525, 0.498689,
		-0.233410, 0.865639, 0.442932,
		35.880772, 31.919733, 32.305702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402763, 31.336931, 32.610725>,  <36.044159, 31.313786, 31.995647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402763, 31.336931, 32.610725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.092148, 31.584967, 32.655407>,  <35.905777, 31.733788, 32.682217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.092148, 31.584967, 32.655407>,  <36.402763, 31.336931, 32.610725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092148, 31.584967, 32.655407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226655, -0.440342, 0.868750,
		0.587892, 0.649298, 0.482489,
		-0.776538, 0.620089, 0.111707,
		35.859188, 31.770994, 32.688919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283173, 31.405174, 33.356384>,  <36.402763, 31.336931, 32.610725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283173, 31.405174, 33.356384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939907, 31.540178, 33.201653>,  <35.733948, 31.621181, 33.108814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939907, 31.540178, 33.201653>,  <36.283173, 31.405174, 33.356384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939907, 31.540178, 33.201653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513298, -0.551671, 0.657408,
		0.008482, 0.762723, 0.646670,
		-0.858169, 0.337510, -0.386825,
		35.682457, 31.641432, 33.085606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.909069, 33.885941, 26.359831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525558, 33.921539, 26.251883>,  <38.295452, 33.942898, 26.187113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525558, 33.921539, 26.251883>,  <38.909069, 33.885941, 26.359831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525558, 33.921539, 26.251883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242741, 0.237253, 0.940632,
		0.147740, 0.967363, -0.205869,
		-0.958775, 0.088996, -0.269870,
		38.237926, 33.948238, 26.170921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686916, 34.584213, 26.567865>,  <38.909069, 33.885941, 26.359831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686916, 34.584213, 26.567865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350048, 34.371628, 26.531435>,  <38.147926, 34.244076, 26.509577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350048, 34.371628, 26.531435>,  <38.686916, 34.584213, 26.567865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350048, 34.371628, 26.531435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260735, 0.253530, 0.931526,
		-0.471983, 0.808249, -0.352087,
		-0.842169, -0.531466, -0.091076,
		38.097397, 34.212189, 26.504112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211311, 34.918587, 26.864447>,  <38.686916, 34.584213, 26.567865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211311, 34.918587, 26.864447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064854, 34.547375, 26.891861>,  <37.976978, 34.324646, 26.908310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064854, 34.547375, 26.891861>,  <38.211311, 34.918587, 26.864447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064854, 34.547375, 26.891861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364638, 0.210845, 0.906964,
		-0.856140, 0.307090, -0.415595,
		-0.366146, -0.928030, 0.068536,
		37.955009, 34.268967, 26.912422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504288, 34.960556, 27.136139>,  <38.211311, 34.918587, 26.864447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504288, 34.960556, 27.136139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626572, 34.586052, 27.205372>,  <37.699944, 34.361351, 27.246912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626572, 34.586052, 27.205372>,  <37.504288, 34.960556, 27.136139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626572, 34.586052, 27.205372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350107, 0.058508, 0.934881,
		-0.885418, -0.346401, -0.309905,
		0.305712, -0.936260, 0.173081,
		37.718285, 34.305176, 27.257296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123936, 34.748741, 27.753452>,  <37.504288, 34.960556, 27.136139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123936, 34.748741, 27.753452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393879, 34.453876, 27.739817>,  <37.555847, 34.276958, 27.731636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393879, 34.453876, 27.739817>,  <37.123936, 34.748741, 27.753452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393879, 34.453876, 27.739817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039550, -0.082258, 0.995826,
		-0.736885, -0.670695, -0.084667,
		0.674860, -0.737158, -0.034089,
		37.596336, 34.232731, 27.729589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814220, 34.185757, 28.000774>,  <37.123936, 34.748741, 27.753452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814220, 34.185757, 28.000774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197498, 34.080872, 28.046562>,  <37.427467, 34.017941, 28.074036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197498, 34.080872, 28.046562>,  <36.814220, 34.185757, 28.000774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197498, 34.080872, 28.046562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173626, -0.214919, 0.961074,
		-0.227422, -0.940768, -0.251464,
		0.958192, -0.262230, 0.114464,
		37.484959, 34.002209, 28.080904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972141, 33.415676, 28.125519>,  <36.814220, 34.185757, 28.000774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972141, 33.415676, 28.125519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249947, 33.648556, 28.294607>,  <37.416630, 33.788284, 28.396059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249947, 33.648556, 28.294607>,  <36.972141, 33.415676, 28.125519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249947, 33.648556, 28.294607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290429, -0.310680, 0.905057,
		0.658256, -0.751345, -0.046684,
		0.694515, 0.582201, 0.422719,
		37.458302, 33.823215, 28.421423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227257, 32.881260, 28.532509>,  <36.972141, 33.415676, 28.125519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227257, 32.881260, 28.532509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401779, 33.208771, 28.681767>,  <37.506493, 33.405277, 28.771322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401779, 33.208771, 28.681767>,  <37.227257, 32.881260, 28.532509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401779, 33.208771, 28.681767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005946, -0.417314, 0.908743,
		0.899777, -0.394274, -0.186946,
		0.436309, 0.818778, 0.373145,
		37.532673, 33.454403, 28.793711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742317, 32.659618, 29.017572>,  <37.227257, 32.881260, 28.532509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742317, 32.659618, 29.017572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688622, 33.043961, 29.114519>,  <37.656403, 33.274567, 29.172688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688622, 33.043961, 29.114519>,  <37.742317, 32.659618, 29.017572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688622, 33.043961, 29.114519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103457, -0.256833, 0.960903,
		0.985533, 0.103920, 0.133885,
		-0.134243, 0.960853, 0.242366,
		37.648350, 33.332218, 29.187229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283649, 32.144188, 28.805962>,  <37.742317, 32.659618, 29.017572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283649, 32.144188, 28.805962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363110, 31.773432, 28.933340>,  <38.410786, 31.550978, 29.009768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363110, 31.773432, 28.933340>,  <38.283649, 32.144188, 28.805962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363110, 31.773432, 28.933340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151551, -0.350065, -0.924385,
		0.968282, 0.135372, -0.210013,
		0.198654, -0.926892, 0.318446,
		38.422707, 31.495363, 29.028873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692482, 31.822353, 28.314716>,  <38.283649, 32.144188, 28.805962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692482, 31.822353, 28.314716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552605, 31.508112, 28.518888>,  <38.468678, 31.319567, 28.641392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552605, 31.508112, 28.518888>,  <38.692482, 31.822353, 28.314716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552605, 31.508112, 28.518888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162777, -0.485593, -0.858897,
		0.922613, -0.383440, 0.041933,
		-0.349698, -0.785604, 0.510430,
		38.447697, 31.272430, 28.672018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947647, 31.241510, 28.005581>,  <38.692482, 31.822353, 28.314716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947647, 31.241510, 28.005581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644798, 31.088264, 28.217237>,  <38.463089, 30.996317, 28.344231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644798, 31.088264, 28.217237>,  <38.947647, 31.241510, 28.005581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644798, 31.088264, 28.217237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213286, -0.620633, -0.754535,
		0.617475, -0.684134, 0.388182,
		-0.757121, -0.383113, 0.529142,
		38.417664, 30.973331, 28.375980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015461, 30.506693, 28.028807>,  <38.947647, 31.241510, 28.005581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015461, 30.506693, 28.028807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625088, 30.580412, 28.075447>,  <38.390865, 30.624643, 28.103432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625088, 30.580412, 28.075447>,  <39.015461, 30.506693, 28.028807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625088, 30.580412, 28.075447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190038, -0.456366, -0.869261,
		-0.106988, -0.870497, 0.480404,
		-0.975930, 0.184296, 0.116602,
		38.332310, 30.635700, 28.110428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731464, 29.937172, 27.754692>,  <39.015461, 30.506693, 28.028807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731464, 29.937172, 27.754692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407860, 30.172279, 27.756929>,  <38.213696, 30.313343, 27.758272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407860, 30.172279, 27.756929>,  <38.731464, 29.937172, 27.754692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407860, 30.172279, 27.756929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301285, -0.406482, -0.862554,
		-0.504709, -0.699500, 0.505934,
		-0.809010, 0.587769, 0.005594,
		38.165157, 30.348610, 27.758608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086281, 29.606400, 27.611462>,  <38.731464, 29.937172, 27.754692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086281, 29.606400, 27.611462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978031, 29.973558, 27.495373>,  <37.913082, 30.193853, 27.425720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978031, 29.973558, 27.495373>,  <38.086281, 29.606400, 27.611462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978031, 29.973558, 27.495373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091419, -0.324613, -0.941419,
		-0.958336, -0.228235, 0.171761,
		-0.270621, 0.917897, -0.290223,
		37.896847, 30.248928, 27.408306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471237, 29.531504, 27.295351>,  <38.086281, 29.606400, 27.611462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471237, 29.531504, 27.295351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647476, 29.860830, 27.152229>,  <37.753220, 30.058426, 27.066357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647476, 29.860830, 27.152229>,  <37.471237, 29.531504, 27.295351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647476, 29.860830, 27.152229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065382, -0.368085, -0.927490,
		-0.895321, 0.432043, -0.108346,
		0.440596, 0.823318, -0.357802,
		37.779655, 30.107826, 27.044889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174843, 29.563829, 26.587593>,  <37.471237, 29.531504, 27.295351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174843, 29.563829, 26.587593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452023, 29.851635, 26.569178>,  <37.618332, 30.024319, 26.558128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452023, 29.851635, 26.569178>,  <37.174843, 29.563829, 26.587593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452023, 29.851635, 26.569178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112363, -0.170845, -0.978870,
		-0.712175, 0.673136, -0.199234,
		0.692951, 0.719514, -0.046037,
		37.659908, 30.067490, 26.555367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972248, 29.928209, 26.049137>,  <37.174843, 29.563829, 26.587593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972248, 29.928209, 26.049137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359047, 30.009790, 26.110231>,  <37.591125, 30.058739, 26.146887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359047, 30.009790, 26.110231>,  <36.972248, 29.928209, 26.049137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359047, 30.009790, 26.110231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202428, -0.250872, -0.946618,
		-0.154749, 0.946291, -0.283877,
		0.966993, 0.203953, 0.152734,
		37.649143, 30.070976, 26.156052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278297, 30.112856, 25.430780>,  <36.972248, 29.928209, 26.049137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278297, 30.112856, 25.430780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637245, 30.064566, 25.600555>,  <37.852615, 30.035591, 25.702419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637245, 30.064566, 25.600555>,  <37.278297, 30.112856, 25.430780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637245, 30.064566, 25.600555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422675, -0.041122, -0.905348,
		0.126753, 0.991834, 0.014126,
		0.897374, -0.120726, 0.424435,
		37.906456, 30.028347, 25.727886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768341, 30.654558, 25.067541>,  <37.278297, 30.112856, 25.430780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768341, 30.654558, 25.067541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970066, 30.354675, 25.238941>,  <38.091099, 30.174746, 25.341782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970066, 30.354675, 25.238941>,  <37.768341, 30.654558, 25.067541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970066, 30.354675, 25.238941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566136, -0.087647, -0.819639,
		0.652045, 0.655942, 0.380234,
		0.504310, -0.749705, 0.428502,
		38.121361, 30.129765, 25.367493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471779, 30.739878, 24.891623>,  <37.768341, 30.654558, 25.067541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471779, 30.739878, 24.891623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446957, 30.353737, 24.993006>,  <38.432064, 30.122051, 25.053835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446957, 30.353737, 24.993006>,  <38.471779, 30.739878, 24.891623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446957, 30.353737, 24.993006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541966, -0.245839, -0.803639,
		0.838106, 0.087493, 0.538445,
		-0.062058, -0.965354, 0.253458,
		38.428341, 30.064131, 25.069042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198002, 30.574909, 24.878876>,  <38.471779, 30.739878, 24.891623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198002, 30.574909, 24.878876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962471, 30.251879, 24.865618>,  <38.821152, 30.058060, 24.857664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962471, 30.251879, 24.865618>,  <39.198002, 30.574909, 24.878876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962471, 30.251879, 24.865618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324884, -0.198938, -0.924594,
		0.740088, -0.555196, 0.379509,
		-0.588830, -0.807577, -0.033143,
		38.785824, 30.009605, 24.855675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572697, 30.059536, 24.566309>,  <39.198002, 30.574909, 24.878876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572697, 30.059536, 24.566309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194035, 29.934559, 24.534744>,  <38.966839, 29.859573, 24.515806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194035, 29.934559, 24.534744>,  <39.572697, 30.059536, 24.566309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194035, 29.934559, 24.534744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203468, -0.389620, -0.898219,
		0.249897, -0.866358, 0.432407,
		-0.946653, -0.312443, -0.078911,
		38.910038, 29.840826, 24.511070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.789303, 28.797138, 24.001074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154724, 28.859999, 24.151125>,  <34.373978, 28.897715, 24.241156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154724, 28.859999, 24.151125>,  <33.789303, 28.797138, 24.001074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154724, 28.859999, 24.151125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332084, -0.244282, 0.911069,
		0.234811, -0.956886, -0.170978,
		0.913556, 0.157150, 0.375126,
		34.428791, 28.907145, 24.263662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864532, 28.239277, 24.421484>,  <33.789303, 28.797138, 24.001074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864532, 28.239277, 24.421484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155529, 28.484144, 24.545422>,  <34.330128, 28.631065, 24.619783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155529, 28.484144, 24.545422>,  <33.864532, 28.239277, 24.421484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155529, 28.484144, 24.545422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060912, -0.392181, 0.917869,
		0.683405, -0.686618, -0.248021,
		0.727494, 0.612169, 0.309842,
		34.373775, 28.667795, 24.638374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420650, 27.863768, 24.865328>,  <33.864532, 28.239277, 24.421484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420650, 27.863768, 24.865328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493744, 28.247482, 24.951473>,  <34.537598, 28.477711, 25.003160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493744, 28.247482, 24.951473>,  <34.420650, 27.863768, 24.865328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493744, 28.247482, 24.951473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032176, -0.224767, 0.973881,
		0.982636, -0.171030, -0.071938,
		0.182732, 0.959286, 0.215361,
		34.548565, 28.535269, 25.016081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953754, 27.844788, 25.358133>,  <34.420650, 27.863768, 24.865328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953754, 27.844788, 25.358133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763123, 28.193491, 25.403584>,  <34.648743, 28.402712, 25.430853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763123, 28.193491, 25.403584>,  <34.953754, 27.844788, 25.358133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763123, 28.193491, 25.403584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111383, -0.068332, 0.991426,
		0.872046, 0.485151, -0.064533,
		-0.476581, 0.871757, 0.113626,
		34.620148, 28.455017, 25.437672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407570, 28.273067, 25.846832>,  <34.953754, 27.844788, 25.358133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407570, 28.273067, 25.846832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041531, 28.434216, 25.853739>,  <34.821907, 28.530905, 25.857882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041531, 28.434216, 25.853739>,  <35.407570, 28.273067, 25.846832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041531, 28.434216, 25.853739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002646, -0.036813, 0.999319,
		0.403232, 0.914516, 0.032621,
		-0.915094, 0.402871, 0.017264,
		34.767002, 28.555077, 25.858917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478813, 28.957996, 26.026936>,  <35.407570, 28.273067, 25.846832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478813, 28.957996, 26.026936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099419, 28.881409, 26.127907>,  <34.871784, 28.835457, 26.188490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099419, 28.881409, 26.127907>,  <35.478813, 28.957996, 26.026936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099419, 28.881409, 26.127907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156112, 0.410869, 0.898229,
		-0.275697, 0.891362, -0.359812,
		-0.948483, -0.191468, 0.252428,
		34.814873, 28.823969, 26.203634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180355, 29.605303, 26.453600>,  <35.478813, 28.957996, 26.026936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180355, 29.605303, 26.453600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951035, 29.284096, 26.518702>,  <34.813442, 29.091372, 26.557762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951035, 29.284096, 26.518702>,  <35.180355, 29.605303, 26.453600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951035, 29.284096, 26.518702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064720, 0.153634, 0.986006,
		-0.816784, 0.575813, -0.036108,
		-0.573302, -0.803017, 0.162753,
		34.779045, 29.043190, 26.567528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856121, 29.832525, 27.030317>,  <35.180355, 29.605303, 26.453600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856121, 29.832525, 27.030317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766876, 29.442650, 27.024675>,  <34.713329, 29.208725, 27.021290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.766876, 29.442650, 27.024675>,  <34.856121, 29.832525, 27.030317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766876, 29.442650, 27.024675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020732, -0.019212, 0.999601,
		-0.974572, 0.222733, 0.024494,
		-0.223115, -0.974690, -0.014105,
		34.699944, 29.150242, 27.020443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177128, 29.841022, 27.364809>,  <34.856121, 29.832525, 27.030317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177128, 29.841022, 27.364809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352409, 29.482059, 27.385334>,  <34.457581, 29.266682, 27.397650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352409, 29.482059, 27.385334>,  <34.177128, 29.841022, 27.364809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352409, 29.482059, 27.385334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161602, -0.022499, 0.986600,
		-0.884228, -0.440627, -0.154882,
		0.438208, -0.897408, 0.051312,
		34.483871, 29.212837, 27.400728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676636, 29.376625, 27.660419>,  <34.177128, 29.841022, 27.364809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676636, 29.376625, 27.660419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044380, 29.231932, 27.722284>,  <34.265026, 29.145115, 27.759403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044380, 29.231932, 27.722284>,  <33.676636, 29.376625, 27.660419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044380, 29.231932, 27.722284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162215, 0.009603, 0.986709,
		-0.358412, -0.932232, -0.049851,
		0.919362, -0.361735, 0.154664,
		34.320190, 29.123411, 27.768684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486462, 28.797361, 28.032505>,  <33.676636, 29.376625, 27.660419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486462, 28.797361, 28.032505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.875401, 28.869320, 28.092081>,  <34.108765, 28.912495, 28.127827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.875401, 28.869320, 28.092081>,  <33.486462, 28.797361, 28.032505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875401, 28.869320, 28.092081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110449, -0.207702, 0.971937,
		0.205781, -0.961508, -0.182088,
		0.972345, 0.179895, 0.148939,
		34.167103, 28.923288, 28.136763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709919, 28.248274, 28.404303>,  <33.486462, 28.797361, 28.032505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709919, 28.248274, 28.404303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.971603, 28.536768, 28.495361>,  <34.128613, 28.709866, 28.549997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.971603, 28.536768, 28.495361>,  <33.709919, 28.248274, 28.404303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971603, 28.536768, 28.495361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027969, -0.277722, 0.960254,
		0.755794, -0.634576, -0.161517,
		0.654211, 0.721237, 0.227649,
		34.167866, 28.753139, 28.563656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345455, 27.996971, 28.940416>,  <33.709919, 28.248274, 28.404303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345455, 27.996971, 28.940416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325474, 28.396353, 28.950180>,  <34.313484, 28.635981, 28.956038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325474, 28.396353, 28.950180>,  <34.345455, 27.996971, 28.940416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325474, 28.396353, 28.950180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203081, -0.013775, 0.979065,
		0.977887, 0.053868, -0.202079,
		-0.049957, 0.998453, 0.024410,
		34.310486, 28.695889, 28.957502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938343, 28.156702, 29.342812>,  <34.345455, 27.996971, 28.940416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938343, 28.156702, 29.342812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698631, 28.476862, 29.348791>,  <34.554806, 28.668959, 29.352379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698631, 28.476862, 29.348791>,  <34.938343, 28.156702, 29.342812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698631, 28.476862, 29.348791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044670, 0.014788, 0.998892,
		0.799294, 0.599282, -0.044616,
		-0.599278, 0.800401, 0.014950,
		34.518848, 28.716982, 29.353275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674934, 28.038481, 29.490971>,  <34.938343, 28.156702, 29.342812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674934, 28.038481, 29.490971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.818703, 27.675905, 29.579683>,  <35.904964, 27.458361, 29.632910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.818703, 27.675905, 29.579683>,  <35.674934, 28.038481, 29.490971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818703, 27.675905, 29.579683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075335, -0.265071, -0.961281,
		0.930130, 0.328797, -0.163558,
		0.359421, -0.906438, 0.221781,
		35.926529, 27.403975, 29.646217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324287, 27.908812, 29.097891>,  <35.674934, 28.038481, 29.490971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324287, 27.908812, 29.097891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171616, 27.552948, 29.198149>,  <36.080013, 27.339430, 29.258305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171616, 27.552948, 29.198149>,  <36.324287, 27.908812, 29.097891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171616, 27.552948, 29.198149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050071, -0.250876, -0.966723,
		0.922937, -0.381529, 0.051208,
		-0.381680, -0.889661, 0.250646,
		36.057110, 27.286049, 29.273342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585144, 27.503160, 28.678030>,  <36.324287, 27.908812, 29.097891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585144, 27.503160, 28.678030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321926, 27.236143, 28.817381>,  <36.163994, 27.075933, 28.900991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321926, 27.236143, 28.817381>,  <36.585144, 27.503160, 28.678030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321926, 27.236143, 28.817381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010553, -0.454443, -0.890714,
		0.752906, -0.589805, 0.291999,
		-0.658044, -0.667542, 0.348377,
		36.124512, 27.035881, 28.921894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847343, 26.775984, 28.842085>,  <36.585144, 27.503160, 28.678030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847343, 26.775984, 28.842085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455948, 26.753088, 28.762810>,  <36.221111, 26.739351, 28.715244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455948, 26.753088, 28.762810>,  <36.847343, 26.775984, 28.842085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455948, 26.753088, 28.762810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201285, -0.475193, -0.856549,
		-0.045149, -0.878018, 0.476494,
		-0.978492, -0.057239, -0.198187,
		36.162399, 26.735916, 28.703354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732533, 26.188311, 28.473793>,  <36.847343, 26.775984, 28.842085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732533, 26.188311, 28.473793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.392551, 26.383249, 28.393719>,  <36.188564, 26.500214, 28.345675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.392551, 26.383249, 28.393719>,  <36.732533, 26.188311, 28.473793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392551, 26.383249, 28.393719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039313, -0.437562, -0.898328,
		-0.525390, -0.755667, 0.391067,
		-0.849953, 0.487347, -0.200183,
		36.137566, 26.529453, 28.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209507, 25.578697, 28.197926>,  <36.732533, 26.188311, 28.473793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209507, 25.578697, 28.197926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.083542, 25.939621, 28.080172>,  <36.007961, 26.156176, 28.009520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.083542, 25.939621, 28.080172>,  <36.209507, 25.578697, 28.197926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083542, 25.939621, 28.080172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041761, -0.296693, -0.954060,
		-0.948200, -0.312742, 0.055751,
		-0.314916, 0.902311, -0.294385,
		35.989067, 26.210314, 27.991856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717686, 25.419264, 27.707373>,  <36.209507, 25.578697, 28.197926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717686, 25.419264, 27.707373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804523, 25.800871, 27.624702>,  <35.856628, 26.029835, 27.575100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.804523, 25.800871, 27.624702>,  <35.717686, 25.419264, 27.707373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804523, 25.800871, 27.624702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100171, -0.232381, -0.967453,
		-0.970996, 0.189330, -0.146015,
		0.217099, 0.954020, -0.206675,
		35.869652, 26.087076, 27.562700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298141, 25.666164, 27.100977>,  <35.717686, 25.419264, 27.707373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298141, 25.666164, 27.100977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605503, 25.922039, 27.093483>,  <35.789921, 26.075563, 27.088987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.605503, 25.922039, 27.093483>,  <35.298141, 25.666164, 27.100977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605503, 25.922039, 27.093483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074977, -0.119057, -0.990052,
		-0.635554, 0.759359, -0.139446,
		0.768407, 0.639687, -0.018733,
		35.836025, 26.113945, 27.087864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136963, 26.172129, 26.553085>,  <35.298141, 25.666164, 27.100977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136963, 26.172129, 26.553085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531109, 26.222252, 26.599319>,  <35.767597, 26.252325, 26.627060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.531109, 26.222252, 26.599319>,  <35.136963, 26.172129, 26.553085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531109, 26.222252, 26.599319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110886, 0.043872, -0.992864,
		-0.129483, 0.991148, 0.029335,
		0.985362, 0.125306, 0.115585,
		35.826717, 26.259844, 26.633995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356319, 26.720858, 26.155163>,  <35.136963, 26.172129, 26.553085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356319, 26.720858, 26.155163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.675087, 26.483738, 26.201668>,  <35.866348, 26.341467, 26.229570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.675087, 26.483738, 26.201668>,  <35.356319, 26.720858, 26.155163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675087, 26.483738, 26.201668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195775, 0.071369, -0.978048,
		0.571489, 0.802182, 0.172930,
		0.796915, -0.592799, 0.116261,
		35.914162, 26.305899, 26.236546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741268, 27.077518, 25.808443>,  <35.356319, 26.720858, 26.155163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741268, 27.077518, 25.808443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909920, 26.714867, 25.814804>,  <36.011112, 26.497276, 25.818621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909920, 26.714867, 25.814804>,  <35.741268, 27.077518, 25.808443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909920, 26.714867, 25.814804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323155, 0.133852, -0.936832,
		0.847230, 0.400136, 0.349417,
		0.421631, -0.906628, 0.015902,
		36.036407, 26.442879, 25.819574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486511, 27.208651, 25.714262>,  <35.741268, 27.077518, 25.808443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486511, 27.208651, 25.714262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371956, 26.838823, 25.613743>,  <36.303223, 26.616926, 25.553431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371956, 26.838823, 25.613743>,  <36.486511, 27.208651, 25.714262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371956, 26.838823, 25.613743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314703, 0.156957, -0.936123,
		0.904954, -0.347183, 0.246013,
		-0.286392, -0.924569, -0.251298,
		36.286037, 26.561453, 25.538353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030144, 27.106358, 25.200563>,  <36.486511, 27.208651, 25.714262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030144, 27.106358, 25.200563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768169, 26.811014, 25.136206>,  <36.610985, 26.633808, 25.097591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768169, 26.811014, 25.136206>,  <37.030144, 27.106358, 25.200563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768169, 26.811014, 25.136206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226405, 0.011411, -0.973966,
		0.720971, -0.674313, 0.159694,
		-0.654936, -0.738357, -0.160895,
		36.571690, 26.589506, 25.087936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323212, 26.762306, 24.746719>,  <37.030144, 27.106358, 25.200563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323212, 26.762306, 24.746719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939018, 26.666407, 24.690155>,  <36.708504, 26.608866, 24.656216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939018, 26.666407, 24.690155>,  <37.323212, 26.762306, 24.746719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939018, 26.666407, 24.690155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153463, -0.032272, -0.987627,
		0.232221, -0.970298, 0.067789,
		-0.960481, -0.239751, -0.141410,
		36.650875, 26.594482, 24.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775898, 26.167948, 24.868710>,  <37.323212, 26.762306, 24.746719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775898, 26.167948, 24.868710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171391, 26.115158, 24.840464>,  <38.408688, 26.083485, 24.823517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.171391, 26.115158, 24.840464>,  <37.775898, 26.167948, 24.868710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171391, 26.115158, 24.840464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132944, 0.557544, 0.819433,
		-0.068775, -0.819589, 0.568808,
		0.988734, -0.131976, -0.070615,
		38.468010, 26.075565, 24.819279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037388, 26.037525, 25.636868>,  <37.775898, 26.167948, 24.868710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037388, 26.037525, 25.636868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371517, 26.118147, 25.432276>,  <38.571995, 26.166519, 25.309521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371517, 26.118147, 25.432276>,  <38.037388, 26.037525, 25.636868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371517, 26.118147, 25.432276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323136, 0.572685, 0.753402,
		0.444769, -0.794611, 0.413247,
		0.835322, 0.201555, -0.511480,
		38.622112, 26.178614, 25.278831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518333, 25.920290, 26.075710>,  <38.037388, 26.037525, 25.636868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518333, 25.920290, 26.075710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722752, 26.154902, 25.824373>,  <38.845402, 26.295668, 25.673571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722752, 26.154902, 25.824373>,  <38.518333, 25.920290, 26.075710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722752, 26.154902, 25.824373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430325, 0.458223, 0.777722,
		0.744079, -0.667843, -0.018225,
		0.511046, 0.586529, -0.628344,
		38.876064, 26.330860, 25.635870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230270, 25.814632, 26.195646>,  <38.518333, 25.920290, 26.075710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230270, 25.814632, 26.195646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180103, 26.178997, 26.038416>,  <39.150005, 26.397617, 25.944078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180103, 26.178997, 26.038416>,  <39.230270, 25.814632, 26.195646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180103, 26.178997, 26.038416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383607, 0.409911, 0.827538,
		0.914941, -0.047002, -0.400841,
		-0.125413, 0.910914, -0.393074,
		39.142479, 26.452271, 25.920494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779705, 26.142033, 26.445929>,  <39.230270, 25.814632, 26.195646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779705, 26.142033, 26.445929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525246, 26.432987, 26.342987>,  <39.372570, 26.607559, 26.281223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525246, 26.432987, 26.342987>,  <39.779705, 26.142033, 26.445929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525246, 26.432987, 26.342987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328796, 0.557306, 0.762433,
		0.698005, 0.400402, -0.593689,
		-0.636146, 0.727385, -0.257352,
		39.334400, 26.651203, 26.265781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188564, 26.748184, 26.379242>,  <39.779705, 26.142033, 26.445929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188564, 26.748184, 26.379242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811710, 26.855427, 26.459738>,  <39.585598, 26.919773, 26.508036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811710, 26.855427, 26.459738>,  <40.188564, 26.748184, 26.379242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811710, 26.855427, 26.459738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326093, 0.593759, 0.735604,
		0.077731, 0.758663, -0.646829,
		-0.942137, 0.268106, 0.201241,
		39.529068, 26.935858, 26.520109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246334, 27.496605, 26.729034>,  <40.188564, 26.748184, 26.379242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246334, 27.496605, 26.729034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871048, 27.371284, 26.787813>,  <39.645878, 27.296093, 26.823080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871048, 27.371284, 26.787813>,  <40.246334, 27.496605, 26.729034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871048, 27.371284, 26.787813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069159, 0.585828, 0.807479,
		-0.339068, 0.747427, -0.571301,
		-0.938216, -0.313301, 0.146945,
		39.589584, 27.277294, 26.831896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943665, 28.077484, 27.151073>,  <40.246334, 27.496605, 26.729034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943665, 28.077484, 27.151073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677807, 27.782488, 27.198996>,  <39.518291, 27.605490, 27.227749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677807, 27.782488, 27.198996>,  <39.943665, 28.077484, 27.151073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677807, 27.782488, 27.198996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149500, 0.288373, 0.945775,
		-0.732049, 0.610695, -0.301921,
		-0.664647, -0.737490, 0.119804,
		39.478413, 27.561241, 27.234938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371872, 28.324535, 27.336311>,  <39.943665, 28.077484, 27.151073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371872, 28.324535, 27.336311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349167, 27.953573, 27.484203>,  <39.335545, 27.730997, 27.572939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349167, 27.953573, 27.484203>,  <39.371872, 28.324535, 27.336311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349167, 27.953573, 27.484203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192840, 0.373536, 0.907350,
		-0.979587, -0.019794, -0.200044,
		-0.056764, -0.927404, 0.369728,
		39.332138, 27.675352, 27.595121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741261, 28.260433, 27.648466>,  <39.371872, 28.324535, 27.336311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741261, 28.260433, 27.648466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964233, 27.969030, 27.807735>,  <39.098019, 27.794188, 27.903297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964233, 27.969030, 27.807735>,  <38.741261, 28.260433, 27.648466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964233, 27.969030, 27.807735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244166, 0.314537, 0.917306,
		-0.793505, -0.608558, -0.002543,
		0.557434, -0.728508, 0.398175,
		39.131462, 27.750479, 27.927189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264923, 27.971148, 28.224699>,  <38.741261, 28.260433, 27.648466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264923, 27.971148, 28.224699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636452, 27.838867, 28.291544>,  <38.859367, 27.759499, 28.331652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636452, 27.838867, 28.291544>,  <38.264923, 27.971148, 28.224699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636452, 27.838867, 28.291544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094683, 0.224207, 0.969931,
		-0.358226, -0.916716, 0.176936,
		0.928821, -0.330702, 0.167114,
		38.915100, 27.739656, 28.341679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189400, 27.636658, 28.934906>,  <38.264923, 27.971148, 28.224699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189400, 27.636658, 28.934906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.579163, 27.702473, 28.873644>,  <38.813019, 27.741962, 28.836887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.579163, 27.702473, 28.873644>,  <38.189400, 27.636658, 28.934906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579163, 27.702473, 28.873644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098189, 0.301350, 0.948445,
		0.202206, -0.939210, 0.277483,
		0.974408, 0.164536, -0.153155,
		38.871487, 27.751835, 28.827698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640865, 27.218962, 29.396217>,  <38.189400, 27.636658, 28.934906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640865, 27.218962, 29.396217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843166, 27.541386, 29.273264>,  <38.964546, 27.734840, 29.199492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843166, 27.541386, 29.273264>,  <38.640865, 27.218962, 29.396217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843166, 27.541386, 29.273264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185375, 0.246447, 0.951262,
		0.842528, -0.538082, -0.024783,
		0.505750, 0.806059, -0.307385,
		38.994892, 27.783203, 29.181047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305565, 27.126396, 29.826288>,  <38.640865, 27.218962, 29.396217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305565, 27.126396, 29.826288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246346, 27.496483, 29.686543>,  <39.210812, 27.718534, 29.602695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246346, 27.496483, 29.686543>,  <39.305565, 27.126396, 29.826288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246346, 27.496483, 29.686543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132905, 0.368664, 0.920012,
		0.980009, 0.089777, -0.177548,
		-0.148051, 0.925217, -0.349362,
		39.201931, 27.774048, 29.581734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.636681, 29.291046, 24.775620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318745, 29.378883, 24.549341>,  <39.127983, 29.431585, 24.413574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318745, 29.378883, 24.549341>,  <39.636681, 29.291046, 24.775620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318745, 29.378883, 24.549341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314391, -0.648336, -0.693411,
		-0.519030, -0.728999, 0.446283,
		-0.794837, 0.219594, -0.565696,
		39.080296, 29.444761, 24.379633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487675, 28.687010, 24.372654>,  <39.636681, 29.291046, 24.775620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487675, 28.687010, 24.372654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264355, 28.953285, 24.174599>,  <39.130363, 29.113050, 24.055765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.264355, 28.953285, 24.174599>,  <39.487675, 28.687010, 24.372654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264355, 28.953285, 24.174599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283808, -0.407559, -0.867957,
		-0.779586, -0.625104, 0.038613,
		-0.558300, 0.665688, -0.495137,
		39.096863, 29.152992, 24.026058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134254, 28.368280, 23.872215>,  <39.487675, 28.687010, 24.372654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134254, 28.368280, 23.872215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.191158, 28.739557, 23.734682>,  <39.225300, 28.962324, 23.652163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.191158, 28.739557, 23.734682>,  <39.134254, 28.368280, 23.872215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191158, 28.739557, 23.734682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047962, -0.353420, -0.934234,
		-0.988666, 0.116416, -0.094796,
		0.142263, 0.928192, -0.343831,
		39.233837, 29.018015, 23.631533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794086, 28.288895, 23.298283>,  <39.134254, 28.368280, 23.872215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794086, 28.288895, 23.298283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990192, 28.631857, 23.235689>,  <39.107857, 28.837635, 23.198133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.990192, 28.631857, 23.235689>,  <38.794086, 28.288895, 23.298283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990192, 28.631857, 23.235689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097168, -0.124653, -0.987431,
		-0.866138, 0.499313, 0.022199,
		0.490270, 0.857408, -0.156484,
		39.137272, 28.889080, 23.188744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440697, 28.591219, 22.761711>,  <38.794086, 28.288895, 23.298283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440697, 28.591219, 22.761711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788174, 28.789335, 22.758795>,  <38.996662, 28.908205, 22.757046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788174, 28.789335, 22.758795>,  <38.440697, 28.591219, 22.761711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788174, 28.789335, 22.758795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052288, -0.106326, -0.992956,
		-0.492578, 0.862195, -0.118263,
		0.868696, 0.495292, -0.007291,
		39.048782, 28.937923, 22.756607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394390, 29.079813, 22.169947>,  <38.440697, 28.591219, 22.761711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394390, 29.079813, 22.169947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.787006, 29.043051, 22.237040>,  <39.022575, 29.020994, 22.277294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.787006, 29.043051, 22.237040>,  <38.394390, 29.079813, 22.169947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787006, 29.043051, 22.237040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140111, -0.251431, -0.957680,
		0.130188, 0.963502, -0.233913,
		0.981539, -0.091905, 0.167731,
		39.081467, 29.015480, 22.287359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664776, 29.427185, 21.707935>,  <38.394390, 29.079813, 22.169947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664776, 29.427185, 21.707935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968899, 29.182808, 21.796196>,  <39.151371, 29.036182, 21.849152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968899, 29.182808, 21.796196>,  <38.664776, 29.427185, 21.707935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968899, 29.182808, 21.796196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230039, -0.064432, -0.971046,
		0.607470, 0.789049, 0.091552,
		0.760304, -0.610942, 0.220652,
		39.196991, 28.999525, 21.862392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252586, 29.631323, 21.252295>,  <38.664776, 29.427185, 21.707935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252586, 29.631323, 21.252295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320190, 29.252684, 21.362123>,  <39.360752, 29.025501, 21.428020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320190, 29.252684, 21.362123>,  <39.252586, 29.631323, 21.252295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320190, 29.252684, 21.362123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139357, -0.252829, -0.957422,
		0.975712, 0.200079, 0.089184,
		0.169012, -0.946597, 0.274571,
		39.370895, 28.968704, 21.444494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727551, 29.472237, 20.717333>,  <39.252586, 29.631323, 21.252295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727551, 29.472237, 20.717333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626022, 29.125059, 20.888094>,  <39.565105, 28.916752, 20.990551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626022, 29.125059, 20.888094>,  <39.727551, 29.472237, 20.717333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626022, 29.125059, 20.888094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055252, -0.427628, -0.902265,
		0.965671, -0.252604, 0.060587,
		-0.253824, -0.867943, 0.426905,
		39.549873, 28.864676, 21.016165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191055, 28.925425, 20.438923>,  <39.727551, 29.472237, 20.717333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191055, 28.925425, 20.438923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.859554, 28.744106, 20.570190>,  <39.660652, 28.635315, 20.648951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.859554, 28.744106, 20.570190>,  <40.191055, 28.925425, 20.438923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859554, 28.744106, 20.570190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131174, -0.412730, -0.901358,
		0.544026, -0.790050, 0.282590,
		-0.828751, -0.453294, 0.328170,
		39.610928, 28.608118, 20.668642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180763, 28.440292, 19.922195>,  <40.191055, 28.925425, 20.438923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180763, 28.440292, 19.922195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828617, 28.401558, 20.107916>,  <39.617329, 28.378317, 20.219347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828617, 28.401558, 20.107916>,  <40.180763, 28.440292, 19.922195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828617, 28.401558, 20.107916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332498, -0.572088, -0.749773,
		0.338225, -0.814456, 0.471451,
		-0.880369, -0.096835, 0.464299,
		39.564507, 28.372507, 20.247206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878498, 27.712011, 19.792145>,  <40.180763, 28.440292, 19.922195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878498, 27.712011, 19.792145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565472, 27.934288, 19.904432>,  <39.377655, 28.067654, 19.971804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565472, 27.934288, 19.904432>,  <39.878498, 27.712011, 19.792145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565472, 27.934288, 19.904432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552551, -0.412185, -0.724425,
		-0.286847, -0.722020, 0.629607,
		-0.782564, 0.555689, 0.280719,
		39.330704, 28.100994, 19.988647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136433, 27.093819, 19.746761>,  <39.878498, 27.712011, 19.792145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136433, 27.093819, 19.746761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739365, 27.053549, 19.719997>,  <39.501125, 27.029387, 19.703939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739365, 27.053549, 19.719997>,  <40.136433, 27.093819, 19.746761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739365, 27.053549, 19.719997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026411, 0.359513, -0.932766,
		0.117961, -0.927694, -0.354218,
		-0.992667, -0.100675, -0.066910,
		39.441566, 27.023346, 19.699924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957703, 26.488113, 19.280029>,  <40.136433, 27.093819, 19.746761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957703, 26.488113, 19.280029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707264, 26.797695, 19.317972>,  <39.556999, 26.983444, 19.340738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707264, 26.797695, 19.317972>,  <39.957703, 26.488113, 19.280029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707264, 26.797695, 19.317972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144653, 0.234827, -0.961214,
		-0.766211, -0.588091, -0.258979,
		-0.626096, 0.773954, 0.094858,
		39.519436, 27.029881, 19.346430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493023, 25.992155, 19.066319>,  <39.957703, 26.488113, 19.280029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493023, 25.992155, 19.066319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.215569, 25.705059, 19.090694>,  <39.049095, 25.532803, 19.105320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.215569, 25.705059, 19.090694>,  <39.493023, 25.992155, 19.066319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215569, 25.705059, 19.090694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042617, 0.043562, 0.998141,
		-0.719060, 0.694948, 0.000371,
		-0.693640, -0.717739, 0.060940,
		39.007477, 25.489737, 19.108976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072453, 26.222832, 19.594687>,  <39.493023, 25.992155, 19.066319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072453, 26.222832, 19.594687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.011387, 25.828737, 19.563702>,  <38.974747, 25.592279, 19.545111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.011387, 25.828737, 19.563702>,  <39.072453, 26.222832, 19.594687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011387, 25.828737, 19.563702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100892, -0.062437, 0.992936,
		-0.983115, 0.159397, -0.089871,
		-0.152660, -0.985238, -0.077464,
		38.965588, 25.533165, 19.540462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492649, 26.134701, 19.840332>,  <39.072453, 26.222832, 19.594687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492649, 26.134701, 19.840332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695713, 25.791609, 19.872780>,  <38.817551, 25.585754, 19.892248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695713, 25.791609, 19.872780>,  <38.492649, 26.134701, 19.840332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695713, 25.791609, 19.872780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307746, -0.092585, 0.946953,
		-0.804719, -0.505696, -0.310964,
		0.507661, -0.857729, 0.081121,
		38.848011, 25.534290, 19.897116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992111, 25.741840, 20.106113>,  <38.492649, 26.134701, 19.840332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992111, 25.741840, 20.106113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321167, 25.538351, 20.207672>,  <38.518600, 25.416258, 20.268608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321167, 25.538351, 20.207672>,  <37.992111, 25.741840, 20.106113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321167, 25.538351, 20.207672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350429, -0.102009, 0.931018,
		-0.447729, -0.854866, -0.262188,
		0.822641, -0.508722, 0.253897,
		38.567959, 25.385735, 20.283842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795158, 25.241678, 20.584593>,  <37.992111, 25.741840, 20.106113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795158, 25.241678, 20.584593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.180923, 25.307808, 20.667122>,  <38.412384, 25.347486, 20.716640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.180923, 25.307808, 20.667122>,  <37.795158, 25.241678, 20.584593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180923, 25.307808, 20.667122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215345, 0.038442, 0.975781,
		0.153390, -0.985489, 0.072676,
		0.964416, 0.165326, 0.206324,
		38.470249, 25.357405, 20.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855183, 24.800957, 21.110086>,  <37.795158, 25.241678, 20.584593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855183, 24.800957, 21.110086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173531, 25.040815, 21.143572>,  <38.364540, 25.184731, 21.163664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.173531, 25.040815, 21.143572>,  <37.855183, 24.800957, 21.110086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173531, 25.040815, 21.143572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016068, -0.117298, 0.992967,
		0.605251, -0.791620, -0.083719,
		0.795872, 0.599649, 0.083715,
		38.412292, 25.220711, 21.168686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343693, 24.442266, 21.539745>,  <37.855183, 24.800957, 21.110086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343693, 24.442266, 21.539745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472481, 24.819363, 21.574566>,  <38.549755, 25.045620, 21.595457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472481, 24.819363, 21.574566>,  <38.343693, 24.442266, 21.539745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472481, 24.819363, 21.574566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070267, -0.115487, 0.990820,
		0.944139, -0.312897, -0.103427,
		0.321969, 0.942739, 0.087049,
		38.569073, 25.102184, 21.600681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908340, 24.434309, 22.137688>,  <38.343693, 24.442266, 21.539745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908340, 24.434309, 22.137688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.789948, 24.814919, 22.104219>,  <38.718914, 25.043283, 22.084139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.789948, 24.814919, 22.104219>,  <38.908340, 24.434309, 22.137688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789948, 24.814919, 22.104219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162654, 0.136524, 0.977192,
		0.941244, 0.275620, -0.195177,
		-0.295980, 0.951522, -0.083672,
		38.701153, 25.100376, 22.079119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303120, 24.826519, 22.722666>,  <38.908340, 24.434309, 22.137688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303120, 24.826519, 22.722666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030334, 25.088926, 22.593323>,  <38.866661, 25.246370, 22.515717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030334, 25.088926, 22.593323>,  <39.303120, 24.826519, 22.722666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030334, 25.088926, 22.593323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013286, 0.453159, 0.891331,
		0.731263, 0.603561, -0.317755,
		-0.681966, 0.656019, -0.323360,
		38.825745, 25.285732, 22.496315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647964, 25.423021, 22.832632>,  <39.303120, 24.826519, 22.722666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647964, 25.423021, 22.832632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255852, 25.499119, 22.854004>,  <39.020584, 25.544777, 22.866827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.255852, 25.499119, 22.854004>,  <39.647964, 25.423021, 22.832632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255852, 25.499119, 22.854004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137708, 0.463790, 0.875177,
		0.141719, 0.865278, -0.480843,
		-0.980282, 0.190245, 0.053428,
		38.961769, 25.556192, 22.870031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593258, 26.021154, 23.191334>,  <39.647964, 25.423021, 22.832632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593258, 26.021154, 23.191334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217541, 25.887430, 23.222227>,  <38.992111, 25.807196, 23.240763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.217541, 25.887430, 23.222227>,  <39.593258, 26.021154, 23.191334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217541, 25.887430, 23.222227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020153, 0.170945, 0.985075,
		-0.342523, 0.926830, -0.153830,
		-0.939293, -0.334311, 0.077231,
		38.935753, 25.787136, 23.245396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162586, 26.540037, 23.608816>,  <39.593258, 26.021154, 23.191334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162586, 26.540037, 23.608816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938305, 26.208832, 23.609922>,  <38.803738, 26.010109, 23.610586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.938305, 26.208832, 23.609922>,  <39.162586, 26.540037, 23.608816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938305, 26.208832, 23.609922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292378, 0.201110, 0.934917,
		-0.774682, 0.523399, -0.354855,
		-0.560699, -0.828015, 0.002766,
		38.770096, 25.960428, 23.610752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523441, 26.755623, 23.768547>,  <39.162586, 26.540037, 23.608816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523441, 26.755623, 23.768547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540848, 26.370661, 23.875793>,  <38.551292, 26.139685, 23.940142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540848, 26.370661, 23.875793>,  <38.523441, 26.755623, 23.768547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540848, 26.370661, 23.875793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304606, 0.242810, 0.921010,
		-0.951484, -0.121744, -0.282589,
		0.043512, -0.962404, 0.268114,
		38.553902, 26.081940, 23.956228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905540, 26.551430, 24.281214>,  <38.523441, 26.755623, 23.768547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905540, 26.551430, 24.281214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228210, 26.316328, 24.305948>,  <38.421810, 26.175266, 24.320789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228210, 26.316328, 24.305948>,  <37.905540, 26.551430, 24.281214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228210, 26.316328, 24.305948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121928, 0.267888, 0.955704,
		-0.578285, -0.763400, 0.287762,
		0.806672, -0.587756, 0.061836,
		38.470211, 26.140001, 24.324499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231945, 26.186506, 24.166948>,  <37.905540, 26.551430, 24.281214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231945, 26.186506, 24.166948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866283, 26.342880, 24.209816>,  <36.646885, 26.436705, 24.235537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866283, 26.342880, 24.209816>,  <37.231945, 26.186506, 24.166948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866283, 26.342880, 24.209816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131454, -0.035817, -0.990675,
		-0.383450, -0.919721, 0.084133,
		-0.914158, 0.390934, 0.107167,
		36.592037, 26.460161, 24.241966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869781, 25.822306, 23.638527>,  <37.231945, 26.186506, 24.166948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869781, 25.822306, 23.638527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642788, 26.143307, 23.712234>,  <36.506592, 26.335907, 23.756458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642788, 26.143307, 23.712234>,  <36.869781, 25.822306, 23.638527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642788, 26.143307, 23.712234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255476, 0.041140, -0.965940,
		-0.782751, -0.595228, 0.181674,
		-0.567480, 0.802503, 0.184268,
		36.472546, 26.384058, 23.767515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282757, 25.788422, 23.270950>,  <36.869781, 25.822306, 23.638527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282757, 25.788422, 23.270950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296406, 26.184158, 23.327566>,  <36.304596, 26.421600, 23.361536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296406, 26.184158, 23.327566>,  <36.282757, 25.788422, 23.270950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296406, 26.184158, 23.327566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315690, 0.145042, -0.937711,
		-0.948249, -0.012687, 0.317275,
		0.034122, 0.989344, 0.141541,
		36.306641, 26.480961, 23.370028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690323, 26.123569, 22.936659>,  <36.282757, 25.788422, 23.270950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690323, 26.123569, 22.936659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944931, 26.430628, 22.966492>,  <36.097694, 26.614862, 22.984392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944931, 26.430628, 22.966492>,  <35.690323, 26.123569, 22.936659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944931, 26.430628, 22.966492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070037, 0.153835, -0.985611,
		-0.768074, 0.622137, 0.151682,
		0.636520, 0.767646, 0.074584,
		36.135887, 26.660921, 22.988867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366749, 26.685631, 22.637747>,  <35.690323, 26.123569, 22.936659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366749, 26.685631, 22.637747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753792, 26.781815, 22.607000>,  <35.986019, 26.839525, 22.588552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753792, 26.781815, 22.607000>,  <35.366749, 26.685631, 22.637747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753792, 26.781815, 22.607000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114421, 0.146324, -0.982597,
		-0.225029, 0.959566, 0.169098,
		0.967610, 0.240461, -0.076868,
		36.044075, 26.853952, 22.583941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327499, 27.109230, 22.106436>,  <35.366749, 26.685631, 22.637747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327499, 27.109230, 22.106436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722702, 27.048527, 22.117792>,  <35.959824, 27.012104, 22.124607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722702, 27.048527, 22.117792>,  <35.327499, 27.109230, 22.106436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722702, 27.048527, 22.117792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059261, 0.202951, -0.977394,
		0.142566, 0.967357, 0.209511,
		0.988010, -0.151759, 0.028393,
		36.019104, 27.002998, 22.126310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655315, 27.679230, 21.716434>,  <35.327499, 27.109230, 22.106436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655315, 27.679230, 21.716434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896473, 27.360600, 21.698626>,  <36.041168, 27.169420, 21.687941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896473, 27.360600, 21.698626>,  <35.655315, 27.679230, 21.716434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896473, 27.360600, 21.698626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011746, 0.064664, -0.997838,
		0.797734, 0.601068, 0.048342,
		0.602895, -0.796578, -0.044524,
		36.077343, 27.121626, 21.685268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959644, 28.397793, 21.742294>,  <35.655315, 27.679230, 21.716434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959644, 28.397793, 21.742294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.762096, 28.744888, 21.719973>,  <35.643566, 28.953146, 21.706579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.762096, 28.744888, 21.719973>,  <35.959644, 28.397793, 21.742294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762096, 28.744888, 21.719973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210520, -0.057056, 0.975923,
		0.843665, 0.493731, 0.210855,
		-0.493874, 0.867741, -0.055804,
		35.613934, 29.005211, 21.703232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234921, 28.819157, 22.239054>,  <35.959644, 28.397793, 21.742294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234921, 28.819157, 22.239054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865856, 28.959433, 22.174910>,  <35.644417, 29.043598, 22.136423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865856, 28.959433, 22.174910>,  <36.234921, 28.819157, 22.239054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865856, 28.959433, 22.174910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191024, -0.054421, 0.980075,
		0.334978, 0.934908, 0.117203,
		-0.922659, 0.350692, -0.160360,
		35.589058, 29.064640, 22.126802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189548, 29.338829, 22.665722>,  <36.234921, 28.819157, 22.239054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189548, 29.338829, 22.665722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816971, 29.216639, 22.586622>,  <35.593426, 29.143324, 22.539164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816971, 29.216639, 22.586622>,  <36.189548, 29.338829, 22.665722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816971, 29.216639, 22.586622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220634, 0.041939, 0.974455,
		-0.289379, 0.951276, -0.106462,
		-0.931440, -0.305476, -0.197747,
		35.537540, 29.124996, 22.527298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826538, 29.828033, 22.989992>,  <36.189548, 29.338829, 22.665722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826538, 29.828033, 22.989992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.580544, 29.516537, 22.940422>,  <35.432949, 29.329639, 22.910681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.580544, 29.516537, 22.940422>,  <35.826538, 29.828033, 22.989992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580544, 29.516537, 22.940422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314233, 0.097884, 0.944286,
		-0.723225, 0.619661, -0.304903,
		-0.614982, -0.778742, -0.123925,
		35.396049, 29.282913, 22.903244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203724, 30.110518, 23.284374>,  <35.826538, 29.828033, 22.989992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203724, 30.110518, 23.284374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121853, 29.719261, 23.269709>,  <35.072731, 29.484507, 23.260910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121853, 29.719261, 23.269709>,  <35.203724, 30.110518, 23.284374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121853, 29.719261, 23.269709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567579, 0.088086, 0.818593,
		-0.797470, 0.188361, -0.573203,
		-0.204682, -0.978142, -0.036664,
		35.060448, 29.425819, 23.258709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627872, 30.048285, 23.701157>,  <35.203724, 30.110518, 23.284374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627872, 30.048285, 23.701157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740765, 29.666162, 23.665968>,  <34.808498, 29.436890, 23.644855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740765, 29.666162, 23.665968>,  <34.627872, 30.048285, 23.701157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740765, 29.666162, 23.665968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474353, -0.218666, 0.852745,
		-0.833868, -0.198942, -0.514866,
		0.282231, -0.955305, -0.087970,
		34.825436, 29.379572, 23.639578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128284, 29.579147, 23.768190>,  <34.627872, 30.048285, 23.701157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128284, 29.579147, 23.768190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424782, 29.322914, 23.848402>,  <34.602680, 29.169174, 23.896530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424782, 29.322914, 23.848402>,  <34.128284, 29.579147, 23.768190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424782, 29.322914, 23.848402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504318, -0.334329, 0.796171,
		-0.442972, -0.691286, -0.570877,
		0.741242, -0.640584, 0.200530,
		34.647156, 29.130739, 23.908562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.674412, 31.562456, 20.174559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.791363, 31.183865, 20.229246>,  <37.861534, 30.956709, 20.262058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.791363, 31.183865, 20.229246>,  <37.674412, 31.562456, 20.174559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791363, 31.183865, 20.229246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072859, 0.120504, 0.990036,
		-0.953523, -0.299427, -0.033727,
		0.292380, -0.946479, 0.136719,
		37.879078, 30.899921, 20.270262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260715, 31.312479, 20.679510>,  <37.674412, 31.562456, 20.174559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260715, 31.312479, 20.679510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573128, 31.063396, 20.660601>,  <37.760574, 30.913946, 20.649254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.573128, 31.063396, 20.660601>,  <37.260715, 31.312479, 20.679510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573128, 31.063396, 20.660601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204503, 0.183499, 0.961513,
		-0.590065, -0.760635, 0.270663,
		0.781026, -0.622706, -0.047276,
		37.807434, 30.876585, 20.646418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211414, 30.893818, 21.236847>,  <37.260715, 31.312479, 20.679510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211414, 30.893818, 21.236847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.600437, 30.916683, 21.146633>,  <37.833851, 30.930403, 21.092505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.600437, 30.916683, 21.146633>,  <37.211414, 30.893818, 21.236847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600437, 30.916683, 21.146633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179850, 0.430249, 0.884613,
		0.147602, -0.900898, 0.408161,
		0.972557, 0.057163, -0.225533,
		37.892204, 30.933832, 21.078974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477444, 30.672470, 21.834858>,  <37.211414, 30.893818, 21.236847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477444, 30.672470, 21.834858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790066, 30.846453, 21.655979>,  <37.977638, 30.950842, 21.548653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.790066, 30.846453, 21.655979>,  <37.477444, 30.672470, 21.834858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790066, 30.846453, 21.655979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358750, 0.273090, 0.892592,
		0.510363, -0.858041, 0.057395,
		0.781555, 0.434956, -0.447198,
		38.024532, 30.976940, 21.521820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052383, 30.577917, 22.273079>,  <37.477444, 30.672470, 21.834858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052383, 30.577917, 22.273079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178051, 30.875467, 22.037132>,  <38.253452, 31.053997, 21.895565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178051, 30.875467, 22.037132>,  <38.052383, 30.577917, 22.273079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178051, 30.875467, 22.037132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348606, 0.487529, 0.800493,
		0.883046, -0.457123, -0.106152,
		0.314172, 0.743878, -0.589867,
		38.272301, 31.098631, 21.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790634, 30.721836, 22.464422>,  <38.052383, 30.577917, 22.273079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790634, 30.721836, 22.464422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632179, 31.045496, 22.290821>,  <38.537106, 31.239691, 22.186661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632179, 31.045496, 22.290821>,  <38.790634, 30.721836, 22.464422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632179, 31.045496, 22.290821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201719, 0.537814, 0.818575,
		0.895761, 0.236718, -0.376266,
		-0.396133, 0.809148, -0.434003,
		38.513340, 31.288240, 22.160620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228611, 31.232422, 22.546228>,  <38.790634, 30.721836, 22.464422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228611, 31.232422, 22.546228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.892120, 31.436544, 22.474758>,  <38.690228, 31.559019, 22.431875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.892120, 31.436544, 22.474758>,  <39.228611, 31.232422, 22.546228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892120, 31.436544, 22.474758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194956, 0.594514, 0.780093,
		0.504313, 0.621400, -0.599608,
		-0.841226, 0.510308, -0.178676,
		38.639751, 31.589636, 22.421156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374496, 31.974911, 22.664618>,  <39.228611, 31.232422, 22.546228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374496, 31.974911, 22.664618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975243, 31.988176, 22.685104>,  <38.735691, 31.996136, 22.697397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.975243, 31.988176, 22.685104>,  <39.374496, 31.974911, 22.664618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975243, 31.988176, 22.685104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058707, 0.750804, 0.657911,
		-0.016634, 0.659692, -0.751352,
		-0.998137, 0.033166, 0.051217,
		38.675800, 31.998127, 22.700470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140594, 32.663002, 22.511562>,  <39.374496, 31.974911, 22.664618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140594, 32.663002, 22.511562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.834717, 32.523521, 22.728323>,  <38.651192, 32.439835, 22.858379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.834717, 32.523521, 22.728323>,  <39.140594, 32.663002, 22.511562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834717, 32.523521, 22.728323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092081, 0.773185, 0.627460,
		-0.637784, 0.529712, -0.559139,
		-0.764691, -0.348698, 0.541902,
		38.605309, 32.418911, 22.890894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603901, 33.235191, 22.647341>,  <39.140594, 32.663002, 22.511562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603901, 33.235191, 22.647341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487587, 32.971237, 22.924469>,  <38.417801, 32.812866, 23.090746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487587, 32.971237, 22.924469>,  <38.603901, 33.235191, 22.647341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487587, 32.971237, 22.924469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040680, 0.731982, 0.680108,
		-0.955924, 0.169579, -0.239691,
		-0.290781, -0.659883, 0.692821,
		38.400352, 32.773273, 23.132315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206421, 33.706238, 23.048988>,  <38.603901, 33.235191, 22.647341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206421, 33.706238, 23.048988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278645, 33.371674, 23.255993>,  <38.321980, 33.170937, 23.380196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278645, 33.371674, 23.255993>,  <38.206421, 33.706238, 23.048988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278645, 33.371674, 23.255993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239342, 0.472980, 0.847942,
		-0.954000, -0.276962, -0.114789,
		0.180555, -0.836410, 0.517511,
		38.332809, 33.120750, 23.411245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506008, 33.472492, 23.352083>,  <38.206421, 33.706238, 23.048988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506008, 33.472492, 23.352083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821251, 33.370174, 23.576031>,  <38.010395, 33.308784, 23.710400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821251, 33.370174, 23.576031>,  <37.506008, 33.472492, 23.352083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821251, 33.370174, 23.576031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521182, 0.206631, 0.828054,
		-0.327498, -0.944390, 0.029532,
		0.788108, -0.255794, 0.559870,
		38.057682, 33.293438, 23.743992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913494, 32.978050, 23.390928>,  <37.506008, 33.472492, 23.352083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913494, 32.978050, 23.390928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.540192, 33.083141, 23.292934>,  <36.316212, 33.146194, 23.234138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.540192, 33.083141, 23.292934>,  <36.913494, 32.978050, 23.390928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540192, 33.083141, 23.292934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198017, -0.192760, -0.961058,
		-0.299718, -0.945420, 0.127869,
		-0.933251, 0.262727, -0.244983,
		36.260216, 33.161961, 23.219440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639652, 32.416142, 22.968180>,  <36.913494, 32.978050, 23.390928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639652, 32.416142, 22.968180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.419739, 32.739471, 22.883945>,  <36.287792, 32.933472, 22.833405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.419739, 32.739471, 22.883945>,  <36.639652, 32.416142, 22.968180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419739, 32.739471, 22.883945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052368, -0.218256, -0.974486,
		-0.833665, -0.546783, 0.077663,
		-0.549783, 0.808327, -0.210586,
		36.254803, 32.981968, 22.820770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137341, 32.142635, 22.511868>,  <36.639652, 32.416142, 22.968180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137341, 32.142635, 22.511868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171249, 32.534992, 22.441814>,  <36.191593, 32.770405, 22.399782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.171249, 32.534992, 22.441814>,  <36.137341, 32.142635, 22.511868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171249, 32.534992, 22.441814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135514, -0.185482, -0.973259,
		-0.987143, 0.058767, -0.148647,
		0.084767, 0.980889, -0.175134,
		36.196678, 32.829258, 22.389275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689682, 32.399910, 21.856112>,  <36.137341, 32.142635, 22.511868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689682, 32.399910, 21.856112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.916664, 32.724773, 21.910357>,  <36.052853, 32.919693, 21.942904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.916664, 32.724773, 21.910357>,  <35.689682, 32.399910, 21.856112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916664, 32.724773, 21.910357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062576, 0.121686, -0.990594,
		-0.821020, 0.570608, 0.018230,
		0.567459, 0.812157, 0.135613,
		36.086903, 32.968422, 21.951040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402294, 32.833809, 21.412350>,  <35.689682, 32.399910, 21.856112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402294, 32.833809, 21.412350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.766872, 32.984280, 21.478996>,  <35.985619, 33.074562, 21.518984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.766872, 32.984280, 21.478996>,  <35.402294, 32.833809, 21.412350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766872, 32.984280, 21.478996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178091, 0.004331, -0.984004,
		-0.370879, 0.926539, -0.063046,
		0.911445, 0.376174, 0.166615,
		36.040306, 33.097134, 21.528980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570343, 33.435680, 20.948303>,  <35.402294, 32.833809, 21.412350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570343, 33.435680, 20.948303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929966, 33.305592, 21.065554>,  <36.145741, 33.227539, 21.135904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929966, 33.305592, 21.065554>,  <35.570343, 33.435680, 20.948303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929966, 33.305592, 21.065554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295945, -0.041976, -0.954282,
		0.322658, 0.944706, 0.058509,
		0.899060, -0.325222, 0.293125,
		36.199684, 33.208023, 21.153492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073002, 33.751610, 20.479820>,  <35.570343, 33.435680, 20.948303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073002, 33.751610, 20.479820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279034, 33.441170, 20.625347>,  <36.402653, 33.254906, 20.712664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.279034, 33.441170, 20.625347>,  <36.073002, 33.751610, 20.479820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279034, 33.441170, 20.625347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487845, -0.083558, -0.868922,
		0.704767, 0.625053, 0.335576,
		0.515082, -0.776097, 0.363819,
		36.433559, 33.208340, 20.734493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674614, 33.865974, 20.224022>,  <36.073002, 33.751610, 20.479820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674614, 33.865974, 20.224022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713371, 33.478428, 20.315155>,  <36.736626, 33.245899, 20.369835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713371, 33.478428, 20.315155>,  <36.674614, 33.865974, 20.224022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713371, 33.478428, 20.315155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515617, -0.146935, -0.844126,
		0.851323, 0.199264, 0.485327,
		0.096893, -0.968867, 0.227833,
		36.742439, 33.187767, 20.383505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384510, 33.573154, 20.031744>,  <36.674614, 33.865974, 20.224022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384510, 33.573154, 20.031744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145855, 33.252644, 20.049541>,  <37.002663, 33.060337, 20.060221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145855, 33.252644, 20.049541>,  <37.384510, 33.573154, 20.031744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145855, 33.252644, 20.049541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287910, -0.265474, -0.920126,
		0.749087, -0.536171, 0.389087,
		-0.596637, -0.801277, 0.044494,
		36.966866, 33.012260, 20.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844017, 33.094074, 19.738895>,  <37.384510, 33.573154, 20.031744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844017, 33.094074, 19.738895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.465973, 32.965183, 19.717188>,  <37.239147, 32.887848, 19.704165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.465973, 32.965183, 19.717188>,  <37.844017, 33.094074, 19.738895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465973, 32.965183, 19.717188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162545, -0.319539, -0.933528,
		0.283465, -0.891104, 0.354375,
		-0.945107, -0.322225, -0.054267,
		37.182442, 32.868515, 19.700909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873627, 32.329529, 19.719761>,  <37.844017, 33.094074, 19.738895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873627, 32.329529, 19.719761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537731, 32.459957, 19.546087>,  <37.336193, 32.538212, 19.441883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537731, 32.459957, 19.546087>,  <37.873627, 32.329529, 19.719761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537731, 32.459957, 19.546087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276409, -0.431560, -0.858693,
		-0.467368, -0.841092, 0.272271,
		-0.839741, 0.326068, -0.434183,
		37.285809, 32.557777, 19.415833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700676, 31.751862, 19.256411>,  <37.873627, 32.329529, 19.719761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700676, 31.751862, 19.256411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.464211, 32.042576, 19.116522>,  <37.322330, 32.217003, 19.032589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.464211, 32.042576, 19.116522>,  <37.700676, 31.751862, 19.256411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464211, 32.042576, 19.116522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044268, -0.403711, -0.913815,
		-0.805334, -0.555698, 0.206487,
		-0.591166, 0.726785, -0.349722,
		37.286861, 32.260612, 19.011604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153683, 31.450058, 18.738869>,  <37.700676, 31.751862, 19.256411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153683, 31.450058, 18.738869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194324, 31.836657, 18.644587>,  <37.218712, 32.068615, 18.588018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194324, 31.836657, 18.644587>,  <37.153683, 31.450058, 18.738869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194324, 31.836657, 18.644587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153882, -0.249348, -0.956110,
		-0.982851, 0.060876, -0.174062,
		0.101606, 0.966499, -0.235704,
		37.224808, 32.126606, 18.573875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016823, 30.691944, 18.714741>,  <37.153683, 31.450058, 18.738869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016823, 30.691944, 18.714741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.706455, 30.440002, 18.700661>,  <36.520237, 30.288837, 18.692213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.706455, 30.440002, 18.700661>,  <37.016823, 30.691944, 18.714741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706455, 30.440002, 18.700661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042040, -0.107304, 0.993337,
		-0.629433, 0.769267, 0.109738,
		-0.775917, -0.629853, -0.035201,
		36.473679, 30.251047, 18.690100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757141, 30.845060, 19.285313>,  <37.016823, 30.691944, 18.714741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757141, 30.845060, 19.285313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580944, 30.497276, 19.195864>,  <36.475227, 30.288607, 19.142195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580944, 30.497276, 19.195864>,  <36.757141, 30.845060, 19.285313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580944, 30.497276, 19.195864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193604, -0.151228, 0.969354,
		-0.876633, 0.470286, -0.101716,
		-0.440491, -0.869461, -0.223621,
		36.448795, 30.236439, 19.128777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125439, 30.823755, 19.657890>,  <36.757141, 30.845060, 19.285313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125439, 30.823755, 19.657890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.187866, 30.433416, 19.596748>,  <36.225323, 30.199213, 19.560064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.187866, 30.433416, 19.596748>,  <36.125439, 30.823755, 19.657890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187866, 30.433416, 19.596748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458638, -0.208648, 0.863781,
		-0.874812, -0.064702, -0.480123,
		0.156065, -0.975848, -0.152853,
		36.234684, 30.140661, 19.550892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546139, 30.554276, 19.925972>,  <36.125439, 30.823755, 19.657890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546139, 30.554276, 19.925972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.793701, 30.242184, 19.889757>,  <35.942238, 30.054930, 19.868029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.793701, 30.242184, 19.889757>,  <35.546139, 30.554276, 19.925972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793701, 30.242184, 19.889757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357993, -0.382799, 0.851649,
		-0.699138, -0.494681, -0.516233,
		0.618908, -0.780228, -0.090537,
		35.979374, 30.008116, 19.862597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084713, 29.993553, 19.899303>,  <35.546139, 30.554276, 19.925972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084713, 29.993553, 19.899303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.449131, 29.879375, 20.018316>,  <35.667782, 29.810869, 20.089724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.449131, 29.879375, 20.018316>,  <35.084713, 29.993553, 19.899303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449131, 29.879375, 20.018316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408702, -0.529875, 0.743098,
		-0.054457, -0.798595, -0.599400,
		0.911041, -0.285443, 0.297532,
		35.722443, 29.793743, 20.107576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118122, 29.264729, 20.040243>,  <35.084713, 29.993553, 19.899303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118122, 29.264729, 20.040243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424953, 29.378866, 20.270086>,  <35.609051, 29.447350, 20.407991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424953, 29.378866, 20.270086>,  <35.118122, 29.264729, 20.040243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424953, 29.378866, 20.270086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371440, -0.532736, 0.760410,
		0.523093, -0.796724, -0.302661,
		0.767076, 0.285345, 0.574606,
		35.655075, 29.464470, 20.442469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326302, 28.677662, 20.490124>,  <35.118122, 29.264729, 20.040243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326302, 28.677662, 20.490124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.518383, 28.974028, 20.677935>,  <35.633633, 29.151846, 20.790621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.518383, 28.974028, 20.677935>,  <35.326302, 28.677662, 20.490124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518383, 28.974028, 20.677935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279346, -0.378238, 0.882554,
		0.831489, -0.554962, 0.025342,
		0.480199, 0.740913, 0.469528,
		35.662441, 29.196302, 20.818792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616302, 28.331802, 21.097868>,  <35.326302, 28.677662, 20.490124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616302, 28.331802, 21.097868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.611202, 28.725012, 21.171083>,  <35.608143, 28.960938, 21.215014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.611202, 28.725012, 21.171083>,  <35.616302, 28.331802, 21.097868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611202, 28.725012, 21.171083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137173, -0.183043, 0.973488,
		0.990465, -0.012691, 0.137179,
		-0.012755, 0.983023, 0.183039,
		35.607376, 29.019918, 21.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222401, 27.764442, 21.016178>,  <35.616302, 28.331802, 21.097868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222401, 27.764442, 21.016178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.270832, 27.397751, 21.168467>,  <36.299889, 27.177736, 21.259840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.270832, 27.397751, 21.168467>,  <36.222401, 27.764442, 21.016178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270832, 27.397751, 21.168467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289133, -0.334341, -0.897005,
		0.949601, 0.218685, 0.224576,
		0.121076, -0.916729, 0.380720,
		36.307156, 27.122732, 21.282682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870361, 27.580553, 20.782621>,  <36.222401, 27.764442, 21.016178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870361, 27.580553, 20.782621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.675453, 27.247236, 20.887075>,  <36.558510, 27.047247, 20.949747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.675453, 27.247236, 20.887075>,  <36.870361, 27.580553, 20.782621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675453, 27.247236, 20.887075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453730, -0.497096, -0.739611,
		0.746121, -0.241906, 0.620310,
		-0.487270, -0.833293, 0.261134,
		36.529270, 26.997248, 20.965416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386185, 27.050564, 20.850790>,  <36.870361, 27.580553, 20.782621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386185, 27.050564, 20.850790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.035011, 26.863234, 20.810970>,  <36.824306, 26.750835, 20.787079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.035011, 26.863234, 20.810970>,  <37.386185, 27.050564, 20.850790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035011, 26.863234, 20.810970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409568, -0.626904, -0.662757,
		0.247980, -0.622625, 0.742188,
		-0.877930, -0.468326, -0.099548,
		36.771633, 26.722736, 20.781105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404915, 26.405682, 20.897839>,  <37.386185, 27.050564, 20.850790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404915, 26.405682, 20.897839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.087776, 26.457729, 20.659693>,  <36.897491, 26.488958, 20.516806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.087776, 26.457729, 20.659693>,  <37.404915, 26.405682, 20.897839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087776, 26.457729, 20.659693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466147, -0.499804, -0.730002,
		-0.392554, -0.856309, 0.335614,
		-0.792849, 0.130120, -0.595366,
		36.849922, 26.496765, 20.481083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264854, 25.768230, 20.422047>,  <37.404915, 26.405682, 20.897839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264854, 25.768230, 20.422047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.045742, 26.044378, 20.233021>,  <36.914272, 26.210068, 20.119606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.045742, 26.044378, 20.233021>,  <37.264854, 25.768230, 20.422047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045742, 26.044378, 20.233021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242772, -0.409376, -0.879473,
		-0.800620, -0.596488, 0.056647,
		-0.547785, 0.690372, -0.472565,
		36.881405, 26.251490, 20.091251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847504, 25.385471, 19.958540>,  <37.264854, 25.768230, 20.422047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847504, 25.385471, 19.958540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.873562, 25.761253, 19.823971>,  <36.889198, 25.986723, 19.743229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.873562, 25.761253, 19.823971>,  <36.847504, 25.385471, 19.958540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873562, 25.761253, 19.823971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300953, -0.339939, -0.890993,
		-0.951411, -0.043200, -0.304878,
		0.065149, 0.939455, -0.336423,
		36.893108, 26.043089, 19.723043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713928, 25.286642, 19.308640>,  <36.847504, 25.385471, 19.958540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713928, 25.286642, 19.308640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872463, 25.653490, 19.291630>,  <36.967583, 25.873600, 19.281424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.872463, 25.653490, 19.291630>,  <36.713928, 25.286642, 19.308640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872463, 25.653490, 19.291630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354128, -0.195442, -0.914547,
		-0.847061, 0.347407, -0.402239,
		0.396334, 0.917121, -0.042524,
		36.991364, 25.928627, 19.278872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464367, 25.627300, 18.720655>,  <36.713928, 25.286642, 19.308640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464367, 25.627300, 18.720655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811291, 25.808622, 18.802914>,  <37.019444, 25.917416, 18.852268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811291, 25.808622, 18.802914>,  <36.464367, 25.627300, 18.720655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811291, 25.808622, 18.802914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231230, -0.001049, -0.972898,
		-0.440806, 0.891354, -0.105729,
		0.867308, 0.453307, 0.205645,
		37.071484, 25.944614, 18.864607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537212, 26.135494, 18.164234>,  <36.464367, 25.627300, 18.720655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537212, 26.135494, 18.164234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.896782, 26.065563, 18.324921>,  <37.112522, 26.023605, 18.421333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.896782, 26.065563, 18.324921>,  <36.537212, 26.135494, 18.164234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896782, 26.065563, 18.324921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372413, -0.178041, -0.910829,
		0.230760, 0.968368, -0.094937,
		0.898921, -0.174827, 0.401717,
		37.166458, 26.013115, 18.445436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.879189, 29.610037, 34.024105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278290, 29.592625, 34.003769>,  <36.517750, 29.582178, 33.991566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278290, 29.592625, 34.003769>,  <35.879189, 29.610037, 34.024105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278290, 29.592625, 34.003769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063765, -0.387478, -0.919671,
		0.020333, 0.920851, -0.389385,
		0.997758, -0.043529, -0.050839,
		36.577618, 29.579567, 33.988518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033104, 29.729715, 33.284248>,  <35.879189, 29.610037, 34.024105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033104, 29.729715, 33.284248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329815, 29.506134, 33.432484>,  <36.507843, 29.371984, 33.521427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329815, 29.506134, 33.432484>,  <36.033104, 29.729715, 33.284248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329815, 29.506134, 33.432484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212331, -0.328423, -0.920355,
		0.636147, 0.761386, -0.124933,
		0.741776, -0.558954, 0.370591,
		36.552349, 29.338448, 33.543659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643112, 29.867334, 32.812416>,  <36.033104, 29.729715, 33.284248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643112, 29.867334, 32.812416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684311, 29.522343, 33.010616>,  <36.709030, 29.315348, 33.129536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684311, 29.522343, 33.010616>,  <36.643112, 29.867334, 32.812416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684311, 29.522343, 33.010616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184005, -0.473032, -0.861617,
		0.977514, 0.179916, 0.109981,
		0.102994, -0.862480, 0.495501,
		36.715210, 29.263599, 33.159267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082245, 29.523367, 32.448723>,  <36.643112, 29.867334, 32.812416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082245, 29.523367, 32.448723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925564, 29.225538, 32.664940>,  <36.831554, 29.046841, 32.794670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925564, 29.225538, 32.664940>,  <37.082245, 29.523367, 32.448723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925564, 29.225538, 32.664940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077629, -0.558646, -0.825765,
		0.916811, -0.365417, 0.161023,
		-0.391703, -0.744571, 0.540540,
		36.808052, 29.002167, 32.827103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515038, 29.034809, 32.427021>,  <37.082245, 29.523367, 32.448723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515038, 29.034809, 32.427021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167336, 28.850334, 32.498249>,  <36.958714, 28.739649, 32.540985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167336, 28.850334, 32.498249>,  <37.515038, 29.034809, 32.427021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167336, 28.850334, 32.498249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140110, -0.575247, -0.805891,
		0.474099, -0.675573, 0.564651,
		-0.869252, -0.461185, 0.178070,
		36.906559, 28.711979, 32.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575764, 28.377447, 32.229000>,  <37.515038, 29.034809, 32.427021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575764, 28.377447, 32.229000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176460, 28.395523, 32.244186>,  <36.936878, 28.406368, 32.253296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176460, 28.395523, 32.244186>,  <37.575764, 28.377447, 32.229000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176460, 28.395523, 32.244186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058552, -0.677554, -0.733139,
		-0.007407, -0.734083, 0.679019,
		-0.998257, 0.045189, 0.037963,
		36.876984, 28.409081, 32.255577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325111, 27.650372, 32.264191>,  <37.575764, 28.377447, 32.229000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325111, 27.650372, 32.264191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988831, 27.838560, 32.156948>,  <36.787064, 27.951473, 32.092602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988831, 27.838560, 32.156948>,  <37.325111, 27.650372, 32.264191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988831, 27.838560, 32.156948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131978, -0.658211, -0.741175,
		-0.525175, -0.587719, 0.615449,
		-0.840698, 0.470472, -0.268110,
		36.736622, 27.979702, 32.076515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829388, 27.185463, 32.135181>,  <37.325111, 27.650372, 32.264191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829388, 27.185463, 32.135181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697193, 27.497108, 31.922104>,  <36.617878, 27.684095, 31.794258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697193, 27.497108, 31.922104>,  <36.829388, 27.185463, 32.135181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697193, 27.497108, 31.922104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301898, -0.622021, -0.722460,
		-0.894224, -0.077944, 0.440781,
		-0.330486, 0.779112, -0.532695,
		36.598045, 27.730843, 31.762295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369545, 26.813204, 31.714058>,  <36.829388, 27.185463, 32.135181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369545, 26.813204, 31.714058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373726, 27.179771, 31.554024>,  <36.376236, 27.399712, 31.458004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373726, 27.179771, 31.554024>,  <36.369545, 26.813204, 31.714058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373726, 27.179771, 31.554024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385720, -0.365446, -0.847153,
		-0.922557, 0.163178, 0.349660,
		0.010455, 0.916418, -0.400086,
		36.376862, 27.454697, 31.433998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611679, 26.985100, 31.384668>,  <36.369545, 26.813204, 31.714058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611679, 26.985100, 31.384668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880386, 27.218702, 31.202387>,  <36.041611, 27.358864, 31.093018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880386, 27.218702, 31.202387>,  <35.611679, 26.985100, 31.384668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880386, 27.218702, 31.202387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370744, -0.267523, -0.889371,
		-0.641308, 0.766400, 0.036802,
		0.671769, 0.584005, -0.455703,
		36.081917, 27.393904, 31.065676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262806, 27.418249, 30.745159>,  <35.611679, 26.985100, 31.384668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262806, 27.418249, 30.745159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653542, 27.405844, 30.660469>,  <35.887981, 27.398401, 30.609655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653542, 27.405844, 30.660469>,  <35.262806, 27.418249, 30.745159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653542, 27.405844, 30.660469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213977, -0.150920, -0.965110,
		-0.002024, 0.988059, -0.154060,
		0.976837, -0.031012, -0.211727,
		35.946594, 27.396540, 30.596951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433495, 27.918564, 30.150423>,  <35.262806, 27.418249, 30.745159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433495, 27.918564, 30.150423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695286, 27.616135, 30.148857>,  <35.852360, 27.434677, 30.147917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695286, 27.616135, 30.148857>,  <35.433495, 27.918564, 30.150423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695286, 27.616135, 30.148857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316295, -0.269082, -0.909699,
		0.686743, 0.596617, -0.415250,
		0.654478, -0.756071, -0.003917,
		35.891628, 27.389313, 30.147682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258110, 28.712978, 29.934399>,  <35.433495, 27.918564, 30.150423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258110, 28.712978, 29.934399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877285, 28.819530, 29.874245>,  <34.648788, 28.883461, 29.838152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877285, 28.819530, 29.874245>,  <35.258110, 28.712978, 29.934399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877285, 28.819530, 29.874245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131419, 0.087752, 0.987436,
		0.276230, 0.959865, -0.048538,
		-0.952064, 0.266381, -0.150384,
		34.591667, 28.899445, 29.829130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133892, 29.249552, 30.272493>,  <35.258110, 28.712978, 29.934399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133892, 29.249552, 30.272493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755161, 29.129890, 30.225115>,  <34.527924, 29.058094, 30.196688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755161, 29.129890, 30.225115>,  <35.133892, 29.249552, 30.272493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755161, 29.129890, 30.225115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187501, 0.213860, 0.958701,
		-0.261467, 0.929931, -0.258579,
		-0.946825, -0.299152, -0.118446,
		34.471115, 29.040144, 30.189581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795311, 29.570044, 30.796606>,  <35.133892, 29.249552, 30.272493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795311, 29.570044, 30.796606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529011, 29.289665, 30.694275>,  <34.369228, 29.121439, 30.632875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529011, 29.289665, 30.694275>,  <34.795311, 29.570044, 30.796606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529011, 29.289665, 30.694275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281299, -0.081788, 0.956129,
		-0.691118, 0.708510, -0.142724,
		-0.665753, -0.700945, -0.255828,
		34.329285, 29.079382, 30.617527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140553, 29.765070, 31.190983>,  <34.795311, 29.570044, 30.796606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140553, 29.765070, 31.190983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100788, 29.380428, 31.088659>,  <34.076927, 29.149643, 31.027266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100788, 29.380428, 31.088659>,  <34.140553, 29.765070, 31.190983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100788, 29.380428, 31.088659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440944, -0.187887, 0.877649,
		-0.892012, 0.200047, -0.405334,
		-0.099414, -0.961603, -0.255807,
		34.070965, 29.091948, 31.011917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506378, 29.655651, 31.328955>,  <34.140553, 29.765070, 31.190983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506378, 29.655651, 31.328955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664715, 29.288393, 31.321833>,  <33.759716, 29.068039, 31.317558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664715, 29.288393, 31.321833>,  <33.506378, 29.655651, 31.328955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664715, 29.288393, 31.321833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359304, -0.172694, 0.917102,
		-0.845109, -0.356630, -0.398253,
		0.395842, -0.918146, -0.017807,
		33.783466, 29.012949, 31.316490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924782, 29.073019, 31.335798>,  <33.506378, 29.655651, 31.328955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924782, 29.073019, 31.335798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275009, 28.952896, 31.487165>,  <33.485146, 28.880823, 31.577986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275009, 28.952896, 31.487165>,  <32.924782, 29.073019, 31.335798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275009, 28.952896, 31.487165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414926, -0.066290, 0.907437,
		-0.247425, -0.951536, -0.182647,
		0.875567, -0.300307, 0.378416,
		33.537678, 28.862804, 31.600691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595379, 28.717752, 31.911263>,  <32.924782, 29.073019, 31.335798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595379, 28.717752, 31.911263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983883, 28.725800, 32.006134>,  <33.216984, 28.730627, 32.063057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983883, 28.725800, 32.006134>,  <32.595379, 28.717752, 31.911263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983883, 28.725800, 32.006134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238023, 0.075165, 0.968347,
		0.001655, -0.996968, 0.077793,
		0.971258, 0.020119, 0.237177,
		33.275261, 28.731834, 32.077286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780220, 28.217943, 32.538174>,  <32.595379, 28.717752, 31.911263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780220, 28.217943, 32.538174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068062, 28.494246, 32.509823>,  <33.240768, 28.660027, 32.492813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068062, 28.494246, 32.509823>,  <32.780220, 28.217943, 32.538174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068062, 28.494246, 32.509823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065125, 0.168765, 0.983503,
		0.691324, -0.703116, 0.166430,
		0.719604, 0.690758, -0.070881,
		33.283943, 28.701473, 32.488560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358143, 28.085407, 33.062336>,  <32.780220, 28.217943, 32.538174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358143, 28.085407, 33.062336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359795, 28.474438, 32.969318>,  <33.360786, 28.707857, 32.913509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359795, 28.474438, 32.969318>,  <33.358143, 28.085407, 33.062336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359795, 28.474438, 32.969318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004377, 0.232524, 0.972581,
		0.999982, -0.005036, -0.003297,
		0.004132, 0.972578, -0.232542,
		33.361034, 28.766211, 32.899555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791286, 28.497496, 33.657845>,  <33.358143, 28.085407, 33.062336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791286, 28.497496, 33.657845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600235, 28.771252, 33.437485>,  <33.485603, 28.935505, 33.305271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600235, 28.771252, 33.437485>,  <33.791286, 28.497496, 33.657845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600235, 28.771252, 33.437485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152199, 0.553106, 0.819090,
		0.865281, 0.475063, -0.160014,
		-0.477624, 0.684389, -0.550896,
		33.456947, 28.976568, 33.272217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078453, 29.149012, 33.963009>,  <33.791286, 28.497496, 33.657845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078453, 29.149012, 33.963009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737076, 29.234680, 33.772949>,  <33.532249, 29.286081, 33.658913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737076, 29.234680, 33.772949>,  <34.078453, 29.149012, 33.963009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737076, 29.234680, 33.772949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382240, 0.362551, 0.849970,
		0.354307, 0.907021, -0.227551,
		-0.853440, 0.214171, -0.475154,
		33.481045, 29.298931, 33.630402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975803, 29.845613, 34.133419>,  <34.078453, 29.149012, 33.963009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975803, 29.845613, 34.133419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621956, 29.686098, 34.036743>,  <33.409649, 29.590389, 33.978737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621956, 29.686098, 34.036743>,  <33.975803, 29.845613, 34.133419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621956, 29.686098, 34.036743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456558, 0.635233, 0.622923,
		-0.094882, 0.661397, -0.744010,
		-0.884619, -0.398789, -0.241694,
		33.356571, 29.566462, 33.964233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439049, 30.443243, 34.202675>,  <33.975803, 29.845613, 34.133419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439049, 30.443243, 34.202675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221153, 30.107897, 34.210732>,  <33.090416, 29.906689, 34.215565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221153, 30.107897, 34.210732>,  <33.439049, 30.443243, 34.202675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221153, 30.107897, 34.210732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614354, 0.415302, 0.670890,
		-0.570814, 0.353086, -0.741283,
		-0.544739, -0.838364, 0.020141,
		33.057732, 29.856388, 34.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704845, 30.656170, 34.072491>,  <33.439049, 30.443243, 34.202675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704845, 30.656170, 34.072491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.698338, 30.290771, 34.235100>,  <32.694431, 30.071533, 34.332664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.698338, 30.290771, 34.235100>,  <32.704845, 30.656170, 34.072491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698338, 30.290771, 34.235100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367374, 0.383601, 0.847282,
		-0.929931, -0.135560, -0.341836,
		-0.016271, -0.913495, 0.406524,
		32.693455, 30.016724, 34.357056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846153, 30.884901, 33.412628>,  <32.704845, 30.656170, 34.072491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846153, 30.884901, 33.412628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822018, 31.278576, 33.479240>,  <32.807537, 31.514782, 33.519207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.822018, 31.278576, 33.479240>,  <32.846153, 30.884901, 33.412628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822018, 31.278576, 33.479240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282335, 0.176850, -0.942874,
		-0.957416, -0.009871, -0.288541,
		-0.060336, 0.984188, 0.166532,
		32.803917, 31.573832, 33.529202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374329, 31.297123, 32.903221>,  <32.846153, 30.884901, 33.412628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374329, 31.297123, 32.903221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660961, 31.529133, 33.058186>,  <32.832939, 31.668339, 33.151165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660961, 31.529133, 33.058186>,  <32.374329, 31.297123, 32.903221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660961, 31.529133, 33.058186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351144, 0.179917, -0.918873,
		-0.602670, 0.794482, -0.074748,
		0.716580, 0.580025, 0.387408,
		32.875935, 31.703140, 33.174408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416916, 31.875690, 32.558132>,  <32.374329, 31.297123, 32.903221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416916, 31.875690, 32.558132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771034, 31.817139, 32.734688>,  <32.983505, 31.782007, 32.840622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771034, 31.817139, 32.734688>,  <32.416916, 31.875690, 32.558132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771034, 31.817139, 32.734688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463209, 0.361398, -0.809215,
		-0.041063, 0.920850, 0.387749,
		0.885297, -0.146380, 0.441386,
		33.036625, 31.773224, 32.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750172, 32.498138, 32.565994>,  <32.416916, 31.875690, 32.558132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750172, 32.498138, 32.565994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022278, 32.206108, 32.591995>,  <33.185543, 32.030888, 32.607597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022278, 32.206108, 32.591995>,  <32.750172, 32.498138, 32.565994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022278, 32.206108, 32.591995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384022, 0.279464, -0.880015,
		0.624313, 0.623607, 0.470475,
		0.680265, -0.730078, 0.065006,
		33.226357, 31.987085, 32.611496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341980, 32.867554, 32.453987>,  <32.750172, 32.498138, 32.565994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341980, 32.867554, 32.453987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419071, 32.487843, 32.354614>,  <33.465324, 32.260014, 32.294991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419071, 32.487843, 32.354614>,  <33.341980, 32.867554, 32.453987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419071, 32.487843, 32.354614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386020, 0.306113, -0.870220,
		0.902133, 0.071816, 0.425439,
		0.192728, -0.949282, -0.248433,
		33.476891, 32.203056, 32.280083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976040, 32.887352, 32.074268>,  <33.341980, 32.867554, 32.453987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976040, 32.887352, 32.074268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824284, 32.531067, 31.974117>,  <33.733231, 32.317295, 31.914026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824284, 32.531067, 31.974117>,  <33.976040, 32.887352, 32.074268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824284, 32.531067, 31.974117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316010, 0.129589, -0.939864,
		0.869597, -0.435699, 0.232309,
		-0.379393, -0.890715, -0.250376,
		33.710464, 32.263851, 31.899004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511402, 32.507877, 31.776659>,  <33.976040, 32.887352, 32.074268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511402, 32.507877, 31.776659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165760, 32.364861, 31.634968>,  <33.958374, 32.279049, 31.549953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165760, 32.364861, 31.634968>,  <34.511402, 32.507877, 31.776659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165760, 32.364861, 31.634968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317872, 0.157986, -0.934879,
		0.390226, -0.920435, -0.022863,
		-0.864107, -0.357546, -0.354230,
		33.906528, 32.257595, 31.528698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700676, 32.192410, 31.251789>,  <34.511402, 32.507877, 31.776659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700676, 32.192410, 31.251789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311760, 32.201126, 31.158686>,  <34.078411, 32.206356, 31.102823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311760, 32.201126, 31.158686>,  <34.700676, 32.192410, 31.251789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311760, 32.201126, 31.158686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232204, 0.205295, -0.950755,
		0.027065, -0.978457, -0.204666,
		-0.972291, 0.021792, -0.232758,
		34.020073, 32.207664, 31.088858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632946, 31.640610, 30.792665>,  <34.700676, 32.192410, 31.251789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632946, 31.640610, 30.792665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334538, 31.898945, 30.727747>,  <34.155491, 32.053947, 30.688797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.334538, 31.898945, 30.727747>,  <34.632946, 31.640610, 30.792665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334538, 31.898945, 30.727747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280367, 0.083562, -0.956249,
		-0.604020, -0.758888, -0.243410,
		-0.746025, 0.645838, -0.162294,
		34.110729, 32.092697, 30.679058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379963, 31.378639, 30.195822>,  <34.632946, 31.640610, 30.792665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379963, 31.378639, 30.195822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242252, 31.752968, 30.226049>,  <34.159626, 31.977566, 30.244186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242252, 31.752968, 30.226049>,  <34.379963, 31.378639, 30.195822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242252, 31.752968, 30.226049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202877, 0.152739, -0.967219,
		-0.916687, -0.317658, -0.242441,
		-0.344275, 0.935823, 0.075569,
		34.138969, 32.033714, 30.248720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942211, 31.438948, 29.598053>,  <34.379963, 31.378639, 30.195822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942211, 31.438948, 29.598053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009830, 31.819866, 29.699686>,  <34.050404, 32.048416, 29.760666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009830, 31.819866, 29.699686>,  <33.942211, 31.438948, 29.598053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009830, 31.819866, 29.699686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084561, 0.242829, -0.966377,
		-0.981973, 0.184851, -0.039477,
		0.169049, 0.952294, 0.254083,
		34.060547, 32.105553, 29.775911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500061, 31.875572, 29.173107>,  <33.942211, 31.438948, 29.598053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500061, 31.875572, 29.173107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787758, 32.132046, 29.280119>,  <33.960377, 32.285931, 29.344326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787758, 32.132046, 29.280119>,  <33.500061, 31.875572, 29.173107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787758, 32.132046, 29.280119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227100, 0.146940, -0.962722,
		-0.656592, 0.753188, -0.039927,
		0.719244, 0.641183, 0.267529,
		34.003532, 32.324402, 29.360378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379669, 32.420036, 28.744637>,  <33.500061, 31.875572, 29.173107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379669, 32.420036, 28.744637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755024, 32.441212, 28.881235>,  <33.980236, 32.453918, 28.963194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755024, 32.441212, 28.881235>,  <33.379669, 32.420036, 28.744637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755024, 32.441212, 28.881235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325654, 0.195206, -0.925119,
		-0.115639, 0.979332, 0.165939,
		0.938391, 0.052941, 0.341497,
		34.036541, 32.457092, 28.983685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634785, 33.049335, 28.456650>,  <33.379669, 32.420036, 28.744637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634785, 33.049335, 28.456650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978081, 32.884243, 28.578680>,  <34.184059, 32.785187, 28.651897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978081, 32.884243, 28.578680>,  <33.634785, 33.049335, 28.456650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978081, 32.884243, 28.578680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457418, 0.345513, -0.819384,
		0.232776, 0.842778, 0.485325,
		0.858245, -0.412729, 0.305075,
		34.235554, 32.760426, 28.670202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165306, 33.485851, 28.193287>,  <33.634785, 33.049335, 28.456650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165306, 33.485851, 28.193287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341362, 33.132015, 28.254972>,  <34.446995, 32.919712, 28.291983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341362, 33.132015, 28.254972>,  <34.165306, 33.485851, 28.193287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341362, 33.132015, 28.254972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556530, 0.133963, -0.819956,
		0.704666, 0.446716, 0.551263,
		0.440136, -0.884590, 0.154212,
		34.473404, 32.866638, 28.301235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918251, 33.458736, 28.312624>,  <34.165306, 33.485851, 28.193287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918251, 33.458736, 28.312624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863556, 33.078674, 28.200550>,  <34.830738, 32.850636, 28.133307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863556, 33.078674, 28.200550>,  <34.918251, 33.458736, 28.312624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863556, 33.078674, 28.200550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703060, 0.106170, -0.703160,
		0.697860, -0.293137, 0.653500,
		-0.136741, -0.950157, -0.280185,
		34.822533, 32.793629, 28.116495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555523, 33.302078, 27.853453>,  <34.918251, 33.458736, 28.312624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555523, 33.302078, 27.853453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302769, 32.997921, 27.793428>,  <35.151115, 32.815426, 27.757414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302769, 32.997921, 27.793428>,  <35.555523, 33.302078, 27.853453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302769, 32.997921, 27.793428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448144, -0.200482, -0.871191,
		0.632366, -0.617742, 0.467448,
		-0.631886, -0.760396, -0.150059,
		35.113201, 32.769802, 27.748411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004780, 32.756298, 27.774450>,  <35.555523, 33.302078, 27.853453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004780, 32.756298, 27.774450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646473, 32.694408, 27.607756>,  <35.431488, 32.657276, 27.507740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646473, 32.694408, 27.607756>,  <36.004780, 32.756298, 27.774450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646473, 32.694408, 27.607756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429559, -0.060038, -0.901041,
		0.114391, -0.986132, 0.120242,
		-0.895764, -0.154722, -0.416734,
		35.377743, 32.647991, 27.482735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046387, 32.135029, 27.268745>,  <36.004780, 32.756298, 27.774450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046387, 32.135029, 27.268745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715157, 32.330322, 27.158527>,  <35.516418, 32.447498, 27.092396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715157, 32.330322, 27.158527>,  <36.046387, 32.135029, 27.268745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715157, 32.330322, 27.158527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245198, -0.126592, -0.961172,
		-0.504157, -0.863484, -0.014886,
		-0.828073, 0.488232, -0.275547,
		35.466736, 32.476791, 27.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692265, 31.651028, 26.725243>,  <36.046387, 32.135029, 27.268745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692265, 31.651028, 26.725243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581776, 32.032402, 26.676817>,  <35.515484, 32.261227, 26.647760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581776, 32.032402, 26.676817>,  <35.692265, 31.651028, 26.725243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581776, 32.032402, 26.676817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309577, -0.030988, -0.950369,
		-0.909870, -0.299993, -0.286602,
		-0.276223, 0.953438, -0.121066,
		35.498909, 32.318432, 26.640497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397484, 31.644913, 26.042397>,  <35.692265, 31.651028, 26.725243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397484, 31.644913, 26.042397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433617, 32.038765, 26.102180>,  <35.455296, 32.275078, 26.138050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433617, 32.038765, 26.102180>,  <35.397484, 31.644913, 26.042397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433617, 32.038765, 26.102180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231204, 0.125237, -0.964811,
		-0.968702, 0.121713, -0.216337,
		0.090337, 0.984633, 0.149458,
		35.460716, 32.334156, 26.147018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989510, 31.890921, 25.480598>,  <35.397484, 31.644913, 26.042397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989510, 31.890921, 25.480598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.222492, 32.197235, 25.589645>,  <35.362282, 32.381023, 25.655073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.222492, 32.197235, 25.589645>,  <34.989510, 31.890921, 25.480598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222492, 32.197235, 25.589645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022546, 0.320028, -0.947140,
		-0.812552, 0.557810, 0.169136,
		0.582452, 0.765787, 0.272616,
		35.397228, 32.426971, 25.671431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788017, 32.455425, 25.111979>,  <34.989510, 31.890921, 25.480598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788017, 32.455425, 25.111979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146492, 32.574371, 25.243690>,  <35.361576, 32.645741, 25.322718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146492, 32.574371, 25.243690>,  <34.788017, 32.455425, 25.111979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146492, 32.574371, 25.243690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153803, 0.487919, -0.859232,
		-0.416170, 0.820675, 0.391529,
		0.896185, 0.297369, 0.329279,
		35.415348, 32.663582, 25.342474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823933, 33.227589, 25.113592>,  <34.788017, 32.455425, 25.111979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823933, 33.227589, 25.113592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187500, 33.065983, 25.072336>,  <35.405640, 32.969021, 25.047583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187500, 33.065983, 25.072336>,  <34.823933, 33.227589, 25.113592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187500, 33.065983, 25.072336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203810, 0.646259, -0.735399,
		0.363766, 0.647397, 0.669739,
		0.908920, -0.404013, -0.103141,
		35.460175, 32.944778, 25.041393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264393, 33.861122, 24.979742>,  <34.823933, 33.227589, 25.113592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264393, 33.861122, 24.979742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421341, 33.522427, 24.836033>,  <35.515511, 33.319210, 24.749807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421341, 33.522427, 24.836033>,  <35.264393, 33.861122, 24.979742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421341, 33.522427, 24.836033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203017, 0.460689, -0.864031,
		0.897123, 0.266081, 0.352663,
		0.392370, -0.846739, -0.359275,
		35.539051, 33.268406, 24.728251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497601, 34.018635, 24.343084>,  <35.264393, 33.861122, 24.979742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497601, 34.018635, 24.343084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611717, 33.635262, 24.341801>,  <35.680187, 33.405235, 24.341030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611717, 33.635262, 24.341801>,  <35.497601, 34.018635, 24.343084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611717, 33.635262, 24.341801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323964, 0.099583, -0.940814,
		0.902030, 0.267362, 0.338909,
		0.285288, -0.958437, -0.003211,
		35.697304, 33.347729, 24.340837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194023, 34.002193, 24.045481>,  <35.497601, 34.018635, 24.343084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194023, 34.002193, 24.045481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034775, 33.639790, 23.988003>,  <35.939228, 33.422348, 23.953516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034775, 33.639790, 23.988003>,  <36.194023, 34.002193, 24.045481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034775, 33.639790, 23.988003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257197, 0.040116, -0.965526,
		0.880541, -0.421351, 0.217052,
		-0.398118, -0.906010, -0.143694,
		35.915340, 33.367985, 23.944895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750973, 33.607300, 23.807915>,  <36.194023, 34.002193, 24.045481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750973, 33.607300, 23.807915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401527, 33.456200, 23.685205>,  <36.191860, 33.365540, 23.611580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401527, 33.456200, 23.685205>,  <36.750973, 33.607300, 23.807915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401527, 33.456200, 23.685205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377768, -0.129067, -0.916861,
		0.306751, -0.916867, 0.255457,
		-0.873611, -0.377751, -0.306772,
		36.139442, 33.342873, 23.593174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279781, 33.163517, 24.038572>,  <36.750973, 33.607300, 23.807915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279781, 33.163517, 24.038572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664879, 33.255142, 24.096060>,  <37.895935, 33.310120, 24.130552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664879, 33.255142, 24.096060>,  <37.279781, 33.163517, 24.038572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664879, 33.255142, 24.096060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198995, 0.240246, 0.950096,
		0.183108, -0.943298, 0.276878,
		0.962742, 0.229067, 0.143720,
		37.953701, 33.323864, 24.139175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392139, 32.867073, 24.674305>,  <37.279781, 33.163517, 24.038572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392139, 32.867073, 24.674305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.686527, 33.133110, 24.623701>,  <37.863159, 33.292732, 24.593338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.686527, 33.133110, 24.623701>,  <37.392139, 32.867073, 24.674305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686527, 33.133110, 24.623701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008932, 0.177308, 0.984115,
		0.676954, -0.725410, 0.124553,
		0.735971, 0.665088, -0.126509,
		37.907318, 33.332638, 24.585749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879047, 32.735813, 25.167019>,  <37.392139, 32.867073, 24.674305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879047, 32.735813, 25.167019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947052, 33.117680, 25.069281>,  <37.987854, 33.346802, 25.010637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947052, 33.117680, 25.069281>,  <37.879047, 32.735813, 25.167019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947052, 33.117680, 25.069281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008442, 0.249358, 0.968375,
		0.985406, -0.162571, 0.050452,
		0.170010, 0.954668, -0.244347,
		37.998055, 33.404079, 24.995977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503681, 32.857903, 25.449648>,  <37.879047, 32.735813, 25.167019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503681, 32.857903, 25.449648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334949, 33.217602, 25.403326>,  <38.233711, 33.433422, 25.375534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334949, 33.217602, 25.403326>,  <38.503681, 32.857903, 25.449648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334949, 33.217602, 25.403326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160489, 0.199761, 0.966612,
		0.892360, 0.389156, -0.228585,
		-0.421825, 0.899251, -0.115804,
		38.208401, 33.487377, 25.368586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695114, 33.266022, 26.061247>,  <38.503681, 32.857903, 25.449648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695114, 33.266022, 26.061247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.437138, 33.528130, 25.903933>,  <38.282352, 33.685394, 25.809544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.437138, 33.528130, 25.903933>,  <38.695114, 33.266022, 26.061247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437138, 33.528130, 25.903933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149213, 0.396741, 0.905722,
		0.749525, 0.642820, -0.158100,
		-0.644940, 0.655270, -0.393284,
		38.243656, 33.724712, 25.785948>
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
