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
	<24.285128, 34.935284, 35.422050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417969, 34.783718, 35.076534>,  <24.497673, 34.692780, 34.869225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417969, 34.783718, 35.076534>,  <24.285128, 34.935284, 35.422050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417969, 34.783718, 35.076534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520754, -0.689895, 0.502852,
		-0.786462, -0.616820, -0.031795,
		0.332104, -0.378916, -0.863788,
		24.517601, 34.670044, 34.817398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.226416, 35.745804, 35.234451>,  <24.285128, 34.935284, 35.422050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.226416, 35.745804, 35.234451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307512, 36.046764, 34.983761>,  <24.356171, 36.227341, 34.833347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307512, 36.046764, 34.983761>,  <24.226416, 35.745804, 35.234451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307512, 36.046764, 34.983761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275948, 0.657976, 0.700657,
		0.939547, 0.030892, 0.341023,
		0.202740, 0.752405, -0.626724,
		24.368334, 36.272488, 34.795742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617588, 36.241463, 35.546162>,  <24.226416, 35.745804, 35.234451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617588, 36.241463, 35.546162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437546, 36.447498, 35.254387>,  <24.329519, 36.571121, 35.079323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437546, 36.447498, 35.254387>,  <24.617588, 36.241463, 35.546162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437546, 36.447498, 35.254387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274532, 0.697484, 0.661928,
		0.849727, 0.498194, -0.172534,
		-0.450108, 0.515092, -0.729441,
		24.302513, 36.602024, 35.035553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835426, 36.909302, 35.476597>,  <24.617588, 36.241463, 35.546162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835426, 36.909302, 35.476597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459223, 36.949581, 35.346798>,  <24.233500, 36.973747, 35.268917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459223, 36.949581, 35.346798>,  <24.835426, 36.909302, 35.476597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459223, 36.949581, 35.346798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220419, 0.545976, 0.808286,
		0.258562, 0.831727, -0.491300,
		-0.940511, 0.100700, -0.324497,
		24.177069, 36.979790, 35.249447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852350, 37.539570, 34.988720>,  <24.835426, 36.909302, 35.476597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852350, 37.539570, 34.988720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146570, 37.778370, 35.116817>,  <25.323103, 37.921650, 35.193676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146570, 37.778370, 35.116817>,  <24.852350, 37.539570, 34.988720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146570, 37.778370, 35.116817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308842, 0.716220, -0.625815,
		-0.602979, 0.361413, 0.711194,
		0.735549, 0.597000, 0.320247,
		25.367235, 37.957470, 35.212891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626541, 38.207584, 35.180107>,  <24.852350, 37.539570, 34.988720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626541, 38.207584, 35.180107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013723, 38.247570, 35.087963>,  <25.246033, 38.271561, 35.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013723, 38.247570, 35.087963>,  <24.626541, 38.207584, 35.180107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013723, 38.247570, 35.087963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227205, 0.739325, -0.633858,
		0.106948, 0.665887, 0.738348,
		0.967957, 0.099966, -0.230362,
		25.304110, 38.277561, 35.018856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847858, 38.992023, 35.163975>,  <24.626541, 38.207584, 35.180107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847858, 38.992023, 35.163975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088642, 38.782780, 34.922646>,  <25.233112, 38.657234, 34.777847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088642, 38.782780, 34.922646>,  <24.847858, 38.992023, 35.163975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088642, 38.782780, 34.922646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213888, 0.622317, -0.752977,
		0.769349, 0.582305, 0.262721,
		0.601958, -0.523109, -0.603327,
		25.269230, 38.625847, 34.741646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094769, 39.600063, 34.644543>,  <24.847858, 38.992023, 35.163975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094769, 39.600063, 34.644543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222116, 39.253616, 34.490410>,  <25.298525, 39.045750, 34.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222116, 39.253616, 34.490410>,  <25.094769, 39.600063, 34.644543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222116, 39.253616, 34.490410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152463, 0.447972, -0.880952,
		0.935625, 0.221721, 0.274673,
		0.318371, -0.866118, -0.385330,
		25.317627, 38.993782, 34.374809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700169, 39.757191, 34.262875>,  <25.094769, 39.600063, 34.644543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700169, 39.757191, 34.262875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508961, 39.433102, 34.127205>,  <25.394236, 39.238647, 34.045803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508961, 39.433102, 34.127205>,  <25.700169, 39.757191, 34.262875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508961, 39.433102, 34.127205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044113, 0.407807, -0.912002,
		0.877241, -0.420992, -0.230681,
		-0.478019, -0.810222, -0.339174,
		25.365555, 39.190037, 34.025452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067820, 39.656826, 33.678070>,  <25.700169, 39.757191, 34.262875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067820, 39.656826, 33.678070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717466, 39.465050, 33.656296>,  <25.507254, 39.349983, 33.643230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717466, 39.465050, 33.656296>,  <26.067820, 39.656826, 33.678070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717466, 39.465050, 33.656296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143667, 0.366821, -0.919131,
		0.460643, -0.797229, -0.390172,
		-0.875881, -0.479446, -0.054438,
		25.454702, 39.321217, 33.639965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167944, 39.327190, 33.011997>,  <26.067820, 39.656826, 33.678070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167944, 39.327190, 33.011997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773600, 39.328793, 33.079010>,  <25.536993, 39.329754, 33.119217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773600, 39.328793, 33.079010>,  <26.167944, 39.327190, 33.011997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773600, 39.328793, 33.079010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149603, 0.429446, -0.890615,
		-0.075510, -0.903084, -0.422774,
		-0.985859, 0.004002, 0.167532,
		25.477842, 39.329994, 33.129269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908051, 39.061974, 32.417572>,  <26.167944, 39.327190, 33.011997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908051, 39.061974, 32.417572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608976, 39.265358, 32.588425>,  <25.429533, 39.387390, 32.690937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608976, 39.265358, 32.588425>,  <25.908051, 39.061974, 32.417572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608976, 39.265358, 32.588425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141380, 0.506577, -0.850524,
		-0.648831, -0.696310, -0.306873,
		-0.747683, 0.508460, 0.427127,
		25.384672, 39.417896, 32.716564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452868, 39.117287, 31.872839>,  <25.908051, 39.061974, 32.417572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452868, 39.117287, 31.872839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323767, 39.393124, 32.132160>,  <25.246307, 39.558624, 32.287754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323767, 39.393124, 32.132160>,  <25.452868, 39.117287, 31.872839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323767, 39.393124, 32.132160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170407, 0.631431, -0.756476,
		-0.931017, -0.354629, -0.086284,
		-0.322751, 0.689589, 0.648305,
		25.226942, 39.599998, 32.326653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905571, 39.507145, 31.511538>,  <25.452868, 39.117287, 31.872839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905571, 39.507145, 31.511538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046335, 39.734730, 31.808844>,  <25.130795, 39.871281, 31.987226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046335, 39.734730, 31.808844>,  <24.905571, 39.507145, 31.511538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046335, 39.734730, 31.808844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073344, 0.774857, -0.627868,
		-0.933155, 0.275468, 0.230951,
		0.351911, 0.568959, 0.743266,
		25.151909, 39.905418, 32.031822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494844, 40.048328, 31.416327>,  <24.905571, 39.507145, 31.511538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494844, 40.048328, 31.416327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818951, 40.150505, 31.627312>,  <25.013414, 40.211811, 31.753902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818951, 40.150505, 31.627312>,  <24.494844, 40.048328, 31.416327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818951, 40.150505, 31.627312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066905, 0.853815, -0.516259,
		-0.582228, 0.453598, 0.674729,
		0.810268, 0.255438, 0.527463,
		25.062031, 40.227135, 31.785551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364149, 40.745464, 31.728201>,  <24.494844, 40.048328, 31.416327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364149, 40.745464, 31.728201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762213, 40.713024, 31.706005>,  <25.001051, 40.693562, 31.692688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762213, 40.713024, 31.706005>,  <24.364149, 40.745464, 31.728201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.762213, 40.713024, 31.706005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061926, 0.956022, -0.286682,
		0.076300, 0.281858, 0.956418,
		0.995160, -0.081100, -0.055490,
		25.060760, 40.688694, 31.689358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653482, 41.410416, 32.018017>,  <24.364149, 40.745464, 31.728201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653482, 41.410416, 32.018017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921156, 41.229717, 31.782009>,  <25.081760, 41.121296, 31.640406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921156, 41.229717, 31.782009>,  <24.653482, 41.410416, 32.018017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921156, 41.229717, 31.782009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257402, 0.885755, -0.386242,
		0.697093, 0.106595, 0.709012,
		0.669182, -0.451748, -0.590016,
		25.121910, 41.094193, 31.605003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039438, 41.986015, 31.854534>,  <24.653482, 41.410416, 32.018017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039438, 41.986015, 31.854534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176260, 41.703892, 31.606167>,  <25.258352, 41.534618, 31.457148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176260, 41.703892, 31.606167>,  <25.039438, 41.986015, 31.854534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176260, 41.703892, 31.606167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328828, 0.708840, -0.624034,
		0.880267, 0.009279, 0.474388,
		0.342055, -0.705309, -0.620917,
		25.278877, 41.492298, 31.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671480, 42.278320, 31.657099>,  <25.039438, 41.986015, 31.854534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671480, 42.278320, 31.657099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602530, 42.005791, 31.372541>,  <25.561159, 41.842274, 31.201807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602530, 42.005791, 31.372541>,  <25.671480, 42.278320, 31.657099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602530, 42.005791, 31.372541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288181, 0.655723, -0.697839,
		0.941933, -0.325301, 0.083315,
		-0.172376, -0.681328, -0.711392,
		25.550817, 41.801392, 31.159124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257441, 42.332001, 31.258446>,  <25.671480, 42.278320, 31.657099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257441, 42.332001, 31.258446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999601, 42.152077, 31.011169>,  <25.844898, 42.044121, 30.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999601, 42.152077, 31.011169>,  <26.257441, 42.332001, 31.258446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999601, 42.152077, 31.011169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248615, 0.641320, -0.725878,
		0.722970, -0.621590, -0.301562,
		-0.644597, -0.449815, -0.618192,
		25.806221, 42.017132, 30.825712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647039, 42.251694, 30.728573>,  <26.257441, 42.332001, 31.258446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647039, 42.251694, 30.728573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271597, 42.219040, 30.594496>,  <26.046331, 42.199448, 30.514050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271597, 42.219040, 30.594496>,  <26.647039, 42.251694, 30.728573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271597, 42.219040, 30.594496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201691, 0.658419, -0.725124,
		0.279888, -0.748212, -0.601533,
		-0.938607, -0.081630, -0.335191,
		25.990015, 42.194550, 30.493938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673101, 42.164974, 30.006367>,  <26.647039, 42.251694, 30.728573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673101, 42.164974, 30.006367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300255, 42.301376, 30.055151>,  <26.076548, 42.383217, 30.084421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300255, 42.301376, 30.055151>,  <26.673101, 42.164974, 30.006367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300255, 42.301376, 30.055151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109942, 0.587312, -0.801859,
		-0.345067, -0.734017, -0.584934,
		-0.932117, 0.341004, 0.121962,
		26.020620, 42.403679, 30.091740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440180, 42.144730, 29.336180>,  <26.673101, 42.164974, 30.006367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440180, 42.144730, 29.336180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240646, 42.405464, 29.564663>,  <26.120926, 42.561905, 29.701754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240646, 42.405464, 29.564663>,  <26.440180, 42.144730, 29.336180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240646, 42.405464, 29.564663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109700, 0.701246, -0.704428,
		-0.859729, -0.288729, -0.421310,
		-0.498831, 0.651835, 0.571208,
		26.090998, 42.601013, 29.736025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965456, 42.514656, 28.883179>,  <26.440180, 42.144730, 29.336180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965456, 42.514656, 28.883179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973757, 42.762512, 29.197025>,  <25.978737, 42.911224, 29.385332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973757, 42.762512, 29.197025>,  <25.965456, 42.514656, 28.883179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973757, 42.762512, 29.197025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007427, 0.784857, -0.619632,
		-0.999757, 0.007032, 0.020890,
		0.020753, 0.619637, 0.784614,
		25.979982, 42.948402, 29.432409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511705, 43.100365, 28.770737>,  <25.965456, 42.514656, 28.883179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511705, 43.100365, 28.770737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786127, 43.194244, 29.046198>,  <25.950781, 43.250572, 29.211475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786127, 43.194244, 29.046198>,  <25.511705, 43.100365, 28.770737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786127, 43.194244, 29.046198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180493, 0.862047, -0.473600,
		-0.704806, 0.449213, 0.549051,
		0.686055, 0.234697, 0.688655,
		25.991943, 43.264652, 29.252794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485033, 43.839363, 28.706778>,  <25.511705, 43.100365, 28.770737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485033, 43.839363, 28.706778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842216, 43.738407, 28.855869>,  <26.056526, 43.677834, 28.945324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842216, 43.738407, 28.855869>,  <25.485033, 43.839363, 28.706778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842216, 43.738407, 28.855869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440305, 0.661900, -0.606647,
		-0.093595, 0.705823, 0.702178,
		0.892957, -0.252393, 0.372728,
		26.110104, 43.662689, 28.967688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823048, 44.331444, 29.189035>,  <25.485033, 43.839363, 28.706778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823048, 44.331444, 29.189035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070780, 44.116413, 28.960146>,  <26.219419, 43.987392, 28.822813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070780, 44.116413, 28.960146>,  <25.823048, 44.331444, 29.189035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070780, 44.116413, 28.960146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072457, 0.764849, -0.640121,
		0.781780, 0.354984, 0.512646,
		0.619329, -0.537579, -0.572223,
		26.256578, 43.955139, 28.788479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462276, 44.656067, 29.056566>,  <25.823048, 44.331444, 29.189035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462276, 44.656067, 29.056566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358675, 44.440533, 28.735924>,  <26.296515, 44.311211, 28.543539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358675, 44.440533, 28.735924>,  <26.462276, 44.656067, 29.056566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358675, 44.440533, 28.735924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151099, 0.797103, -0.584633,
		0.953984, -0.272544, -0.125035,
		-0.259004, -0.538838, -0.801605,
		26.280973, 44.278881, 28.495441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165924, 44.654839, 29.281973>,  <26.462276, 44.656067, 29.056566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165924, 44.654839, 29.281973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018581, 45.026230, 29.300884>,  <26.930176, 45.249065, 29.312231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018581, 45.026230, 29.300884>,  <27.165924, 44.654839, 29.281973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018581, 45.026230, 29.300884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890845, 0.337966, 0.303603,
		0.265910, 0.153954, -0.951625,
		-0.368358, 0.928481, 0.047280,
		26.908073, 45.304775, 29.315069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684683, 45.045105, 28.998135>,  <27.165924, 44.654839, 29.281973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684683, 45.045105, 28.998135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442455, 45.243607, 29.246979>,  <27.297119, 45.362705, 29.396286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442455, 45.243607, 29.246979>,  <27.684683, 45.045105, 28.998135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442455, 45.243607, 29.246979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789630, 0.471803, 0.392283,
		-0.098843, 0.728792, -0.677563,
		-0.605570, 0.496250, 0.622111,
		27.260784, 45.392483, 29.433613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590185, 45.769211, 28.877407>,  <27.684683, 45.045105, 28.998135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590185, 45.769211, 28.877407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607796, 45.652363, 29.259554>,  <27.618362, 45.582253, 29.488842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607796, 45.652363, 29.259554>,  <27.590185, 45.769211, 28.877407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607796, 45.652363, 29.259554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811654, 0.568019, 0.136279,
		-0.582477, 0.769429, 0.262106,
		0.044024, -0.292119, 0.955368,
		27.621002, 45.564728, 29.546164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624390, 46.264648, 29.520346>,  <27.590185, 45.769211, 28.877407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624390, 46.264648, 29.520346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840864, 45.933182, 29.577532>,  <27.970749, 45.734303, 29.611843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840864, 45.933182, 29.577532>,  <27.624390, 46.264648, 29.520346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840864, 45.933182, 29.577532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834680, 0.550005, 0.028350,
		-0.102123, 0.103986, 0.989322,
		0.541184, -0.828662, 0.142963,
		28.003220, 45.684582, 29.620420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933090, 46.111961, 30.254351>,  <27.624390, 46.264648, 29.520346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933090, 46.111961, 30.254351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119568, 46.008163, 29.916042>,  <28.231455, 45.945885, 29.713057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119568, 46.008163, 29.916042>,  <27.933090, 46.111961, 30.254351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119568, 46.008163, 29.916042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634226, 0.764545, 0.115017,
		0.616783, -0.590030, 0.521002,
		0.466193, -0.259492, -0.845770,
		28.259426, 45.930317, 29.662312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624338, 45.907551, 30.391489>,  <27.933090, 46.111961, 30.254351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624338, 45.907551, 30.391489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620380, 46.060493, 30.021904>,  <28.618006, 46.152260, 29.800154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620380, 46.060493, 30.021904>,  <28.624338, 45.907551, 30.391489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620380, 46.060493, 30.021904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578958, 0.755568, 0.306471,
		0.815297, -0.531903, -0.228843,
		-0.009894, 0.382356, -0.923962,
		28.617413, 46.175201, 29.744715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573776, 45.940586, 31.221352>,  <28.624338, 45.907551, 30.391489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573776, 45.940586, 31.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414654, 45.892868, 31.585224>,  <28.319180, 45.864239, 31.803547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414654, 45.892868, 31.585224>,  <28.573776, 45.940586, 31.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414654, 45.892868, 31.585224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073732, 0.984147, 0.161304,
		-0.914501, 0.131240, -0.382705,
		-0.397808, -0.119295, 0.909680,
		28.295311, 45.857079, 31.858128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678591, 46.415359, 31.833620>,  <28.573776, 45.940586, 31.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678591, 46.415359, 31.833620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394958, 46.566673, 32.071648>,  <28.224779, 46.657459, 32.214462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394958, 46.566673, 32.071648>,  <28.678591, 46.415359, 31.833620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394958, 46.566673, 32.071648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264359, -0.924980, 0.272995,
		0.653695, 0.036264, 0.755888,
		-0.709081, 0.378282, 0.595068,
		28.182234, 46.680157, 32.250168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685328, 46.207481, 32.478397>,  <28.678591, 46.415359, 31.833620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685328, 46.207481, 32.478397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316265, 46.359818, 32.502617>,  <28.094828, 46.451221, 32.517151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316265, 46.359818, 32.502617>,  <28.685328, 46.207481, 32.478397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316265, 46.359818, 32.502617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333455, -0.866798, 0.370769,
		0.193692, 0.321900, 0.926749,
		-0.922655, 0.380844, 0.060552,
		28.039469, 46.474072, 32.520782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414549, 46.089905, 33.183140>,  <28.685328, 46.207481, 32.478397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414549, 46.089905, 33.183140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106434, 46.117126, 32.929516>,  <27.921566, 46.133461, 32.777344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106434, 46.117126, 32.929516>,  <28.414549, 46.089905, 33.183140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106434, 46.117126, 32.929516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397358, -0.828891, 0.393759,
		-0.498765, 0.555255, 0.665527,
		-0.770286, 0.068059, -0.634057,
		27.875349, 46.137543, 32.739300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767347, 46.030861, 33.586029>,  <28.414549, 46.089905, 33.183140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767347, 46.030861, 33.586029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703886, 45.918945, 33.207283>,  <27.665810, 45.851795, 32.980038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703886, 45.918945, 33.207283>,  <27.767347, 46.030861, 33.586029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703886, 45.918945, 33.207283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461473, -0.826797, 0.321634,
		-0.872853, 0.487979, 0.002058,
		-0.158652, -0.279790, -0.946862,
		27.656290, 45.835007, 32.923225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046263, 45.648335, 33.550056>,  <27.767347, 46.030861, 33.586029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046263, 45.648335, 33.550056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259499, 45.531937, 33.232281>,  <27.387440, 45.462097, 33.041615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259499, 45.531937, 33.232281>,  <27.046263, 45.648335, 33.550056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259499, 45.531937, 33.232281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171964, -0.956658, 0.235019,
		-0.828397, 0.011329, -0.560027,
		0.533091, -0.290993, -0.794441,
		27.419426, 45.444637, 32.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622429, 45.173412, 33.308395>,  <27.046263, 45.648335, 33.550056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622429, 45.173412, 33.308395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972082, 45.115662, 33.122906>,  <27.181875, 45.081009, 33.011612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972082, 45.115662, 33.122906>,  <26.622429, 45.173412, 33.308395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972082, 45.115662, 33.122906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120912, -0.989424, 0.080130,
		-0.470392, -0.013974, -0.882347,
		0.874135, -0.144379, -0.463727,
		27.234324, 45.072350, 32.983788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595068, 44.696938, 32.703690>,  <26.622429, 45.173412, 33.308395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595068, 44.696938, 32.703690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974001, 44.675358, 32.829960>,  <27.201361, 44.662411, 32.905724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974001, 44.675358, 32.829960>,  <26.595068, 44.696938, 32.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974001, 44.675358, 32.829960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091053, -0.990401, 0.103999,
		0.307034, -0.127265, -0.943151,
		0.947333, -0.053945, 0.315675,
		27.258202, 44.659176, 32.924664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771936, 44.146317, 32.414001>,  <26.595068, 44.696938, 32.703690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771936, 44.146317, 32.414001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077398, 44.185791, 32.669216>,  <27.260675, 44.209476, 32.822346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077398, 44.185791, 32.669216>,  <26.771936, 44.146317, 32.414001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077398, 44.185791, 32.669216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000009, -0.988247, 0.152867,
		0.645624, -0.116743, -0.754679,
		0.763656, 0.098688, 0.638037,
		27.306496, 44.215397, 32.860626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147432, 43.510342, 32.313030>,  <26.771936, 44.146317, 32.414001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147432, 43.510342, 32.313030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273670, 43.653931, 32.664379>,  <27.349413, 43.740086, 32.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273670, 43.653931, 32.664379>,  <27.147432, 43.510342, 32.313030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273670, 43.653931, 32.664379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138415, -0.933194, 0.331647,
		0.938745, 0.016915, -0.344198,
		0.315593, 0.358974, 0.878373,
		27.368349, 43.761623, 32.927891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890993, 43.137527, 32.555195>,  <27.147432, 43.510342, 32.313030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890993, 43.137527, 32.555195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680256, 43.268875, 32.868782>,  <27.553814, 43.347683, 33.056934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680256, 43.268875, 32.868782>,  <27.890993, 43.137527, 32.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680256, 43.268875, 32.868782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027471, -0.915298, 0.401839,
		0.849518, 0.233243, 0.473198,
		-0.526843, 0.328370, 0.783970,
		27.522203, 43.367386, 33.103973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162169, 42.750469, 33.123062>,  <27.890993, 43.137527, 32.555195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162169, 42.750469, 33.123062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818649, 42.900932, 33.262184>,  <27.612537, 42.991211, 33.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818649, 42.900932, 33.262184>,  <28.162169, 42.750469, 33.123062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818649, 42.900932, 33.262184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226696, -0.887832, 0.400454,
		0.459430, 0.265062, 0.847742,
		-0.858797, 0.376161, 0.347808,
		27.561010, 43.013779, 33.366528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026144, 42.518269, 33.775089>,  <28.162169, 42.750469, 33.123062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026144, 42.518269, 33.775089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650028, 42.614361, 33.678635>,  <27.424358, 42.672016, 33.620762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650028, 42.614361, 33.678635>,  <28.026144, 42.518269, 33.775089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650028, 42.614361, 33.678635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333395, -0.792817, 0.510185,
		-0.068613, 0.560114, 0.825569,
		-0.940287, 0.240235, -0.241137,
		27.367943, 42.686432, 33.606293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606680, 42.418762, 34.410408>,  <28.026144, 42.518269, 33.775089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606680, 42.418762, 34.410408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402418, 42.383598, 34.068295>,  <27.279861, 42.362499, 33.863026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402418, 42.383598, 34.068295>,  <27.606680, 42.418762, 34.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402418, 42.383598, 34.068295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228085, -0.945267, 0.233342,
		-0.828980, 0.314233, 0.462655,
		-0.510656, -0.087911, -0.855279,
		27.249222, 42.357224, 33.811710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207129, 41.876759, 34.664974>,  <27.606680, 42.418762, 34.410408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207129, 41.876759, 34.664974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156153, 41.893562, 34.268593>,  <27.125566, 41.903645, 34.030762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156153, 41.893562, 34.268593>,  <27.207129, 41.876759, 34.664974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156153, 41.893562, 34.268593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032011, -0.998756, -0.038221,
		-0.991329, 0.026851, 0.128627,
		-0.127441, 0.042008, -0.990956,
		27.117920, 41.906166, 33.971306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549526, 41.469471, 34.519657>,  <27.207129, 41.876759, 34.664974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549526, 41.469471, 34.519657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754768, 41.467842, 34.176331>,  <26.877914, 41.466866, 33.970333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754768, 41.467842, 34.176331>,  <26.549526, 41.469471, 34.519657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754768, 41.467842, 34.176331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090085, -0.994210, 0.058572,
		-0.853586, -0.107375, -0.509767,
		0.513105, -0.004074, -0.858316,
		26.908699, 41.466621, 33.918835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380274, 40.823772, 34.221889>,  <26.549526, 41.469471, 34.519657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380274, 40.823772, 34.221889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669626, 40.937065, 33.970016>,  <26.843237, 41.005043, 33.818893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669626, 40.937065, 33.970016>,  <26.380274, 40.823772, 34.221889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669626, 40.937065, 33.970016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328923, -0.943216, -0.046397,
		-0.607068, -0.173554, -0.775466,
		0.723380, 0.283235, -0.629682,
		26.886641, 41.022038, 33.781113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396038, 40.387207, 33.642349>,  <26.380274, 40.823772, 34.221889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396038, 40.387207, 33.642349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759378, 40.549950, 33.681057>,  <26.977383, 40.647594, 33.704281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759378, 40.549950, 33.681057>,  <26.396038, 40.387207, 33.642349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759378, 40.549950, 33.681057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401378, -0.913118, 0.071489,
		0.117452, -0.026095, -0.992736,
		0.908351, 0.406859, 0.096774,
		27.031883, 40.672009, 33.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723763, 40.085976, 33.218246>,  <26.396038, 40.387207, 33.642349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723763, 40.085976, 33.218246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020969, 40.230270, 33.443737>,  <27.199293, 40.316849, 33.579033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020969, 40.230270, 33.443737>,  <26.723763, 40.085976, 33.218246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020969, 40.230270, 33.443737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527240, -0.834319, -0.161027,
		0.412241, 0.416867, -0.810111,
		0.743018, 0.360741, 0.563729,
		27.243876, 40.338493, 33.612854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372610, 39.958626, 32.829086>,  <26.723763, 40.085976, 33.218246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372610, 39.958626, 32.829086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450998, 40.007572, 33.218266>,  <27.498032, 40.036942, 33.451771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450998, 40.007572, 33.218266>,  <27.372610, 39.958626, 32.829086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450998, 40.007572, 33.218266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316045, -0.947122, 0.055464,
		0.928284, 0.296625, -0.224283,
		0.195972, 0.122370, 0.972944,
		27.509790, 40.044285, 33.510147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131184, 39.754879, 32.945461>,  <27.372610, 39.958626, 32.829086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131184, 39.754879, 32.945461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930264, 39.740456, 33.291039>,  <27.809711, 39.731800, 33.498383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930264, 39.740456, 33.291039>,  <28.131184, 39.754879, 32.945461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930264, 39.740456, 33.291039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270522, -0.955529, 0.117401,
		0.821286, 0.292685, 0.489718,
		-0.502302, -0.036060, 0.863940,
		27.779573, 39.729637, 33.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506104, 39.343639, 33.260578>,  <28.131184, 39.754879, 32.945461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506104, 39.343639, 33.260578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193434, 39.300377, 33.506275>,  <28.005833, 39.274422, 33.653694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193434, 39.300377, 33.506275>,  <28.506104, 39.343639, 33.260578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193434, 39.300377, 33.506275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202769, -0.975417, 0.086294,
		0.589805, 0.192002, 0.784388,
		-0.781674, -0.108153, 0.614238,
		27.958931, 39.267929, 33.690548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729240, 39.024693, 33.851051>,  <28.506104, 39.343639, 33.260578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729240, 39.024693, 33.851051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336166, 38.954609, 33.875156>,  <28.100323, 38.912560, 33.889618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336166, 38.954609, 33.875156>,  <28.729240, 39.024693, 33.851051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336166, 38.954609, 33.875156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167280, -0.978812, -0.118083,
		0.079675, -0.105958, 0.991174,
		-0.982685, -0.175212, 0.060262,
		28.041361, 38.902046, 33.893234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499510, 39.090435, 33.950043>,  <28.729240, 39.024693, 33.851051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499510, 39.090435, 33.950043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815134, 38.870781, 33.839886>,  <30.004509, 38.738991, 33.773792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815134, 38.870781, 33.839886>,  <29.499510, 39.090435, 33.950043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815134, 38.870781, 33.839886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065451, -0.520886, 0.851113,
		-0.610822, -0.653553, -0.446950,
		0.789058, -0.549132, -0.275393,
		30.051851, 38.706043, 33.757267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859428, 38.570801, 34.200443>,  <29.499510, 39.090435, 33.950043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859428, 38.570801, 34.200443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913555, 38.837818, 33.907574>,  <29.946032, 38.998028, 33.731853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913555, 38.837818, 33.907574>,  <29.859428, 38.570801, 34.200443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913555, 38.837818, 33.907574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858392, 0.290073, 0.423109,
		0.494827, -0.685745, -0.533760,
		0.135315, 0.667541, -0.732174,
		29.954149, 39.038082, 33.687920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568483, 38.682159, 34.071182>,  <29.859428, 38.570801, 34.200443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568483, 38.682159, 34.071182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421909, 39.010471, 33.895889>,  <30.333965, 39.207458, 33.790714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421909, 39.010471, 33.895889>,  <30.568483, 38.682159, 34.071182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421909, 39.010471, 33.895889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792985, 0.521873, 0.314362,
		0.486725, -0.232321, -0.842096,
		-0.366434, 0.820777, -0.438236,
		30.311979, 39.256706, 33.764420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042641, 38.911880, 33.518280>,  <30.568483, 38.682159, 34.071182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042641, 38.911880, 33.518280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835533, 39.206371, 33.692585>,  <30.711267, 39.383064, 33.797169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835533, 39.206371, 33.692585>,  <31.042641, 38.911880, 33.518280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835533, 39.206371, 33.692585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851923, 0.397037, 0.341451,
		0.078370, 0.548029, -0.832780,
		-0.517770, 0.736224, 0.435763,
		30.680202, 39.427238, 33.823315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426630, 39.608158, 33.424461>,  <31.042641, 38.911880, 33.518280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426630, 39.608158, 33.424461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201315, 39.593433, 33.754639>,  <31.066126, 39.584599, 33.952744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201315, 39.593433, 33.754639>,  <31.426630, 39.608158, 33.424461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201315, 39.593433, 33.754639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737908, 0.427056, 0.522604,
		-0.371749, 0.903475, -0.213389,
		-0.563289, -0.036816, 0.825440,
		31.032328, 39.582390, 34.002270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590038, 40.151512, 33.884758>,  <31.426630, 39.608158, 33.424461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590038, 40.151512, 33.884758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393019, 39.910198, 34.135658>,  <31.274807, 39.765411, 34.286198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393019, 39.910198, 34.135658>,  <31.590038, 40.151512, 33.884758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393019, 39.910198, 34.135658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621037, 0.261269, 0.738953,
		-0.609679, 0.753517, 0.245974,
		-0.492548, -0.603283, 0.627253,
		31.245255, 39.729214, 34.323833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272423, 40.535969, 34.493992>,  <31.590038, 40.151512, 33.884758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272423, 40.535969, 34.493992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354420, 40.160088, 34.603485>,  <31.403618, 39.934559, 34.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354420, 40.160088, 34.603485>,  <31.272423, 40.535969, 34.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354420, 40.160088, 34.603485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622635, 0.340987, 0.704311,
		-0.755184, 0.026057, 0.654994,
		0.204993, -0.939707, 0.273732,
		31.415918, 39.878174, 34.685604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099495, 40.428860, 35.220310>,  <31.272423, 40.535969, 34.493992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099495, 40.428860, 35.220310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393574, 40.200733, 35.073765>,  <31.570021, 40.063858, 34.985836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393574, 40.200733, 35.073765>,  <31.099495, 40.428860, 35.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393574, 40.200733, 35.073765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618794, 0.344025, 0.706216,
		-0.276731, -0.745910, 0.605837,
		0.735196, -0.570320, -0.366363,
		31.614132, 40.029636, 34.963856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377571, 40.103027, 35.793324>,  <31.099495, 40.428860, 35.220310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377571, 40.103027, 35.793324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656834, 40.086761, 35.507408>,  <31.824392, 40.077003, 35.335857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656834, 40.086761, 35.507408>,  <31.377571, 40.103027, 35.793324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656834, 40.086761, 35.507408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702460, 0.231764, 0.672930,
		0.138296, -0.971922, 0.190374,
		0.698157, -0.040666, -0.714788,
		31.866282, 40.074562, 35.292973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814426, 39.679096, 36.067162>,  <31.377571, 40.103027, 35.793324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814426, 39.679096, 36.067162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003685, 39.900379, 35.792908>,  <32.117241, 40.033150, 35.628357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003685, 39.900379, 35.792908>,  <31.814426, 39.679096, 36.067162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003685, 39.900379, 35.792908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741013, 0.171012, 0.649349,
		0.476476, -0.815301, -0.329021,
		0.473148, 0.553209, -0.685632,
		32.145630, 40.066341, 35.587219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527679, 39.455959, 36.060322>,  <31.814426, 39.679096, 36.067162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527679, 39.455959, 36.060322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512867, 39.817329, 35.889462>,  <32.503979, 40.034149, 35.786945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512867, 39.817329, 35.889462>,  <32.527679, 39.455959, 36.060322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512867, 39.817329, 35.889462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731850, 0.315573, 0.603994,
		0.680459, -0.290247, -0.672854,
		-0.037027, 0.903421, -0.427152,
		32.501759, 40.088356, 35.761314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305840, 39.692818, 36.063972>,  <32.527679, 39.455959, 36.060322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305840, 39.692818, 36.063972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093563, 40.027122, 36.007580>,  <32.966198, 40.227703, 35.973743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093563, 40.027122, 36.007580>,  <33.305840, 39.692818, 36.063972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093563, 40.027122, 36.007580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717902, 0.531657, 0.449397,
		0.450540, 0.137282, -0.882138,
		-0.530689, 0.835760, -0.140978,
		32.934357, 40.277851, 35.965286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743202, 40.225620, 35.724670>,  <33.305840, 39.692818, 36.063972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743202, 40.225620, 35.724670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454914, 40.421124, 35.921318>,  <33.281940, 40.538425, 36.039307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454914, 40.421124, 35.921318>,  <33.743202, 40.225620, 35.724670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454914, 40.421124, 35.921318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693217, 0.503872, 0.515329,
		0.004159, 0.712202, -0.701962,
		-0.720717, 0.488755, 0.491615,
		33.238697, 40.567749, 36.068802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980434, 40.875301, 35.807171>,  <33.743202, 40.225620, 35.724670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980434, 40.875301, 35.807171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697697, 40.853703, 36.089294>,  <33.528053, 40.840744, 36.258568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697697, 40.853703, 36.089294>,  <33.980434, 40.875301, 35.807171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697697, 40.853703, 36.089294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661506, 0.302725, 0.686124,
		-0.250565, 0.951547, -0.178258,
		-0.706843, -0.054000, 0.705307,
		33.485645, 40.837502, 36.300888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089977, 41.473530, 36.136971>,  <33.980434, 40.875301, 35.807171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089977, 41.473530, 36.136971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862297, 41.250481, 36.378654>,  <33.725689, 41.116650, 36.523663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862297, 41.250481, 36.378654>,  <34.089977, 41.473530, 36.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862297, 41.250481, 36.378654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481651, 0.369428, 0.794692,
		-0.666353, 0.743354, 0.058304,
		-0.569198, -0.557628, 0.604206,
		33.691536, 41.083191, 36.559917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929764, 41.849781, 36.728973>,  <34.089977, 41.473530, 36.136971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929764, 41.849781, 36.728973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910694, 41.464817, 36.835930>,  <33.899254, 41.233841, 36.900105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910694, 41.464817, 36.835930>,  <33.929764, 41.849781, 36.728973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910694, 41.464817, 36.835930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492515, 0.210248, 0.844526,
		-0.868997, 0.171954, 0.463978,
		-0.047670, -0.962407, 0.267395,
		33.896393, 41.176094, 36.916149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600990, 41.825314, 37.467087>,  <33.929764, 41.849781, 36.728973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600990, 41.825314, 37.467087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777130, 41.475414, 37.386189>,  <33.882812, 41.265472, 37.337650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777130, 41.475414, 37.386189>,  <33.600990, 41.825314, 37.467087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777130, 41.475414, 37.386189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442424, 0.015400, 0.896674,
		-0.781253, -0.484326, 0.393793,
		0.440346, -0.874752, -0.202246,
		33.909233, 41.212990, 37.325516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460213, 41.461220, 38.054607>,  <33.600990, 41.825314, 37.467087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460213, 41.461220, 38.054607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761364, 41.261505, 37.883076>,  <33.942055, 41.141678, 37.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761364, 41.261505, 37.883076>,  <33.460213, 41.461220, 38.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761364, 41.261505, 37.883076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460601, -0.065718, 0.885171,
		-0.470137, -0.863940, 0.180495,
		0.752873, -0.499288, -0.428828,
		33.987225, 41.111717, 37.754429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609509, 41.014297, 38.571499>,  <33.460213, 41.461220, 38.054607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609509, 41.014297, 38.571499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912468, 40.985031, 38.311962>,  <34.094242, 40.967472, 38.156239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912468, 40.985031, 38.311962>,  <33.609509, 41.014297, 38.571499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912468, 40.985031, 38.311962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639953, -0.114128, 0.759891,
		-0.129655, -0.990768, -0.039613,
		0.757396, -0.073174, -0.648842,
		34.139687, 40.963081, 38.117310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902683, 40.431660, 38.644325>,  <33.609509, 41.014297, 38.571499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902683, 40.431660, 38.644325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187954, 40.673439, 38.502323>,  <34.359116, 40.818508, 38.417122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187954, 40.673439, 38.502323>,  <33.902683, 40.431660, 38.644325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187954, 40.673439, 38.502323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473844, -0.042485, 0.879583,
		0.516579, -0.795511, -0.316713,
		0.713174, 0.604447, -0.355001,
		34.401905, 40.854774, 38.395824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492382, 40.148903, 38.807858>,  <33.902683, 40.431660, 38.644325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492382, 40.148903, 38.807858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607655, 40.523132, 38.726223>,  <34.676819, 40.747669, 38.677242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607655, 40.523132, 38.726223>,  <34.492382, 40.148903, 38.807858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607655, 40.523132, 38.726223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451157, 0.055335, 0.890727,
		0.844635, -0.348769, -0.406144,
		0.288184, 0.935574, -0.204087,
		34.694111, 40.803806, 38.664997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157642, 40.202599, 39.023140>,  <34.492382, 40.148903, 38.807858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157642, 40.202599, 39.023140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026627, 40.580513, 39.026958>,  <34.948017, 40.807262, 39.029251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026627, 40.580513, 39.026958>,  <35.157642, 40.202599, 39.023140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026627, 40.580513, 39.026958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340289, 0.108536, 0.934036,
		0.881430, 0.309185, -0.357051,
		-0.327543, 0.944788, 0.009546,
		34.928364, 40.863949, 39.029823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746536, 40.649254, 39.264591>,  <35.157642, 40.202599, 39.023140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746536, 40.649254, 39.264591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417866, 40.869133, 39.324829>,  <35.220665, 41.001060, 39.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417866, 40.869133, 39.324829>,  <35.746536, 40.649254, 39.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417866, 40.869133, 39.324829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336884, 0.255271, 0.906281,
		0.459741, 0.795402, -0.394935,
		-0.821674, 0.549702, 0.150599,
		35.171364, 41.034042, 39.370010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984993, 41.221867, 39.523628>,  <35.746536, 40.649254, 39.264591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984993, 41.221867, 39.523628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597073, 41.270687, 39.608093>,  <35.364319, 41.299980, 39.658772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597073, 41.270687, 39.608093>,  <35.984993, 41.221867, 39.523628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597073, 41.270687, 39.608093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243854, 0.501715, 0.829950,
		-0.004645, 0.856379, -0.516326,
		-0.969801, 0.122053, 0.211162,
		35.306133, 41.307304, 39.671440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957539, 41.826088, 39.875858>,  <35.984993, 41.221867, 39.523628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957539, 41.826088, 39.875858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598545, 41.677841, 39.971500>,  <35.383148, 41.588894, 40.028885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598545, 41.677841, 39.971500>,  <35.957539, 41.826088, 39.875858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598545, 41.677841, 39.971500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010078, 0.559210, 0.828965,
		-0.440938, 0.741570, -0.505616,
		-0.897481, -0.370618, 0.239104,
		35.329300, 41.566654, 40.043232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542027, 42.432903, 39.967556>,  <35.957539, 41.826088, 39.875858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542027, 42.432903, 39.967556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378941, 42.128971, 40.170109>,  <35.281090, 41.946609, 40.291641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378941, 42.128971, 40.170109>,  <35.542027, 42.432903, 39.967556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378941, 42.128971, 40.170109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281725, 0.632190, 0.721780,
		-0.868560, 0.151623, -0.471819,
		-0.407718, -0.759833, 0.506379,
		35.256626, 41.901020, 40.322021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002636, 42.685802, 40.432041>,  <35.542027, 42.432903, 39.967556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002636, 42.685802, 40.432041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098515, 42.331116, 40.590172>,  <35.156040, 42.118305, 40.685051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098515, 42.331116, 40.590172>,  <35.002636, 42.685802, 40.432041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098515, 42.331116, 40.590172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052241, 0.418392, 0.906763,
		-0.969441, -0.196696, 0.146610,
		0.239698, -0.886712, 0.395331,
		35.170425, 42.065102, 40.708771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552670, 42.557549, 40.862652>,  <35.002636, 42.685802, 40.432041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552670, 42.557549, 40.862652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854191, 42.325054, 40.985256>,  <35.035103, 42.185558, 41.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854191, 42.325054, 40.985256>,  <34.552670, 42.557549, 40.862652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854191, 42.325054, 40.985256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074494, 0.387857, 0.918704,
		-0.652864, -0.715355, 0.249070,
		0.753803, -0.581234, 0.306508,
		35.080334, 42.150684, 41.077209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276955, 42.264320, 41.358177>,  <34.552670, 42.557549, 40.862652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276955, 42.264320, 41.358177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667194, 42.239059, 41.442299>,  <34.901337, 42.223904, 41.492771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667194, 42.239059, 41.442299>,  <34.276955, 42.264320, 41.358177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667194, 42.239059, 41.442299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192447, 0.215266, 0.957405,
		-0.105730, -0.974512, 0.197859,
		0.975595, -0.063149, 0.210302,
		34.959873, 42.220116, 41.505390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252831, 41.886711, 41.905888>,  <34.276955, 42.264320, 41.358177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252831, 41.886711, 41.905888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635048, 42.001423, 41.933285>,  <34.864380, 42.070251, 41.949722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635048, 42.001423, 41.933285>,  <34.252831, 41.886711, 41.905888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635048, 42.001423, 41.933285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068401, -0.010349, 0.997604,
		0.286803, -0.957940, 0.009727,
		0.955544, 0.286781, 0.068492,
		34.921711, 42.087456, 41.953831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637337, 41.461021, 42.498299>,  <34.252831, 41.886711, 41.905888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637337, 41.461021, 42.498299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825356, 41.804157, 42.415195>,  <34.938168, 42.010040, 42.365334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825356, 41.804157, 42.415195>,  <34.637337, 41.461021, 42.498299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825356, 41.804157, 42.415195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255201, 0.093243, 0.962382,
		0.844942, -0.505387, -0.175093,
		0.470049, 0.857841, -0.207760,
		34.966370, 42.061508, 42.352867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335297, 41.368340, 42.859814>,  <34.637337, 41.461021, 42.498299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335297, 41.368340, 42.859814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313702, 41.757397, 42.769432>,  <35.300743, 41.990829, 42.715202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313702, 41.757397, 42.769432>,  <35.335297, 41.368340, 42.859814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313702, 41.757397, 42.769432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335094, 0.230813, 0.913475,
		0.940637, -0.026401, -0.338387,
		-0.053987, 0.972640, -0.225958,
		35.297504, 42.049191, 42.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986145, 41.643478, 43.142475>,  <35.335297, 41.368340, 42.859814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986145, 41.643478, 43.142475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706898, 41.927696, 43.107224>,  <35.539349, 42.098225, 43.086075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706898, 41.927696, 43.107224>,  <35.986145, 41.643478, 43.142475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706898, 41.927696, 43.107224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123203, 0.240460, 0.962808,
		0.705306, 0.661294, -0.255410,
		-0.698115, 0.710541, -0.088124,
		35.497463, 42.140858, 43.080788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225994, 42.163437, 43.546543>,  <35.986145, 41.643478, 43.142475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225994, 42.163437, 43.546543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845634, 42.280251, 43.505554>,  <35.617416, 42.350338, 43.480961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845634, 42.280251, 43.505554>,  <36.225994, 42.163437, 43.546543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845634, 42.280251, 43.505554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010310, 0.360797, 0.932587,
		0.309316, 0.885744, -0.346094,
		-0.950903, 0.292032, -0.102469,
		35.560364, 42.367859, 43.474815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216103, 42.821976, 43.710453>,  <36.225994, 42.163437, 43.546543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216103, 42.821976, 43.710453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831795, 42.714775, 43.739033>,  <35.601212, 42.650455, 43.756180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831795, 42.714775, 43.739033>,  <36.216103, 42.821976, 43.710453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831795, 42.714775, 43.739033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036454, 0.377388, 0.925337,
		-0.274955, 0.886428, -0.372351,
		-0.960766, -0.268000, 0.071451,
		35.543564, 42.634377, 43.760468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807827, 43.459469, 44.039028>,  <36.216103, 42.821976, 43.710453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807827, 43.459469, 44.039028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614288, 43.113903, 44.094944>,  <35.498165, 42.906563, 44.128494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614288, 43.113903, 44.094944>,  <35.807827, 43.459469, 44.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614288, 43.113903, 44.094944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030665, 0.142893, 0.989263,
		-0.874613, 0.482943, -0.042647,
		-0.483851, -0.863914, 0.139785,
		35.469131, 42.854729, 44.136879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398846, 43.640999, 44.501518>,  <35.807827, 43.459469, 44.039028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398846, 43.640999, 44.501518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354988, 43.243511, 44.510441>,  <35.328674, 43.005020, 44.515793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354988, 43.243511, 44.510441>,  <35.398846, 43.640999, 44.501518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354988, 43.243511, 44.510441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117290, 0.035217, 0.992473,
		-0.987026, 0.106204, -0.120415,
		-0.109646, -0.993721, 0.022304,
		35.322094, 42.945396, 44.517132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824081, 43.523170, 44.905407>,  <35.398846, 43.640999, 44.501518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824081, 43.523170, 44.905407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039387, 43.186668, 44.925648>,  <35.168571, 42.984768, 44.937794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039387, 43.186668, 44.925648>,  <34.824081, 43.523170, 44.905407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039387, 43.186668, 44.925648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, 0.058175, 0.998302,
		-0.842772, -0.537498, 0.028845,
		0.538263, -0.841256, 0.050606,
		35.200867, 42.934292, 44.940830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561825, 43.213131, 45.456833>,  <34.824081, 43.523170, 44.905407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561825, 43.213131, 45.456833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930618, 43.070568, 45.396275>,  <35.151894, 42.985031, 45.359940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930618, 43.070568, 45.396275>,  <34.561825, 43.213131, 45.456833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930618, 43.070568, 45.396275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155221, -0.018020, 0.987715,
		-0.354755, -0.934157, 0.038708,
		0.921984, -0.356405, -0.151394,
		35.207214, 42.963646, 45.350857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636887, 42.853573, 46.057621>,  <34.561825, 43.213131, 45.456833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636887, 42.853573, 46.057621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993183, 42.902821, 45.882614>,  <35.206963, 42.932369, 45.777611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993183, 42.902821, 45.882614>,  <34.636887, 42.853573, 46.057621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993183, 42.902821, 45.882614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426350, 0.107228, 0.898180,
		0.157501, -0.986581, 0.043019,
		0.890741, 0.123123, -0.437518,
		35.260406, 42.939754, 45.751358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047977, 42.481232, 46.506870>,  <34.636887, 42.853573, 46.057621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047977, 42.481232, 46.506870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283684, 42.734455, 46.306072>,  <35.425106, 42.886391, 46.185593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283684, 42.734455, 46.306072>,  <35.047977, 42.481232, 46.506870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283684, 42.734455, 46.306072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543877, 0.148655, 0.825893,
		0.597463, -0.759696, -0.256709,
		0.589267, 0.633059, -0.501997,
		35.460464, 42.924374, 46.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687973, 42.256050, 46.601135>,  <35.047977, 42.481232, 46.506870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687973, 42.256050, 46.601135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759937, 42.640842, 46.518940>,  <35.803116, 42.871719, 46.469624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759937, 42.640842, 46.518940>,  <35.687973, 42.256050, 46.601135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759937, 42.640842, 46.518940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510579, 0.087228, 0.855395,
		0.840798, -0.258811, -0.475474,
		0.179911, 0.961981, -0.205485,
		35.813911, 42.929436, 46.457294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480156, 42.447239, 46.631866>,  <35.687973, 42.256050, 46.601135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480156, 42.447239, 46.631866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266201, 42.778908, 46.696819>,  <36.137829, 42.977909, 46.735790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266201, 42.778908, 46.696819>,  <36.480156, 42.447239, 46.631866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266201, 42.778908, 46.696819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597520, 0.235335, 0.766543,
		0.597384, 0.507038, -0.621325,
		-0.534886, 0.829174, 0.162380,
		36.105736, 43.027660, 46.745533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999699, 42.884167, 46.649338>,  <36.480156, 42.447239, 46.631866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999699, 42.884167, 46.649338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694229, 43.076565, 46.821594>,  <36.510948, 43.192005, 46.924946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694229, 43.076565, 46.821594>,  <36.999699, 42.884167, 46.649338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694229, 43.076565, 46.821594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624746, 0.382393, 0.680785,
		0.162780, 0.788936, -0.592522,
		-0.763672, 0.480994, 0.430639,
		36.465126, 43.220863, 46.950787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275639, 43.536808, 46.902454>,  <36.999699, 42.884167, 46.649338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275639, 43.536808, 46.902454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932583, 43.497223, 47.104309>,  <36.726749, 43.473473, 47.225422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932583, 43.497223, 47.104309>,  <37.275639, 43.536808, 46.902454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932583, 43.497223, 47.104309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487759, 0.154352, 0.859224,
		-0.162920, 0.983048, -0.084111,
		-0.857641, -0.098959, 0.504637,
		36.675289, 43.467537, 47.255699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187798, 44.136551, 47.276955>,  <37.275639, 43.536808, 46.902454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187798, 44.136551, 47.276955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984871, 43.859169, 47.481606>,  <36.863117, 43.692741, 47.604397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984871, 43.859169, 47.481606>,  <37.187798, 44.136551, 47.276955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984871, 43.859169, 47.481606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426332, 0.313992, 0.848322,
		-0.748916, 0.648486, 0.136348,
		-0.507313, -0.693451, 0.511624,
		36.832676, 43.651134, 47.635094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029072, 44.507790, 47.932938>,  <37.187798, 44.136551, 47.276955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029072, 44.507790, 47.932938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977806, 44.114609, 47.985672>,  <36.947044, 43.878700, 48.017311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977806, 44.114609, 47.985672>,  <37.029072, 44.507790, 47.932938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977806, 44.114609, 47.985672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443783, 0.062035, 0.893985,
		-0.886922, 0.173084, 0.428266,
		-0.128167, -0.982952, 0.131832,
		36.939358, 43.819725, 48.025223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741901, 44.432533, 48.494423>,  <37.029072, 44.507790, 47.932938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741901, 44.432533, 48.494423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889282, 44.064552, 48.440857>,  <36.977711, 43.843765, 48.408718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889282, 44.064552, 48.440857>,  <36.741901, 44.432533, 48.494423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889282, 44.064552, 48.440857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503580, 0.076416, 0.860563,
		-0.781441, -0.384515, 0.491424,
		0.368452, -0.919951, -0.133919,
		36.999817, 43.788567, 48.400681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921162, 44.277256, 49.113499>,  <36.741901, 44.432533, 48.494423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921162, 44.277256, 49.113499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146542, 44.020065, 48.905998>,  <37.281769, 43.865749, 48.781498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146542, 44.020065, 48.905998>,  <36.921162, 44.277256, 49.113499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146542, 44.020065, 48.905998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551486, -0.174795, 0.815665,
		-0.615131, -0.745669, 0.256106,
		0.563451, -0.642980, -0.518748,
		37.315578, 43.827171, 48.750374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932228, 43.656010, 49.481155>,  <36.921162, 44.277256, 49.113499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932228, 43.656010, 49.481155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252155, 43.705383, 49.246189>,  <37.444111, 43.735008, 49.105209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252155, 43.705383, 49.246189>,  <36.932228, 43.656010, 49.481155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252155, 43.705383, 49.246189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588219, -0.356076, 0.726091,
		-0.119538, -0.926269, -0.357403,
		0.799818, 0.123435, -0.587414,
		37.492100, 43.742413, 49.069965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029255, 44.227024, 49.910015>,  <36.932228, 43.656010, 49.481155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029255, 44.227024, 49.910015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952568, 44.558590, 50.120213>,  <36.906555, 44.757530, 50.246330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952568, 44.558590, 50.120213>,  <37.029255, 44.227024, 49.910015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952568, 44.558590, 50.120213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653089, -0.507424, 0.562135,
		0.732610, -0.235421, 0.638638,
		-0.191721, 0.828914, 0.525495,
		36.895050, 44.807262, 50.277863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167286, 44.012711, 50.622131>,  <37.029255, 44.227024, 49.910015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167286, 44.012711, 50.622131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882504, 44.287285, 50.562901>,  <36.711636, 44.452030, 50.527363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882504, 44.287285, 50.562901>,  <37.167286, 44.012711, 50.622131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882504, 44.287285, 50.562901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654114, -0.571563, 0.495431,
		0.255446, 0.449583, 0.855933,
		-0.711957, 0.686434, -0.148075,
		36.668915, 44.493214, 50.518478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782032, 44.083004, 51.206638>,  <37.167286, 44.012711, 50.622131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782032, 44.083004, 51.206638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594978, 44.128151, 50.855965>,  <36.482746, 44.155239, 50.645561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594978, 44.128151, 50.855965>,  <36.782032, 44.083004, 51.206638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594978, 44.128151, 50.855965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612579, -0.756395, 0.229377,
		-0.637234, 0.644305, 0.422851,
		-0.467631, 0.112863, -0.876688,
		36.454689, 44.162010, 50.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858532, 43.313881, 51.343845>,  <36.782032, 44.083004, 51.206638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858532, 43.313881, 51.343845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910610, 42.934467, 51.459309>,  <36.941856, 42.706818, 51.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910610, 42.934467, 51.459309>,  <36.858532, 43.313881, 51.343845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910610, 42.934467, 51.459309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210191, -0.310924, -0.926901,
		0.968952, 0.060009, -0.239857,
		0.130200, -0.948538, 0.288657,
		36.949669, 42.649906, 51.545906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379616, 42.935658, 51.028870>,  <36.858532, 43.313881, 51.343845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379616, 42.935658, 51.028870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133072, 42.640190, 51.138027>,  <36.985146, 42.462910, 51.203522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133072, 42.640190, 51.138027>,  <37.379616, 42.935658, 51.028870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133072, 42.640190, 51.138027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059157, -0.302137, -0.951427,
		0.785243, -0.602561, 0.142526,
		-0.616356, -0.738670, 0.272896,
		36.948166, 42.418591, 51.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631065, 42.299282, 50.690517>,  <37.379616, 42.935658, 51.028870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631065, 42.299282, 50.690517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250927, 42.227757, 50.792397>,  <37.022846, 42.184841, 50.853523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250927, 42.227757, 50.792397>,  <37.631065, 42.299282, 50.690517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250927, 42.227757, 50.792397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132751, -0.507303, -0.851482,
		0.281470, -0.843012, 0.458373,
		-0.950343, -0.178817, 0.254701,
		36.965824, 42.174110, 50.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441452, 41.577621, 50.721916>,  <37.631065, 42.299282, 50.690517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441452, 41.577621, 50.721916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117756, 41.777870, 50.598942>,  <36.923538, 41.898018, 50.525158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117756, 41.777870, 50.598942>,  <37.441452, 41.577621, 50.721916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117756, 41.777870, 50.598942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054435, -0.584952, -0.809239,
		-0.584952, -0.638133, 0.500617,
		0.809239, -0.500617, 0.307432,
		36.874985, 41.928055, 50.506714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908401, 41.098976, 50.649967>,  <37.441452, 41.577621, 50.721916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908401, 41.098976, 50.649967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867992, 41.409756, 50.401402>,  <36.843746, 41.596222, 50.252262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867992, 41.409756, 50.401402>,  <36.908401, 41.098976, 50.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867992, 41.409756, 50.401402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089602, -0.629174, -0.772083,
		-0.990841, -0.022316, 0.133175,
		-0.101020, 0.776944, -0.621412,
		36.837685, 41.642838, 50.214977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318180, 41.036934, 50.305725>,  <36.908401, 41.098976, 50.649967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318180, 41.036934, 50.305725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535263, 41.268444, 50.062252>,  <36.665512, 41.407349, 49.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535263, 41.268444, 50.062252>,  <36.318180, 41.036934, 50.305725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535263, 41.268444, 50.062252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195761, -0.617568, -0.761766,
		-0.816792, 0.532570, -0.221855,
		0.542704, 0.578774, -0.608681,
		36.698074, 41.442078, 49.879646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868210, 41.291763, 49.774879>,  <36.318180, 41.036934, 50.305725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868210, 41.291763, 49.774879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236370, 41.335911, 49.624844>,  <36.457264, 41.362400, 49.534824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236370, 41.335911, 49.624844>,  <35.868210, 41.291763, 49.774879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236370, 41.335911, 49.624844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268232, -0.519742, -0.811122,
		-0.284468, 0.847164, -0.448766,
		0.920396, 0.110365, -0.375087,
		36.512489, 41.369019, 49.512318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711502, 41.377728, 49.155777>,  <35.868210, 41.291763, 49.774879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711502, 41.377728, 49.155777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099014, 41.278618, 49.152191>,  <36.331520, 41.219154, 49.150040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099014, 41.278618, 49.152191>,  <35.711502, 41.377728, 49.155777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099014, 41.278618, 49.152191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110931, -0.400835, -0.909409,
		0.221734, 0.882009, -0.415805,
		0.968777, -0.247772, -0.008964,
		36.389648, 41.204285, 49.149502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982056, 41.632919, 48.579849>,  <35.711502, 41.377728, 49.155777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982056, 41.632919, 48.579849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201965, 41.309746, 48.664692>,  <36.333912, 41.115841, 48.715599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201965, 41.309746, 48.664692>,  <35.982056, 41.632919, 48.579849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201965, 41.309746, 48.664692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157501, -0.349639, -0.923551,
		0.820329, 0.474338, -0.319473,
		0.549775, -0.807933, 0.212110,
		36.366898, 41.067368, 48.728325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922050, 41.282097, 47.951595>,  <35.982056, 41.632919, 48.579849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922050, 41.282097, 47.951595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131680, 41.002640, 48.146427>,  <36.257458, 40.834965, 48.263329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131680, 41.002640, 48.146427>,  <35.922050, 41.282097, 47.951595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131680, 41.002640, 48.146427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095498, -0.616511, -0.781533,
		0.846302, 0.363065, -0.389816,
		0.524074, -0.698639, 0.487083,
		36.288902, 40.793049, 48.292553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441292, 41.054867, 47.554653>,  <35.922050, 41.282097, 47.951595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441292, 41.054867, 47.554653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360809, 40.759720, 47.812355>,  <36.312519, 40.582634, 47.966976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360809, 40.759720, 47.812355>,  <36.441292, 41.054867, 47.554653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360809, 40.759720, 47.812355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155681, -0.625262, -0.764729,
		0.967098, -0.254171, 0.010938,
		-0.201211, -0.737865, 0.644259,
		36.300446, 40.538361, 48.005634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854469, 40.472546, 47.277985>,  <36.441292, 41.054867, 47.554653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854469, 40.472546, 47.277985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567001, 40.332329, 47.518196>,  <36.394520, 40.248199, 47.662323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567001, 40.332329, 47.518196>,  <36.854469, 40.472546, 47.277985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567001, 40.332329, 47.518196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060628, -0.828751, -0.556324,
		0.692704, -0.436221, 0.574345,
		-0.718669, -0.350546, 0.600527,
		36.351402, 40.227165, 47.698353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002445, 39.821327, 47.546852>,  <36.854469, 40.472546, 47.277985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002445, 39.821327, 47.546852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602669, 39.821674, 47.560204>,  <36.362804, 39.821884, 47.568214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602669, 39.821674, 47.560204>,  <37.002445, 39.821327, 47.546852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602669, 39.821674, 47.560204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019579, -0.825036, -0.564740,
		0.027047, -0.565079, 0.824593,
		-0.999442, 0.000870, 0.033378,
		36.302837, 39.821934, 47.570217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791977, 39.122288, 47.542042>,  <37.002445, 39.821327, 47.546852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791977, 39.122288, 47.542042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458782, 39.307453, 47.420818>,  <36.258865, 39.418552, 47.348083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458782, 39.307453, 47.420818>,  <36.791977, 39.122288, 47.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458782, 39.307453, 47.420818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147203, -0.713407, -0.685115,
		-0.533349, -0.526083, 0.662402,
		-0.832988, 0.462913, -0.303054,
		36.208885, 39.446327, 47.329903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482895, 38.654766, 47.241447>,  <36.791977, 39.122288, 47.542042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482895, 38.654766, 47.241447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254810, 38.951752, 47.100815>,  <36.117958, 39.129944, 47.016438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254810, 38.951752, 47.100815>,  <36.482895, 38.654766, 47.241447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254810, 38.951752, 47.100815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096061, -0.485299, -0.869055,
		-0.815863, -0.461771, 0.348044,
		-0.570210, 0.742464, -0.351580,
		36.083748, 39.174492, 46.995342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992146, 38.327606, 46.947517>,  <36.482895, 38.654766, 47.241447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992146, 38.327606, 46.947517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950230, 38.686047, 46.774994>,  <35.925079, 38.901112, 46.671482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950230, 38.686047, 46.774994>,  <35.992146, 38.327606, 46.947517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950230, 38.686047, 46.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349030, -0.439245, -0.827794,
		-0.931234, 0.063792, 0.358795,
		-0.104792, 0.896100, -0.431305,
		35.918793, 38.954876, 46.645603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347137, 38.300137, 46.498669>,  <35.992146, 38.327606, 46.947517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347137, 38.300137, 46.498669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526791, 38.620087, 46.339432>,  <35.634583, 38.812057, 46.243889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526791, 38.620087, 46.339432>,  <35.347137, 38.300137, 46.498669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526791, 38.620087, 46.339432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203740, -0.342133, -0.917298,
		-0.869927, 0.493092, 0.009305,
		0.449129, 0.799878, -0.398094,
		35.661530, 38.860050, 46.220005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930794, 38.509850, 45.968555>,  <35.347137, 38.300137, 46.498669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930794, 38.509850, 45.968555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283333, 38.673050, 45.873260>,  <35.494858, 38.770969, 45.816082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283333, 38.673050, 45.873260>,  <34.930794, 38.509850, 45.968555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283333, 38.673050, 45.873260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184738, -0.166512, -0.968579,
		-0.434847, 0.897671, -0.071383,
		0.881351, 0.407996, -0.238241,
		35.547737, 38.795448, 45.801788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863014, 39.023540, 45.491024>,  <34.930794, 38.509850, 45.968555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863014, 39.023540, 45.491024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237465, 38.897068, 45.429443>,  <35.462135, 38.821186, 45.392494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237465, 38.897068, 45.429443>,  <34.863014, 39.023540, 45.491024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237465, 38.897068, 45.429443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237995, -0.247294, -0.939257,
		0.258904, 0.915901, -0.306748,
		0.936123, -0.316182, -0.153955,
		35.518303, 38.802212, 45.383259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951229, 38.964214, 44.811005>,  <34.863014, 39.023540, 45.491024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951229, 38.964214, 44.811005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313389, 38.807491, 44.876415>,  <35.530685, 38.713459, 44.915661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313389, 38.807491, 44.876415>,  <34.951229, 38.964214, 44.811005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313389, 38.807491, 44.876415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044056, -0.296380, -0.954054,
		0.422268, 0.871004, -0.251081,
		0.905400, -0.391805, 0.163525,
		35.585011, 38.689949, 44.925472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410938, 39.223705, 44.276783>,  <34.951229, 38.964214, 44.811005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410938, 39.223705, 44.276783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564240, 38.881958, 44.417164>,  <35.656219, 38.676910, 44.501392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564240, 38.881958, 44.417164>,  <35.410938, 39.223705, 44.276783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564240, 38.881958, 44.417164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185666, -0.300944, -0.935393,
		0.904789, 0.423653, 0.043290,
		0.383255, -0.854371, 0.350949,
		35.679214, 38.625645, 44.522449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087128, 39.243782, 43.978661>,  <35.410938, 39.223705, 44.276783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087128, 39.243782, 43.978661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965313, 38.878925, 44.088394>,  <35.892223, 38.660011, 44.154236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965313, 38.878925, 44.088394>,  <36.087128, 39.243782, 43.978661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965313, 38.878925, 44.088394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060393, -0.305928, -0.950137,
		0.950583, -0.272787, 0.148254,
		-0.304540, -0.912138, 0.274335,
		35.873951, 38.605286, 44.170696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492035, 38.730774, 43.614071>,  <36.087128, 39.243782, 43.978661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492035, 38.730774, 43.614071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155037, 38.540012, 43.714283>,  <35.952839, 38.425556, 43.774410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155037, 38.540012, 43.714283>,  <36.492035, 38.730774, 43.614071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155037, 38.540012, 43.714283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007888, -0.475931, -0.879447,
		0.538652, -0.738951, 0.404729,
		-0.842491, -0.476908, 0.250532,
		35.902290, 38.396938, 43.789444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528164, 38.139919, 43.244183>,  <36.492035, 38.730774, 43.614071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528164, 38.139919, 43.244183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142056, 38.153728, 43.347763>,  <35.910389, 38.162014, 43.409912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142056, 38.153728, 43.347763>,  <36.528164, 38.139919, 43.244183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142056, 38.153728, 43.347763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244272, -0.470739, -0.847783,
		0.092630, -0.881597, 0.462824,
		-0.965272, 0.034525, 0.258954,
		35.852474, 38.164085, 43.425449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312729, 37.469936, 43.126156>,  <36.528164, 38.139919, 43.244183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312729, 37.469936, 43.126156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966927, 37.670933, 43.121746>,  <35.759445, 37.791531, 43.119099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966927, 37.670933, 43.121746>,  <36.312729, 37.469936, 43.126156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966927, 37.670933, 43.121746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319837, -0.566912, -0.759154,
		-0.387721, -0.652771, 0.650817,
		-0.864509, 0.502495, -0.011023,
		35.707573, 37.821682, 43.118439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817093, 36.890095, 43.105770>,  <36.312729, 37.469936, 43.126156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817093, 36.890095, 43.105770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655277, 37.237156, 42.990162>,  <35.558189, 37.445393, 42.920799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655277, 37.237156, 42.990162>,  <35.817093, 36.890095, 43.105770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655277, 37.237156, 42.990162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436047, -0.460791, -0.773003,
		-0.803875, -0.186681, 0.564744,
		-0.404534, 0.867653, -0.289016,
		35.533916, 37.497452, 42.903458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058594, 36.719227, 42.921608>,  <35.817093, 36.890095, 43.105770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058594, 36.719227, 42.921608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163727, 37.041199, 42.708817>,  <35.226807, 37.234383, 42.581142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163727, 37.041199, 42.708817>,  <35.058594, 36.719227, 42.921608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163727, 37.041199, 42.708817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562574, -0.320089, -0.762269,
		-0.783854, 0.499631, 0.368702,
		0.262835, 0.804930, -0.531983,
		35.242577, 37.282677, 42.549221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407776, 36.971203, 42.680534>,  <35.058594, 36.719227, 42.921608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407776, 36.971203, 42.680534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696907, 37.118786, 42.446823>,  <34.870388, 37.207336, 42.306595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696907, 37.118786, 42.446823>,  <34.407776, 36.971203, 42.680534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696907, 37.118786, 42.446823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571044, -0.157208, -0.805726,
		-0.389133, 0.916054, 0.097056,
		0.722831, 0.368958, -0.584282,
		34.913757, 37.229473, 42.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058578, 37.162346, 42.202034>,  <34.407776, 36.971203, 42.680534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058578, 37.162346, 42.202034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415707, 37.228359, 42.034401>,  <34.629986, 37.267967, 41.933823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415707, 37.228359, 42.034401>,  <34.058578, 37.162346, 42.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415707, 37.228359, 42.034401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444050, 0.166777, -0.880343,
		-0.075394, 0.972085, 0.222187,
		0.892824, 0.165035, -0.419080,
		34.683556, 37.277870, 41.908676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986771, 37.775887, 41.758186>,  <34.058578, 37.162346, 42.202034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986771, 37.775887, 41.758186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271091, 37.535793, 41.611504>,  <34.441685, 37.391739, 41.523495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271091, 37.535793, 41.611504>,  <33.986771, 37.775887, 41.758186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271091, 37.535793, 41.611504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391695, 0.095255, -0.915151,
		0.584236, 0.794132, -0.167401,
		0.710805, -0.600234, -0.366709,
		34.484333, 37.355724, 41.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375160, 38.112400, 41.166245>,  <33.986771, 37.775887, 41.758186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375160, 38.112400, 41.166245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426510, 37.719456, 41.111866>,  <34.457317, 37.483688, 41.079239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426510, 37.719456, 41.111866>,  <34.375160, 38.112400, 41.166245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426510, 37.719456, 41.111866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209207, 0.107170, -0.971981,
		0.969409, 0.153215, -0.191760,
		0.128371, -0.982365, -0.135945,
		34.465023, 37.424747, 41.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827232, 37.990273, 40.587322>,  <34.375160, 38.112400, 41.166245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827232, 37.990273, 40.587322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636791, 37.641914, 40.636097>,  <34.522526, 37.432899, 40.665363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636791, 37.641914, 40.636097>,  <34.827232, 37.990273, 40.587322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636791, 37.641914, 40.636097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244205, -0.002271, -0.969721,
		0.844802, -0.491463, -0.211596,
		-0.476101, -0.870895, 0.121936,
		34.493961, 37.380646, 40.672676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147964, 37.521400, 40.116367>,  <34.827232, 37.990273, 40.587322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147964, 37.521400, 40.116367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781513, 37.386650, 40.203285>,  <34.561642, 37.305801, 40.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781513, 37.386650, 40.203285>,  <35.147964, 37.521400, 40.116367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781513, 37.386650, 40.203285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069252, -0.400903, -0.913499,
		0.394851, -0.851934, 0.343950,
		-0.916131, -0.336877, 0.217295,
		34.506676, 37.285587, 40.268475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098755, 36.963947, 39.603657>,  <35.147964, 37.521400, 40.116367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098755, 36.963947, 39.603657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732365, 36.962589, 39.764145>,  <34.512531, 36.961777, 39.860439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732365, 36.962589, 39.764145>,  <35.098755, 36.963947, 39.603657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732365, 36.962589, 39.764145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390344, -0.223873, -0.893035,
		0.092852, -0.974612, 0.203738,
		-0.915975, -0.003392, 0.401221,
		34.457573, 36.961571, 39.884510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704147, 36.407597, 39.308235>,  <35.098755, 36.963947, 39.603657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704147, 36.407597, 39.308235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420639, 36.665176, 39.423454>,  <34.250534, 36.819725, 39.492588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420639, 36.665176, 39.423454>,  <34.704147, 36.407597, 39.308235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420639, 36.665176, 39.423454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516556, -0.195672, -0.833596,
		-0.480430, -0.739623, 0.471323,
		-0.708771, 0.643949, 0.288050,
		34.208008, 36.858360, 39.509869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101448, 36.117180, 39.078705>,  <34.704147, 36.407597, 39.308235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101448, 36.117180, 39.078705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993938, 36.501205, 39.109795>,  <33.929432, 36.731621, 39.128448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993938, 36.501205, 39.109795>,  <34.101448, 36.117180, 39.078705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993938, 36.501205, 39.109795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526284, -0.078795, -0.846650,
		-0.806713, -0.268461, 0.526444,
		-0.268774, 0.960062, 0.077721,
		33.913307, 36.789223, 39.133110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481457, 36.156693, 38.777416>,  <34.101448, 36.117180, 39.078705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481457, 36.156693, 38.777416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584324, 36.541664, 38.812263>,  <33.646046, 36.772648, 38.833172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584324, 36.541664, 38.812263>,  <33.481457, 36.156693, 38.777416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584324, 36.541664, 38.812263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481688, 0.205819, -0.851830,
		-0.837760, 0.177098, 0.516522,
		0.257168, 0.962432, 0.087121,
		33.661476, 36.830395, 38.838398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940071, 36.533508, 38.412895>,  <33.481457, 36.156693, 38.777416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940071, 36.533508, 38.412895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237347, 36.801094, 38.417938>,  <33.415714, 36.961643, 38.420963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237347, 36.801094, 38.417938>,  <32.940071, 36.533508, 38.412895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237347, 36.801094, 38.417938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235719, 0.279413, -0.930787,
		-0.626182, 0.688782, 0.365344,
		0.743191, 0.668960, 0.012604,
		33.460304, 37.001781, 38.421719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654182, 37.094921, 38.091972>,  <32.940071, 36.533508, 38.412895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654182, 37.094921, 38.091972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052860, 37.109573, 38.062958>,  <33.292068, 37.118366, 38.045551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052860, 37.109573, 38.062958>,  <32.654182, 37.094921, 38.091972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052860, 37.109573, 38.062958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080768, 0.544406, -0.834924,
		0.008904, 0.838022, 0.545564,
		0.996693, 0.036630, -0.072533,
		33.351868, 37.120564, 38.041199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793522, 37.834164, 37.836365>,  <32.654182, 37.094921, 38.091972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793522, 37.834164, 37.836365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128853, 37.621971, 37.786072>,  <33.330051, 37.494656, 37.755898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128853, 37.621971, 37.786072>,  <32.793522, 37.834164, 37.836365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128853, 37.621971, 37.786072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172553, 0.476955, -0.861824,
		0.517146, 0.700791, 0.491377,
		0.838323, -0.530478, -0.125732,
		33.380348, 37.462830, 37.748352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093140, 38.245773, 37.427761>,  <32.793522, 37.834164, 37.836365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093140, 38.245773, 37.427761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254368, 37.882374, 37.383636>,  <33.351105, 37.664333, 37.357162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254368, 37.882374, 37.383636>,  <33.093140, 38.245773, 37.427761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254368, 37.882374, 37.383636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082622, 0.083921, -0.993041,
		0.911431, 0.409381, -0.041236,
		0.403072, -0.908496, -0.110312,
		33.375290, 37.609825, 37.350544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686935, 38.321991, 36.943199>,  <33.093140, 38.245773, 37.427761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686935, 38.321991, 36.943199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558334, 37.943623, 36.925896>,  <33.481174, 37.716602, 36.915512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558334, 37.943623, 36.925896>,  <33.686935, 38.321991, 36.943199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558334, 37.943623, 36.925896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002545, 0.044825, -0.998991,
		0.946907, -0.321284, -0.012003,
		-0.321498, -0.945921, -0.043263,
		33.461884, 37.659847, 36.912918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960457, 38.205822, 36.303062>,  <33.686935, 38.321991, 36.943199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960457, 38.205822, 36.303062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691505, 37.924160, 36.394348>,  <33.530136, 37.755165, 36.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691505, 37.924160, 36.394348>,  <33.960457, 38.205822, 36.303062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691505, 37.924160, 36.394348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164256, -0.158686, -0.973570,
		0.721755, -0.692090, -0.008965,
		-0.672376, -0.704152, 0.228212,
		33.489792, 37.712914, 36.462811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205864, 37.516956, 35.998573>,  <33.960457, 38.205822, 36.303062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205864, 37.516956, 35.998573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810295, 37.532570, 36.055862>,  <33.572956, 37.541939, 36.090237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810295, 37.532570, 36.055862>,  <34.205864, 37.516956, 35.998573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810295, 37.532570, 36.055862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147059, -0.125776, -0.981098,
		-0.020281, -0.991290, 0.130122,
		-0.988920, 0.039033, 0.143227,
		33.513618, 37.544281, 36.098831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530739, 36.748016, 35.935932>,  <34.205864, 37.516956, 35.998573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530739, 36.748016, 35.935932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593563, 36.488564, 35.638046>,  <34.631256, 36.332890, 35.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593563, 36.488564, 35.638046>,  <34.530739, 36.748016, 35.935932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593563, 36.488564, 35.638046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519569, -0.587014, 0.620857,
		-0.839869, -0.484445, 0.244814,
		0.157062, -0.648636, -0.744717,
		34.640682, 36.293972, 35.414631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409973, 36.051468, 36.204948>,  <34.530739, 36.748016, 35.935932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409973, 36.051468, 36.204948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689098, 36.095123, 35.921783>,  <34.856575, 36.121315, 35.751884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689098, 36.095123, 35.921783>,  <34.409973, 36.051468, 36.204948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689098, 36.095123, 35.921783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688230, -0.376028, 0.620437,
		-0.198483, -0.920159, -0.337509,
		0.697814, 0.109138, -0.707916,
		34.898441, 36.127865, 35.709408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763424, 35.516273, 36.153656>,  <34.409973, 36.051468, 36.204948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763424, 35.516273, 36.153656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020191, 35.793198, 36.021809>,  <35.174252, 35.959351, 35.942699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020191, 35.793198, 36.021809>,  <34.763424, 35.516273, 36.153656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020191, 35.793198, 36.021809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730446, -0.421365, 0.537494,
		0.233223, -0.585795, -0.776177,
		0.641915, 0.692312, -0.329620,
		35.212765, 36.000893, 35.922924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497902, 35.238293, 36.226635>,  <34.763424, 35.516273, 36.153656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497902, 35.238293, 36.226635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534428, 35.635704, 36.199635>,  <35.556343, 35.874153, 36.183434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534428, 35.635704, 36.199635>,  <35.497902, 35.238293, 36.226635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534428, 35.635704, 36.199635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851456, -0.042745, 0.522681,
		0.516415, -0.105198, -0.849852,
		0.091311, 0.993532, -0.067497,
		35.561821, 35.933765, 36.179386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158230, 35.376148, 36.011856>,  <35.497902, 35.238293, 36.226635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158230, 35.376148, 36.011856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052601, 35.730618, 36.164146>,  <35.989223, 35.943298, 36.255520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052601, 35.730618, 36.164146>,  <36.158230, 35.376148, 36.011856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052601, 35.730618, 36.164146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852695, 0.030023, 0.521546,
		0.450752, 0.462373, -0.763567,
		-0.264073, 0.886177, 0.380730,
		35.973377, 35.996471, 36.278366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795776, 35.659031, 36.102505>,  <36.158230, 35.376148, 36.011856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795776, 35.659031, 36.102505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542931, 35.880043, 36.319813>,  <36.391224, 36.012650, 36.450199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542931, 35.880043, 36.319813>,  <36.795776, 35.659031, 36.102505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542931, 35.880043, 36.319813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727645, 0.182219, 0.661309,
		0.266397, 0.813332, -0.517228,
		-0.632112, 0.552529, 0.543274,
		36.353298, 36.045803, 36.482796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221378, 36.201092, 36.393063>,  <36.795776, 35.659031, 36.102505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221378, 36.201092, 36.393063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914181, 36.209198, 36.649117>,  <36.729862, 36.214062, 36.802750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914181, 36.209198, 36.649117>,  <37.221378, 36.201092, 36.393063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914181, 36.209198, 36.649117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640254, 0.049195, 0.766586,
		-0.015957, 0.998584, -0.050756,
		-0.767998, 0.020265, 0.640132,
		36.683781, 36.215279, 36.841156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384293, 36.721428, 36.931835>,  <37.221378, 36.201092, 36.393063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384293, 36.721428, 36.931835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103264, 36.506351, 37.118286>,  <36.934647, 36.377304, 37.230156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103264, 36.506351, 37.118286>,  <37.384293, 36.721428, 36.931835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103264, 36.506351, 37.118286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490603, 0.108484, 0.864604,
		-0.515459, 0.836133, 0.187576,
		-0.702575, -0.537693, 0.466128,
		36.892490, 36.345043, 37.258125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244930, 37.090839, 37.609341>,  <37.384293, 36.721428, 36.931835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244930, 37.090839, 37.609341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116467, 36.714329, 37.651005>,  <37.039387, 36.488422, 37.676003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116467, 36.714329, 37.651005>,  <37.244930, 37.090839, 37.609341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116467, 36.714329, 37.651005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463103, -0.060159, 0.884261,
		-0.826070, 0.332227, 0.455229,
		-0.321162, -0.941279, 0.104160,
		37.020119, 36.431946, 37.682251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914242, 36.974220, 38.282280>,  <37.244930, 37.090839, 37.609341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914242, 36.974220, 38.282280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050484, 36.613338, 38.176437>,  <37.132229, 36.396809, 38.112930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050484, 36.613338, 38.176437>,  <36.914242, 36.974220, 38.282280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050484, 36.613338, 38.176437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383408, -0.123691, 0.915259,
		-0.858478, -0.413199, 0.303781,
		0.340609, -0.902201, -0.264610,
		37.152668, 36.342678, 38.097054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538883, 36.534397, 38.717896>,  <36.914242, 36.974220, 38.282280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538883, 36.534397, 38.717896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872971, 36.341728, 38.611759>,  <37.073421, 36.226128, 38.548077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872971, 36.341728, 38.611759>,  <36.538883, 36.534397, 38.717896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872971, 36.341728, 38.611759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249949, -0.097274, 0.963361,
		-0.489830, -0.870938, 0.039148,
		0.835220, -0.481668, -0.265337,
		37.123535, 36.197227, 38.532158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640064, 35.894642, 39.179920>,  <36.538883, 36.534397, 38.717896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640064, 35.894642, 39.179920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998825, 35.952694, 39.012821>,  <37.214081, 35.987526, 38.912563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998825, 35.952694, 39.012821>,  <36.640064, 35.894642, 39.179920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998825, 35.952694, 39.012821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434141, -0.109005, 0.894226,
		0.084239, -0.983390, -0.160772,
		0.896898, 0.145127, -0.417748,
		37.267895, 35.996231, 38.887497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066025, 35.327126, 39.418823>,  <36.640064, 35.894642, 39.179920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066025, 35.327126, 39.418823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330338, 35.603081, 39.300552>,  <37.488926, 35.768654, 39.229588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330338, 35.603081, 39.300552>,  <37.066025, 35.327126, 39.418823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330338, 35.603081, 39.300552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381983, 0.030016, 0.923681,
		0.646110, -0.723295, -0.243691,
		0.660780, 0.689886, -0.295680,
		37.528572, 35.810047, 39.211849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683136, 35.126446, 39.727547>,  <37.066025, 35.327126, 39.418823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683136, 35.126446, 39.727547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762489, 35.506718, 39.632168>,  <37.810101, 35.734879, 39.574940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762489, 35.506718, 39.632168>,  <37.683136, 35.126446, 39.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762489, 35.506718, 39.632168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360501, 0.155449, 0.919714,
		0.911417, -0.268418, -0.311881,
		0.198386, 0.950677, -0.238444,
		37.822006, 35.791920, 39.560635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308804, 35.240669, 40.080605>,  <37.683136, 35.126446, 39.727547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308804, 35.240669, 40.080605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147663, 35.600452, 40.012867>,  <38.050980, 35.816322, 39.972225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147663, 35.600452, 40.012867>,  <38.308804, 35.240669, 40.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147663, 35.600452, 40.012867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133135, 0.240638, 0.961441,
		0.905530, 0.364775, -0.216691,
		-0.402854, 0.899462, -0.169341,
		38.026806, 35.870293, 39.962067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826221, 35.760372, 40.398308>,  <38.308804, 35.240669, 40.080605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826221, 35.760372, 40.398308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483196, 35.958153, 40.341599>,  <38.277382, 36.076820, 40.307575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483196, 35.958153, 40.341599>,  <38.826221, 35.760372, 40.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483196, 35.958153, 40.341599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029868, 0.323020, 0.945921,
		0.513506, 0.806955, -0.291779,
		-0.857566, 0.494451, -0.141771,
		38.225925, 36.106487, 40.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008812, 36.430584, 40.550144>,  <38.826221, 35.760372, 40.398308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008812, 36.430584, 40.550144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614395, 36.390560, 40.603367>,  <38.377743, 36.366547, 40.635300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614395, 36.390560, 40.603367>,  <39.008812, 36.430584, 40.550144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614395, 36.390560, 40.603367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056652, 0.549847, 0.833342,
		-0.156541, 0.829251, -0.536505,
		-0.986045, -0.100059, 0.133053,
		38.318581, 36.360542, 40.643284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788692, 37.137253, 40.847000>,  <39.008812, 36.430584, 40.550144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788692, 37.137253, 40.847000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483181, 36.900829, 40.950760>,  <38.299873, 36.758976, 41.013016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483181, 36.900829, 40.950760>,  <38.788692, 37.137253, 40.847000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483181, 36.900829, 40.950760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188124, 0.588262, 0.786484,
		-0.617457, 0.551899, -0.560494,
		-0.763777, -0.591063, 0.259401,
		38.254047, 36.723511, 41.028580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161823, 37.576145, 41.081379>,  <38.788692, 37.137253, 40.847000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161823, 37.576145, 41.081379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049538, 37.229465, 41.246319>,  <37.982166, 37.021458, 41.345284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049538, 37.229465, 41.246319>,  <38.161823, 37.576145, 41.081379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049538, 37.229465, 41.246319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328281, 0.490413, 0.807295,
		-0.901903, 0.091257, -0.422189,
		-0.280718, -0.866699, 0.412347,
		37.965321, 36.969456, 41.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385918, 37.567528, 41.381500>,  <38.161823, 37.576145, 41.081379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385918, 37.567528, 41.381500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593506, 37.285553, 41.574886>,  <37.718060, 37.116367, 41.690918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593506, 37.285553, 41.574886>,  <37.385918, 37.567528, 41.381500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593506, 37.285553, 41.574886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224355, 0.433430, 0.872813,
		-0.824822, -0.561434, 0.066783,
		0.518973, -0.704933, 0.483463,
		37.749199, 37.074074, 41.719925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021206, 37.435448, 41.953766>,  <37.385918, 37.567528, 41.381500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021206, 37.435448, 41.953766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360600, 37.255447, 42.065166>,  <37.564236, 37.147446, 42.132008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360600, 37.255447, 42.065166>,  <37.021206, 37.435448, 41.953766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360600, 37.255447, 42.065166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085276, 0.403126, 0.911163,
		-0.522299, -0.796860, 0.303673,
		0.848488, -0.450004, 0.278505,
		37.615147, 37.120445, 42.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885593, 36.946560, 42.562824>,  <37.021206, 37.435448, 41.953766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885593, 36.946560, 42.562824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262234, 37.081055, 42.570091>,  <37.488216, 37.161751, 42.574451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262234, 37.081055, 42.570091>,  <36.885593, 36.946560, 42.562824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262234, 37.081055, 42.570091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134217, 0.325282, 0.936044,
		0.308815, -0.883822, 0.351415,
		0.941605, 0.336230, 0.018171,
		37.544716, 37.181927, 42.575542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160583, 36.801674, 43.208038>,  <36.885593, 36.946560, 42.562824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160583, 36.801674, 43.208038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442921, 37.055859, 43.082836>,  <37.612324, 37.208370, 43.007713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442921, 37.055859, 43.082836>,  <37.160583, 36.801674, 43.208038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442921, 37.055859, 43.082836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139200, 0.308826, 0.940877,
		0.694559, -0.707680, 0.129525,
		0.705840, 0.635465, -0.313007,
		37.654675, 37.246498, 42.988934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747684, 36.660221, 43.690674>,  <37.160583, 36.801674, 43.208038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747684, 36.660221, 43.690674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822350, 37.030212, 43.558266>,  <37.867149, 37.252209, 43.478821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822350, 37.030212, 43.558266>,  <37.747684, 36.660221, 43.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822350, 37.030212, 43.558266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182727, 0.298370, 0.936796,
		0.965282, -0.235347, -0.113325,
		0.186659, 0.924979, -0.331016,
		37.878345, 37.307705, 43.458961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368088, 36.881119, 44.065071>,  <37.747684, 36.660221, 43.690674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368088, 36.881119, 44.065071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198929, 37.214752, 43.923389>,  <38.097435, 37.414932, 43.838383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198929, 37.214752, 43.923389>,  <38.368088, 36.881119, 44.065071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198929, 37.214752, 43.923389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042083, 0.408528, 0.911775,
		0.905201, 0.370679, -0.207865,
		-0.422895, 0.834087, -0.354201,
		38.072060, 37.464977, 43.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761398, 37.408192, 44.376266>,  <38.368088, 36.881119, 44.065071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761398, 37.408192, 44.376266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416401, 37.576004, 44.263062>,  <38.209400, 37.676693, 44.195141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416401, 37.576004, 44.263062>,  <38.761398, 37.408192, 44.376266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416401, 37.576004, 44.263062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043253, 0.618304, 0.784748,
		0.504211, 0.664602, -0.551431,
		-0.862497, 0.419529, -0.283010,
		38.157654, 37.701862, 44.178158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990788, 37.974735, 44.313869>,  <38.761398, 37.408192, 44.376266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990788, 37.974735, 44.313869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596245, 38.001579, 44.374001>,  <38.359520, 38.017685, 44.410080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596245, 38.001579, 44.374001>,  <38.990788, 37.974735, 44.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596245, 38.001579, 44.374001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163335, 0.513056, 0.842671,
		-0.020578, 0.855728, -0.517017,
		-0.986356, 0.067107, 0.150328,
		38.300339, 38.021709, 44.419098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788841, 38.759792, 44.336143>,  <38.990788, 37.974735, 44.313869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788841, 38.759792, 44.336143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507038, 38.551151, 44.528641>,  <38.337955, 38.425964, 44.644138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507038, 38.551151, 44.528641>,  <38.788841, 38.759792, 44.336143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507038, 38.551151, 44.528641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056772, 0.717347, 0.694399,
		-0.707421, 0.461890, -0.534990,
		-0.704509, -0.521605, 0.481244,
		38.295685, 38.394669, 44.673016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463966, 39.295727, 44.621563>,  <38.788841, 38.759792, 44.336143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463966, 39.295727, 44.621563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326786, 38.986912, 44.835606>,  <38.244476, 38.801624, 44.964031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326786, 38.986912, 44.835606>,  <38.463966, 39.295727, 44.621563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326786, 38.986912, 44.835606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028594, 0.577975, 0.815553,
		-0.938916, 0.264397, -0.220295,
		-0.342955, -0.772035, 0.535110,
		38.223900, 38.755302, 44.996140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818382, 39.517509, 45.070084>,  <38.463966, 39.295727, 44.621563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818382, 39.517509, 45.070084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956917, 39.191097, 45.255188>,  <38.040035, 38.995251, 45.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956917, 39.191097, 45.255188>,  <37.818382, 39.517509, 45.070084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956917, 39.191097, 45.255188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112913, 0.525964, 0.842979,
		-0.931292, -0.239700, 0.274299,
		0.346333, -0.816031, 0.462760,
		38.060818, 38.946289, 45.394016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553551, 39.467731, 45.840050>,  <37.818382, 39.517509, 45.070084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553551, 39.467731, 45.840050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897259, 39.263664, 45.825165>,  <38.103485, 39.141224, 45.816235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897259, 39.263664, 45.825165>,  <37.553551, 39.467731, 45.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897259, 39.263664, 45.825165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211970, 0.288924, 0.933591,
		-0.465534, -0.810095, 0.356403,
		0.859271, -0.510165, -0.037212,
		38.155041, 39.110615, 45.813999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618580, 39.237896, 46.428585>,  <37.553551, 39.467731, 45.840050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618580, 39.237896, 46.428585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990990, 39.176205, 46.296284>,  <38.214436, 39.139191, 46.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990990, 39.176205, 46.296284>,  <37.618580, 39.237896, 46.428585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990990, 39.176205, 46.296284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354732, 0.169524, 0.919471,
		-0.085736, -0.973383, 0.212542,
		0.931029, -0.154227, -0.330756,
		38.270298, 39.129936, 46.197056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848854, 38.957832, 47.062641>,  <37.618580, 39.237896, 46.428585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848854, 38.957832, 47.062641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151157, 39.092918, 46.838223>,  <38.332539, 39.173969, 46.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151157, 39.092918, 46.838223>,  <37.848854, 38.957832, 47.062641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151157, 39.092918, 46.838223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428633, 0.392609, 0.813715,
		0.495081, -0.855455, 0.151959,
		0.755757, 0.337720, -0.561049,
		38.377884, 39.194233, 46.669907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379463, 38.792534, 47.448418>,  <37.848854, 38.957832, 47.062641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379463, 38.792534, 47.448418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536705, 39.074177, 47.211880>,  <38.631050, 39.243164, 47.069958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536705, 39.074177, 47.211880>,  <38.379463, 38.792534, 47.448418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536705, 39.074177, 47.211880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397548, 0.449757, 0.799796,
		0.829109, -0.549495, -0.103115,
		0.393107, 0.704112, -0.591348,
		38.654636, 39.285412, 47.034473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081184, 38.802814, 47.571629>,  <38.379463, 38.792534, 47.448418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081184, 38.802814, 47.571629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006447, 39.167030, 47.424114>,  <38.961605, 39.385559, 47.335606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006447, 39.167030, 47.424114>,  <39.081184, 38.802814, 47.571629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006447, 39.167030, 47.424114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480774, 0.412126, 0.773957,
		0.856706, -0.032693, -0.514768,
		-0.186846, 0.910540, -0.368789,
		38.950394, 39.440193, 47.313477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691372, 39.200294, 47.519726>,  <39.081184, 38.802814, 47.571629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691372, 39.200294, 47.519726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397671, 39.471714, 47.511280>,  <39.221451, 39.634567, 47.506210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397671, 39.471714, 47.511280>,  <39.691372, 39.200294, 47.519726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397671, 39.471714, 47.511280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572931, 0.636051, 0.516904,
		0.364176, 0.367438, -0.855783,
		-0.734252, 0.678549, -0.021118,
		39.177395, 39.675278, 47.504944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095367, 39.842720, 47.537521>,  <39.691372, 39.200294, 47.519726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095367, 39.842720, 47.537521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723175, 39.954128, 47.632717>,  <39.499859, 40.020973, 47.689835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723175, 39.954128, 47.632717>,  <40.095367, 39.842720, 47.537521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723175, 39.954128, 47.632717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365821, 0.741228, 0.562810,
		-0.019654, 0.610745, -0.791584,
		-0.930478, 0.278517, 0.237991,
		39.444031, 40.037682, 47.704113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100269, 40.594803, 47.558247>,  <40.095367, 39.842720, 47.537521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100269, 40.594803, 47.558247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781811, 40.486801, 47.774853>,  <39.590736, 40.422001, 47.904816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781811, 40.486801, 47.774853>,  <40.100269, 40.594803, 47.558247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781811, 40.486801, 47.774853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377201, 0.478308, 0.793058,
		-0.473142, 0.835654, -0.278959,
		-0.796151, -0.270006, 0.541517,
		39.542965, 40.405800, 47.937309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854031, 41.159451, 47.847694>,  <40.100269, 40.594803, 47.558247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854031, 41.159451, 47.847694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739704, 40.854259, 48.079617>,  <39.671108, 40.671146, 48.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739704, 40.854259, 48.079617>,  <39.854031, 41.159451, 47.847694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739704, 40.854259, 48.079617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268820, 0.516913, 0.812734,
		-0.919805, 0.388160, 0.057359,
		-0.285821, -0.762976, 0.579805,
		39.653957, 40.625366, 48.253559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511318, 41.578766, 47.793697>,  <39.854031, 41.159451, 47.847694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511318, 41.578766, 47.793697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804417, 41.830589, 47.690357>,  <40.980274, 41.981682, 47.628353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804417, 41.830589, 47.690357>,  <40.511318, 41.578766, 47.793697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804417, 41.830589, 47.690357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314903, -0.022862, -0.948849,
		-0.603262, 0.776617, 0.181498,
		0.732742, 0.629559, -0.258351,
		41.024239, 42.019459, 47.612850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139252, 41.958698, 47.299652>,  <40.511318, 41.578766, 47.793697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139252, 41.958698, 47.299652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519421, 42.069965, 47.244064>,  <40.747524, 42.136726, 47.210712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519421, 42.069965, 47.244064>,  <40.139252, 41.958698, 47.299652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519421, 42.069965, 47.244064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158386, 0.048471, -0.986187,
		-0.267588, 0.959309, 0.090125,
		0.950427, 0.278166, -0.138971,
		40.804550, 42.153416, 47.202374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177902, 42.598824, 46.859608>,  <40.139252, 41.958698, 47.299652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177902, 42.598824, 46.859608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517792, 42.389000, 46.838425>,  <40.721725, 42.263107, 46.825714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517792, 42.389000, 46.838425>,  <40.177902, 42.598824, 46.859608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517792, 42.389000, 46.838425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091279, -0.047437, -0.994695,
		0.519264, 0.850052, -0.088189,
		0.849725, -0.524559, -0.052960,
		40.772709, 42.231632, 46.822536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581341, 42.901302, 46.331028>,  <40.177902, 42.598824, 46.859608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581341, 42.901302, 46.331028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716839, 42.526814, 46.368439>,  <40.798138, 42.302120, 46.390884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716839, 42.526814, 46.368439>,  <40.581341, 42.901302, 46.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716839, 42.526814, 46.368439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046320, -0.082688, -0.995498,
		0.939739, 0.341549, 0.015356,
		0.338742, -0.936220, 0.093526,
		40.818462, 42.245949, 46.396496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900879, 42.880753, 45.658287>,  <40.581341, 42.901302, 46.331028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900879, 42.880753, 45.658287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841991, 42.513672, 45.805882>,  <40.806660, 42.293423, 45.894436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841991, 42.513672, 45.805882>,  <40.900879, 42.880753, 45.658287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841991, 42.513672, 45.805882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191372, -0.339571, -0.920906,
		0.970415, -0.206183, -0.125633,
		-0.147214, -0.917704, 0.368982,
		40.797829, 42.238361, 45.916576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321644, 42.403065, 45.170254>,  <40.900879, 42.880753, 45.658287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321644, 42.403065, 45.170254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068329, 42.166294, 45.369682>,  <40.916340, 42.024231, 45.489342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068329, 42.166294, 45.369682>,  <41.321644, 42.403065, 45.170254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068329, 42.166294, 45.369682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255422, -0.448268, -0.856630,
		0.730554, -0.669839, 0.132692,
		-0.633285, -0.591922, 0.498575,
		40.878342, 41.988716, 45.519257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562263, 41.707554, 45.121925>,  <41.321644, 42.403065, 45.170254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562263, 41.707554, 45.121925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172226, 41.683193, 45.207233>,  <40.938202, 41.668575, 45.258419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172226, 41.683193, 45.207233>,  <41.562263, 41.707554, 45.121925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172226, 41.683193, 45.207233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152598, -0.513579, -0.844364,
		0.160956, -0.855878, 0.491494,
		-0.975093, -0.060904, 0.213269,
		40.879700, 41.664921, 45.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410545, 41.037132, 44.973446>,  <41.562263, 41.707554, 45.121925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410545, 41.037132, 44.973446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054096, 41.218231, 44.961315>,  <40.840229, 41.326893, 44.954037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054096, 41.218231, 44.961315>,  <41.410545, 41.037132, 44.973446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054096, 41.218231, 44.961315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293191, -0.625503, -0.723039,
		-0.346328, -0.635423, 0.690141,
		-0.891121, 0.452751, -0.030329,
		40.786758, 41.354057, 44.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869728, 40.483463, 44.954517>,  <41.410545, 41.037132, 44.973446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869728, 40.483463, 44.954517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670704, 40.807095, 44.829411>,  <40.551289, 41.001274, 44.754345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670704, 40.807095, 44.829411>,  <40.869728, 40.483463, 44.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670704, 40.807095, 44.829411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427029, -0.542315, -0.723561,
		-0.755038, -0.226452, 0.615335,
		-0.497557, 0.809082, -0.312767,
		40.521435, 41.049820, 44.735580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225437, 40.234520, 44.767693>,  <40.869728, 40.483463, 44.954517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225437, 40.234520, 44.767693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225487, 40.605785, 44.618828>,  <40.225517, 40.828545, 44.529510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225487, 40.605785, 44.618828>,  <40.225437, 40.234520, 44.767693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225487, 40.605785, 44.618828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536706, -0.313958, -0.783184,
		-0.843769, 0.199835, 0.498116,
		0.000120, 0.928168, -0.372161,
		40.225521, 40.884235, 44.507179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557556, 40.439079, 44.650978>,  <40.225437, 40.234520, 44.767693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557556, 40.439079, 44.650978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795597, 40.666988, 44.424274>,  <39.938419, 40.803734, 44.288254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795597, 40.666988, 44.424274>,  <39.557556, 40.439079, 44.650978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795597, 40.666988, 44.424274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393310, -0.408511, -0.823666,
		-0.700831, 0.713074, -0.019007,
		0.595100, 0.569775, -0.566757,
		39.974129, 40.837921, 44.254246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125305, 40.736111, 44.201305>,  <39.557556, 40.439079, 44.650978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125305, 40.736111, 44.201305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486736, 40.740669, 44.029995>,  <39.703594, 40.743404, 43.927208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486736, 40.740669, 44.029995>,  <39.125305, 40.736111, 44.201305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486736, 40.740669, 44.029995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407191, -0.287965, -0.866759,
		-0.133202, 0.957573, -0.255560,
		0.903578, 0.011392, -0.428273,
		39.757809, 40.744087, 43.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951500, 41.056881, 43.549068>,  <39.125305, 40.736111, 44.201305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951500, 41.056881, 43.549068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307667, 40.883026, 43.495037>,  <39.521366, 40.778713, 43.462616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307667, 40.883026, 43.495037>,  <38.951500, 41.056881, 43.549068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307667, 40.883026, 43.495037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267043, -0.258553, -0.928352,
		0.368569, 0.862695, -0.346287,
		0.890418, -0.434636, -0.135082,
		39.574791, 40.752636, 43.454514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126194, 41.234444, 42.965870>,  <38.951500, 41.056881, 43.549068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126194, 41.234444, 42.965870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350391, 40.907009, 43.016094>,  <39.484909, 40.710548, 43.046230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350391, 40.907009, 43.016094>,  <39.126194, 41.234444, 42.965870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350391, 40.907009, 43.016094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239842, -0.305565, -0.921469,
		0.792671, 0.486359, -0.367597,
		0.560490, -0.818587, 0.125563,
		39.518539, 40.661434, 43.053764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558315, 41.236271, 42.417976>,  <39.126194, 41.234444, 42.965870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558315, 41.236271, 42.417976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542816, 40.864067, 42.563656>,  <39.533516, 40.640743, 42.651066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542816, 40.864067, 42.563656>,  <39.558315, 41.236271, 42.417976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542816, 40.864067, 42.563656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076546, -0.360642, -0.929558,
		0.996313, -0.063892, -0.057255,
		-0.038743, -0.930514, 0.364203,
		39.531193, 40.584911, 42.672916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888096, 40.898174, 41.902790>,  <39.558315, 41.236271, 42.417976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888096, 40.898174, 41.902790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722759, 40.609348, 42.124699>,  <39.623558, 40.436054, 42.257843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722759, 40.609348, 42.124699>,  <39.888096, 40.898174, 41.902790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722759, 40.609348, 42.124699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040976, -0.623388, -0.780839,
		0.909652, -0.300024, 0.287261,
		-0.413345, -0.722062, 0.554772,
		39.598755, 40.392731, 42.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132141, 40.265816, 41.639332>,  <39.888096, 40.898174, 41.902790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132141, 40.265816, 41.639332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823215, 40.107983, 41.838463>,  <39.637859, 40.013283, 41.957943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823215, 40.107983, 41.838463>,  <40.132141, 40.265816, 41.639332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823215, 40.107983, 41.838463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182212, -0.613150, -0.768665,
		0.608549, -0.684361, 0.401646,
		-0.772313, -0.394585, 0.497830,
		39.591522, 39.989609, 41.987812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206688, 39.504452, 41.740772>,  <40.132141, 40.265816, 41.639332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206688, 39.504452, 41.740772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826511, 39.625965, 41.714294>,  <39.598408, 39.698872, 41.698406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826511, 39.625965, 41.714294>,  <40.206688, 39.504452, 41.740772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826511, 39.625965, 41.714294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114870, -0.540945, -0.833177,
		-0.288911, -0.784280, 0.549031,
		-0.950440, 0.303781, -0.066195,
		39.541378, 39.717098, 41.694435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925751, 38.882740, 41.575199>,  <40.206688, 39.504452, 41.740772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925751, 38.882740, 41.575199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626637, 39.142921, 41.521935>,  <39.447166, 39.299030, 41.489975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626637, 39.142921, 41.521935>,  <39.925751, 38.882740, 41.575199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626637, 39.142921, 41.521935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409059, -0.609330, -0.679255,
		-0.522958, -0.453468, 0.721721,
		-0.747788, 0.650449, -0.133159,
		39.402302, 39.338055, 41.481987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285011, 38.447468, 41.390663>,  <39.925751, 38.882740, 41.575199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285011, 38.447468, 41.390663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192947, 38.814457, 41.260880>,  <39.137707, 39.034649, 41.183010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192947, 38.814457, 41.260880>,  <39.285011, 38.447468, 41.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192947, 38.814457, 41.260880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407784, -0.393657, -0.823861,
		-0.883593, -0.057312, 0.464735,
		-0.230163, 0.917469, -0.324461,
		39.123898, 39.089699, 41.163540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730389, 38.293133, 41.092621>,  <39.285011, 38.447468, 41.390663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730389, 38.293133, 41.092621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806026, 38.654686, 40.939133>,  <38.851410, 38.871616, 40.847042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806026, 38.654686, 40.939133>,  <38.730389, 38.293133, 41.092621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806026, 38.654686, 40.939133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410265, -0.282304, -0.867172,
		-0.892148, 0.321399, 0.317451,
		0.189091, 0.903884, -0.383716,
		38.862755, 38.925850, 40.824017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036961, 38.595314, 40.713943>,  <38.730389, 38.293133, 41.092621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036961, 38.595314, 40.713943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407742, 38.694931, 40.601707>,  <38.630211, 38.754704, 40.534367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407742, 38.694931, 40.601707>,  <38.036961, 38.595314, 40.713943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407742, 38.694931, 40.601707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148405, -0.443503, -0.883901,
		-0.344577, 0.860976, -0.374147,
		0.926953, 0.249047, -0.280594,
		38.685829, 38.769646, 40.517529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965858, 38.640049, 40.051105>,  <38.036961, 38.595314, 40.713943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965858, 38.640049, 40.051105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363216, 38.619061, 40.091927>,  <38.601631, 38.606468, 40.116417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363216, 38.619061, 40.091927>,  <37.965858, 38.640049, 40.051105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363216, 38.619061, 40.091927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066769, -0.458987, -0.885930,
		0.093322, 0.886892, -0.452452,
		0.993394, -0.052467, 0.102050,
		38.661236, 38.603321, 40.122543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246914, 38.975891, 39.459869>,  <37.965858, 38.640049, 40.051105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246914, 38.975891, 39.459869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509338, 38.706856, 39.596813>,  <38.666794, 38.545437, 39.678982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509338, 38.706856, 39.596813>,  <38.246914, 38.975891, 39.459869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509338, 38.706856, 39.596813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265142, -0.219314, -0.938936,
		0.706601, 0.706774, 0.034448,
		0.656060, -0.672586, 0.342363,
		38.706158, 38.505081, 39.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891129, 39.066288, 38.972092>,  <38.246914, 38.975891, 39.459869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891129, 39.066288, 38.972092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983711, 38.726589, 39.161915>,  <39.039261, 38.522770, 39.275810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983711, 38.726589, 39.161915>,  <38.891129, 39.066288, 38.972092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983711, 38.726589, 39.161915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362365, -0.377440, -0.852192,
		0.902839, 0.369212, 0.220375,
		0.231461, -0.849248, 0.474557,
		39.053150, 38.471813, 39.304283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651611, 38.998547, 38.966110>,  <38.891129, 39.066288, 38.972092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651611, 38.998547, 38.966110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484722, 38.636848, 39.002464>,  <39.384586, 38.419830, 39.024277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484722, 38.636848, 39.002464>,  <39.651611, 38.998547, 38.966110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484722, 38.636848, 39.002464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433228, -0.285811, -0.854766,
		0.798896, -0.317255, 0.510993,
		-0.417227, -0.904246, 0.090890,
		39.359554, 38.365574, 39.029732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156704, 38.545223, 38.656937>,  <39.651611, 38.998547, 38.966110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156704, 38.545223, 38.656937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827362, 38.319122, 38.677197>,  <39.629757, 38.183460, 38.689350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827362, 38.319122, 38.677197>,  <40.156704, 38.545223, 38.656937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827362, 38.319122, 38.677197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307820, -0.519776, -0.796919,
		0.476788, -0.640561, 0.601959,
		-0.823359, -0.565257, 0.050645,
		39.580353, 38.149544, 38.692390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431873, 37.876831, 38.650425>,  <40.156704, 38.545223, 38.656937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431873, 37.876831, 38.650425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056683, 37.828987, 38.520264>,  <39.831566, 37.800282, 38.442165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056683, 37.828987, 38.520264>,  <40.431873, 37.876831, 38.650425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056683, 37.828987, 38.520264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343764, -0.199211, -0.917683,
		0.044939, -0.972630, 0.227973,
		-0.937981, -0.119608, -0.325403,
		39.775288, 37.793106, 38.422642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432472, 37.212753, 38.384109>,  <40.431873, 37.876831, 38.650425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432472, 37.212753, 38.384109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125641, 37.400150, 38.208794>,  <39.941540, 37.512589, 38.103603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125641, 37.400150, 38.208794>,  <40.432472, 37.212753, 38.384109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125641, 37.400150, 38.208794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242670, -0.420535, -0.874221,
		-0.593882, -0.776960, 0.208896,
		-0.767083, 0.468491, -0.438293,
		39.895515, 37.540699, 38.077305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060265, 36.641575, 38.004311>,  <40.432472, 37.212753, 38.384109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060265, 36.641575, 38.004311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990005, 36.985985, 37.813408>,  <39.947849, 37.192631, 37.698864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990005, 36.985985, 37.813408>,  <40.060265, 36.641575, 38.004311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990005, 36.985985, 37.813408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202934, -0.442718, -0.873395,
		-0.963310, -0.250263, -0.096969,
		-0.175648, 0.861028, -0.477261,
		39.937309, 37.244293, 37.670231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723236, 36.391651, 37.427444>,  <40.060265, 36.641575, 38.004311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723236, 36.391651, 37.427444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785923, 36.772583, 37.322754>,  <39.823536, 37.001144, 37.259941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785923, 36.772583, 37.322754>,  <39.723236, 36.391651, 37.427444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785923, 36.772583, 37.322754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201418, -0.290250, -0.935514,
		-0.966886, 0.093899, -0.237306,
		0.156722, 0.952333, -0.261726,
		39.832939, 37.058281, 37.244236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284512, 36.568428, 36.851559>,  <39.723236, 36.391651, 37.427444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284512, 36.568428, 36.851559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614441, 36.794041, 36.835827>,  <39.812397, 36.929409, 36.826389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614441, 36.794041, 36.835827>,  <39.284512, 36.568428, 36.851559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614441, 36.794041, 36.835827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112181, -0.231431, -0.966362,
		-0.554156, 0.792662, -0.254162,
		0.824819, 0.564028, -0.039327,
		39.861885, 36.963249, 36.824028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300301, 36.722702, 36.170177>,  <39.284512, 36.568428, 36.851559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300301, 36.722702, 36.170177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663223, 36.851421, 36.278431>,  <39.880978, 36.928654, 36.343384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663223, 36.851421, 36.278431>,  <39.300301, 36.722702, 36.170177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663223, 36.851421, 36.278431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356051, -0.245648, -0.901601,
		-0.223652, 0.914388, -0.337454,
		0.907308, 0.321796, 0.270629,
		39.935417, 36.947960, 36.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522278, 37.311996, 35.763371>,  <39.300301, 36.722702, 36.170177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522278, 37.311996, 35.763371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853123, 37.125504, 35.888924>,  <40.051628, 37.013607, 35.964256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853123, 37.125504, 35.888924>,  <39.522278, 37.311996, 35.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853123, 37.125504, 35.888924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212576, -0.257476, -0.942612,
		0.520292, 0.846365, -0.113851,
		0.827108, -0.466232, 0.313880,
		40.101254, 36.985634, 35.983086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111824, 37.426464, 35.335335>,  <39.522278, 37.311996, 35.763371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111824, 37.426464, 35.335335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257404, 37.096634, 35.508595>,  <40.344753, 36.898735, 35.612553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257404, 37.096634, 35.508595>,  <40.111824, 37.426464, 35.335335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257404, 37.096634, 35.508595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316056, -0.328121, -0.890194,
		0.876156, 0.460887, 0.141192,
		0.363950, -0.824573, 0.433152,
		40.366589, 36.849262, 35.638538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762192, 37.308266, 35.013260>,  <40.111824, 37.426464, 35.335335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762192, 37.308266, 35.013260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690769, 36.959606, 35.195843>,  <40.647915, 36.750412, 35.305393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690769, 36.959606, 35.195843>,  <40.762192, 37.308266, 35.013260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690769, 36.959606, 35.195843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198317, -0.486274, -0.851004,
		0.963737, -0.061425, 0.259687,
		-0.178552, -0.871645, 0.456459,
		40.637203, 36.698112, 35.332779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333328, 36.836941, 34.850452>,  <40.762192, 37.308266, 35.013260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333328, 36.836941, 34.850452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021225, 36.611736, 34.959423>,  <40.833965, 36.476612, 35.024807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021225, 36.611736, 34.959423>,  <41.333328, 36.836941, 34.850452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021225, 36.611736, 34.959423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045246, -0.485227, -0.873217,
		0.623823, -0.669006, 0.404075,
		-0.780255, -0.563015, 0.272426,
		40.787148, 36.442833, 35.041149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624107, 36.229588, 34.814560>,  <41.333328, 36.836941, 34.850452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624107, 36.229588, 34.814560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227535, 36.183163, 34.790543>,  <40.989594, 36.155308, 34.776131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227535, 36.183163, 34.790543>,  <41.624107, 36.229588, 34.814560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227535, 36.183163, 34.790543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107330, -0.461189, -0.880787,
		0.074533, -0.879679, 0.469691,
		-0.991426, -0.116060, -0.060042,
		40.930107, 36.148346, 34.772530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565399, 35.691120, 34.392929>,  <41.624107, 36.229588, 34.814560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565399, 35.691120, 34.392929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189571, 35.826866, 34.374886>,  <40.964073, 35.908314, 34.364059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189571, 35.826866, 34.374886>,  <41.565399, 35.691120, 34.392929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189571, 35.826866, 34.374886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056496, -0.283644, -0.957264,
		-0.337656, -0.896871, 0.285677,
		-0.939572, 0.339366, -0.045104,
		40.907700, 35.928677, 34.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131943, 35.126648, 34.171768>,  <41.565399, 35.691120, 34.392929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131943, 35.126648, 34.171768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977524, 35.483917, 34.079498>,  <40.884872, 35.698277, 34.024136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977524, 35.483917, 34.079498>,  <41.131943, 35.126648, 34.171768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977524, 35.483917, 34.079498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180277, -0.318289, -0.930694,
		-0.904692, -0.317706, 0.283893,
		-0.386047, 0.893172, -0.230679,
		40.861710, 35.751869, 34.010296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844662, 35.005878, 33.790531>,  <41.131943, 35.126648, 34.171768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844662, 35.005878, 33.790531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891312, 35.360348, 33.611156>,  <41.919300, 35.573029, 33.503532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891312, 35.360348, 33.611156>,  <41.844662, 35.005878, 33.790531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891312, 35.360348, 33.611156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830992, -0.334343, -0.444597,
		-0.543922, -0.320799, -0.775395,
		0.116622, 0.886173, -0.448438,
		41.926300, 35.626198, 33.476624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019447, 35.071228, 33.009754>,  <41.844662, 35.005878, 33.790531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019447, 35.071228, 33.009754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187592, 35.392754, 33.178123>,  <42.288479, 35.585670, 33.279144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187592, 35.392754, 33.178123>,  <42.019447, 35.071228, 33.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187592, 35.392754, 33.178123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791349, -0.097816, -0.603489,
		-0.443922, 0.586778, -0.677218,
		0.420357, 0.803818, 0.420924,
		42.313698, 35.633900, 33.304401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172207, 35.609741, 32.557247>,  <42.019447, 35.071228, 33.009754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172207, 35.609741, 32.557247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419998, 35.592854, 32.870800>,  <42.568672, 35.582722, 33.058929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419998, 35.592854, 32.870800>,  <42.172207, 35.609741, 32.557247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419998, 35.592854, 32.870800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774702, -0.128451, -0.619143,
		0.126830, 0.990817, -0.046863,
		0.619477, -0.042221, 0.783879,
		42.605843, 35.580189, 33.105965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704384, 36.229675, 32.777004>,  <42.172207, 35.609741, 32.557247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704384, 36.229675, 32.777004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872009, 35.877083, 32.864075>,  <42.972584, 35.665527, 32.916317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872009, 35.877083, 32.864075>,  <42.704384, 36.229675, 32.777004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872009, 35.877083, 32.864075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749980, 0.200917, -0.630208,
		0.511779, 0.427350, 0.745288,
		0.419061, -0.881478, 0.217679,
		42.997726, 35.612640, 32.929379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399319, 36.418983, 32.850021>,  <42.704384, 36.229675, 32.777004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399319, 36.418983, 32.850021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323399, 36.033596, 32.774448>,  <43.277847, 35.802364, 32.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323399, 36.033596, 32.774448>,  <43.399319, 36.418983, 32.850021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323399, 36.033596, 32.774448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661950, 0.016544, -0.749365,
		0.725118, -0.267297, 0.634631,
		-0.189804, -0.963472, -0.188934,
		43.266457, 35.744553, 32.717770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033863, 36.162155, 32.689827>,  <43.399319, 36.418983, 32.850021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033863, 36.162155, 32.689827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789242, 35.880329, 32.545830>,  <43.642467, 35.711235, 32.459431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789242, 35.880329, 32.545830>,  <44.033863, 36.162155, 32.689827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789242, 35.880329, 32.545830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552216, -0.054248, -0.831934,
		0.566622, -0.707564, 0.422247,
		-0.611553, -0.704564, -0.359990,
		43.605774, 35.668961, 32.437832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173897, 35.942211, 33.408531>,  <44.033863, 36.162155, 32.689827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173897, 35.942211, 33.408531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494766, 36.084827, 33.600113>,  <44.687286, 36.170399, 33.715061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494766, 36.084827, 33.600113>,  <44.173897, 35.942211, 33.408531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494766, 36.084827, 33.600113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254308, 0.521739, -0.814319,
		-0.540225, 0.775028, 0.327855,
		0.802175, 0.356539, 0.478952,
		44.735420, 36.191788, 33.743797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598198, 35.980938, 33.909519>,  <44.173897, 35.942211, 33.408531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598198, 35.980938, 33.909519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778252, 35.706497, 34.138130>,  <43.886284, 35.541832, 34.275295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778252, 35.706497, 34.138130>,  <43.598198, 35.980938, 33.909519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778252, 35.706497, 34.138130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873705, -0.206207, 0.440589,
		-0.184432, -0.697677, -0.692265,
		0.450139, -0.686094, 0.571533,
		43.913292, 35.500668, 34.309589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203465, 35.408852, 33.896873>,  <43.598198, 35.980938, 33.909519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203465, 35.408852, 33.896873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414955, 35.347111, 34.230732>,  <43.541847, 35.310066, 34.431046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414955, 35.347111, 34.230732>,  <43.203465, 35.408852, 33.896873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414955, 35.347111, 34.230732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828804, -0.306040, 0.468427,
		0.183132, -0.939423, -0.289737,
		0.528722, -0.154351, 0.834643,
		43.573570, 35.300804, 34.481125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911095, 34.870308, 34.165165>,  <43.203465, 35.408852, 33.896873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911095, 34.870308, 34.165165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108475, 35.003941, 34.486389>,  <43.226902, 35.084118, 34.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108475, 35.003941, 34.486389>,  <42.911095, 34.870308, 34.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108475, 35.003941, 34.486389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746319, -0.311527, 0.588182,
		0.446673, -0.889575, 0.095606,
		0.493448, 0.334077, 0.803057,
		43.256508, 35.104164, 34.727306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858753, 34.356613, 34.624378>,  <42.911095, 34.870308, 34.165165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858753, 34.356613, 34.624378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928539, 34.679665, 34.849697>,  <42.970409, 34.873493, 34.984890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928539, 34.679665, 34.849697>,  <42.858753, 34.356613, 34.624378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928539, 34.679665, 34.849697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685043, -0.311378, 0.658604,
		0.707304, -0.500785, 0.498934,
		0.174462, 0.807625, 0.563298,
		42.980877, 34.921951, 35.018688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990002, 34.107929, 35.264885>,  <42.858753, 34.356613, 34.624378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990002, 34.107929, 35.264885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892887, 34.492241, 35.318501>,  <42.834618, 34.722828, 35.350670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892887, 34.492241, 35.318501>,  <42.990002, 34.107929, 35.264885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892887, 34.492241, 35.318501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593032, -0.256343, 0.763284,
		0.767704, 0.105823, 0.632006,
		-0.242783, 0.960776, 0.134039,
		42.820053, 34.780472, 35.358711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971718, 34.132980, 35.961746>,  <42.990002, 34.107929, 35.264885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971718, 34.132980, 35.961746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757595, 34.441414, 35.823833>,  <42.629120, 34.626476, 35.741085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757595, 34.441414, 35.823833>,  <42.971718, 34.132980, 35.961746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757595, 34.441414, 35.823833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728925, -0.215491, 0.649794,
		0.426750, 0.599157, 0.677418,
		-0.535306, 0.771087, -0.344780,
		42.597004, 34.672741, 35.720398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633347, 34.352757, 36.571232>,  <42.971718, 34.132980, 35.961746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633347, 34.352757, 36.571232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422806, 34.543549, 36.289680>,  <42.296482, 34.658024, 36.120750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422806, 34.543549, 36.289680>,  <42.633347, 34.352757, 36.571232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422806, 34.543549, 36.289680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846360, -0.214626, 0.487453,
		0.081437, 0.852304, 0.516667,
		-0.526348, 0.476983, -0.703878,
		42.264900, 34.686642, 36.078518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368389, 34.817642, 36.942196>,  <42.633347, 34.352757, 36.571232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368389, 34.817642, 36.942196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153923, 34.732861, 36.615368>,  <42.025246, 34.681992, 36.419270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153923, 34.732861, 36.615368>,  <42.368389, 34.817642, 36.942196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153923, 34.732861, 36.615368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782155, -0.239259, 0.575316,
		-0.317432, 0.947539, -0.037499,
		-0.536162, -0.211954, -0.817071,
		41.993073, 34.669273, 36.370247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647438, 34.929440, 37.150055>,  <42.368389, 34.817642, 36.942196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647438, 34.929440, 37.150055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579220, 34.709988, 36.822659>,  <41.538288, 34.578316, 36.626221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579220, 34.709988, 36.822659>,  <41.647438, 34.929440, 37.150055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579220, 34.709988, 36.822659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804333, -0.402308, 0.437261,
		-0.569177, 0.732910, -0.372665,
		-0.170546, -0.548626, -0.818489,
		41.528057, 34.545399, 36.577110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948742, 34.997990, 37.124596>,  <41.647438, 34.929440, 37.150055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948742, 34.997990, 37.124596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041039, 34.722088, 36.850079>,  <41.096416, 34.556549, 36.685368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041039, 34.722088, 36.850079>,  <40.948742, 34.997990, 37.124596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041039, 34.722088, 36.850079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670428, -0.623884, 0.401615,
		-0.705183, 0.367441, -0.606385,
		0.230744, -0.689750, -0.686296,
		41.110260, 34.515163, 36.644192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369492, 34.843460, 36.593479>,  <40.948742, 34.997990, 37.124596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369492, 34.843460, 36.593479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557316, 34.490555, 36.580074>,  <40.670013, 34.278812, 36.572033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557316, 34.490555, 36.580074>,  <40.369492, 34.843460, 36.593479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557316, 34.490555, 36.580074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866329, -0.467739, 0.175200,
		-0.170245, -0.053238, -0.983963,
		0.469565, -0.882262, -0.033508,
		40.698185, 34.225876, 36.570023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039375, 34.375095, 36.037048>,  <40.369492, 34.843460, 36.593479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039375, 34.375095, 36.037048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266636, 34.123959, 36.249847>,  <40.402992, 33.973278, 36.377529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266636, 34.123959, 36.249847>,  <40.039375, 34.375095, 36.037048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266636, 34.123959, 36.249847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751838, -0.658860, 0.025367,
		0.334588, -0.414390, -0.846364,
		0.568147, -0.627841, 0.532001,
		40.437080, 33.935608, 36.409447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086304, 33.641891, 35.688606>,  <40.039375, 34.375095, 36.037048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086304, 33.641891, 35.688606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143932, 33.598812, 36.082081>,  <40.178509, 33.572964, 36.318165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143932, 33.598812, 36.082081>,  <40.086304, 33.641891, 35.688606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143932, 33.598812, 36.082081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445348, -0.894759, -0.032740,
		0.883690, -0.433367, -0.176875,
		0.144072, -0.107703, 0.983689,
		40.187153, 33.566502, 36.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257259, 32.951672, 35.756008>,  <40.086304, 33.641891, 35.688606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257259, 32.951672, 35.756008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149319, 33.071110, 36.122181>,  <40.084557, 33.142773, 36.341885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149319, 33.071110, 36.122181>,  <40.257259, 32.951672, 35.756008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149319, 33.071110, 36.122181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358002, -0.913665, 0.192488,
		0.893877, -0.275786, 0.353448,
		-0.269847, 0.298596, 0.915436,
		40.068363, 33.160690, 36.396812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467678, 32.404457, 36.137005>,  <40.257259, 32.951672, 35.756008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467678, 32.404457, 36.137005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186058, 32.586384, 36.355167>,  <40.017086, 32.695538, 36.486065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186058, 32.586384, 36.355167>,  <40.467678, 32.404457, 36.137005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186058, 32.586384, 36.355167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408164, -0.887637, 0.213315,
		0.581139, -0.072431, 0.810575,
		-0.704046, 0.454812, 0.545404,
		39.974846, 32.722828, 36.518787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505600, 32.105274, 36.751186>,  <40.467678, 32.404457, 36.137005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505600, 32.105274, 36.751186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132854, 32.250340, 36.747288>,  <39.909206, 32.337379, 36.744949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132854, 32.250340, 36.747288>,  <40.505600, 32.105274, 36.751186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132854, 32.250340, 36.747288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347105, -0.883422, 0.314775,
		0.105548, 0.296712, 0.949117,
		-0.931868, 0.362667, -0.009747,
		39.853294, 32.359138, 36.744362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125599, 31.695232, 37.328194>,  <40.505600, 32.105274, 36.751186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125599, 31.695232, 37.328194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853340, 31.876818, 37.098190>,  <39.689983, 31.985769, 36.960190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853340, 31.876818, 37.098190>,  <40.125599, 31.695232, 37.328194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853340, 31.876818, 37.098190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584635, -0.809570, 0.052900,
		-0.441493, 0.372175, 0.816437,
		-0.680651, 0.453962, -0.575006,
		39.649143, 32.013008, 36.925690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542912, 31.552158, 37.720203>,  <40.125599, 31.695232, 37.328194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542912, 31.552158, 37.720203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437229, 31.638546, 37.344215>,  <39.373817, 31.690378, 37.118622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437229, 31.638546, 37.344215>,  <39.542912, 31.552158, 37.720203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437229, 31.638546, 37.344215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570975, -0.820488, -0.028027,
		-0.777290, 0.529297, 0.340094,
		-0.264209, 0.215971, -0.939973,
		39.357967, 31.703337, 37.062222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879631, 31.137838, 37.684467>,  <39.542912, 31.552158, 37.720203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879631, 31.137838, 37.684467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973412, 31.245424, 37.310795>,  <39.029682, 31.309977, 37.086594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973412, 31.245424, 37.310795>,  <38.879631, 31.137838, 37.684467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973412, 31.245424, 37.310795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376410, -0.860886, -0.342332,
		-0.896296, 0.431895, -0.100599,
		0.234456, 0.268965, -0.934178,
		39.043747, 31.326113, 37.030540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205341, 31.110941, 37.269955>,  <38.879631, 31.137838, 37.684467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205341, 31.110941, 37.269955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534821, 31.047880, 37.052086>,  <38.732510, 31.010044, 36.921364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534821, 31.047880, 37.052086>,  <38.205341, 31.110941, 37.269955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534821, 31.047880, 37.052086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480534, -0.704005, -0.522938,
		-0.301009, 0.692476, -0.655645,
		0.823699, -0.157650, -0.544670,
		38.781929, 31.000586, 36.888683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914993, 30.730385, 36.568226>,  <38.205341, 31.110941, 37.269955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914993, 30.730385, 36.568226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310276, 30.672680, 36.588749>,  <38.547447, 30.638058, 36.601063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310276, 30.672680, 36.588749>,  <37.914993, 30.730385, 36.568226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310276, 30.672680, 36.588749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094387, -0.837813, -0.537737,
		0.120560, 0.526553, -0.841550,
		0.988208, -0.144261, 0.051307,
		38.606739, 30.629402, 36.604141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235096, 30.559980, 35.834705>,  <37.914993, 30.730385, 36.568226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235096, 30.559980, 35.834705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409149, 30.403563, 36.159111>,  <38.513580, 30.309711, 36.353756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409149, 30.403563, 36.159111>,  <38.235096, 30.559980, 35.834705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409149, 30.403563, 36.159111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080122, -0.914003, -0.397716,
		0.896796, 0.108079, -0.429042,
		0.435130, -0.391046, 0.811015,
		38.539688, 30.286249, 36.402416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990372, 30.292276, 35.759190>,  <38.235096, 30.559980, 35.834705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990372, 30.292276, 35.759190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754082, 30.090027, 36.010708>,  <38.612309, 29.968678, 36.161621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754082, 30.090027, 36.010708>,  <38.990372, 30.292276, 35.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754082, 30.090027, 36.010708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118311, -0.825160, -0.552371,
		0.798153, -0.251905, 0.547262,
		-0.590724, -0.505624, 0.628800,
		38.576866, 29.938339, 36.199348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324711, 29.659531, 36.075634>,  <38.990372, 30.292276, 35.759190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324711, 29.659531, 36.075634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926720, 29.641644, 36.039829>,  <38.687923, 29.630911, 36.018349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926720, 29.641644, 36.039829>,  <39.324711, 29.659531, 36.075634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926720, 29.641644, 36.039829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087977, -0.817107, -0.569733,
		-0.047659, -0.574748, 0.816941,
		-0.994982, -0.044720, -0.089507,
		38.628223, 29.628227, 36.012978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866310, 29.163486, 36.253597>,  <39.324711, 29.659531, 36.075634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866310, 29.163486, 36.253597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842201, 29.262608, 35.866825>,  <39.827736, 29.322081, 35.634762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842201, 29.262608, 35.866825>,  <39.866310, 29.163486, 36.253597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842201, 29.262608, 35.866825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595358, -0.786453, -0.164437,
		-0.801196, 0.565760, 0.194937,
		-0.060277, 0.247803, -0.966933,
		39.824120, 29.336948, 35.576744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123180, 28.908890, 36.127285>,  <39.866310, 29.163486, 36.253597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123180, 28.908890, 36.127285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338379, 28.888306, 35.790737>,  <39.467499, 28.875956, 35.588806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338379, 28.888306, 35.790737>,  <39.123180, 28.908890, 36.127285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338379, 28.888306, 35.790737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580024, -0.746870, -0.325203,
		-0.611661, 0.662976, -0.431663,
		0.537998, -0.051461, -0.841374,
		39.499779, 28.872868, 35.538326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753670, 29.160021, 35.513393>,  <39.123180, 28.908890, 36.127285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753670, 29.160021, 35.513393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024349, 28.868269, 35.473221>,  <39.186756, 28.693218, 35.449120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024349, 28.868269, 35.473221>,  <38.753670, 29.160021, 35.513393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024349, 28.868269, 35.473221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710934, -0.611842, -0.346731,
		0.191454, 0.306029, -0.932572,
		0.676697, -0.729380, -0.100427,
		39.227360, 28.649454, 35.443092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751469, 28.849979, 34.870289>,  <38.753670, 29.160021, 35.513393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751469, 28.849979, 34.870289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928265, 28.552723, 35.071243>,  <39.034344, 28.374369, 35.191814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928265, 28.552723, 35.071243>,  <38.751469, 28.849979, 34.870289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928265, 28.552723, 35.071243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671139, -0.645554, -0.364462,
		0.595162, -0.176083, -0.784077,
		0.441988, -0.743139, 0.502385,
		39.060860, 28.329781, 35.221958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550522, 28.560196, 34.743626>,  <38.751469, 28.849979, 34.870289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550522, 28.560196, 34.743626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383709, 28.658091, 34.393497>,  <39.283623, 28.716827, 34.183418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383709, 28.658091, 34.393497>,  <39.550522, 28.560196, 34.743626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383709, 28.658091, 34.393497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902704, -0.000672, -0.430261,
		-0.105889, -0.969589, -0.220645,
		-0.417028, 0.244737, -0.875324,
		39.258602, 28.731512, 34.130901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774487, 28.126099, 34.255253>,  <39.550522, 28.560196, 34.743626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774487, 28.126099, 34.255253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734409, 28.477707, 34.068798>,  <39.710361, 28.688671, 33.956924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734409, 28.477707, 34.068798>,  <39.774487, 28.126099, 34.255253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734409, 28.477707, 34.068798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945276, -0.062110, -0.320306,
		-0.310507, -0.472723, -0.824693,
		-0.100194, 0.879020, -0.466139,
		39.704350, 28.741413, 33.928955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223309, 28.090828, 33.742638>,  <39.774487, 28.126099, 34.255253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223309, 28.090828, 33.742638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142994, 28.482182, 33.762432>,  <40.094807, 28.716993, 33.774307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142994, 28.482182, 33.762432>,  <40.223309, 28.090828, 33.742638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142994, 28.482182, 33.762432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918757, 0.205598, -0.337069,
		-0.339957, -0.022215, -0.940179,
		-0.200787, 0.978384, 0.049485,
		40.082760, 28.775698, 33.777279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421864, 28.441776, 33.112228>,  <40.223309, 28.090828, 33.742638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421864, 28.441776, 33.112228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436176, 28.721355, 33.397938>,  <40.444763, 28.889103, 33.569363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436176, 28.721355, 33.397938>,  <40.421864, 28.441776, 33.112228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436176, 28.721355, 33.397938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776917, 0.430104, -0.459794,
		-0.628586, 0.571387, -0.527633,
		0.035783, 0.698947, 0.714278,
		40.446911, 28.931040, 33.612221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680496, 28.971519, 32.771965>,  <40.421864, 28.441776, 33.112228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680496, 28.971519, 32.771965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725780, 29.068056, 33.157490>,  <40.752953, 29.125978, 33.388805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725780, 29.068056, 33.157490>,  <40.680496, 28.971519, 32.771965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725780, 29.068056, 33.157490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822104, 0.522005, -0.227279,
		-0.557968, 0.818087, -0.139307,
		0.113215, 0.241340, 0.963814,
		40.759747, 29.140457, 33.446632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824295, 29.598183, 32.733154>,  <40.680496, 28.971519, 32.771965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824295, 29.598183, 32.733154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965282, 29.509832, 33.096909>,  <41.049873, 29.456823, 33.315163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965282, 29.509832, 33.096909>,  <40.824295, 29.598183, 32.733154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965282, 29.509832, 33.096909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784547, 0.599475, -0.158482,
		-0.510149, 0.769315, 0.384582,
		0.352470, -0.220873, 0.909384,
		41.071022, 29.443571, 33.369724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073013, 30.245117, 33.068974>,  <40.824295, 29.598183, 32.733154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073013, 30.245117, 33.068974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253765, 29.932095, 33.240280>,  <41.362217, 29.744280, 33.343063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253765, 29.932095, 33.240280>,  <41.073013, 30.245117, 33.068974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253765, 29.932095, 33.240280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843725, 0.530823, 0.079718,
		-0.289717, 0.325316, 0.900130,
		0.451876, -0.782557, 0.428266,
		41.389328, 29.697327, 33.368759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424210, 30.578199, 33.591408>,  <41.073013, 30.245117, 33.068974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424210, 30.578199, 33.591408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612137, 30.225332, 33.578438>,  <41.724892, 30.013611, 33.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612137, 30.225332, 33.578438>,  <41.424210, 30.578199, 33.591408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612137, 30.225332, 33.578438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881393, 0.466720, 0.072929,
		-0.049200, -0.062846, 0.996810,
		0.469815, -0.882169, -0.032429,
		41.753082, 29.960682, 33.568710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813499, 30.695757, 34.066818>,  <41.424210, 30.578199, 33.591408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813499, 30.695757, 34.066818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970322, 30.401945, 33.845276>,  <42.064415, 30.225658, 33.712349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970322, 30.401945, 33.845276>,  <41.813499, 30.695757, 34.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970322, 30.401945, 33.845276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907603, 0.407118, 0.102531,
		0.150173, -0.542881, 0.826274,
		0.392053, -0.734531, -0.553858,
		42.087936, 30.181585, 33.679119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360851, 30.341867, 34.408623>,  <41.813499, 30.695757, 34.066818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360851, 30.341867, 34.408623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445408, 30.305748, 34.019333>,  <42.496140, 30.284077, 33.785759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445408, 30.305748, 34.019333>,  <42.360851, 30.341867, 34.408623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445408, 30.305748, 34.019333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901942, 0.401663, 0.158640,
		0.376582, -0.911325, 0.166350,
		0.211390, -0.090297, -0.973222,
		42.508823, 30.278660, 33.727367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029400, 30.094906, 34.430607>,  <42.360851, 30.341867, 34.408623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029400, 30.094906, 34.430607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985851, 30.237366, 34.059380>,  <42.959721, 30.322842, 33.836643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985851, 30.237366, 34.059380>,  <43.029400, 30.094906, 34.430607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985851, 30.237366, 34.059380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857078, 0.506566, 0.093851,
		0.503551, -0.785206, -0.360400,
		-0.108875, 0.356150, -0.928065,
		42.953190, 30.344210, 33.780960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607830, 30.039589, 34.206135>,  <43.029400, 30.094906, 34.430607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607830, 30.039589, 34.206135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453907, 30.311441, 33.956326>,  <43.361553, 30.474554, 33.806442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453907, 30.311441, 33.956326>,  <43.607830, 30.039589, 34.206135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453907, 30.311441, 33.956326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858908, 0.511401, 0.027308,
		0.337940, -0.525897, -0.780531,
		-0.384803, 0.679633, -0.624520,
		43.338467, 30.515331, 33.768970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138977, 30.178371, 33.793701>,  <43.607830, 30.039589, 34.206135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138977, 30.178371, 33.793701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887856, 30.476448, 33.703773>,  <43.737183, 30.655294, 33.649815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887856, 30.476448, 33.703773>,  <44.138977, 30.178371, 33.793701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887856, 30.476448, 33.703773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726031, 0.664760, 0.175993,
		0.280601, -0.052738, -0.958375,
		-0.627807, 0.745193, -0.224822,
		43.699512, 30.700006, 33.636326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437355, 30.474922, 33.186066>,  <44.138977, 30.178371, 33.793701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437355, 30.474922, 33.186066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201050, 30.717974, 33.398399>,  <44.059265, 30.863804, 33.525799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.201050, 30.717974, 33.398399>,  <44.437355, 30.474922, 33.186066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201050, 30.717974, 33.398399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760163, 0.639698, 0.113748,
		-0.270455, 0.470717, -0.839809,
		-0.590768, 0.607628, 0.530831,
		44.023819, 30.900263, 33.557648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547688, 31.118938, 32.919106>,  <44.437355, 30.474922, 33.186066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547688, 31.118938, 32.919106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385567, 31.240513, 33.263977>,  <44.288292, 31.313457, 33.470901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385567, 31.240513, 33.263977>,  <44.547688, 31.118938, 32.919106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385567, 31.240513, 33.263977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728890, 0.676669, 0.104107,
		-0.551768, 0.670628, -0.495791,
		-0.405304, 0.303934, 0.862179,
		44.263977, 31.331694, 33.522633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521255, 31.945187, 32.922909>,  <44.547688, 31.118938, 32.919106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521255, 31.945187, 32.922909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503422, 31.812336, 33.299782>,  <44.492722, 31.732626, 33.525906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503422, 31.812336, 33.299782>,  <44.521255, 31.945187, 32.922909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503422, 31.812336, 33.299782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643950, 0.711485, 0.281276,
		-0.763767, 0.619259, 0.182151,
		-0.044585, -0.332125, 0.942181,
		44.490047, 31.712698, 33.582436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314026, 32.482281, 33.285076>,  <44.521255, 31.945187, 32.922909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314026, 32.482281, 33.285076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462914, 32.258030, 33.580956>,  <44.552246, 32.123478, 33.758484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462914, 32.258030, 33.580956>,  <44.314026, 32.482281, 33.285076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462914, 32.258030, 33.580956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494688, 0.794161, 0.352977,
		-0.785325, 0.234533, 0.572939,
		0.372221, -0.560627, 0.739695,
		44.574581, 32.089840, 33.802864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321640, 32.824768, 33.942196>,  <44.314026, 32.482281, 33.285076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321640, 32.824768, 33.942196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581226, 32.532845, 34.028194>,  <44.736977, 32.357689, 34.079792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581226, 32.532845, 34.028194>,  <44.321640, 32.824768, 33.942196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581226, 32.532845, 34.028194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622506, 0.671806, 0.401451,
		-0.437419, -0.126690, 0.890289,
		0.648961, -0.729813, 0.214995,
		44.775913, 32.313900, 34.092693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510677, 32.941525, 34.583126>,  <44.321640, 32.824768, 33.942196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510677, 32.941525, 34.583126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806297, 32.719795, 34.430008>,  <44.983669, 32.586758, 34.338139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806297, 32.719795, 34.430008>,  <44.510677, 32.941525, 34.583126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806297, 32.719795, 34.430008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671936, 0.647158, 0.360124,
		0.048103, -0.523363, 0.850751,
		0.739046, -0.554327, -0.382796,
		45.028011, 32.553497, 34.315170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982117, 32.748432, 35.047909>,  <44.510677, 32.941525, 34.583126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982117, 32.748432, 35.047909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214417, 32.684597, 34.728596>,  <45.353798, 32.646297, 34.537006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214417, 32.684597, 34.728596>,  <44.982117, 32.748432, 35.047909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214417, 32.684597, 34.728596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721723, 0.554588, 0.414184,
		0.376620, -0.816679, 0.437257,
		0.580753, -0.159588, -0.798284,
		45.388641, 32.636723, 34.489109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692894, 32.641220, 35.347057>,  <44.982117, 32.748432, 35.047909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692894, 32.641220, 35.347057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719360, 32.746796, 34.962151>,  <45.735241, 32.810143, 34.731205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719360, 32.746796, 34.962151>,  <45.692894, 32.641220, 35.347057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719360, 32.746796, 34.962151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612724, 0.750391, 0.247957,
		0.787522, -0.606010, -0.112075,
		0.066164, 0.263943, -0.962266,
		45.739208, 32.825977, 34.673470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385880, 32.820881, 35.358631>,  <45.692894, 32.641220, 35.347057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385880, 32.820881, 35.358631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224022, 32.995659, 35.037300>,  <46.126907, 33.100525, 34.844501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224022, 32.995659, 35.037300>,  <46.385880, 32.820881, 35.358631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224022, 32.995659, 35.037300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526771, 0.829448, 0.185819,
		0.747515, -0.347982, -0.565800,
		-0.404640, 0.436950, -0.803332,
		46.102631, 33.126743, 34.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053795, 33.172749, 35.030449>,  <46.385880, 32.820881, 35.358631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053795, 33.172749, 35.030449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722321, 33.329895, 34.870987>,  <46.523434, 33.424183, 34.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722321, 33.329895, 34.870987>,  <47.053795, 33.172749, 35.030449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722321, 33.329895, 34.870987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427824, 0.903861, 0.001415,
		0.360888, -0.169383, -0.917098,
		-0.828689, 0.392867, -0.398659,
		46.473713, 33.447754, 34.751389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156712, 33.457798, 34.398167>,  <47.053795, 33.172749, 35.030449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156712, 33.457798, 34.398167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852551, 33.663025, 34.557442>,  <46.670055, 33.786160, 34.653008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852551, 33.663025, 34.557442>,  <47.156712, 33.457798, 34.398167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852551, 33.663025, 34.557442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635319, 0.714862, 0.292133,
		-0.134764, 0.475113, -0.869544,
		-0.760400, 0.513068, 0.398186,
		46.624432, 33.816944, 34.676899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953415, 34.127251, 34.081211>,  <47.156712, 33.457798, 34.398167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953415, 34.127251, 34.081211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915321, 34.140484, 34.479172>,  <46.892464, 34.148426, 34.717949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915321, 34.140484, 34.479172>,  <46.953415, 34.127251, 34.081211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915321, 34.140484, 34.479172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760244, 0.647615, 0.051235,
		-0.642620, 0.761249, -0.086830,
		-0.095235, 0.033087, 0.994905,
		46.886749, 34.150410, 34.777641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839607, 34.831844, 34.411385>,  <46.953415, 34.127251, 34.081211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839607, 34.831844, 34.411385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035141, 34.549835, 34.616901>,  <47.152462, 34.380630, 34.740211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035141, 34.549835, 34.616901>,  <46.839607, 34.831844, 34.411385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.035141, 34.549835, 34.616901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795130, 0.602377, 0.070076,
		-0.358901, 0.374275, 0.855049,
		0.488834, -0.705025, 0.513791,
		47.181789, 34.338329, 34.771038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.395412, 35.255085, 34.795364>,  <46.839607, 34.831844, 34.411385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.395412, 35.255085, 34.795364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501556, 34.871185, 34.832191>,  <47.565243, 34.640846, 34.854286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501556, 34.871185, 34.832191>,  <47.395412, 35.255085, 34.795364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501556, 34.871185, 34.832191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956698, 0.250254, -0.148664,
		0.119640, 0.127526, 0.984593,
		0.265357, -0.959745, 0.092063,
		47.581165, 34.583263, 34.859810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829819, 35.063725, 35.425308>,  <47.395412, 35.255085, 34.795364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829819, 35.063725, 35.425308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.900047, 34.860435, 35.088051>,  <47.942184, 34.738461, 34.885696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.900047, 34.860435, 35.088051>,  <47.829819, 35.063725, 35.425308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.900047, 34.860435, 35.088051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925263, 0.377708, -0.034997,
		0.336247, -0.773982, 0.536554,
		0.175574, -0.508222, -0.843140,
		47.952721, 34.707970, 34.835110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.440491, 43.723938, 40.828281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059898, 43.735199, 40.950851>,  <37.831543, 43.741955, 41.024391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059898, 43.735199, 40.950851>,  <38.440491, 43.723938, 40.828281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059898, 43.735199, 40.950851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305161, -0.214318, -0.927871,
		0.039546, -0.976358, 0.212511,
		-0.951480, 0.028156, 0.306422,
		37.774456, 43.743645, 41.042778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109852, 43.135429, 40.714046>,  <38.440491, 43.723938, 40.828281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109852, 43.135429, 40.714046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798992, 43.385818, 40.739956>,  <37.612476, 43.536053, 40.755501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798992, 43.385818, 40.739956>,  <38.109852, 43.135429, 40.714046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798992, 43.385818, 40.739956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352598, -0.347863, -0.868715,
		-0.521261, -0.697960, 0.491059,
		-0.777149, 0.625974, 0.064771,
		37.565845, 43.573612, 40.759388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440712, 42.705917, 40.737133>,  <38.109852, 43.135429, 40.714046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440712, 42.705917, 40.737133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332241, 43.069603, 40.610771>,  <37.267159, 43.287815, 40.534954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332241, 43.069603, 40.610771>,  <37.440712, 42.705917, 40.737133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332241, 43.069603, 40.610771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412729, -0.406338, -0.815197,
		-0.869551, -0.090678, 0.485447,
		-0.271175, 0.909213, -0.315906,
		37.250889, 43.342365, 40.515999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794643, 42.669178, 40.487644>,  <37.440712, 42.705917, 40.737133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794643, 42.669178, 40.487644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933525, 43.000927, 40.312557>,  <37.016853, 43.199974, 40.207504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933525, 43.000927, 40.312557>,  <36.794643, 42.669178, 40.487644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933525, 43.000927, 40.312557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447345, -0.263751, -0.854586,
		-0.824215, 0.492527, 0.279438,
		0.347205, 0.829369, -0.437717,
		37.037685, 43.249737, 40.181240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233925, 42.931652, 40.193169>,  <36.794643, 42.669178, 40.487644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233925, 42.931652, 40.193169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537827, 43.079853, 39.979439>,  <36.720165, 43.168774, 39.851200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537827, 43.079853, 39.979439>,  <36.233925, 42.931652, 40.193169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537827, 43.079853, 39.979439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453648, -0.286669, -0.843815,
		-0.465812, 0.883486, -0.049718,
		0.759751, 0.370505, -0.534326,
		36.765751, 43.191006, 39.819141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902126, 43.251411, 39.577721>,  <36.233925, 42.931652, 40.193169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902126, 43.251411, 39.577721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288284, 43.207100, 39.483284>,  <36.519978, 43.180515, 39.426620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288284, 43.207100, 39.483284>,  <35.902126, 43.251411, 39.577721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288284, 43.207100, 39.483284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260563, -0.371715, -0.891030,
		0.010944, 0.921714, -0.387716,
		0.965395, -0.110776, -0.236096,
		36.577904, 43.173866, 39.412457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069626, 43.583195, 38.928490>,  <35.902126, 43.251411, 39.577721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069626, 43.583195, 38.928490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381851, 43.335846, 38.965031>,  <36.569187, 43.187439, 38.986954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381851, 43.335846, 38.965031>,  <36.069626, 43.583195, 38.928490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381851, 43.335846, 38.965031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032782, -0.186441, -0.981919,
		0.624221, 0.763452, -0.165800,
		0.780560, -0.618370, 0.091353,
		36.616020, 43.150333, 38.992435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445442, 43.649925, 38.313938>,  <36.069626, 43.583195, 38.928490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445442, 43.649925, 38.313938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584465, 43.295822, 38.437557>,  <36.667881, 43.083359, 38.511730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584465, 43.295822, 38.437557>,  <36.445442, 43.649925, 38.313938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584465, 43.295822, 38.437557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022664, -0.337434, -0.941076,
		0.937383, 0.320077, -0.137343,
		0.347561, -0.885262, 0.309051,
		36.688732, 43.030243, 38.530273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176556, 43.525986, 37.957222>,  <36.445442, 43.649925, 38.313938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176556, 43.525986, 37.957222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009930, 43.176586, 38.057999>,  <36.909954, 42.966946, 38.118465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009930, 43.176586, 38.057999>,  <37.176556, 43.525986, 37.957222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009930, 43.176586, 38.057999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141193, -0.335935, -0.931242,
		0.898074, -0.352352, 0.263271,
		-0.416567, -0.873497, 0.251945,
		36.884960, 42.914536, 38.133583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450832, 42.999680, 37.531151>,  <37.176556, 43.525986, 37.957222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450832, 42.999680, 37.531151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155312, 42.760738, 37.655949>,  <36.977997, 42.617374, 37.730827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155312, 42.760738, 37.655949>,  <37.450832, 42.999680, 37.531151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155312, 42.760738, 37.655949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132919, -0.583024, -0.801508,
		0.660681, -0.550688, 0.510140,
		-0.738805, -0.597348, 0.311996,
		36.933670, 42.581535, 37.749546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655853, 42.342537, 37.349251>,  <37.450832, 42.999680, 37.531151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655853, 42.342537, 37.349251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262577, 42.304245, 37.411438>,  <37.026611, 42.281269, 37.448750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262577, 42.304245, 37.411438>,  <37.655853, 42.342537, 37.349251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262577, 42.304245, 37.411438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076382, -0.557738, -0.826495,
		0.165831, -0.824478, 0.541051,
		-0.983192, -0.095732, 0.155465,
		36.967621, 42.275524, 37.458076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483505, 41.685463, 37.291519>,  <37.655853, 42.342537, 37.349251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483505, 41.685463, 37.291519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140797, 41.880947, 37.225666>,  <36.935173, 41.998238, 37.186153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140797, 41.880947, 37.225666>,  <37.483505, 41.685463, 37.291519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140797, 41.880947, 37.225666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063226, -0.416378, -0.906990,
		-0.511807, -0.766674, 0.387640,
		-0.856770, 0.488713, -0.164632,
		36.883766, 42.027561, 37.176277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005417, 41.130630, 37.249851>,  <37.483505, 41.685463, 37.291519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005417, 41.130630, 37.249851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886322, 41.459538, 37.055847>,  <36.814865, 41.656879, 36.939445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886322, 41.459538, 37.055847>,  <37.005417, 41.130630, 37.249851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886322, 41.459538, 37.055847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083807, -0.483575, -0.871282,
		-0.950963, -0.300059, 0.075066,
		-0.297736, 0.822265, -0.485009,
		36.797001, 41.706219, 36.910343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621834, 40.827538, 36.760262>,  <37.005417, 41.130630, 37.249851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621834, 40.827538, 36.760262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698814, 41.193031, 36.617126>,  <36.745003, 41.412327, 36.531246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698814, 41.193031, 36.617126>,  <36.621834, 40.827538, 36.760262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698814, 41.193031, 36.617126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007052, -0.363358, -0.931623,
		-0.981282, 0.181814, -0.063484,
		0.192449, 0.913737, -0.357839,
		36.756550, 41.467152, 36.509773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141663, 40.956573, 36.271076>,  <36.621834, 40.827538, 36.760262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141663, 40.956573, 36.271076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428165, 41.219734, 36.178009>,  <36.600067, 41.377632, 36.122169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428165, 41.219734, 36.178009>,  <36.141663, 40.956573, 36.271076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428165, 41.219734, 36.178009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188728, -0.503615, -0.843062,
		-0.671829, 0.559941, -0.484884,
		0.716260, 0.657904, -0.232667,
		36.643044, 41.417107, 36.108208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153782, 41.101723, 35.543209>,  <36.141663, 40.956573, 36.271076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153782, 41.101723, 35.543209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521233, 41.168541, 35.686443>,  <36.741703, 41.208630, 35.772385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521233, 41.168541, 35.686443>,  <36.153782, 41.101723, 35.543209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521233, 41.168541, 35.686443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383618, -0.594214, -0.706928,
		0.094694, 0.786770, -0.609940,
		0.918624, 0.167042, 0.358087,
		36.796822, 41.218655, 35.793869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612125, 41.067505, 34.892628>,  <36.153782, 41.101723, 35.543209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612125, 41.067505, 34.892628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871639, 41.061352, 35.196953>,  <37.027348, 41.057659, 35.379547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871639, 41.061352, 35.196953>,  <36.612125, 41.067505, 34.892628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871639, 41.061352, 35.196953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623177, -0.563042, -0.542802,
		0.436722, 0.826285, -0.355706,
		0.648787, -0.015386, 0.760815,
		37.066277, 41.056736, 35.425198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248138, 41.340561, 34.593452>,  <36.612125, 41.067505, 34.892628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248138, 41.340561, 34.593452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346943, 41.112381, 34.906776>,  <37.406227, 40.975471, 35.094769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.346943, 41.112381, 34.906776>,  <37.248138, 41.340561, 34.593452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346943, 41.112381, 34.906776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422697, -0.663961, -0.616833,
		0.871960, 0.483465, 0.077124,
		0.247010, -0.570454, 0.783307,
		37.421047, 40.941246, 35.141769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907993, 41.009945, 34.417850>,  <37.248138, 41.340561, 34.593452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907993, 41.009945, 34.417850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777176, 40.784073, 34.720947>,  <37.698685, 40.648552, 34.902805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777176, 40.784073, 34.720947>,  <37.907993, 41.009945, 34.417850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777176, 40.784073, 34.720947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295261, -0.822756, -0.485689,
		0.897698, 0.064890, 0.435807,
		-0.327047, -0.564678, 0.757746,
		37.679062, 40.614670, 34.948273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424721, 40.554249, 34.579174>,  <37.907993, 41.009945, 34.417850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424721, 40.554249, 34.579174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092628, 40.384365, 34.723583>,  <37.893372, 40.282436, 34.810230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092628, 40.384365, 34.723583>,  <38.424721, 40.554249, 34.579174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092628, 40.384365, 34.723583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289550, -0.882024, -0.371745,
		0.476318, -0.204099, 0.855257,
		-0.830230, -0.424708, 0.361027,
		37.843559, 40.256954, 34.831890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633121, 39.873974, 34.618240>,  <38.424721, 40.554249, 34.579174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633121, 39.873974, 34.618240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.234699, 39.843895, 34.637115>,  <37.995647, 39.825848, 34.648441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.234699, 39.843895, 34.637115>,  <38.633121, 39.873974, 34.618240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234699, 39.843895, 34.637115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046099, -0.892341, -0.449000,
		0.075874, -0.445052, 0.892285,
		-0.996051, -0.075201, 0.047189,
		37.935883, 39.821335, 34.651272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561714, 39.183281, 34.723759>,  <38.633121, 39.873974, 34.618240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561714, 39.183281, 34.723759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201191, 39.314522, 34.610622>,  <37.984879, 39.393265, 34.542740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201191, 39.314522, 34.610622>,  <38.561714, 39.183281, 34.723759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201191, 39.314522, 34.610622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043531, -0.718234, -0.694439,
		-0.430992, -0.613589, 0.661630,
		-0.901305, 0.328099, -0.282843,
		37.930798, 39.412952, 34.525768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284420, 38.872066, 34.867958>,  <38.561714, 39.183281, 34.723759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284420, 38.872066, 34.867958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631195, 38.771557, 34.695782>,  <39.839260, 38.711250, 34.592476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631195, 38.771557, 34.695782>,  <39.284420, 38.872066, 34.867958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631195, 38.771557, 34.695782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498246, 0.459532, 0.735242,
		0.013051, -0.851875, 0.523583,
		0.866938, -0.251277, -0.430441,
		39.891277, 38.696175, 34.566650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564293, 38.601513, 35.314190>,  <39.284420, 38.872066, 34.867958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564293, 38.601513, 35.314190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869041, 38.697788, 35.073650>,  <40.051891, 38.755554, 34.929329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869041, 38.697788, 35.073650>,  <39.564293, 38.601513, 35.314190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869041, 38.697788, 35.073650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442700, 0.484212, 0.754689,
		0.472828, -0.841192, 0.262353,
		0.761873, 0.240695, -0.601345,
		40.097603, 38.769997, 34.893246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275887, 38.485050, 35.723358>,  <39.564293, 38.601513, 35.314190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275887, 38.485050, 35.723358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.357563, 38.731373, 35.418968>,  <40.406567, 38.879166, 35.236332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.357563, 38.731373, 35.418968>,  <40.275887, 38.485050, 35.723358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357563, 38.731373, 35.418968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449835, 0.631402, 0.631649,
		0.869457, -0.471290, -0.148088,
		0.204187, 0.615807, -0.760979,
		40.418819, 38.916115, 35.190674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029140, 38.678589, 35.831680>,  <40.275887, 38.485050, 35.723358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029140, 38.678589, 35.831680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.873146, 38.974731, 35.612675>,  <40.779549, 39.152416, 35.481270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.873146, 38.974731, 35.612675>,  <41.029140, 38.678589, 35.831680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873146, 38.974731, 35.612675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334062, 0.667844, 0.665121,
		0.858086, 0.076485, -0.507778,
		-0.389989, 0.740361, -0.547517,
		40.756149, 39.196838, 35.448418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612232, 39.161633, 35.797577>,  <41.029140, 38.678589, 35.831680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612232, 39.161633, 35.797577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.259296, 39.336742, 35.728493>,  <41.047535, 39.441807, 35.687042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.259296, 39.336742, 35.728493>,  <41.612232, 39.161633, 35.797577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259296, 39.336742, 35.728493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075783, 0.494375, 0.865939,
		0.464468, 0.750966, -0.469383,
		-0.882342, 0.437772, -0.172711,
		40.994595, 39.468075, 35.676678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750473, 39.828300, 36.114635>,  <41.612232, 39.161633, 35.797577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750473, 39.828300, 36.114635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.360725, 39.870724, 36.035278>,  <41.126877, 39.896175, 35.987663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.360725, 39.870724, 36.035278>,  <41.750473, 39.828300, 36.114635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360725, 39.870724, 36.035278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044984, 0.772241, 0.633735,
		0.220419, 0.626416, -0.747676,
		-0.974368, 0.106053, -0.198395,
		41.068417, 39.902538, 35.975761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613174, 40.485020, 35.916904>,  <41.750473, 39.828300, 36.114635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613174, 40.485020, 35.916904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.242664, 40.370533, 36.014969>,  <41.020359, 40.301842, 36.073807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.242664, 40.370533, 36.014969>,  <41.613174, 40.485020, 35.916904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242664, 40.370533, 36.014969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164754, 0.892620, 0.419626,
		-0.338937, 0.348297, -0.873963,
		-0.926271, -0.286215, 0.245158,
		40.964783, 40.284668, 36.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165890, 41.040405, 35.858269>,  <41.613174, 40.485020, 35.916904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165890, 41.040405, 35.858269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.955357, 40.800201, 36.099052>,  <40.829037, 40.656078, 36.243523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.955357, 40.800201, 36.099052>,  <41.165890, 41.040405, 35.858269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955357, 40.800201, 36.099052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287616, 0.791966, 0.538578,
		-0.800155, 0.110339, -0.589557,
		-0.526335, -0.600512, 0.601961,
		40.797455, 40.620049, 36.279640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488491, 41.397686, 35.939423>,  <41.165890, 41.040405, 35.858269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488491, 41.397686, 35.939423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.576908, 41.154720, 36.244629>,  <40.629959, 41.008942, 36.427753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.576908, 41.154720, 36.244629>,  <40.488491, 41.397686, 35.939423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576908, 41.154720, 36.244629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214581, 0.732905, 0.645605,
		-0.951364, -0.306436, 0.031667,
		0.221045, -0.607411, 0.763015,
		40.643223, 40.972496, 36.473534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988094, 41.487396, 36.422829>,  <40.488491, 41.397686, 35.939423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988094, 41.487396, 36.422829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285435, 41.301140, 36.614914>,  <40.463840, 41.189384, 36.730164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285435, 41.301140, 36.614914>,  <39.988094, 41.487396, 36.422829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285435, 41.301140, 36.614914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069056, 0.660655, 0.747507,
		-0.665325, -0.588823, 0.458945,
		0.743353, -0.465642, 0.480211,
		40.508442, 41.161446, 36.758976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733372, 41.358421, 37.124096>,  <39.988094, 41.487396, 36.422829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733372, 41.358421, 37.124096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128891, 41.335205, 37.179096>,  <40.366203, 41.321278, 37.212097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128891, 41.335205, 37.179096>,  <39.733372, 41.358421, 37.124096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128891, 41.335205, 37.179096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089090, 0.509633, 0.855767,
		-0.119744, -0.858432, 0.498755,
		0.988799, -0.058039, 0.137503,
		40.425529, 41.317795, 37.220348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837460, 41.166145, 37.955711>,  <39.733372, 41.358421, 37.124096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837460, 41.166145, 37.955711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167606, 41.326721, 37.796906>,  <40.365692, 41.423065, 37.701622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167606, 41.326721, 37.796906>,  <39.837460, 41.166145, 37.955711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167606, 41.326721, 37.796906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106126, 0.580343, 0.807428,
		0.554535, -0.708557, 0.436392,
		0.825366, 0.401434, -0.397017,
		40.415215, 41.447151, 37.677799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387527, 41.014690, 38.390717>,  <39.837460, 41.166145, 37.955711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387527, 41.014690, 38.390717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.485294, 41.347286, 38.191162>,  <40.543953, 41.546844, 38.071430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.485294, 41.347286, 38.191162>,  <40.387527, 41.014690, 38.390717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485294, 41.347286, 38.191162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280928, 0.431701, 0.857154,
		0.928084, -0.349652, -0.128074,
		0.244416, 0.831491, -0.498882,
		40.558620, 41.596733, 38.041496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936935, 41.258636, 38.855446>,  <40.387527, 41.014690, 38.390717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936935, 41.258636, 38.855446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.776932, 41.539261, 38.619545>,  <40.680931, 41.707634, 38.478004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.776932, 41.539261, 38.619545>,  <40.936935, 41.258636, 38.855446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776932, 41.539261, 38.619545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041467, 0.656666, 0.753041,
		0.915573, 0.276767, -0.291764,
		-0.400008, 0.701562, -0.589749,
		40.656929, 41.749729, 38.442619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288635, 41.987305, 39.037994>,  <40.936935, 41.258636, 38.855446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288635, 41.987305, 39.037994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.971977, 42.082355, 38.812843>,  <40.781982, 42.139385, 38.677753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.971977, 42.082355, 38.812843>,  <41.288635, 41.987305, 39.037994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971977, 42.082355, 38.812843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314638, 0.631168, 0.708964,
		0.523742, 0.738350, -0.424892,
		-0.791642, 0.237627, -0.562882,
		40.734486, 42.153645, 38.643978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196404, 42.767910, 38.828033>,  <41.288635, 41.987305, 39.037994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196404, 42.767910, 38.828033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.834785, 42.596935, 38.829063>,  <40.617817, 42.494350, 38.829681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.834785, 42.596935, 38.829063>,  <41.196404, 42.767910, 38.828033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834785, 42.596935, 38.829063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283490, 0.604088, 0.744789,
		-0.319906, 0.672591, -0.667295,
		-0.904043, -0.427434, 0.002578,
		40.563572, 42.468704, 38.829838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837605, 43.310722, 39.069691>,  <41.196404, 42.767910, 38.828033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837605, 43.310722, 39.069691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.583450, 43.006107, 39.120838>,  <40.430958, 42.823338, 39.151527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.583450, 43.006107, 39.120838>,  <40.837605, 43.310722, 39.069691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583450, 43.006107, 39.120838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288592, 0.387773, 0.875412,
		-0.716238, 0.519326, -0.466158,
		-0.635388, -0.761533, 0.127865,
		40.392834, 42.777649, 39.159199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284042, 43.637444, 39.317341>,  <40.837605, 43.310722, 39.069691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284042, 43.637444, 39.317341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268246, 43.251835, 39.422493>,  <40.258766, 43.020470, 39.485584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268246, 43.251835, 39.422493>,  <40.284042, 43.637444, 39.317341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268246, 43.251835, 39.422493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327591, 0.261041, 0.908043,
		-0.943994, -0.050256, -0.326113,
		-0.039494, -0.964019, 0.262885,
		40.256397, 42.962627, 39.501358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.556934, 43.549641, 39.564861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777225, 43.255535, 39.722893>,  <39.909401, 43.079071, 39.817711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.777225, 43.255535, 39.722893>,  <39.556934, 43.549641, 39.564861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777225, 43.255535, 39.722893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303772, 0.264313, 0.915348,
		-0.777443, -0.624125, -0.077786,
		0.550732, -0.735259, 0.395080,
		39.942444, 43.034958, 39.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178474, 43.253456, 40.103603>,  <39.556934, 43.549641, 39.564861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178474, 43.253456, 40.103603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550411, 43.139400, 40.196621>,  <39.773575, 43.070965, 40.252434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.550411, 43.139400, 40.196621>,  <39.178474, 43.253456, 40.103603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550411, 43.139400, 40.196621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206239, 0.119501, 0.971177,
		-0.304715, -0.951006, 0.052310,
		0.929846, -0.285144, 0.232549,
		39.829365, 43.053856, 40.266384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140358, 42.799564, 40.650848>,  <39.178474, 43.253456, 40.103603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140358, 42.799564, 40.650848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499374, 42.975834, 40.656960>,  <39.714783, 43.081596, 40.660625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499374, 42.975834, 40.656960>,  <39.140358, 42.799564, 40.650848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499374, 42.975834, 40.656960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144903, 0.262052, 0.954113,
		0.416446, -0.858567, 0.299057,
		0.897539, 0.440671, 0.015279,
		39.768635, 43.108036, 40.661545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370377, 42.557232, 41.301361>,  <39.140358, 42.799564, 40.650848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370377, 42.557232, 41.301361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619587, 42.855606, 41.207191>,  <39.769112, 43.034630, 41.150688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619587, 42.855606, 41.207191>,  <39.370377, 42.557232, 41.301361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619587, 42.855606, 41.207191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079304, 0.359662, 0.929706,
		0.778171, -0.560561, 0.283234,
		0.623026, 0.745932, -0.235424,
		39.806496, 43.079384, 41.136566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913353, 42.459587, 41.704163>,  <39.370377, 42.557232, 41.301361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913353, 42.459587, 41.704163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876625, 42.849525, 41.622929>,  <39.854588, 43.083488, 41.574188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876625, 42.849525, 41.622929>,  <39.913353, 42.459587, 41.704163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876625, 42.849525, 41.622929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041424, 0.207512, 0.977355,
		0.994914, 0.081325, -0.059435,
		-0.091817, 0.974846, -0.203087,
		39.849079, 43.141979, 41.562004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371822, 42.773354, 42.156044>,  <39.913353, 42.459587, 41.704163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371822, 42.773354, 42.156044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170433, 43.097645, 42.036560>,  <40.049599, 43.292221, 41.964870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170433, 43.097645, 42.036560>,  <40.371822, 42.773354, 42.156044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170433, 43.097645, 42.036560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019968, 0.334711, 0.942109,
		0.863778, 0.480295, -0.152331,
		-0.503477, 0.810731, -0.298706,
		40.019390, 43.340862, 41.946949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704151, 43.325218, 42.546906>,  <40.371822, 42.773354, 42.156044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704151, 43.325218, 42.546906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.365131, 43.502899, 42.430737>,  <40.161720, 43.609509, 42.361034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.365131, 43.502899, 42.430737>,  <40.704151, 43.325218, 42.546906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365131, 43.502899, 42.430737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143684, 0.334739, 0.931292,
		0.510901, 0.831043, -0.219882,
		-0.847546, 0.444204, -0.290426,
		40.110867, 43.636162, 42.343609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733402, 43.870720, 42.867958>,  <40.704151, 43.325218, 42.546906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733402, 43.870720, 42.867958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343597, 43.820213, 42.793789>,  <40.109715, 43.789909, 42.749287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343597, 43.820213, 42.793789>,  <40.733402, 43.870720, 42.867958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343597, 43.820213, 42.793789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219396, 0.364042, 0.905173,
		-0.046795, 0.922783, -0.382467,
		-0.974513, -0.126269, -0.185420,
		40.051243, 43.782333, 42.738163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525906, 44.483620, 43.171505>,  <40.733402, 43.870720, 42.867958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525906, 44.483620, 43.171505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207748, 44.241947, 43.152287>,  <40.016853, 44.096943, 43.140755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.207748, 44.241947, 43.152287>,  <40.525906, 44.483620, 43.171505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207748, 44.241947, 43.152287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345022, 0.386187, 0.855465,
		-0.498300, 0.697011, -0.515628,
		-0.795397, -0.604181, -0.048047,
		39.969128, 44.060692, 43.137871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045753, 44.975986, 43.322849>,  <40.525906, 44.483620, 43.171505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045753, 44.975986, 43.322849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907146, 44.608627, 43.399235>,  <39.823982, 44.388210, 43.445068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907146, 44.608627, 43.399235>,  <40.045753, 44.975986, 43.322849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907146, 44.608627, 43.399235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076198, 0.230466, 0.970093,
		-0.934943, 0.321603, -0.149841,
		-0.346518, -0.918399, 0.190967,
		39.803192, 44.333107, 43.456524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350723, 44.955635, 43.728580>,  <40.045753, 44.975986, 43.322849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350723, 44.955635, 43.728580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472198, 44.582024, 43.803802>,  <39.545082, 44.357857, 43.848934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472198, 44.582024, 43.803802>,  <39.350723, 44.955635, 43.728580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472198, 44.582024, 43.803802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016144, 0.192304, 0.981203,
		-0.952635, -0.301015, 0.043322,
		0.303688, -0.934028, 0.188055,
		39.563305, 44.301815, 43.860218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014046, 44.794857, 44.205311>,  <39.350723, 44.955635, 43.728580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014046, 44.794857, 44.205311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330124, 44.551384, 44.233860>,  <39.519772, 44.405300, 44.250992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330124, 44.551384, 44.233860>,  <39.014046, 44.794857, 44.205311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330124, 44.551384, 44.233860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016755, 0.137875, 0.990308,
		-0.612628, -0.781339, 0.119146,
		0.790193, -0.608687, 0.071375,
		39.567181, 44.368778, 44.255272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068920, 44.486088, 44.889866>,  <39.014046, 44.794857, 44.205311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068920, 44.486088, 44.889866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439461, 44.418621, 44.755154>,  <39.661785, 44.378143, 44.674328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439461, 44.418621, 44.755154>,  <39.068920, 44.486088, 44.889866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439461, 44.418621, 44.755154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331356, -0.060195, 0.941584,
		-0.179084, -0.983834, 0.000126,
		0.926354, -0.168665, -0.336779,
		39.717365, 44.368023, 44.654121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286541, 43.925644, 45.196960>,  <39.068920, 44.486088, 44.889866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286541, 43.925644, 45.196960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617653, 44.131752, 45.108166>,  <39.816319, 44.255417, 45.054890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617653, 44.131752, 45.108166>,  <39.286541, 43.925644, 45.196960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617653, 44.131752, 45.108166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238849, 0.034380, 0.970448,
		0.507671, -0.856340, -0.094612,
		0.827781, 0.515266, -0.221990,
		39.865986, 44.286331, 45.041569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664143, 43.834682, 45.730156>,  <39.286541, 43.925644, 45.196960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664143, 43.834682, 45.730156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870869, 44.120319, 45.541279>,  <39.994904, 44.291702, 45.427952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870869, 44.120319, 45.541279>,  <39.664143, 43.834682, 45.730156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870869, 44.120319, 45.541279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223986, 0.419566, 0.879656,
		0.826273, -0.560389, 0.056893,
		0.516820, 0.714093, -0.472196,
		40.025913, 44.334549, 45.399620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249001, 43.784988, 45.983028>,  <39.664143, 43.834682, 45.730156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249001, 43.784988, 45.983028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218388, 44.163136, 45.856270>,  <40.200020, 44.390022, 45.780216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218388, 44.163136, 45.856270>,  <40.249001, 43.784988, 45.983028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218388, 44.163136, 45.856270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229735, 0.325993, 0.917033,
		0.970239, -0.002614, -0.242135,
		-0.076537, 0.945369, -0.316892,
		40.195427, 44.446747, 45.761204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944324, 44.013359, 45.970062>,  <40.249001, 43.784988, 45.983028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944324, 44.013359, 45.970062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.680782, 44.313034, 45.997253>,  <40.522655, 44.492840, 46.013569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.680782, 44.313034, 45.997253>,  <40.944324, 44.013359, 45.970062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680782, 44.313034, 45.997253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311991, 0.189903, 0.930913,
		0.684520, 0.634549, -0.358859,
		-0.658859, 0.749189, 0.067981,
		40.483124, 44.537792, 46.017647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347328, 44.601627, 46.232399>,  <40.944324, 44.013359, 45.970062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347328, 44.601627, 46.232399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963978, 44.675133, 46.319809>,  <40.733967, 44.719234, 46.372257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963978, 44.675133, 46.319809>,  <41.347328, 44.601627, 46.232399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963978, 44.675133, 46.319809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231674, 0.053134, 0.971341,
		0.166883, 0.981534, -0.093494,
		-0.958372, 0.183761, 0.218528,
		40.676468, 44.730263, 46.385368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331577, 45.122108, 46.738579>,  <41.347328, 44.601627, 46.232399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331577, 45.122108, 46.738579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966976, 44.962227, 46.777367>,  <40.748215, 44.866299, 46.800640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966976, 44.962227, 46.777367>,  <41.331577, 45.122108, 46.738579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966976, 44.962227, 46.777367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033515, 0.162807, 0.986089,
		-0.409935, 0.902069, -0.135003,
		-0.911499, -0.399707, 0.096973,
		40.693527, 44.842316, 46.806458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153446, 45.488960, 47.281120>,  <41.331577, 45.122108, 46.738579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153446, 45.488960, 47.281120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.861496, 45.215576, 47.276012>,  <40.686325, 45.051548, 47.272945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.861496, 45.215576, 47.276012>,  <41.153446, 45.488960, 47.281120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861496, 45.215576, 47.276012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057965, -0.080500, 0.995068,
		-0.681116, 0.725537, 0.098372,
		-0.729878, -0.683458, -0.012774,
		40.642532, 45.010540, 47.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570187, 45.689396, 47.778316>,  <41.153446, 45.488960, 47.281120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570187, 45.689396, 47.778316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489441, 45.300804, 47.728539>,  <40.440994, 45.067650, 47.698669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489441, 45.300804, 47.728539>,  <40.570187, 45.689396, 47.778316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489441, 45.300804, 47.728539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194474, -0.084776, 0.977237,
		-0.959912, 0.221471, -0.171814,
		-0.201864, -0.971475, -0.124448,
		40.428883, 45.009361, 47.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039768, 45.507740, 48.187481>,  <40.570187, 45.689396, 47.778316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039768, 45.507740, 48.187481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217068, 45.154709, 48.124771>,  <40.323448, 44.942890, 48.087147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217068, 45.154709, 48.124771>,  <40.039768, 45.507740, 48.187481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217068, 45.154709, 48.124771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222221, -0.277625, 0.934635,
		-0.868415, -0.379440, -0.319186,
		0.443252, -0.882581, -0.156773,
		40.350044, 44.889935, 48.077740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996838, 45.783913, 48.922874>,  <40.039768, 45.507740, 48.187481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996838, 45.783913, 48.922874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661823, 45.964607, 49.045818>,  <39.460815, 46.073025, 49.119587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661823, 45.964607, 49.045818>,  <39.996838, 45.783913, 48.922874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661823, 45.964607, 49.045818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076288, 0.653711, -0.752889,
		-0.541031, -0.607123, -0.581968,
		-0.837536, 0.451733, 0.307361,
		39.410564, 46.100128, 49.138027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354752, 45.993813, 48.382710>,  <39.996838, 45.783913, 48.922874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354752, 45.993813, 48.382710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412605, 46.243835, 48.689537>,  <39.447319, 46.393848, 48.873634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412605, 46.243835, 48.689537>,  <39.354752, 45.993813, 48.382710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412605, 46.243835, 48.689537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094072, 0.780392, -0.618174,
		-0.985003, 0.017250, 0.171671,
		0.144634, 0.625053, 0.767065,
		39.455994, 46.431351, 48.919655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161602, 45.353020, 47.959698>,  <39.354752, 45.993813, 48.382710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161602, 45.353020, 47.959698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914211, 45.610924, 48.139374>,  <38.765778, 45.765667, 48.247181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914211, 45.610924, 48.139374>,  <39.161602, 45.353020, 47.959698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914211, 45.610924, 48.139374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758202, -0.339463, -0.556682,
		-0.206443, -0.684870, 0.698809,
		-0.618474, 0.644762, 0.449190,
		38.728668, 45.804352, 48.274132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560287, 44.960712, 48.149414>,  <39.161602, 45.353020, 47.959698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560287, 44.960712, 48.149414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465134, 45.346836, 48.106361>,  <38.408043, 45.578510, 48.080528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465134, 45.346836, 48.106361>,  <38.560287, 44.960712, 48.149414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465134, 45.346836, 48.106361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692078, -0.246207, -0.678535,
		-0.681497, -0.086924, 0.726640,
		-0.237885, 0.965312, -0.107631,
		38.393768, 45.636429, 48.074074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947041, 44.893368, 47.998875>,  <38.560287, 44.960712, 48.149414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947041, 44.893368, 47.998875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974148, 45.278893, 47.895748>,  <37.990414, 45.510208, 47.833870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974148, 45.278893, 47.895748>,  <37.947041, 44.893368, 47.998875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974148, 45.278893, 47.895748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516674, -0.187160, -0.835476,
		-0.853496, 0.189826, 0.485294,
		0.067767, 0.963814, -0.257818,
		37.994476, 45.568035, 47.818401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287701, 45.166069, 47.801899>,  <37.947041, 44.893368, 47.998875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287701, 45.166069, 47.801899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545853, 45.411602, 47.620041>,  <37.700745, 45.558922, 47.510925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545853, 45.411602, 47.620041>,  <37.287701, 45.166069, 47.801899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545853, 45.411602, 47.620041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305720, -0.337878, -0.890154,
		-0.700017, 0.713479, -0.030399,
		0.645377, 0.613829, -0.454645,
		37.739468, 45.595753, 47.483646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904659, 45.438709, 47.299919>,  <37.287701, 45.166069, 47.801899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904659, 45.438709, 47.299919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280373, 45.513184, 47.184624>,  <37.505802, 45.557869, 47.115444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280373, 45.513184, 47.184624>,  <36.904659, 45.438709, 47.299919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280373, 45.513184, 47.184624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231138, -0.277563, -0.932488,
		-0.253624, 0.942493, -0.217674,
		0.939282, 0.186188, -0.288242,
		37.562157, 45.569038, 47.098152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809082, 45.834759, 46.737534>,  <36.904659, 45.438709, 47.299919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809082, 45.834759, 46.737534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184990, 45.704178, 46.697025>,  <37.410534, 45.625828, 46.672722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184990, 45.704178, 46.697025>,  <36.809082, 45.834759, 46.737534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184990, 45.704178, 46.697025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198946, -0.281523, -0.938704,
		0.277932, 0.902316, -0.329514,
		0.939773, -0.326452, -0.101268,
		37.466923, 45.606243, 46.666645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973194, 46.110638, 46.200905>,  <36.809082, 45.834759, 46.737534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973194, 46.110638, 46.200905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241024, 45.814770, 46.227894>,  <37.401722, 45.637249, 46.244087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.241024, 45.814770, 46.227894>,  <36.973194, 46.110638, 46.200905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241024, 45.814770, 46.227894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345116, -0.390275, -0.853569,
		0.657695, 0.548243, -0.516592,
		0.669577, -0.739672, 0.067474,
		37.441898, 45.592869, 46.248135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311150, 46.112053, 45.583862>,  <36.973194, 46.110638, 46.200905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311150, 46.112053, 45.583862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385052, 45.741154, 45.714142>,  <37.429394, 45.518616, 45.792309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385052, 45.741154, 45.714142>,  <37.311150, 46.112053, 45.583862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385052, 45.741154, 45.714142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006080, -0.330317, -0.943850,
		0.982766, 0.176361, -0.055390,
		0.184755, -0.927247, 0.325697,
		37.440479, 45.462978, 45.811852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 45.766411, 45.156811>,  <37.311150, 46.112053, 45.583862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766632, 45.766411, 45.156811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601131, 45.448071, 45.333641>,  <37.501831, 45.257065, 45.439739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601131, 45.448071, 45.333641>,  <37.766632, 45.766411, 45.156811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601131, 45.448071, 45.333641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077475, -0.514608, -0.853918,
		0.907087, -0.319060, 0.274578,
		-0.413751, -0.795851, 0.442075,
		37.477005, 45.209316, 45.466263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224758, 45.271259, 44.995628>,  <37.766632, 45.766411, 45.156811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224758, 45.271259, 44.995628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872940, 45.101921, 45.082508>,  <37.661850, 45.000317, 45.134636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872940, 45.101921, 45.082508>,  <38.224758, 45.271259, 44.995628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872940, 45.101921, 45.082508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116122, -0.633656, -0.764850,
		0.461425, -0.647500, 0.606490,
		-0.879547, -0.423348, 0.217195,
		37.609077, 44.974918, 45.147667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286888, 44.466171, 44.970737>,  <38.224758, 45.271259, 44.995628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286888, 44.466171, 44.970737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891903, 44.524563, 44.946705>,  <37.654911, 44.559597, 44.932285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891903, 44.524563, 44.946705>,  <38.286888, 44.466171, 44.970737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891903, 44.524563, 44.946705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065682, -0.726059, -0.684488,
		-0.143543, -0.671960, 0.726543,
		-0.987462, 0.145975, -0.060085,
		37.595665, 44.568356, 44.928680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896252, 43.763123, 44.978767>,  <38.286888, 44.466171, 44.970737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896252, 43.763123, 44.978767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670479, 44.041210, 44.800743>,  <37.535015, 44.208061, 44.693928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670479, 44.041210, 44.800743>,  <37.896252, 43.763123, 44.978767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670479, 44.041210, 44.800743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090176, -0.587863, -0.803919,
		-0.820537, -0.413626, 0.394503,
		-0.564435, 0.695220, -0.445064,
		37.501148, 44.249775, 44.667225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325191, 43.401257, 44.645523>,  <37.896252, 43.763123, 44.978767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325191, 43.401257, 44.645523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337246, 43.759754, 44.468506>,  <37.344479, 43.974854, 44.362297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.337246, 43.759754, 44.468506>,  <37.325191, 43.401257, 44.645523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337246, 43.759754, 44.468506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084829, -0.438852, -0.894546,
		-0.995940, 0.064499, 0.062802,
		0.030137, 0.896242, -0.442541,
		37.346287, 44.028625, 44.335743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932964, 43.301517, 44.133686>,  <37.325191, 43.401257, 44.645523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932964, 43.301517, 44.133686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126446, 43.634422, 44.025330>,  <37.242535, 43.834164, 43.960316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126446, 43.634422, 44.025330>,  <36.932964, 43.301517, 44.133686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126446, 43.634422, 44.025330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133798, -0.235553, -0.962607,
		-0.864946, 0.501858, -0.002583,
		0.483700, 0.832258, -0.270888,
		37.271557, 43.884098, 43.944065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544361, 43.593033, 43.592278>,  <36.932964, 43.301517, 44.133686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544361, 43.593033, 43.592278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902588, 43.765259, 43.547436>,  <37.117523, 43.868595, 43.520531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902588, 43.765259, 43.547436>,  <36.544361, 43.593033, 43.592278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902588, 43.765259, 43.547436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034967, -0.183069, -0.982478,
		-0.443544, 0.883798, -0.148896,
		0.895570, 0.430566, -0.112103,
		37.171261, 43.894428, 43.513805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528572, 43.916340, 42.879162>,  <36.544361, 43.593033, 43.592278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528572, 43.916340, 42.879162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914566, 43.966801, 42.971149>,  <37.146164, 43.997078, 43.026344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914566, 43.966801, 42.971149>,  <36.528572, 43.916340, 42.879162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914566, 43.966801, 42.971149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210061, 0.153395, -0.965580,
		-0.157083, 0.980080, 0.121525,
		0.964987, 0.126149, 0.229972,
		37.204063, 44.004646, 43.040142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752342, 44.607021, 42.555737>,  <36.528572, 43.916340, 42.879162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752342, 44.607021, 42.555737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051506, 44.349709, 42.621246>,  <37.231007, 44.195320, 42.660553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051506, 44.349709, 42.621246>,  <36.752342, 44.607021, 42.555737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051506, 44.349709, 42.621246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278458, 0.080081, -0.957104,
		0.602569, 0.761433, 0.239020,
		0.747912, -0.643278, 0.163773,
		37.275879, 44.156727, 42.670380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282730, 44.815464, 42.176445>,  <36.752342, 44.607021, 42.555737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282730, 44.815464, 42.176445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394318, 44.436440, 42.238800>,  <37.461269, 44.209023, 42.276215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394318, 44.436440, 42.238800>,  <37.282730, 44.815464, 42.176445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394318, 44.436440, 42.238800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295601, -0.069717, -0.952764,
		0.913673, 0.311870, 0.260652,
		0.278966, -0.947564, 0.155888,
		37.478008, 44.152172, 42.285568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998013, 44.743324, 41.917118>,  <37.282730, 44.815464, 42.176445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998013, 44.743324, 41.917118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837135, 44.377178, 41.924652>,  <37.740608, 44.157490, 41.929173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837135, 44.377178, 41.924652>,  <37.998013, 44.743324, 41.917118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837135, 44.377178, 41.924652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223261, -0.118004, -0.967590,
		0.887916, -0.384953, 0.251825,
		-0.402193, -0.915361, 0.018833,
		37.716476, 44.102570, 41.930302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347801, 44.455872, 41.377972>,  <37.998013, 44.743324, 41.917118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347801, 44.455872, 41.377972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057186, 44.188248, 41.440594>,  <37.882816, 44.027676, 41.478168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057186, 44.188248, 41.440594>,  <38.347801, 44.455872, 41.377972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057186, 44.188248, 41.440594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008406, -0.236478, -0.971600,
		0.687078, -0.704586, 0.177434,
		-0.726535, -0.669056, 0.156556,
		37.839226, 43.987530, 41.487560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.914047, 30.526258, 36.507481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517227, 30.575779, 36.516487>,  <39.279137, 30.605492, 36.521889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517227, 30.575779, 36.516487>,  <39.914047, 30.526258, 36.507481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517227, 30.575779, 36.516487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125689, 0.983494, 0.130157,
		-0.006029, 0.131953, -0.991238,
		-0.992051, 0.123803, 0.022515,
		39.219612, 30.612921, 36.523243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777668, 31.020975, 36.037365>,  <39.914047, 30.526258, 36.507481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777668, 31.020975, 36.037365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482605, 30.996302, 36.306309>,  <39.305569, 30.981497, 36.467674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482605, 30.996302, 36.306309>,  <39.777668, 31.020975, 36.037365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482605, 30.996302, 36.306309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037958, 0.990455, 0.132510,
		-0.674112, 0.123268, -0.728270,
		-0.737653, -0.061683, 0.672357,
		39.261311, 30.977797, 36.508015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423885, 31.541191, 35.778004>,  <39.777668, 31.020975, 36.037365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423885, 31.541191, 35.778004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307594, 31.470415, 36.154125>,  <39.237820, 31.427950, 36.379799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307594, 31.470415, 36.154125>,  <39.423885, 31.541191, 35.778004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307594, 31.470415, 36.154125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111741, 0.969749, 0.217027,
		-0.950260, 0.168165, -0.262158,
		-0.290724, -0.176938, 0.940304,
		39.220379, 31.417334, 36.436218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886765, 31.869394, 35.896961>,  <39.423885, 31.541191, 35.778004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886765, 31.869394, 35.896961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024204, 31.833212, 36.270863>,  <39.106670, 31.811502, 36.495201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024204, 31.833212, 36.270863>,  <38.886765, 31.869394, 35.896961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024204, 31.833212, 36.270863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011900, 0.995690, 0.091978,
		-0.939040, -0.020480, 0.343198,
		0.343602, -0.090455, 0.934749,
		39.127285, 31.806076, 36.551289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732536, 32.554482, 36.150032>,  <38.886765, 31.869394, 35.896961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732536, 32.554482, 36.150032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011414, 32.370693, 36.370144>,  <39.178741, 32.260422, 36.502213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011414, 32.370693, 36.370144>,  <38.732536, 32.554482, 36.150032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011414, 32.370693, 36.370144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455675, 0.876615, 0.154618,
		-0.553429, 0.142952, 0.820537,
		0.697192, -0.459468, 0.550283,
		39.220570, 32.232853, 36.535229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756084, 33.009533, 36.692581>,  <38.732536, 32.554482, 36.150032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756084, 33.009533, 36.692581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088585, 32.787342, 36.701130>,  <39.288086, 32.654026, 36.706257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088585, 32.787342, 36.701130>,  <38.756084, 33.009533, 36.692581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088585, 32.787342, 36.701130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531294, 0.805197, 0.263408,
		-0.163525, -0.207606, 0.964448,
		0.831256, -0.555479, 0.021370,
		39.337963, 32.620697, 36.707542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045185, 33.369808, 37.197739>,  <38.756084, 33.009533, 36.692581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045185, 33.369808, 37.197739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333828, 33.167355, 37.008797>,  <39.507011, 33.045883, 36.895432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333828, 33.167355, 37.008797>,  <39.045185, 33.369808, 37.197739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333828, 33.167355, 37.008797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657990, 0.713546, 0.240628,
		0.215256, -0.484442, 0.847928,
		0.721605, -0.506131, -0.472353,
		39.550308, 33.015514, 36.867092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611671, 33.645611, 37.425495>,  <39.045185, 33.369808, 37.197739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611671, 33.645611, 37.425495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.787758, 33.423397, 37.143337>,  <39.893410, 33.290070, 36.974041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.787758, 33.423397, 37.143337>,  <39.611671, 33.645611, 37.425495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787758, 33.423397, 37.143337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805537, 0.591392, 0.036963,
		0.396632, -0.584495, 0.707848,
		0.440220, -0.555537, -0.705397,
		39.919823, 33.256737, 36.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418674, 33.413143, 37.621445>,  <39.611671, 33.645611, 37.425495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418674, 33.413143, 37.621445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333652, 33.465099, 37.234055>,  <40.282639, 33.496273, 37.001621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333652, 33.465099, 37.234055>,  <40.418674, 33.413143, 37.621445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333652, 33.465099, 37.234055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725519, 0.684896, -0.067377,
		0.654553, -0.716970, -0.239821,
		-0.212559, 0.129893, -0.968476,
		40.269886, 33.504066, 36.943512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007614, 33.203030, 37.286625>,  <40.418674, 33.413143, 37.621445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007614, 33.203030, 37.286625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.828594, 33.437691, 37.016651>,  <40.721184, 33.578487, 36.854668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.828594, 33.437691, 37.016651>,  <41.007614, 33.203030, 37.286625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828594, 33.437691, 37.016651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839797, 0.535087, -0.091775,
		0.307309, -0.607883, -0.732147,
		-0.447551, 0.586652, -0.674936,
		40.694328, 33.613686, 36.814171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462044, 33.191849, 36.671150>,  <41.007614, 33.203030, 37.286625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462044, 33.191849, 36.671150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230045, 33.513695, 36.620247>,  <41.090843, 33.706802, 36.589706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230045, 33.513695, 36.620247>,  <41.462044, 33.191849, 36.671150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230045, 33.513695, 36.620247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743608, 0.459154, -0.486029,
		-0.332634, -0.376529, -0.864628,
		-0.580001, 0.804614, -0.127259,
		41.056046, 33.755077, 36.582069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484604, 33.376724, 36.041481>,  <41.462044, 33.191849, 36.671150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484604, 33.376724, 36.041481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362816, 33.717651, 36.211590>,  <41.289745, 33.922207, 36.313656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362816, 33.717651, 36.211590>,  <41.484604, 33.376724, 36.041481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362816, 33.717651, 36.211590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677355, 0.507637, -0.532443,
		-0.669694, 0.125951, -0.731878,
		-0.304467, 0.852315, 0.425275,
		41.271477, 33.973347, 36.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347595, 33.915092, 35.461220>,  <41.484604, 33.376724, 36.041481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347595, 33.915092, 35.461220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413227, 34.107327, 35.805805>,  <41.452606, 34.222668, 36.012558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413227, 34.107327, 35.805805>,  <41.347595, 33.915092, 35.461220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413227, 34.107327, 35.805805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662543, 0.593312, -0.457184,
		-0.730830, 0.645772, -0.221054,
		0.164082, 0.480582, 0.861463,
		41.462452, 34.251499, 36.064243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336407, 34.588989, 35.226677>,  <41.347595, 33.915092, 35.461220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336407, 34.588989, 35.226677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.531773, 34.593094, 35.575695>,  <41.648994, 34.595558, 35.785107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.531773, 34.593094, 35.575695>,  <41.336407, 34.588989, 35.226677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531773, 34.593094, 35.575695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681292, 0.620314, -0.388655,
		-0.545242, 0.784287, 0.295983,
		0.488419, 0.010261, 0.872549,
		41.678299, 34.596172, 35.837460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500835, 35.336861, 35.313698>,  <41.336407, 34.588989, 35.226677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500835, 35.336861, 35.313698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.740696, 35.106129, 35.535576>,  <41.884613, 34.967690, 35.668701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.740696, 35.106129, 35.535576>,  <41.500835, 35.336861, 35.313698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740696, 35.106129, 35.535576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793772, 0.516813, -0.320673,
		-0.101702, 0.632594, 0.767777,
		0.599653, -0.576826, 0.554696,
		41.920593, 34.933083, 35.701984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964005, 35.820560, 35.477928>,  <41.500835, 35.336861, 35.313698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964005, 35.820560, 35.477928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156925, 35.475723, 35.540119>,  <42.272678, 35.268822, 35.577435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156925, 35.475723, 35.540119>,  <41.964005, 35.820560, 35.477928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156925, 35.475723, 35.540119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830099, 0.393073, -0.395511,
		0.279855, 0.319818, 0.905206,
		0.482303, -0.862096, 0.155478,
		42.301617, 35.217094, 35.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524647, 35.982449, 35.751213>,  <41.964005, 35.820560, 35.477928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524647, 35.982449, 35.751213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.595921, 35.617622, 35.603493>,  <42.638687, 35.398727, 35.514862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.595921, 35.617622, 35.603493>,  <42.524647, 35.982449, 35.751213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595921, 35.617622, 35.603493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877045, 0.317371, -0.360650,
		0.446142, -0.259626, 0.856476,
		0.178187, -0.912069, -0.369296,
		42.649376, 35.344002, 35.492702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296501, 35.907131, 35.852470>,  <42.524647, 35.982449, 35.751213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296501, 35.907131, 35.852470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196648, 35.611019, 35.602779>,  <43.136734, 35.433350, 35.452965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.196648, 35.611019, 35.602779>,  <43.296501, 35.907131, 35.852470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196648, 35.611019, 35.602779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881846, 0.092512, -0.462374,
		0.400036, -0.665899, 0.629722,
		-0.249638, -0.740284, -0.624229,
		43.121758, 35.388935, 35.415512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952202, 35.578754, 35.667641>,  <43.296501, 35.907131, 35.852470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952202, 35.578754, 35.667641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729530, 35.397430, 35.389183>,  <43.595928, 35.288635, 35.222111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729530, 35.397430, 35.389183>,  <43.952202, 35.578754, 35.667641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729530, 35.397430, 35.389183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815592, -0.139014, -0.561681,
		0.157842, -0.880446, 0.447103,
		-0.556683, -0.453311, -0.696142,
		43.562527, 35.261436, 35.180340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290089, 35.006786, 35.531933>,  <43.952202, 35.578754, 35.667641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290089, 35.006786, 35.531933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077103, 35.099136, 35.206188>,  <43.949310, 35.154549, 35.010742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077103, 35.099136, 35.206188>,  <44.290089, 35.006786, 35.531933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077103, 35.099136, 35.206188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842231, 0.048533, -0.536928,
		-0.084443, -0.971771, -0.220296,
		-0.532463, 0.230880, -0.814357,
		43.917362, 35.168400, 34.961880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517155, 34.610420, 34.968784>,  <44.290089, 35.006786, 35.531933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517155, 34.610420, 34.968784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333336, 34.902592, 34.766682>,  <44.223045, 35.077896, 34.645420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333336, 34.902592, 34.766682>,  <44.517155, 34.610420, 34.968784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333336, 34.902592, 34.766682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831330, 0.153550, -0.534147,
		-0.312576, -0.665501, -0.677794,
		-0.459551, 0.730432, -0.505255,
		44.195469, 35.121723, 34.615105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662872, 34.499367, 34.270245>,  <44.517155, 34.610420, 34.968784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662872, 34.499367, 34.270245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.605122, 34.889145, 34.339073>,  <44.570473, 35.123013, 34.380371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.605122, 34.889145, 34.339073>,  <44.662872, 34.499367, 34.270245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605122, 34.889145, 34.339073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721404, 0.222679, -0.655736,
		-0.677297, 0.029461, -0.735120,
		-0.144377, 0.974447, 0.172073,
		44.561810, 35.181480, 34.390694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327908, 34.067123, 34.312717>,  <44.662872, 34.499367, 34.270245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327908, 34.067123, 34.312717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659863, 33.884815, 34.441444>,  <45.859035, 33.775429, 34.518681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659863, 33.884815, 34.441444>,  <45.327908, 34.067123, 34.312717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659863, 33.884815, 34.441444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410395, -0.889410, -0.201311,
		0.377975, 0.034994, -0.925154,
		0.829886, -0.455769, 0.321813,
		45.908829, 33.748085, 34.537987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595253, 33.639507, 33.728161>,  <45.327908, 34.067123, 34.312717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595253, 33.639507, 33.728161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759098, 33.483162, 34.057873>,  <45.857403, 33.389355, 34.255699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.759098, 33.483162, 34.057873>,  <45.595253, 33.639507, 33.728161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759098, 33.483162, 34.057873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087874, -0.916265, -0.390815,
		0.908019, 0.087648, -0.409658,
		0.409609, -0.390866, 0.824284,
		45.881981, 33.365902, 34.305157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056946, 33.133213, 33.396767>,  <45.595253, 33.639507, 33.728161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056946, 33.133213, 33.396767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928810, 33.035351, 33.762833>,  <45.851929, 32.976635, 33.982471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928810, 33.035351, 33.762833>,  <46.056946, 33.133213, 33.396767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928810, 33.035351, 33.762833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234897, -0.915388, -0.326938,
		0.917719, -0.319700, 0.235764,
		-0.320338, -0.244657, 0.915165,
		45.832710, 32.961952, 34.037380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989124, 32.420132, 33.411869>,  <46.056946, 33.133213, 33.396767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989124, 32.420132, 33.411869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796669, 32.510128, 33.750782>,  <45.681194, 32.564125, 33.954128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796669, 32.510128, 33.750782>,  <45.989124, 32.420132, 33.411869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796669, 32.510128, 33.750782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642909, -0.747613, -0.166560,
		0.595964, -0.624863, 0.504354,
		-0.481139, 0.224990, 0.847281,
		45.652328, 32.577625, 34.004967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926701, 31.794285, 33.722473>,  <45.989124, 32.420132, 33.411869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926701, 31.794285, 33.722473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653633, 32.025562, 33.901203>,  <45.489792, 32.164330, 34.008442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653633, 32.025562, 33.901203>,  <45.926701, 31.794285, 33.722473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653633, 32.025562, 33.901203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656796, -0.753534, -0.028393,
		0.320278, -0.312853, 0.894173,
		-0.682672, 0.578195, 0.446821,
		45.448830, 32.199020, 34.035248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687695, 31.392384, 34.229630>,  <45.926701, 31.794285, 33.722473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687695, 31.392384, 34.229630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400230, 31.666716, 34.183743>,  <45.227753, 31.831314, 34.156208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.400230, 31.666716, 34.183743>,  <45.687695, 31.392384, 34.229630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400230, 31.666716, 34.183743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683927, -0.726955, -0.061495,
		-0.125572, 0.034266, 0.991493,
		-0.718663, 0.685830, -0.114720,
		45.184631, 31.872465, 34.149326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110371, 31.173971, 34.605366>,  <45.687695, 31.392384, 34.229630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110371, 31.173971, 34.605366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968227, 31.444254, 34.347019>,  <44.882942, 31.606422, 34.192013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968227, 31.444254, 34.347019>,  <45.110371, 31.173971, 34.605366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968227, 31.444254, 34.347019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841497, -0.532080, -0.093667,
		-0.406944, 0.510210, 0.757683,
		-0.355358, 0.675705, -0.645867,
		44.861618, 31.646965, 34.153259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465904, 31.411221, 34.887440>,  <45.110371, 31.173971, 34.605366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465904, 31.411221, 34.887440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.469402, 31.466633, 34.491310>,  <44.471500, 31.499880, 34.253632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.469402, 31.466633, 34.491310>,  <44.465904, 31.411221, 34.887440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469402, 31.466633, 34.491310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857469, -0.508481, -0.078702,
		-0.514461, 0.849857, 0.114337,
		0.008748, 0.138529, -0.990320,
		44.472027, 31.508192, 34.194214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797997, 31.593748, 34.731285>,  <44.465904, 31.411221, 34.887440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797997, 31.593748, 34.731285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.933865, 31.508801, 34.364784>,  <44.015385, 31.457832, 34.144882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.933865, 31.508801, 34.364784>,  <43.797997, 31.593748, 34.731285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933865, 31.508801, 34.364784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915507, -0.297933, -0.270339,
		-0.215571, 0.930665, -0.295623,
		0.339671, -0.212368, -0.916255,
		44.035767, 31.445089, 34.089909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353855, 31.907173, 34.128777>,  <43.797997, 31.593748, 34.731285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353855, 31.907173, 34.128777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.543938, 31.589565, 33.977139>,  <43.657986, 31.399000, 33.886158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.543938, 31.589565, 33.977139>,  <43.353855, 31.907173, 34.128777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543938, 31.589565, 33.977139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873487, -0.373903, -0.311796,
		0.105828, 0.479300, -0.871247,
		0.475205, -0.794020, -0.379093,
		43.686501, 31.351358, 33.863411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934208, 31.752459, 33.458893>,  <43.353855, 31.907173, 34.128777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934208, 31.752459, 33.458893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165623, 31.432644, 33.523441>,  <43.304470, 31.240755, 33.562172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.165623, 31.432644, 33.523441>,  <42.934208, 31.752459, 33.458893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165623, 31.432644, 33.523441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772784, -0.600587, -0.205183,
		0.260970, -0.006002, -0.965328,
		0.578532, -0.799537, 0.161374,
		43.339184, 31.192783, 33.571854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747421, 31.382353, 32.897255>,  <42.934208, 31.752459, 33.458893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747421, 31.382353, 32.897255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925495, 31.145506, 33.165943>,  <43.032341, 31.003399, 33.327156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925495, 31.145506, 33.165943>,  <42.747421, 31.382353, 32.897255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925495, 31.145506, 33.165943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656316, -0.726085, -0.205059,
		0.609144, -0.349569, -0.711860,
		0.445189, -0.592116, 0.671719,
		43.059052, 30.967871, 33.367458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835587, 30.728029, 32.543686>,  <42.747421, 31.382353, 32.897255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835587, 30.728029, 32.543686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870831, 30.619246, 32.926991>,  <42.891979, 30.553974, 33.156975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870831, 30.619246, 32.926991>,  <42.835587, 30.728029, 32.543686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870831, 30.619246, 32.926991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726900, -0.675305, -0.124816,
		0.681067, -0.685565, -0.257192,
		0.088113, -0.271961, 0.958266,
		42.897263, 30.537657, 33.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683701, 29.970089, 32.499313>,  <42.835587, 30.728029, 32.543686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683701, 29.970089, 32.499313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639023, 30.068071, 32.884544>,  <42.612217, 30.126862, 33.115685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639023, 30.068071, 32.884544>,  <42.683701, 29.970089, 32.499313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639023, 30.068071, 32.884544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699622, -0.707643, 0.098849,
		0.705729, -0.662750, 0.250417,
		-0.111693, 0.244958, 0.963078,
		42.605515, 30.141560, 33.173470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535412, 29.326679, 32.830326>,  <42.683701, 29.970089, 32.499313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535412, 29.326679, 32.830326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.420982, 29.584755, 33.113705>,  <42.352325, 29.739601, 33.283730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.420982, 29.584755, 33.113705>,  <42.535412, 29.326679, 32.830326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420982, 29.584755, 33.113705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817500, -0.550019, 0.170799,
		0.499856, -0.530293, 0.684787,
		-0.286072, 0.645189, 0.708444,
		42.335159, 29.778311, 33.326237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404289, 28.888903, 33.383572>,  <42.535412, 29.326679, 32.830326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404289, 28.888903, 33.383572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192753, 29.221704, 33.450626>,  <42.065830, 29.421385, 33.490860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192753, 29.221704, 33.450626>,  <42.404289, 28.888903, 33.383572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192753, 29.221704, 33.450626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800496, -0.554594, 0.227226,
		0.282023, -0.014027, 0.959305,
		-0.528837, 0.832003, 0.167636,
		42.034103, 29.471306, 33.500916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964211, 28.638596, 33.857468>,  <42.404289, 28.888903, 33.383572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964211, 28.638596, 33.857468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802864, 28.975393, 33.714172>,  <41.706055, 29.177473, 33.628197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802864, 28.975393, 33.714172>,  <41.964211, 28.638596, 33.857468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802864, 28.975393, 33.714172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914345, -0.386112, 0.122029,
		-0.035572, 0.376778, 0.925621,
		-0.403371, 0.841996, -0.358240,
		41.681854, 29.227991, 33.606701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517986, 28.922890, 34.473301>,  <41.964211, 28.638596, 33.857468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517986, 28.922890, 34.473301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402451, 29.079050, 34.123634>,  <41.333130, 29.172747, 33.913834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402451, 29.079050, 34.123634>,  <41.517986, 28.922890, 34.473301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402451, 29.079050, 34.123634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956466, -0.157500, 0.245693,
		-0.041761, 0.907072, 0.418898,
		-0.288838, 0.390401, -0.874162,
		41.315800, 29.196171, 33.861385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040623, 29.446474, 34.661026>,  <41.517986, 28.922890, 34.473301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040623, 29.446474, 34.661026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952961, 29.343672, 34.284531>,  <40.900364, 29.281990, 34.058636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952961, 29.343672, 34.284531>,  <41.040623, 29.446474, 34.661026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952961, 29.343672, 34.284531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968899, -0.056302, 0.240965,
		-0.114922, 0.964769, -0.236674,
		-0.219150, -0.257005, -0.941234,
		40.887215, 29.266571, 34.002159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544804, 29.831953, 34.535088>,  <41.040623, 29.446474, 34.661026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544804, 29.831953, 34.535088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489700, 29.566145, 34.241302>,  <40.456638, 29.406660, 34.065033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489700, 29.566145, 34.241302>,  <40.544804, 29.831953, 34.535088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489700, 29.566145, 34.241302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986062, 0.022168, 0.164895,
		-0.093294, 0.746943, -0.658311,
		-0.137760, -0.664519, -0.734464,
		40.448372, 29.366789, 34.020962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.470467, 42.067307, 37.106300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180283, 41.874744, 37.303055>,  <41.006172, 41.759205, 37.421108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180283, 41.874744, 37.303055>,  <41.470467, 42.067307, 37.106300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180283, 41.874744, 37.303055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127421, -0.796264, -0.591377,
		0.676363, -0.366346, 0.639002,
		-0.725463, -0.481408, 0.491883,
		40.962643, 41.730324, 37.450619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720886, 41.334984, 37.302700>,  <41.470467, 42.067307, 37.106300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720886, 41.334984, 37.302700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321163, 41.321461, 37.296535>,  <41.081329, 41.313347, 37.292835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321163, 41.321461, 37.296535>,  <41.720886, 41.334984, 37.302700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321163, 41.321461, 37.296535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036680, -0.831306, -0.554603,
		0.005935, -0.554786, 0.831972,
		-0.999309, -0.033809, -0.015416,
		41.021370, 41.311317, 37.291912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479305, 40.580582, 37.456032>,  <41.720886, 41.334984, 37.302700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479305, 40.580582, 37.456032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186123, 40.750961, 37.243870>,  <41.010212, 40.853191, 37.116573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186123, 40.750961, 37.243870>,  <41.479305, 40.580582, 37.456032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186123, 40.750961, 37.243870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100770, -0.839084, -0.534587,
		-0.672766, -0.338382, 0.657939,
		-0.732960, 0.425952, -0.530409,
		40.966236, 40.878746, 37.084747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882923, 40.222000, 37.529160>,  <41.479305, 40.580582, 37.456032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882923, 40.222000, 37.529160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806999, 40.435722, 37.199677>,  <40.761444, 40.563957, 37.001987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806999, 40.435722, 37.199677>,  <40.882923, 40.222000, 37.529160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806999, 40.435722, 37.199677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162551, -0.844480, -0.510324,
		-0.968271, 0.037029, 0.247144,
		-0.189812, 0.534305, -0.823705,
		40.750057, 40.596012, 36.952564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273808, 39.910259, 37.228729>,  <40.882923, 40.222000, 37.529160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273808, 39.910259, 37.228729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432110, 40.137383, 36.940018>,  <40.527092, 40.273655, 36.766788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432110, 40.137383, 36.940018>,  <40.273808, 39.910259, 37.228729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432110, 40.137383, 36.940018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080177, -0.761587, -0.643084,
		-0.914849, 0.312375, -0.255877,
		0.395756, 0.567809, -0.721782,
		40.550838, 40.307724, 36.723484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863758, 39.838299, 36.658154>,  <40.273808, 39.910259, 37.228729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863758, 39.838299, 36.658154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214153, 39.946514, 36.498428>,  <40.424389, 40.011444, 36.402592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214153, 39.946514, 36.498428>,  <39.863758, 39.838299, 36.658154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214153, 39.946514, 36.498428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082892, -0.731126, -0.677188,
		-0.475154, 0.626309, -0.618033,
		0.875989, 0.270538, -0.399314,
		40.476952, 40.027676, 36.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743992, 39.757389, 35.943466>,  <39.863758, 39.838299, 36.658154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743992, 39.757389, 35.943466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141987, 39.789833, 35.966888>,  <40.380783, 39.809299, 35.980942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141987, 39.789833, 35.966888>,  <39.743992, 39.757389, 35.943466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141987, 39.789833, 35.966888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094840, -0.578589, -0.810087,
		-0.031831, 0.811576, -0.583379,
		0.994983, 0.081114, 0.058552,
		40.440483, 39.814167, 35.984455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934097, 40.101299, 35.304398>,  <39.743992, 39.757389, 35.943466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934097, 40.101299, 35.304398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254704, 39.895073, 35.425568>,  <40.447067, 39.771336, 35.498268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254704, 39.895073, 35.425568>,  <39.934097, 40.101299, 35.304398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254704, 39.895073, 35.425568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029529, -0.540090, -0.841089,
		0.597245, 0.665201, -0.448115,
		0.801516, -0.515568, 0.302923,
		40.495159, 39.740402, 35.516445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389965, 40.137535, 34.736748>,  <39.934097, 40.101299, 35.304398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389965, 40.137535, 34.736748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486805, 39.818981, 34.958439>,  <40.544910, 39.627850, 35.091454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486805, 39.818981, 34.958439>,  <40.389965, 40.137535, 34.736748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486805, 39.818981, 34.958439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070560, -0.584156, -0.808569,
		0.967682, 0.156648, -0.197616,
		0.242099, -0.796381, 0.554224,
		40.559433, 39.580067, 35.124706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750053, 39.758335, 34.256115>,  <40.389965, 40.137535, 34.736748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750053, 39.758335, 34.256115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671761, 39.489010, 34.541306>,  <40.624786, 39.327415, 34.712421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671761, 39.489010, 34.541306>,  <40.750053, 39.758335, 34.256115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671761, 39.489010, 34.541306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266756, -0.663070, -0.699414,
		0.943680, -0.327087, -0.049829,
		-0.195729, -0.673315, 0.712978,
		40.613041, 39.287014, 34.755199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998859, 39.133087, 34.014275>,  <40.750053, 39.758335, 34.256115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998859, 39.133087, 34.014275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727558, 39.034359, 34.291126>,  <40.564777, 38.975121, 34.457237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727558, 39.034359, 34.291126>,  <40.998859, 39.133087, 34.014275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727558, 39.034359, 34.291126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366785, -0.702458, -0.609936,
		0.636739, -0.667557, 0.385917,
		-0.678257, -0.246821, 0.692132,
		40.524082, 38.960312, 34.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020603, 38.423141, 33.990005>,  <40.998859, 39.133087, 34.014275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020603, 38.423141, 33.990005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670700, 38.512188, 34.162163>,  <40.460758, 38.565617, 34.265457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670700, 38.512188, 34.162163>,  <41.020603, 38.423141, 33.990005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670700, 38.512188, 34.162163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459163, -0.664583, -0.589491,
		0.154799, -0.713283, 0.683568,
		-0.874761, 0.222616, 0.430390,
		40.408272, 38.578972, 34.291279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684143, 37.857288, 34.261616>,  <41.020603, 38.423141, 33.990005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684143, 37.857288, 34.261616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409328, 38.137455, 34.184261>,  <40.244438, 38.305553, 34.137848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409328, 38.137455, 34.184261>,  <40.684143, 37.857288, 34.261616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409328, 38.137455, 34.184261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382295, -0.574757, -0.723536,
		-0.617926, -0.423166, 0.662645,
		-0.687036, 0.700418, -0.193383,
		40.203217, 38.347580, 34.126247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095051, 37.449268, 34.416687>,  <40.684143, 37.857288, 34.261616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095051, 37.449268, 34.416687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079647, 37.702625, 34.107540>,  <40.070404, 37.854641, 33.922050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079647, 37.702625, 34.107540>,  <40.095051, 37.449268, 34.416687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079647, 37.702625, 34.107540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344403, -0.734467, -0.584760,
		-0.938031, 0.243658, 0.246430,
		-0.038513, 0.633395, -0.772870,
		40.068092, 37.892643, 33.875679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965332, 36.734455, 34.018810>,  <40.095051, 37.449268, 34.416687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965332, 36.734455, 34.018810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213932, 36.422260, 33.991768>,  <40.363091, 36.234943, 33.975544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213932, 36.422260, 33.991768>,  <39.965332, 36.734455, 34.018810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213932, 36.422260, 33.991768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000252, -0.086098, 0.996287,
		-0.783415, -0.619209, -0.053314,
		0.621500, -0.780492, -0.067607,
		40.400383, 36.188114, 33.971485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626675, 36.136612, 34.336239>,  <39.965332, 36.734455, 34.018810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626675, 36.136612, 34.336239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026299, 36.119564, 34.339638>,  <40.266071, 36.109337, 34.341675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026299, 36.119564, 34.339638>,  <39.626675, 36.136612, 34.336239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026299, 36.119564, 34.339638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012322, -0.090362, 0.995833,
		-0.041670, -0.994997, -0.090802,
		0.999055, -0.042615, 0.008495,
		40.326015, 36.106777, 34.342186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737930, 35.638729, 34.794559>,  <39.626675, 36.136612, 34.336239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737930, 35.638729, 34.794559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082203, 35.842300, 34.788784>,  <40.288769, 35.964443, 34.785320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082203, 35.842300, 34.788784>,  <39.737930, 35.638729, 34.794559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082203, 35.842300, 34.788784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047432, -0.051912, 0.997525,
		0.506923, -0.859240, -0.068820,
		0.860685, 0.508933, -0.014440,
		40.340408, 35.994980, 34.784451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920959, 35.557236, 35.439243>,  <39.737930, 35.638729, 34.794559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920959, 35.557236, 35.439243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186623, 35.829647, 35.315895>,  <40.346020, 35.993092, 35.241886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186623, 35.829647, 35.315895>,  <39.920959, 35.557236, 35.439243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186623, 35.829647, 35.315895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111775, 0.317396, 0.941683,
		0.739187, -0.659897, 0.134679,
		0.664160, 0.681026, -0.308375,
		40.385872, 36.033955, 35.223381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445702, 35.567169, 35.964005>,  <39.920959, 35.557236, 35.439243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445702, 35.567169, 35.964005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515278, 35.914890, 35.778938>,  <40.557022, 36.123524, 35.667900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515278, 35.914890, 35.778938>,  <40.445702, 35.567169, 35.964005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515278, 35.914890, 35.778938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034655, 0.474937, 0.879337,
		0.984146, -0.136920, 0.112737,
		0.173942, 0.869303, -0.462662,
		40.567459, 36.175682, 35.640141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964264, 35.947842, 36.372166>,  <40.445702, 35.567169, 35.964005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964264, 35.947842, 36.372166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789738, 36.226994, 36.144974>,  <40.685020, 36.394485, 36.008659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789738, 36.226994, 36.144974>,  <40.964264, 35.947842, 36.372166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789738, 36.226994, 36.144974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180065, 0.550740, 0.815023,
		0.881591, 0.457882, -0.114635,
		-0.436318, 0.697875, -0.567976,
		40.658844, 36.436356, 35.974583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096603, 36.562954, 36.796932>,  <40.964264, 35.947842, 36.372166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096603, 36.562954, 36.796932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833359, 36.698982, 36.528233>,  <40.675411, 36.780598, 36.367012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833359, 36.698982, 36.528233>,  <41.096603, 36.562954, 36.796932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833359, 36.698982, 36.528233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312682, 0.688170, 0.654715,
		0.684924, 0.640918, -0.346558,
		-0.658110, 0.340068, -0.671748,
		40.635925, 36.801003, 36.326710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052422, 37.275955, 36.886654>,  <41.096603, 36.562954, 36.796932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052422, 37.275955, 36.886654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712021, 37.188328, 36.695736>,  <40.507782, 37.135754, 36.581184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712021, 37.188328, 36.695736>,  <41.052422, 37.275955, 36.886654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712021, 37.188328, 36.695736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502726, 0.602647, 0.619744,
		0.151877, 0.767351, -0.622982,
		-0.850999, -0.219064, -0.477295,
		40.456722, 37.122608, 36.552547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733227, 37.903992, 36.892391>,  <41.052422, 37.275955, 36.886654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733227, 37.903992, 36.892391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450897, 37.623722, 36.850685>,  <40.281498, 37.455559, 36.825661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450897, 37.623722, 36.850685>,  <40.733227, 37.903992, 36.892391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450897, 37.623722, 36.850685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565907, 0.469182, 0.677951,
		-0.426101, 0.537518, -0.727675,
		-0.705824, -0.700673, -0.104266,
		40.239151, 37.413521, 36.819405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030479, 38.243057, 36.763092>,  <40.733227, 37.903992, 36.892391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030479, 38.243057, 36.763092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974876, 37.888969, 36.940662>,  <39.941513, 37.676517, 37.047203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974876, 37.888969, 36.940662>,  <40.030479, 38.243057, 36.763092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974876, 37.888969, 36.940662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610840, 0.429484, 0.665145,
		-0.779456, -0.178708, -0.600426,
		-0.139007, -0.885216, 0.443926,
		39.933174, 37.623405, 37.073841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498070, 38.328358, 37.108448>,  <40.030479, 38.243057, 36.763092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498070, 38.328358, 37.108448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613556, 37.983555, 37.275105>,  <39.682846, 37.776672, 37.375099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613556, 37.983555, 37.275105>,  <39.498070, 38.328358, 37.108448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613556, 37.983555, 37.275105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557768, 0.202259, 0.804976,
		-0.778165, -0.464792, -0.422407,
		0.288711, -0.862009, 0.416637,
		39.700169, 37.724953, 37.400097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904690, 38.128147, 37.467758>,  <39.498070, 38.328358, 37.108448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904690, 38.128147, 37.467758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204342, 37.940125, 37.654453>,  <39.384132, 37.827312, 37.766472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204342, 37.940125, 37.654453>,  <38.904690, 38.128147, 37.467758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204342, 37.940125, 37.654453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419920, 0.207957, 0.883415,
		-0.512318, -0.857788, -0.041600,
		0.749131, -0.470058, 0.466742,
		39.429081, 37.799107, 37.794476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570221, 37.738548, 37.989502>,  <38.904690, 38.128147, 37.467758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570221, 37.738548, 37.989502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947464, 37.757095, 38.121201>,  <39.173809, 37.768223, 38.200218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947464, 37.757095, 38.121201>,  <38.570221, 37.738548, 37.989502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947464, 37.757095, 38.121201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331082, 0.039739, 0.942765,
		0.030622, -0.998134, 0.052827,
		0.943105, 0.046360, 0.329247,
		39.230396, 37.771004, 38.219975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591656, 37.340435, 38.610897>,  <38.570221, 37.738548, 37.989502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591656, 37.340435, 38.610897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903465, 37.589382, 38.639179>,  <39.090549, 37.738750, 38.656147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903465, 37.589382, 38.639179>,  <38.591656, 37.340435, 38.610897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903465, 37.589382, 38.639179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311694, 0.287521, 0.905637,
		0.543313, -0.728003, 0.418118,
		0.779524, 0.622369, 0.070701,
		39.137321, 37.776093, 38.660389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404457, 36.619656, 38.672890>,  <38.591656, 37.340435, 38.610897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404457, 36.619656, 38.672890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136059, 36.385406, 38.854794>,  <37.975021, 36.244858, 38.963936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136059, 36.385406, 38.854794>,  <38.404457, 36.619656, 38.672890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136059, 36.385406, 38.854794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379833, -0.255249, -0.889143,
		0.636783, -0.769343, -0.051169,
		-0.670995, -0.585627, 0.454760,
		37.934761, 36.209717, 38.991222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430157, 36.016369, 38.288746>,  <38.404457, 36.619656, 38.672890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430157, 36.016369, 38.288746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074593, 35.997658, 38.471024>,  <37.861256, 35.986431, 38.580391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074593, 35.997658, 38.471024>,  <38.430157, 36.016369, 38.288746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074593, 35.997658, 38.471024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442503, -0.169570, -0.880589,
		0.118462, -0.984407, 0.130033,
		-0.888909, -0.046776, 0.455691,
		37.807919, 35.983624, 38.607731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021313, 35.446400, 38.025307>,  <38.430157, 36.016369, 38.288746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021313, 35.446400, 38.025307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759705, 35.700764, 38.189198>,  <37.602741, 35.853382, 38.287533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759705, 35.700764, 38.189198>,  <38.021313, 35.446400, 38.025307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759705, 35.700764, 38.189198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649297, -0.193971, -0.735383,
		-0.388164, -0.746988, 0.539757,
		-0.654019, 0.635912, 0.409724,
		37.563499, 35.891537, 38.312115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331108, 35.084282, 37.887928>,  <38.021313, 35.446400, 38.025307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331108, 35.084282, 37.887928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251148, 35.472126, 37.944355>,  <37.203171, 35.704830, 37.978210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251148, 35.472126, 37.944355>,  <37.331108, 35.084282, 37.887928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251148, 35.472126, 37.944355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689110, -0.036775, -0.723723,
		-0.696540, -0.241883, 0.675518,
		-0.199899, 0.969608, 0.141069,
		37.191177, 35.763008, 37.986675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595154, 35.193878, 37.789574>,  <37.331108, 35.084282, 37.887928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595154, 35.193878, 37.789574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695568, 35.581036, 37.784496>,  <36.755817, 35.813332, 37.781452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695568, 35.581036, 37.784496>,  <36.595154, 35.193878, 37.789574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695568, 35.581036, 37.784496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631045, 0.153701, -0.760367,
		-0.734005, 0.198887, 0.649370,
		0.251035, 0.967895, -0.012689,
		36.770878, 35.871403, 37.780689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977654, 35.615620, 37.800392>,  <36.595154, 35.193878, 37.789574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977654, 35.615620, 37.800392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264484, 35.827553, 37.619255>,  <36.436584, 35.954712, 37.510571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264484, 35.827553, 37.619255>,  <35.977654, 35.615620, 37.800392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264484, 35.827553, 37.619255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581645, 0.096912, -0.807650,
		-0.384035, 0.842545, 0.377669,
		0.717082, 0.529835, -0.452844,
		36.479610, 35.986504, 37.483402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614155, 36.176510, 37.570843>,  <35.977654, 35.615620, 37.800392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614155, 36.176510, 37.570843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949898, 36.160973, 37.353966>,  <36.151344, 36.151649, 37.223839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949898, 36.160973, 37.353966>,  <35.614155, 36.176510, 37.570843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949898, 36.160973, 37.353966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533609, 0.131278, -0.835480,
		0.103627, 0.990585, 0.089465,
		0.839359, -0.038839, -0.542189,
		36.201706, 36.149323, 37.191311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652496, 36.863800, 37.284687>,  <35.614155, 36.176510, 37.570843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652496, 36.863800, 37.284687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821125, 36.580261, 37.058479>,  <35.922302, 36.410137, 36.922756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821125, 36.580261, 37.058479>,  <35.652496, 36.863800, 37.284687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821125, 36.580261, 37.058479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627619, 0.222045, -0.746184,
		0.654503, 0.669498, -0.351281,
		0.421569, -0.708850, -0.565519,
		35.947594, 36.367607, 36.888824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752338, 37.196720, 36.695145>,  <35.652496, 36.863800, 37.284687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752338, 37.196720, 36.695145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780437, 36.816498, 36.574139>,  <35.797295, 36.588364, 36.501534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780437, 36.816498, 36.574139>,  <35.752338, 37.196720, 36.695145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780437, 36.816498, 36.574139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329732, 0.264096, -0.906383,
		0.941458, 0.163418, -0.294877,
		0.070244, -0.950551, -0.302519,
		35.801510, 36.531334, 36.483383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131557, 37.100609, 36.048576>,  <35.752338, 37.196720, 36.695145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131557, 37.100609, 36.048576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923897, 36.759262, 36.067513>,  <35.799301, 36.554455, 36.078873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923897, 36.759262, 36.067513>,  <36.131557, 37.100609, 36.048576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923897, 36.759262, 36.067513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450302, 0.226026, -0.863794,
		0.726437, -0.469757, -0.501616,
		-0.519151, -0.853371, 0.047339,
		35.768150, 36.503250, 36.081715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082413, 36.794174, 35.380791>,  <36.131557, 37.100609, 36.048576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082413, 36.794174, 35.380791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797661, 36.555737, 35.529324>,  <35.626808, 36.412674, 35.618443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797661, 36.555737, 35.529324>,  <36.082413, 36.794174, 35.380791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797661, 36.555737, 35.529324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467707, 0.007969, -0.883847,
		0.523900, -0.802872, -0.284472,
		-0.711883, -0.596098, 0.371335,
		35.584095, 36.376907, 35.640724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972347, 36.365219, 34.883327>,  <36.082413, 36.794174, 35.380791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972347, 36.365219, 34.883327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654053, 36.309425, 35.119072>,  <35.463074, 36.275948, 35.260517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654053, 36.309425, 35.119072>,  <35.972347, 36.365219, 34.883327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654053, 36.309425, 35.119072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559429, -0.203538, -0.803500,
		0.232032, -0.969080, 0.083932,
		-0.795739, -0.139483, 0.589359,
		35.415333, 36.267582, 35.295879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.857315, 37.321354, 42.634075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458420, 37.291866, 42.630623>,  <38.219082, 37.274174, 42.628551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458420, 37.291866, 42.630623>,  <38.857315, 37.321354, 42.634075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458420, 37.291866, 42.630623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050702, -0.591765, -0.804514,
		0.054200, -0.802733, 0.593871,
		-0.997242, -0.073715, -0.008627,
		38.159248, 37.269753, 42.628036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753788, 36.519493, 42.433270>,  <38.857315, 37.321354, 42.634075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753788, 36.519493, 42.433270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.417595, 36.716064, 42.341972>,  <38.215878, 36.834007, 42.287193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.417595, 36.716064, 42.341972>,  <38.753788, 36.519493, 42.433270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417595, 36.716064, 42.341972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054536, -0.495811, -0.866716,
		-0.539091, -0.716011, 0.443520,
		-0.840480, 0.491426, -0.228239,
		38.165451, 36.863491, 42.273502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360710, 35.988140, 42.281578>,  <38.753788, 36.519493, 42.433270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360710, 35.988140, 42.281578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166866, 36.298801, 42.120598>,  <38.050560, 36.485199, 42.024010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166866, 36.298801, 42.120598>,  <38.360710, 35.988140, 42.281578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166866, 36.298801, 42.120598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087772, -0.500935, -0.861023,
		-0.870316, -0.381936, 0.310926,
		-0.484610, 0.776653, -0.402448,
		38.021484, 36.531796, 41.999863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728737, 35.780491, 41.796909>,  <38.360710, 35.988140, 42.281578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728737, 35.780491, 41.796909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765602, 36.153423, 41.657043>,  <37.787724, 36.377182, 41.573124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765602, 36.153423, 41.657043>,  <37.728737, 35.780491, 41.796909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765602, 36.153423, 41.657043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211361, -0.324839, -0.921849,
		-0.973053, 0.158869, 0.167119,
		0.092166, 0.932331, -0.349664,
		37.793251, 36.433121, 41.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229103, 35.991947, 41.333160>,  <37.728737, 35.780491, 41.796909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229103, 35.991947, 41.333160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540985, 36.220726, 41.231232>,  <37.728115, 36.357994, 41.170074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540985, 36.220726, 41.231232>,  <37.229103, 35.991947, 41.333160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540985, 36.220726, 41.231232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067959, -0.327264, -0.942486,
		-0.622444, 0.752182, -0.216302,
		0.779708, 0.571945, -0.254821,
		37.774899, 36.392311, 41.154785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982475, 36.328918, 40.787807>,  <37.229103, 35.991947, 41.333160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982475, 36.328918, 40.787807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379040, 36.349998, 40.739925>,  <37.616978, 36.362644, 40.711197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379040, 36.349998, 40.739925>,  <36.982475, 36.328918, 40.787807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379040, 36.349998, 40.739925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095604, -0.332598, -0.938210,
		-0.089253, 0.941595, -0.324704,
		0.991410, 0.052695, -0.119706,
		37.676464, 36.365807, 40.704014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070217, 36.658550, 40.171806>,  <36.982475, 36.328918, 40.787807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070217, 36.658550, 40.171806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427292, 36.485130, 40.221024>,  <37.641537, 36.381077, 40.250553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.427292, 36.485130, 40.221024>,  <37.070217, 36.658550, 40.171806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427292, 36.485130, 40.221024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095103, -0.085644, -0.991777,
		0.440527, 0.897048, -0.035221,
		0.892688, -0.433554, 0.123040,
		37.695099, 36.355064, 40.257935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457649, 36.977642, 39.631798>,  <37.070217, 36.658550, 40.171806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457649, 36.977642, 39.631798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643757, 36.642181, 39.745068>,  <37.755421, 36.440907, 39.813030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643757, 36.642181, 39.745068>,  <37.457649, 36.977642, 39.631798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643757, 36.642181, 39.745068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203131, -0.210216, -0.956320,
		0.861546, 0.502470, 0.072548,
		0.465271, -0.838650, 0.283178,
		37.783337, 36.390587, 39.830021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190529, 36.970112, 39.326168>,  <37.457649, 36.977642, 39.631798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190529, 36.970112, 39.326168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012817, 36.616703, 39.385502>,  <37.906193, 36.404655, 39.421101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012817, 36.616703, 39.385502>,  <38.190529, 36.970112, 39.326168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012817, 36.616703, 39.385502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201921, -0.260061, -0.944244,
		0.872839, -0.389552, 0.293941,
		-0.444274, -0.883526, 0.148332,
		37.879536, 36.351646, 39.430000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927040, 37.177090, 39.342426>,  <38.190529, 36.970112, 39.326168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927040, 37.177090, 39.342426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067173, 37.536758, 39.237545>,  <39.151253, 37.752560, 39.174614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067173, 37.536758, 39.237545>,  <38.927040, 37.177090, 39.342426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067173, 37.536758, 39.237545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111791, 0.318088, 0.941447,
		0.929930, -0.300508, 0.211957,
		0.350333, 0.899175, -0.262205,
		39.172272, 37.806511, 39.158882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162064, 37.375607, 39.968956>,  <38.927040, 37.177090, 39.342426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162064, 37.375607, 39.968956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119637, 37.711800, 39.756413>,  <39.094181, 37.913517, 39.628887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119637, 37.711800, 39.756413>,  <39.162064, 37.375607, 39.968956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119637, 37.711800, 39.756413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064241, 0.539046, 0.839823,
		0.992282, 0.054939, -0.111166,
		-0.106063, 0.840482, -0.531356,
		39.087818, 37.963943, 39.597004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717289, 37.856300, 40.232990>,  <39.162064, 37.375607, 39.968956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717289, 37.856300, 40.232990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409317, 38.046497, 40.062759>,  <39.224533, 38.160618, 39.960621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409317, 38.046497, 40.062759>,  <39.717289, 37.856300, 40.232990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409317, 38.046497, 40.062759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027322, 0.641735, 0.766440,
		0.637546, 0.601731, -0.481098,
		-0.769927, 0.475496, -0.425576,
		39.178337, 38.189148, 39.935085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930656, 38.527245, 40.262833>,  <39.717289, 37.856300, 40.232990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930656, 38.527245, 40.262833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.532829, 38.531956, 40.221455>,  <39.294132, 38.534782, 40.196629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.532829, 38.531956, 40.221455>,  <39.930656, 38.527245, 40.262833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532829, 38.531956, 40.221455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059956, 0.747509, 0.661540,
		0.085118, 0.664147, -0.742741,
		-0.994565, 0.011777, -0.103446,
		39.234459, 38.535488, 40.190422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798870, 39.323269, 40.075363>,  <39.930656, 38.527245, 40.262833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798870, 39.323269, 40.075363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.484676, 39.136745, 40.238129>,  <39.296162, 39.024834, 40.335789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.484676, 39.136745, 40.238129>,  <39.798870, 39.323269, 40.075363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484676, 39.136745, 40.238129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040584, 0.694889, 0.717971,
		-0.617553, 0.547439, -0.564747,
		-0.785482, -0.466305, 0.406913,
		39.249031, 38.996853, 40.360203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332020, 39.869011, 40.175972>,  <39.798870, 39.323269, 40.075363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332020, 39.869011, 40.175972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186726, 39.580444, 40.411812>,  <39.099548, 39.407307, 40.553314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186726, 39.580444, 40.411812>,  <39.332020, 39.869011, 40.175972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186726, 39.580444, 40.411812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100768, 0.659527, 0.744896,
		-0.926231, 0.211163, -0.312260,
		-0.363238, -0.721412, 0.589596,
		39.077755, 39.364021, 40.588692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881809, 40.260105, 40.673912>,  <39.332020, 39.869011, 40.175972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881809, 40.260105, 40.673912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930786, 39.901390, 40.843987>,  <38.960175, 39.686161, 40.946033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930786, 39.901390, 40.843987>,  <38.881809, 40.260105, 40.673912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930786, 39.901390, 40.843987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044185, 0.432914, 0.900352,
		-0.991491, -0.091455, 0.092632,
		0.122444, -0.896784, 0.425190,
		38.967518, 39.632355, 40.971542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437832, 40.209023, 41.276909>,  <38.881809, 40.260105, 40.673912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437832, 40.209023, 41.276909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730377, 39.942478, 41.334965>,  <38.905903, 39.782551, 41.369801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730377, 39.942478, 41.334965>,  <38.437832, 40.209023, 41.276909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730377, 39.942478, 41.334965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168337, 0.382626, 0.908438,
		-0.660886, -0.639966, 0.392012,
		0.731364, -0.666364, 0.145143,
		38.949787, 39.742569, 41.378506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273411, 39.900982, 41.849659>,  <38.437832, 40.209023, 41.276909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273411, 39.900982, 41.849659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664684, 39.851761, 41.782700>,  <38.899448, 39.822227, 41.742523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.664684, 39.851761, 41.782700>,  <38.273411, 39.900982, 41.849659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664684, 39.851761, 41.782700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189286, 0.195704, 0.962222,
		-0.085648, -0.972912, 0.214726,
		0.978180, -0.123057, -0.167397,
		38.958138, 39.814842, 41.732479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487038, 39.710281, 42.546421>,  <38.273411, 39.900982, 41.849659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487038, 39.710281, 42.546421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832611, 39.798656, 42.365398>,  <39.039955, 39.851681, 42.256786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832611, 39.798656, 42.365398>,  <38.487038, 39.710281, 42.546421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832611, 39.798656, 42.365398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390221, 0.274384, 0.878886,
		0.318358, -0.935894, 0.150832,
		0.863930, 0.220942, -0.452558,
		39.091789, 39.864937, 42.229630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040398, 39.496807, 42.981834>,  <38.487038, 39.710281, 42.546421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040398, 39.496807, 42.981834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217476, 39.779030, 42.760490>,  <39.323723, 39.948364, 42.627686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217476, 39.779030, 42.760490>,  <39.040398, 39.496807, 42.981834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217476, 39.779030, 42.760490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475804, 0.338234, 0.811917,
		0.760021, -0.622721, -0.185975,
		0.442695, 0.705561, -0.553358,
		39.350285, 39.990700, 42.594482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631931, 39.348072, 43.093449>,  <39.040398, 39.496807, 42.981834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631931, 39.348072, 43.093449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568466, 39.726223, 42.979549>,  <39.530388, 39.953114, 42.911209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568466, 39.726223, 42.979549>,  <39.631931, 39.348072, 43.093449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568466, 39.726223, 42.979549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403859, 0.325312, 0.855026,
		0.900957, 0.020667, -0.433417,
		-0.158667, 0.945381, -0.284746,
		39.520866, 40.009838, 42.894127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258114, 39.626450, 43.234661>,  <39.631931, 39.348072, 43.093449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258114, 39.626450, 43.234661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.046230, 39.964306, 43.203697>,  <39.919102, 40.167019, 43.185120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.046230, 39.964306, 43.203697>,  <40.258114, 39.626450, 43.234661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046230, 39.964306, 43.203697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519447, 0.395199, 0.757623,
		0.670513, 0.361105, -0.648086,
		-0.529705, 0.844642, -0.077411,
		39.887318, 40.217697, 43.180473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728611, 40.197842, 43.275467>,  <40.258114, 39.626450, 43.234661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728611, 40.197842, 43.275467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.378773, 40.387936, 43.313904>,  <40.168869, 40.501991, 43.336964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.378773, 40.387936, 43.313904>,  <40.728611, 40.197842, 43.275467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378773, 40.387936, 43.313904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409041, 0.616795, 0.672495,
		0.260327, 0.627465, -0.733837,
		-0.874594, 0.475239, 0.096091,
		40.116394, 40.530506, 43.342731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.279045, 42.754444, 43.377884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655899, 42.623657, 43.407471>,  <34.882011, 42.545185, 43.425220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655899, 42.623657, 43.407471>,  <34.279045, 42.754444, 43.377884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655899, 42.623657, 43.407471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038033, -0.114955, -0.992642,
		0.333063, 0.938018, -0.095868,
		0.942137, -0.326967, 0.073963,
		34.938541, 42.525566, 43.429661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760048, 43.215149, 43.035152>,  <34.279045, 42.754444, 43.377884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760048, 43.215149, 43.035152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969055, 42.874317, 43.022949>,  <35.094460, 42.669819, 43.015629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.969055, 42.874317, 43.022949>,  <34.760048, 43.215149, 43.035152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969055, 42.874317, 43.022949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127447, -0.042676, -0.990927,
		0.843046, 0.521670, -0.130894,
		0.522523, -0.852079, -0.030507,
		35.125813, 42.618694, 43.013798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099525, 43.335300, 42.512707>,  <34.760048, 43.215149, 43.035152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099525, 43.335300, 42.512707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148895, 42.943321, 42.575268>,  <35.178516, 42.708134, 42.612804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148895, 42.943321, 42.575268>,  <35.099525, 43.335300, 42.512707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148895, 42.943321, 42.575268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099319, -0.169016, -0.980596,
		0.987371, 0.105500, -0.118189,
		0.123429, -0.979951, 0.156403,
		35.185925, 42.649338, 42.622189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565128, 43.136795, 41.984676>,  <35.099525, 43.335300, 42.512707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565128, 43.136795, 41.984676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398838, 42.798481, 42.118435>,  <35.299065, 42.595493, 42.198689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398838, 42.798481, 42.118435>,  <35.565128, 43.136795, 41.984676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398838, 42.798481, 42.118435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007761, -0.370958, -0.928617,
		0.909458, -0.383452, 0.160780,
		-0.415723, -0.845786, 0.334395,
		35.274120, 42.544746, 42.218754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105934, 42.669170, 41.935349>,  <35.565128, 43.136795, 41.984676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105934, 42.669170, 41.935349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.744251, 42.498894, 41.921516>,  <35.527241, 42.396729, 41.913216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.744251, 42.498894, 41.921516>,  <36.105934, 42.669170, 41.935349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744251, 42.498894, 41.921516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161734, -0.266341, -0.950213,
		0.395291, -0.864781, 0.309677,
		-0.904206, -0.425696, -0.034582,
		35.472988, 42.371185, 41.911140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165497, 41.855217, 41.779358>,  <36.105934, 42.669170, 41.935349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165497, 41.855217, 41.779358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801727, 41.991615, 41.684135>,  <35.583466, 42.073452, 41.627003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801727, 41.991615, 41.684135>,  <36.165497, 41.855217, 41.779358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801727, 41.991615, 41.684135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063197, -0.452466, -0.889540,
		-0.411034, -0.824016, 0.389935,
		-0.909427, 0.340988, -0.238054,
		35.528900, 42.093914, 41.612720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029114, 41.334625, 41.291447>,  <36.165497, 41.855217, 41.779358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029114, 41.334625, 41.291447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701599, 41.563351, 41.270977>,  <35.505089, 41.700584, 41.258694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701599, 41.563351, 41.270977>,  <36.029114, 41.334625, 41.291447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701599, 41.563351, 41.270977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236153, -0.416719, -0.877825,
		-0.523278, -0.706666, 0.476239,
		-0.818787, 0.571812, -0.051179,
		35.455963, 41.734894, 41.255623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449402, 40.856636, 41.087036>,  <36.029114, 41.334625, 41.291447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449402, 40.856636, 41.087036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341949, 41.230381, 40.993389>,  <35.277477, 41.454628, 40.937202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341949, 41.230381, 40.993389>,  <35.449402, 40.856636, 41.087036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341949, 41.230381, 40.993389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412996, -0.331301, -0.848336,
		-0.870214, -0.131198, 0.474883,
		-0.268629, 0.934359, -0.234119,
		35.261360, 41.510689, 40.923153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724850, 40.789333, 40.908230>,  <35.449402, 40.856636, 41.087036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724850, 40.789333, 40.908230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883343, 41.107914, 40.725506>,  <34.978439, 41.299061, 40.615871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883343, 41.107914, 40.725506>,  <34.724850, 40.789333, 40.908230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883343, 41.107914, 40.725506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335758, -0.337378, -0.879456,
		-0.854558, 0.501842, 0.133735,
		0.396229, 0.796449, -0.456806,
		35.002213, 41.346848, 40.588463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218056, 40.952457, 40.392796>,  <34.724850, 40.789333, 40.908230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218056, 40.952457, 40.392796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.541874, 41.158276, 40.279739>,  <34.736164, 41.281765, 40.211906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.541874, 41.158276, 40.279739>,  <34.218056, 40.952457, 40.392796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541874, 41.158276, 40.279739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252377, -0.129660, -0.958903,
		-0.530043, 0.847605, 0.024894,
		0.809543, 0.514542, -0.282641,
		34.784737, 41.312637, 40.194946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029716, 41.520542, 39.985199>,  <34.218056, 40.952457, 40.392796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029716, 41.520542, 39.985199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.412868, 41.442490, 39.900932>,  <34.642761, 41.395657, 39.850372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.412868, 41.442490, 39.900932>,  <34.029716, 41.520542, 39.985199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412868, 41.442490, 39.900932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240236, -0.142661, -0.960174,
		0.157306, 0.970346, -0.183530,
		0.957884, -0.195132, -0.210671,
		34.700233, 41.383949, 39.837730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207497, 41.865414, 39.456127>,  <34.029716, 41.520542, 39.985199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207497, 41.865414, 39.456127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502380, 41.596874, 39.425621>,  <34.679310, 41.435749, 39.407318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502380, 41.596874, 39.425621>,  <34.207497, 41.865414, 39.456127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502380, 41.596874, 39.425621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082205, 0.022923, -0.996352,
		0.670650, 0.740785, -0.038289,
		0.737205, -0.671351, -0.076270,
		34.723541, 41.395470, 39.402740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707310, 42.124107, 38.967022>,  <34.207497, 41.865414, 39.456127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707310, 42.124107, 38.967022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753914, 41.727283, 38.985950>,  <34.781876, 41.489189, 38.997307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753914, 41.727283, 38.985950>,  <34.707310, 42.124107, 38.967022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753914, 41.727283, 38.985950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001438, -0.047818, -0.998855,
		0.993189, 0.116306, -0.006998,
		0.116507, -0.992062, 0.047325,
		34.788864, 41.429665, 39.000149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173191, 42.023277, 38.437500>,  <34.707310, 42.124107, 38.967022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173191, 42.023277, 38.437500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007874, 41.668224, 38.518787>,  <34.908684, 41.455193, 38.567562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007874, 41.668224, 38.518787>,  <35.173191, 42.023277, 38.437500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007874, 41.668224, 38.518787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248757, -0.104628, -0.962898,
		0.875963, -0.448509, -0.177563,
		-0.413291, -0.887633, 0.203220,
		34.883884, 41.401936, 38.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831951, 42.153095, 38.224724>,  <35.173191, 42.023277, 38.437500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831951, 42.153095, 38.224724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167915, 42.298882, 38.063869>,  <36.369495, 42.386353, 37.967358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167915, 42.298882, 38.063869>,  <35.831951, 42.153095, 38.224724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167915, 42.298882, 38.063869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299580, 0.306497, 0.903500,
		0.452549, -0.879331, 0.148243,
		0.839911, 0.364467, -0.402135,
		36.419888, 42.408222, 37.943230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394379, 41.817501, 38.572205>,  <35.831951, 42.153095, 38.224724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394379, 41.817501, 38.572205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565765, 42.151848, 38.434956>,  <36.668598, 42.352455, 38.352604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565765, 42.151848, 38.434956>,  <36.394379, 41.817501, 38.572205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565765, 42.151848, 38.434956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319209, 0.215232, 0.922920,
		0.845293, -0.504970, -0.174597,
		0.428468, 0.835871, -0.343125,
		36.694305, 42.402611, 38.332020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025002, 41.903355, 38.927429>,  <36.394379, 41.817501, 38.572205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025002, 41.903355, 38.927429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.945255, 42.273041, 38.797150>,  <36.897408, 42.494854, 38.718983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.945255, 42.273041, 38.797150>,  <37.025002, 41.903355, 38.927429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945255, 42.273041, 38.797150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341814, 0.377084, 0.860797,
		0.918378, 0.060282, -0.391086,
		-0.199362, 0.924215, -0.325700,
		36.885448, 42.550304, 38.699440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562035, 42.306793, 39.186424>,  <37.025002, 41.903355, 38.927429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562035, 42.306793, 39.186424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256317, 42.553253, 39.110298>,  <37.072887, 42.701130, 39.064621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.256317, 42.553253, 39.110298>,  <37.562035, 42.306793, 39.186424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256317, 42.553253, 39.110298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254941, 0.559774, 0.788453,
		0.592340, 0.554087, -0.584911,
		-0.764289, 0.616150, -0.190318,
		37.027031, 42.738098, 39.053204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873981, 42.992973, 39.235126>,  <37.562035, 42.306793, 39.186424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873981, 42.992973, 39.235126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.483910, 43.048805, 39.303867>,  <37.249866, 43.082306, 39.345112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.483910, 43.048805, 39.303867>,  <37.873981, 42.992973, 39.235126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483910, 43.048805, 39.303867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220516, 0.681593, 0.697713,
		-0.019746, 0.718295, -0.695458,
		-0.975183, 0.139583, 0.171854,
		37.191353, 43.090679, 39.355423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793812, 43.735600, 39.232315>,  <37.873981, 42.992973, 39.235126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793812, 43.735600, 39.232315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485073, 43.569969, 39.425308>,  <37.299828, 43.470592, 39.541103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485073, 43.569969, 39.425308>,  <37.793812, 43.735600, 39.232315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485073, 43.569969, 39.425308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169135, 0.597788, 0.783609,
		-0.612896, 0.686433, -0.391367,
		-0.771850, -0.414077, 0.482481,
		37.253517, 43.445747, 39.570053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522148, 44.357567, 39.678429>,  <37.793812, 43.735600, 39.232315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522148, 44.357567, 39.678429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.358475, 44.025009, 39.828819>,  <37.260269, 43.825474, 39.919056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.358475, 44.025009, 39.828819>,  <37.522148, 44.357567, 39.678429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358475, 44.025009, 39.828819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181936, 0.329440, 0.926482,
		-0.894130, 0.447505, 0.016458,
		-0.409183, -0.831390, 0.375980,
		37.235722, 43.775593, 39.941612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018459, 44.572544, 40.210751>,  <37.522148, 44.357567, 39.678429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018459, 44.572544, 40.210751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070862, 44.185764, 40.298237>,  <37.102303, 43.953697, 40.350731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070862, 44.185764, 40.298237>,  <37.018459, 44.572544, 40.210751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070862, 44.185764, 40.298237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134658, 0.235931, 0.962395,
		-0.982194, -0.096626, 0.161117,
		0.131005, -0.966954, 0.218719,
		37.110165, 43.895679, 40.363853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700985, 44.505093, 40.875854>,  <37.018459, 44.572544, 40.210751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700985, 44.505093, 40.875854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.949493, 44.194527, 40.833519>,  <37.098598, 44.008186, 40.808117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.949493, 44.194527, 40.833519>,  <36.700985, 44.505093, 40.875854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949493, 44.194527, 40.833519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061173, -0.086598, 0.994363,
		-0.781202, -0.624246, -0.006306,
		0.621274, -0.776413, -0.105838,
		37.135876, 43.961601, 40.801769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547062, 44.010597, 41.318417>,  <36.700985, 44.505093, 40.875854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547062, 44.010597, 41.318417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925865, 43.911308, 41.236866>,  <37.153149, 43.851734, 41.187935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.925865, 43.911308, 41.236866>,  <36.547062, 44.010597, 41.318417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925865, 43.911308, 41.236866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145631, -0.233945, 0.961281,
		-0.286301, -0.940031, -0.185399,
		0.947008, -0.248216, -0.203877,
		37.209969, 43.836842, 41.175701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704266, 43.392323, 41.559982>,  <36.547062, 44.010597, 41.318417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704266, 43.392323, 41.559982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.067043, 43.560818, 41.561466>,  <37.284710, 43.661915, 41.562355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.067043, 43.560818, 41.561466>,  <36.704266, 43.392323, 41.559982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067043, 43.560818, 41.561466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066903, -0.152721, 0.986002,
		0.415911, -0.893998, -0.166691,
		0.906941, 0.421241, 0.003707,
		37.339127, 43.687191, 41.562580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147827, 42.933655, 41.879185>,  <36.704266, 43.392323, 41.559982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147827, 42.933655, 41.879185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.314636, 43.296368, 41.903984>,  <37.414722, 43.513996, 41.918865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.314636, 43.296368, 41.903984>,  <37.147827, 42.933655, 41.879185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314636, 43.296368, 41.903984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126178, -0.125315, 0.984061,
		0.900095, -0.402553, -0.166674,
		0.417024, 0.906778, 0.062002,
		37.439743, 43.568401, 41.922585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772923, 42.892944, 42.379189>,  <37.147827, 42.933655, 41.879185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772923, 42.892944, 42.379189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672955, 43.279236, 42.351151>,  <37.612972, 43.511009, 42.334328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672955, 43.279236, 42.351151>,  <37.772923, 42.892944, 42.379189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672955, 43.279236, 42.351151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070754, 0.090414, 0.993388,
		0.965677, 0.243312, -0.090925,
		-0.249924, 0.965725, -0.070096,
		37.597977, 43.568954, 42.330120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226425, 43.245270, 42.796291>,  <37.772923, 42.892944, 42.379189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226425, 43.245270, 42.796291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.930012, 43.510326, 42.752899>,  <37.752163, 43.669361, 42.726864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.930012, 43.510326, 42.752899>,  <38.226425, 43.245270, 42.796291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930012, 43.510326, 42.752899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005429, 0.167471, 0.985862,
		0.671443, 0.729970, -0.127700,
		-0.741036, 0.662643, -0.108484,
		37.707703, 43.709118, 42.720352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766716, 43.601566, 42.547665>,  <38.226425, 43.245270, 42.796291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766716, 43.601566, 42.547665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154766, 43.679375, 42.605644>,  <39.387596, 43.726059, 42.640430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154766, 43.679375, 42.605644>,  <38.766716, 43.601566, 42.547665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154766, 43.679375, 42.605644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159152, -0.059399, -0.985466,
		-0.183087, 0.979098, -0.088584,
		0.970129, 0.194524, 0.144950,
		39.445805, 43.737732, 42.649128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963146, 44.176270, 42.156063>,  <38.766716, 43.601566, 42.547665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963146, 44.176270, 42.156063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320431, 44.002327, 42.201782>,  <39.534801, 43.897961, 42.229214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320431, 44.002327, 42.201782>,  <38.963146, 44.176270, 42.156063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320431, 44.002327, 42.201782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036345, -0.183550, -0.982338,
		0.448160, 0.881593, -0.148144,
		0.893214, -0.434860, 0.114301,
		39.588394, 43.871868, 42.236073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353699, 44.396545, 41.595932>,  <38.963146, 44.176270, 42.156063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353699, 44.396545, 41.595932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.559200, 44.073387, 41.711426>,  <39.682503, 43.879494, 41.780724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.559200, 44.073387, 41.711426>,  <39.353699, 44.396545, 41.595932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559200, 44.073387, 41.711426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239789, -0.187921, -0.952464,
		0.823747, 0.558568, 0.097179,
		0.513753, -0.807891, 0.288738,
		39.713326, 43.831020, 41.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029865, 44.415890, 41.247478>,  <39.353699, 44.396545, 41.595932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029865, 44.415890, 41.247478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.952007, 44.036076, 41.345863>,  <39.905293, 43.808186, 41.404892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.952007, 44.036076, 41.345863>,  <40.029865, 44.415890, 41.247478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952007, 44.036076, 41.345863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355476, -0.301993, -0.884555,
		0.914195, -0.084739, 0.396318,
		-0.194642, -0.949537, 0.245958,
		39.893616, 43.751213, 41.419651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635769, 44.058403, 41.057186>,  <40.029865, 44.415890, 41.247478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635769, 44.058403, 41.057186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.351723, 43.776806, 41.052658>,  <40.181297, 43.607845, 41.049942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.351723, 43.776806, 41.052658>,  <40.635769, 44.058403, 41.057186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351723, 43.776806, 41.052658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310283, -0.298460, -0.902577,
		0.632032, -0.644445, 0.430379,
		-0.710113, -0.703997, -0.011325,
		40.138687, 43.565605, 41.049259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038395, 43.410954, 40.851616>,  <40.635769, 44.058403, 41.057186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038395, 43.410954, 40.851616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658550, 43.325592, 40.759789>,  <40.430645, 43.274376, 40.704693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658550, 43.325592, 40.759789>,  <41.038395, 43.410954, 40.851616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658550, 43.325592, 40.759789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298238, -0.389888, -0.871230,
		0.096422, -0.895793, 0.433887,
		-0.949609, -0.213408, -0.229566,
		40.373669, 43.261570, 40.690918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047031, 42.746532, 40.490360>,  <41.038395, 43.410954, 40.851616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047031, 42.746532, 40.490360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657532, 42.826900, 40.447559>,  <40.423832, 42.875122, 40.421879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657532, 42.826900, 40.447559>,  <41.047031, 42.746532, 40.490360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657532, 42.826900, 40.447559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014104, -0.522393, -0.852588,
		-0.227198, -0.828695, 0.511512,
		-0.973747, 0.200921, -0.106999,
		40.365406, 42.887177, 40.415459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730461, 42.102268, 40.246590>,  <41.047031, 42.746532, 40.490360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730461, 42.102268, 40.246590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482780, 42.393131, 40.128048>,  <40.334171, 42.567650, 40.056923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482780, 42.393131, 40.128048>,  <40.730461, 42.102268, 40.246590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482780, 42.393131, 40.128048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012561, -0.386541, -0.922187,
		-0.785129, -0.567301, 0.248482,
		-0.619206, 0.727157, -0.296358,
		40.297020, 42.611279, 40.039139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991806, 41.851086, 40.043480>,  <40.730461, 42.102268, 40.246590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991806, 41.851086, 40.043480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096458, 42.187428, 39.853951>,  <40.159248, 42.389233, 39.740234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096458, 42.187428, 39.853951>,  <39.991806, 41.851086, 40.043480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096458, 42.187428, 39.853951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140707, -0.452448, -0.880621,
		-0.954858, 0.297064, -0.000058,
		0.261627, 0.840859, -0.473823,
		40.174946, 42.439686, 39.711803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660606, 41.723297, 39.375004>,  <39.991806, 41.851086, 40.043480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660606, 41.723297, 39.375004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.879536, 42.049770, 39.300945>,  <40.010895, 42.245655, 39.256512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.879536, 42.049770, 39.300945>,  <39.660606, 41.723297, 39.375004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879536, 42.049770, 39.300945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082132, -0.272538, -0.958633,
		-0.832881, 0.509476, -0.216202,
		0.547324, 0.816184, -0.185148,
		40.043732, 42.294624, 39.245399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491436, 41.858917, 38.683201>,  <39.660606, 41.723297, 39.375004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491436, 41.858917, 38.683201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829830, 42.054768, 38.767651>,  <40.032867, 42.172276, 38.818321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829830, 42.054768, 38.767651>,  <39.491436, 41.858917, 38.683201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829830, 42.054768, 38.767651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320202, -0.149909, -0.935413,
		-0.426351, 0.858951, -0.283599,
		0.845988, 0.489623, 0.211124,
		40.083626, 42.201656, 38.830986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660141, 42.423172, 38.039223>,  <39.491436, 41.858917, 38.683201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660141, 42.423172, 38.039223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995659, 42.319134, 38.230549>,  <40.196968, 42.256710, 38.345345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995659, 42.319134, 38.230549>,  <39.660141, 42.423172, 38.039223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995659, 42.319134, 38.230549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372002, -0.367695, -0.852300,
		0.397549, 0.892834, -0.211664,
		0.838790, -0.260091, 0.478313,
		40.247295, 42.241108, 38.374043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196770, 42.556957, 37.571430>,  <39.660141, 42.423172, 38.039223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196770, 42.556957, 37.571430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.356678, 42.319885, 37.851120>,  <40.452621, 42.177643, 38.018932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.356678, 42.319885, 37.851120>,  <40.196770, 42.556957, 37.571430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356678, 42.319885, 37.851120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501568, -0.497052, -0.708074,
		0.767213, 0.633773, 0.098565,
		0.399766, -0.592681, 0.699225,
		40.476608, 42.142082, 38.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765156, 42.545357, 37.229317>,  <40.196770, 42.556957, 37.571430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765156, 42.545357, 37.229317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756142, 42.255329, 37.504642>,  <40.750732, 42.081314, 37.669838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756142, 42.255329, 37.504642>,  <40.765156, 42.545357, 37.229317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756142, 42.255329, 37.504642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256791, -0.669584, -0.696933,
		0.966204, 0.161049, 0.201277,
		-0.022532, -0.725066, 0.688311,
		40.749382, 42.037807, 37.711136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.587252, 43.895008, 30.179298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.343756, 43.746376, 29.898909>,  <26.197659, 43.657196, 29.730675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.343756, 43.746376, 29.898909>,  <26.587252, 43.895008, 30.179298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343756, 43.746376, 29.898909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239238, -0.756441, 0.608738,
		-0.756441, 0.538263, 0.371579,
		-0.608738, -0.371579, -0.700976,
		26.161135, 43.634903, 29.688616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006573, 43.823116, 30.438286>,  <26.587252, 43.895008, 30.179298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006573, 43.823116, 30.438286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999451, 43.547531, 30.148455>,  <25.995178, 43.382179, 29.974556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999451, 43.547531, 30.148455>,  <26.006573, 43.823116, 30.438286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999451, 43.547531, 30.148455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286964, -0.690682, 0.663785,
		-0.957776, 0.219746, -0.185409,
		-0.017806, -0.688963, -0.724577,
		25.994108, 43.340843, 29.931082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431850, 43.463840, 30.428736>,  <26.006573, 43.823116, 30.438286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431850, 43.463840, 30.428736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.645290, 43.193932, 30.224794>,  <25.773355, 43.031986, 30.102430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.645290, 43.193932, 30.224794>,  <25.431850, 43.463840, 30.428736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645290, 43.193932, 30.224794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474733, -0.737893, 0.479732,
		-0.699926, -0.013944, -0.714079,
		0.533603, -0.674773, -0.509851,
		25.805370, 42.991501, 30.071838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883108, 42.931614, 30.330198>,  <25.431850, 43.463840, 30.428736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883108, 42.931614, 30.330198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.231424, 42.747932, 30.259937>,  <25.440414, 42.637722, 30.217781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.231424, 42.747932, 30.259937>,  <24.883108, 42.931614, 30.330198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231424, 42.747932, 30.259937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403622, -0.871698, 0.277907,
		-0.280731, -0.171102, -0.944412,
		0.870792, -0.459202, -0.175652,
		25.492662, 42.610172, 30.207241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.713367, 42.284470, 30.082216>,  <24.883108, 42.931614, 30.330198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.713367, 42.284470, 30.082216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.092184, 42.233704, 30.200203>,  <25.319473, 42.203243, 30.270994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.092184, 42.233704, 30.200203>,  <24.713367, 42.284470, 30.082216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092184, 42.233704, 30.200203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243934, -0.881726, 0.403801,
		0.208831, -0.454369, -0.865990,
		0.947041, -0.126918, 0.294968,
		25.376297, 42.195629, 30.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946783, 41.570995, 29.961296>,  <24.713367, 42.284470, 30.082216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946783, 41.570995, 29.961296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.202263, 41.698208, 30.241558>,  <25.355551, 41.774536, 30.409716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.202263, 41.698208, 30.241558>,  <24.946783, 41.570995, 29.961296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202263, 41.698208, 30.241558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098717, -0.869192, 0.484520,
		0.763097, -0.378630, -0.523758,
		0.638701, 0.318032, 0.700655,
		25.393873, 41.793617, 30.451754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382912, 41.016567, 30.167458>,  <24.946783, 41.570995, 29.961296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.382912, 41.016567, 30.167458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.420361, 41.261787, 30.481249>,  <25.442829, 41.408920, 30.669523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.420361, 41.261787, 30.481249>,  <25.382912, 41.016567, 30.167458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420361, 41.261787, 30.481249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074819, -0.781381, 0.619553,
		0.992793, -0.116697, -0.027286,
		0.093621, 0.613046, 0.784480,
		25.448446, 41.445702, 30.716593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750000, 40.637760, 30.565096>,  <25.382912, 41.016567, 30.167458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750000, 40.637760, 30.565096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613455, 40.899250, 30.835239>,  <25.531527, 41.056145, 30.997326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613455, 40.899250, 30.835239>,  <25.750000, 40.637760, 30.565096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613455, 40.899250, 30.835239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045140, -0.729095, 0.682923,
		0.938846, 0.202640, 0.278396,
		-0.341365, 0.653726, 0.675361,
		25.511045, 41.095367, 31.037848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137907, 40.460735, 31.162418>,  <25.750000, 40.637760, 30.565096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137907, 40.460735, 31.162418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.815592, 40.668800, 31.275652>,  <25.622202, 40.793640, 31.343592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.815592, 40.668800, 31.275652>,  <26.137907, 40.460735, 31.162418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815592, 40.668800, 31.275652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181587, -0.672013, 0.717931,
		0.563674, 0.527098, 0.635956,
		-0.805790, 0.520160, 0.283082,
		25.573854, 40.824848, 31.360577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295931, 40.464489, 31.901369>,  <26.137907, 40.460735, 31.162418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295931, 40.464489, 31.901369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.917677, 40.557880, 31.810804>,  <25.690725, 40.613914, 31.756466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.917677, 40.557880, 31.810804>,  <26.295931, 40.464489, 31.901369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917677, 40.557880, 31.810804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322796, -0.588710, 0.741096,
		0.039740, 0.773891, 0.632071,
		-0.945634, 0.233482, -0.226414,
		25.633987, 40.627926, 31.742880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009068, 40.803719, 32.465866>,  <26.295931, 40.464489, 31.901369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009068, 40.803719, 32.465866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.744232, 40.598629, 32.247231>,  <25.585331, 40.475574, 32.116051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.744232, 40.598629, 32.247231>,  <26.009068, 40.803719, 32.465866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744232, 40.598629, 32.247231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195372, -0.586030, 0.786383,
		-0.723512, 0.627442, 0.287831,
		-0.662087, -0.512724, -0.546584,
		25.545607, 40.444813, 32.083256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595322, 40.668148, 32.958794>,  <26.009068, 40.803719, 32.465866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595322, 40.668148, 32.958794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.466953, 40.419491, 32.672977>,  <25.389933, 40.270298, 32.501488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.466953, 40.419491, 32.672977>,  <25.595322, 40.668148, 32.958794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466953, 40.419491, 32.672977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376947, -0.608285, 0.698498,
		-0.868861, 0.493508, -0.039114,
		-0.320922, -0.621642, -0.714542,
		25.370676, 40.232998, 32.458614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859270, 40.520508, 33.179493>,  <25.595322, 40.668148, 32.958794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859270, 40.520508, 33.179493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985312, 40.232166, 32.932564>,  <25.060936, 40.059162, 32.784409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985312, 40.232166, 32.932564>,  <24.859270, 40.520508, 33.179493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985312, 40.232166, 32.932564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379341, -0.691902, 0.614306,
		-0.869948, 0.040605, -0.491469,
		0.315105, -0.720849, -0.617321,
		25.079844, 40.015911, 32.747368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407635, 40.021149, 33.335770>,  <24.859270, 40.520508, 33.179493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407635, 40.021149, 33.335770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.701410, 39.837376, 33.135960>,  <24.877676, 39.727112, 33.016075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.701410, 39.837376, 33.135960>,  <24.407635, 40.021149, 33.335770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701410, 39.837376, 33.135960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010489, -0.743617, 0.668523,
		-0.678592, -0.485751, -0.550961,
		0.734440, -0.459434, -0.499518,
		24.921741, 39.699543, 32.986103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259008, 39.336617, 33.500259>,  <24.407635, 40.021149, 33.335770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259008, 39.336617, 33.500259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.631290, 39.323818, 33.354511>,  <24.854660, 39.316139, 33.267063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.631290, 39.323818, 33.354511>,  <24.259008, 39.336617, 33.500259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631290, 39.323818, 33.354511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204218, -0.780989, 0.590213,
		-0.303457, -0.623725, -0.720334,
		0.930703, -0.031999, -0.364372,
		24.910501, 39.314220, 33.245201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355923, 38.638802, 33.457066>,  <24.259008, 39.336617, 33.500259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355923, 38.638802, 33.457066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.705860, 38.829288, 33.492550>,  <24.915823, 38.943581, 33.513840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.705860, 38.829288, 33.492550>,  <24.355923, 38.638802, 33.457066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705860, 38.829288, 33.492550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200190, -0.522192, 0.828999,
		0.441105, -0.707485, -0.552170,
		0.874843, 0.476214, 0.088711,
		24.968313, 38.972153, 33.519161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837366, 38.121864, 33.512974>,  <24.355923, 38.638802, 33.457066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837366, 38.121864, 33.512974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985277, 38.445709, 33.695312>,  <25.074024, 38.640015, 33.804714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985277, 38.445709, 33.695312>,  <24.837366, 38.121864, 33.512974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985277, 38.445709, 33.695312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221778, -0.553353, 0.802880,
		0.902263, -0.195791, -0.384171,
		0.369779, 0.809609, 0.455848,
		25.096210, 38.688591, 33.832066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434677, 37.825920, 33.795467>,  <24.837366, 38.121864, 33.512974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434677, 37.825920, 33.795467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432365, 38.178448, 33.984463>,  <25.430979, 38.389965, 34.097858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432365, 38.178448, 33.984463>,  <25.434677, 37.825920, 33.795467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432365, 38.178448, 33.984463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524831, -0.399514, 0.751626,
		0.851187, 0.252317, -0.460235,
		-0.005777, 0.881320, 0.472485,
		25.430632, 38.442844, 34.126209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162825, 38.024170, 34.063095>,  <25.434677, 37.825920, 33.795467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162825, 38.024170, 34.063095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.886709, 38.217838, 34.278160>,  <25.721039, 38.334038, 34.407200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.886709, 38.217838, 34.278160>,  <26.162825, 38.024170, 34.063095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886709, 38.217838, 34.278160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385925, -0.382189, 0.839639,
		0.612014, 0.787092, 0.076970,
		-0.690291, 0.484166, 0.537663,
		25.679623, 38.363087, 34.439461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510595, 38.341454, 34.644123>,  <26.162825, 38.024170, 34.063095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510595, 38.341454, 34.644123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126022, 38.281986, 34.736687>,  <25.895279, 38.246307, 34.792225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126022, 38.281986, 34.736687>,  <26.510595, 38.341454, 34.644123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126022, 38.281986, 34.736687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274095, -0.447921, 0.851022,
		-0.022866, 0.881627, 0.471393,
		-0.961431, -0.148666, 0.231407,
		25.837593, 38.237385, 34.806110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771233, 38.801529, 33.940582>,  <26.510595, 38.341454, 34.644123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771233, 38.801529, 33.940582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170361, 38.827484, 33.945335>,  <27.409838, 38.843056, 33.948185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170361, 38.827484, 33.945335>,  <26.771233, 38.801529, 33.940582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170361, 38.827484, 33.945335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065902, 0.988497, 0.136126,
		-0.002909, -0.136612, 0.990620,
		0.997822, 0.064888, 0.011879,
		27.469707, 38.846951, 33.948898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915941, 39.171066, 34.505096>,  <26.771233, 38.801529, 33.940582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915941, 39.171066, 34.505096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229433, 39.205639, 34.259075>,  <27.417528, 39.226383, 34.111462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229433, 39.205639, 34.259075>,  <26.915941, 39.171066, 34.505096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229433, 39.205639, 34.259075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043200, 0.980287, 0.192800,
		0.619596, -0.177674, 0.764547,
		0.783731, 0.086429, -0.615057,
		27.464552, 39.231567, 34.074558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376724, 39.586826, 34.811432>,  <26.915941, 39.171066, 34.505096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376724, 39.586826, 34.811432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499834, 39.626068, 34.432877>,  <27.573700, 39.649612, 34.205742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499834, 39.626068, 34.432877>,  <27.376724, 39.586826, 34.811432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499834, 39.626068, 34.432877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041659, 0.992326, 0.116419,
		0.950546, -0.075256, 0.301328,
		0.307777, 0.098108, -0.946387,
		27.592167, 39.655502, 34.148960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705654, 40.181068, 34.765446>,  <27.376724, 39.586826, 34.811432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705654, 40.181068, 34.765446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665796, 40.140327, 34.369526>,  <27.641882, 40.115883, 34.131973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665796, 40.140327, 34.369526>,  <27.705654, 40.181068, 34.765446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665796, 40.140327, 34.369526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099934, 0.990742, -0.091886,
		0.989992, 0.089758, -0.108906,
		-0.099650, -0.101849, -0.989796,
		27.635902, 40.109772, 34.072586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048481, 40.831528, 34.434097>,  <27.705654, 40.181068, 34.765446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048481, 40.831528, 34.434097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.820917, 40.666492, 34.149529>,  <27.684380, 40.567471, 33.978786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.820917, 40.666492, 34.149529>,  <28.048481, 40.831528, 34.434097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820917, 40.666492, 34.149529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351864, 0.903990, -0.242888,
		0.743327, 0.112141, -0.659462,
		-0.568909, -0.412585, -0.711418,
		27.650244, 40.542717, 33.936104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212761, 41.137375, 33.744061>,  <28.048481, 40.831528, 34.434097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212761, 41.137375, 33.744061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.841240, 40.989395, 33.735428>,  <27.618328, 40.900608, 33.730247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.841240, 40.989395, 33.735428>,  <28.212761, 41.137375, 33.744061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841240, 40.989395, 33.735428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343273, 0.880848, -0.325992,
		0.139610, -0.295373, -0.945126,
		-0.928802, -0.369948, -0.021582,
		27.562599, 40.878410, 33.728954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976015, 41.373158, 33.179989>,  <28.212761, 41.137375, 33.744061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976015, 41.373158, 33.179989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645260, 41.272114, 33.380966>,  <27.446808, 41.211487, 33.501553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.645260, 41.272114, 33.380966>,  <27.976015, 41.373158, 33.179989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645260, 41.272114, 33.380966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462852, 0.813156, -0.352910,
		-0.319417, -0.524373, -0.789307,
		-0.826886, -0.252607, 0.502443,
		27.397194, 41.196331, 33.531700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518688, 41.517807, 32.711800>,  <27.976015, 41.373158, 33.179989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518688, 41.517807, 32.711800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339996, 41.517036, 33.069668>,  <27.232782, 41.516575, 33.284389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339996, 41.517036, 33.069668>,  <27.518688, 41.517807, 32.711800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339996, 41.517036, 33.069668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336000, 0.927158, -0.165779,
		-0.829179, -0.374667, -0.414834,
		-0.446728, -0.001923, 0.894668,
		27.205978, 41.516460, 33.338070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957882, 41.934109, 32.645054>,  <27.518688, 41.517807, 32.711800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957882, 41.934109, 32.645054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995392, 41.914879, 33.042828>,  <27.017897, 41.903339, 33.281490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995392, 41.914879, 33.042828>,  <26.957882, 41.934109, 32.645054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995392, 41.914879, 33.042828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175139, 0.982461, 0.064011,
		-0.980068, -0.180166, 0.083709,
		0.093773, -0.048074, 0.994432,
		27.023523, 41.900455, 33.341156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367943, 42.348850, 32.862411>,  <26.957882, 41.934109, 32.645054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367943, 42.348850, 32.862411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652727, 42.340366, 33.143169>,  <26.823597, 42.335274, 33.311626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652727, 42.340366, 33.143169>,  <26.367943, 42.348850, 32.862411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652727, 42.340366, 33.143169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022316, 0.999722, 0.007577,
		-0.701864, 0.010269, 0.712237,
		0.711961, -0.021212, 0.701898,
		26.866316, 42.334003, 33.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106203, 42.921844, 33.385807>,  <26.367943, 42.348850, 32.862411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106203, 42.921844, 33.385807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496706, 42.844257, 33.424374>,  <26.731009, 42.797703, 33.447514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496706, 42.844257, 33.424374>,  <26.106203, 42.921844, 33.385807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496706, 42.844257, 33.424374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204292, 0.972469, -0.112110,
		-0.072016, 0.129146, 0.989007,
		0.976258, -0.193972, 0.096416,
		26.789583, 42.786064, 33.453297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452539, 43.519455, 33.813557>,  <26.106203, 42.921844, 33.385807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452539, 43.519455, 33.813557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802193, 43.365086, 33.695602>,  <27.011984, 43.272465, 33.624828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802193, 43.365086, 33.695602>,  <26.452539, 43.519455, 33.813557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802193, 43.365086, 33.695602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358512, 0.922305, -0.144298,
		0.327664, 0.020415, 0.944574,
		0.874131, -0.385922, -0.294887,
		27.064432, 43.249310, 33.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032202, 43.768936, 34.267025>,  <26.452539, 43.519455, 33.813557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032202, 43.768936, 34.267025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163929, 43.673916, 33.901485>,  <27.242966, 43.616901, 33.682163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163929, 43.673916, 33.901485>,  <27.032202, 43.768936, 34.267025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163929, 43.673916, 33.901485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320585, 0.938473, -0.128428,
		0.888131, -0.250672, 0.385211,
		0.329317, -0.237553, -0.913848,
		27.262724, 43.602650, 33.627331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515818, 44.314529, 34.116531>,  <27.032202, 43.768936, 34.267025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515818, 44.314529, 34.116531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468386, 44.119804, 33.770363>,  <27.439926, 44.002968, 33.562660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468386, 44.119804, 33.770363>,  <27.515818, 44.314529, 34.116531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468386, 44.119804, 33.770363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266384, 0.824023, -0.500026,
		0.956545, -0.289827, 0.031968,
		-0.118579, -0.486813, -0.865421,
		27.432812, 43.973763, 33.510738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134039, 44.487331, 33.847706>,  <27.515818, 44.314529, 34.116531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134039, 44.487331, 33.847706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901051, 44.380932, 33.540466>,  <27.761257, 44.317093, 33.356125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901051, 44.380932, 33.540466>,  <28.134039, 44.487331, 33.847706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901051, 44.380932, 33.540466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275230, 0.824582, -0.494280,
		0.764836, -0.499307, -0.407086,
		-0.582473, -0.266001, -0.768094,
		27.726309, 44.301132, 33.310040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499163, 44.701630, 33.189728>,  <28.134039, 44.487331, 33.847706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499163, 44.701630, 33.189728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.109293, 44.679661, 33.103012>,  <27.875372, 44.666481, 33.050983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.109293, 44.679661, 33.103012>,  <28.499163, 44.701630, 33.189728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109293, 44.679661, 33.103012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035652, 0.918823, -0.393057,
		0.220779, -0.390830, -0.893593,
		-0.974672, -0.054920, -0.216790,
		27.816891, 44.663185, 33.037975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433241, 44.888775, 32.401794>,  <28.499163, 44.701630, 33.189728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433241, 44.888775, 32.401794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068281, 44.929188, 32.560448>,  <27.849306, 44.953434, 32.655640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068281, 44.929188, 32.560448>,  <28.433241, 44.888775, 32.401794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068281, 44.929188, 32.560448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057788, 0.927552, -0.369199,
		-0.405201, -0.359778, -0.840460,
		-0.912399, 0.101031, 0.396636,
		27.794561, 44.959496, 32.679440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096779, 45.167336, 31.925938>,  <28.433241, 44.888775, 32.401794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096779, 45.167336, 31.925938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853800, 45.239700, 32.235332>,  <27.708014, 45.283119, 32.420967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.853800, 45.239700, 32.235332>,  <28.096779, 45.167336, 31.925938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853800, 45.239700, 32.235332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082934, 0.982843, -0.164747,
		-0.790019, -0.035927, -0.612028,
		-0.607447, 0.180912, 0.773485,
		27.671566, 45.293972, 32.467377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512445, 45.560127, 31.672020>,  <28.096779, 45.167336, 31.925938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512445, 45.560127, 31.672020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565601, 45.634953, 32.061348>,  <27.597496, 45.679848, 32.294945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565601, 45.634953, 32.061348>,  <27.512445, 45.560127, 31.672020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565601, 45.634953, 32.061348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039293, 0.982250, -0.183415,
		-0.990351, -0.013871, 0.137882,
		0.132891, 0.187064, 0.973318,
		27.605469, 45.691071, 32.353344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010536, 46.121506, 31.797195>,  <27.512445, 45.560127, 31.672020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010536, 46.121506, 31.797195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284281, 46.124493, 32.088837>,  <27.448528, 46.126286, 32.263821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284281, 46.124493, 32.088837>,  <27.010536, 46.121506, 31.797195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284281, 46.124493, 32.088837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176170, 0.968629, -0.175280,
		-0.707540, 0.248401, 0.661577,
		0.684362, 0.007467, 0.729104,
		27.489590, 46.126732, 32.307568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871714, 46.720863, 32.181385>,  <27.010536, 46.121506, 31.797195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871714, 46.720863, 32.181385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245592, 46.613224, 32.274277>,  <27.469919, 46.548641, 32.330009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245592, 46.613224, 32.274277>,  <26.871714, 46.720863, 32.181385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245592, 46.613224, 32.274277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301838, 0.945931, -0.118776,
		-0.187709, 0.181115, 0.965382,
		0.934697, -0.269094, 0.232227,
		27.526001, 46.532497, 32.343945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122873, 47.255825, 32.638466>,  <26.871714, 46.720863, 32.181385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122873, 47.255825, 32.638466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412111, 47.110146, 32.403690>,  <27.585655, 47.022739, 32.262825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412111, 47.110146, 32.403690>,  <27.122873, 47.255825, 32.638466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412111, 47.110146, 32.403690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107804, 0.898799, -0.424898,
		0.682283, 0.243968, 0.689180,
		0.723096, -0.364197, -0.586935,
		27.629040, 47.000885, 32.227612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.990791, 40.840389, 43.526100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.597031, 40.844875, 43.596329>,  <40.360775, 40.847569, 43.638466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.597031, 40.844875, 43.596329>,  <40.990791, 40.840389, 43.526100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597031, 40.844875, 43.596329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154128, 0.536174, 0.829917,
		-0.084830, 0.844033, -0.529539,
		-0.984402, 0.011215, 0.175573,
		40.301708, 40.848240, 43.649002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707195, 41.526485, 43.439663>,  <40.990791, 40.840389, 43.526100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707195, 41.526485, 43.439663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482185, 41.325092, 43.701981>,  <40.347179, 41.204254, 43.859371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482185, 41.325092, 43.701981>,  <40.707195, 41.526485, 43.439663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482185, 41.325092, 43.701981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160309, 0.711716, 0.683931,
		-0.811087, 0.489860, -0.319648,
		-0.562529, -0.503485, 0.655793,
		40.313427, 41.174046, 43.898720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175198, 41.994736, 43.729698>,  <40.707195, 41.526485, 43.439663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175198, 41.994736, 43.729698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239845, 41.688686, 43.979008>,  <40.278633, 41.505058, 44.128593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239845, 41.688686, 43.979008>,  <40.175198, 41.994736, 43.729698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239845, 41.688686, 43.979008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090499, 0.640406, 0.762686,
		-0.982695, -0.066856, 0.172742,
		0.161615, -0.765121, 0.623274,
		40.288330, 41.459148, 44.165989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920860, 42.172634, 44.285942>,  <40.175198, 41.994736, 43.729698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920860, 42.172634, 44.285942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.078159, 41.828896, 44.416718>,  <40.172539, 41.622654, 44.495182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.078159, 41.828896, 44.416718>,  <39.920860, 42.172634, 44.285942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078159, 41.828896, 44.416718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077078, 0.323524, 0.943075,
		-0.916198, -0.396058, 0.060987,
		0.393243, -0.859343, 0.326940,
		40.196133, 41.571095, 44.514801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665260, 42.043625, 44.968552>,  <39.920860, 42.172634, 44.285942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665260, 42.043625, 44.968552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990646, 41.811230, 44.957684>,  <40.185879, 41.671795, 44.951164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990646, 41.811230, 44.957684>,  <39.665260, 42.043625, 44.968552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990646, 41.811230, 44.957684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101893, 0.096364, 0.990117,
		-0.572626, -0.808189, 0.137586,
		0.813460, -0.580985, -0.027168,
		40.234684, 41.636932, 44.949532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626225, 41.538403, 45.489605>,  <39.665260, 42.043625, 44.968552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626225, 41.538403, 45.489605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.016026, 41.576569, 45.408379>,  <40.249908, 41.599468, 45.359642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.016026, 41.576569, 45.408379>,  <39.626225, 41.538403, 45.489605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016026, 41.576569, 45.408379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194109, 0.095382, 0.976332,
		0.112528, -0.990857, 0.074429,
		0.974504, 0.095418, -0.203067,
		40.308376, 41.605194, 45.347458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985916, 41.237995, 46.111115>,  <39.626225, 41.538403, 45.489605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985916, 41.237995, 46.111115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253796, 41.472706, 45.929039>,  <40.414524, 41.613533, 45.819794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253796, 41.472706, 45.929039>,  <39.985916, 41.237995, 46.111115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253796, 41.472706, 45.929039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333834, 0.309645, 0.890322,
		0.663369, -0.748205, 0.011482,
		0.669699, 0.586779, -0.455185,
		40.454704, 41.648739, 45.792484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679790, 41.000984, 46.251011>,  <39.985916, 41.237995, 46.111115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679790, 41.000984, 46.251011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.712521, 41.388042, 46.155540>,  <40.732159, 41.620277, 46.098259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.712521, 41.388042, 46.155540>,  <40.679790, 41.000984, 46.251011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712521, 41.388042, 46.155540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480039, 0.171604, 0.860299,
		0.873423, -0.184968, -0.450466,
		0.081826, 0.967646, -0.238675,
		40.737068, 41.678337, 46.083939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353680, 41.111973, 46.348965>,  <40.679790, 41.000984, 46.251011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353680, 41.111973, 46.348965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.159142, 41.460049, 46.380543>,  <41.042419, 41.668896, 46.399490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.159142, 41.460049, 46.380543>,  <41.353680, 41.111973, 46.348965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159142, 41.460049, 46.380543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497472, 0.201491, 0.843755,
		0.718325, 0.449627, -0.530891,
		-0.486344, 0.870194, 0.078941,
		41.013237, 41.721107, 46.404224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887764, 41.580166, 46.677433>,  <41.353680, 41.111973, 46.348965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887764, 41.580166, 46.677433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.549034, 41.791481, 46.702057>,  <41.345795, 41.918270, 46.716831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.549034, 41.791481, 46.702057>,  <41.887764, 41.580166, 46.677433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549034, 41.791481, 46.702057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259764, 0.309815, 0.914624,
		0.464116, 0.790521, -0.399592,
		-0.846829, 0.528291, 0.061559,
		41.294987, 41.949966, 46.720524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083515, 42.350761, 46.809486>,  <41.887764, 41.580166, 46.677433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083515, 42.350761, 46.809486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.702881, 42.298088, 46.920586>,  <41.474499, 42.266483, 46.987247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.702881, 42.298088, 46.920586>,  <42.083515, 42.350761, 46.809486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702881, 42.298088, 46.920586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249279, 0.198095, 0.947955,
		-0.179853, 0.971297, -0.155678,
		-0.951584, -0.131686, 0.277752,
		41.417404, 42.258583, 47.003910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976643, 42.875454, 47.239082>,  <42.083515, 42.350761, 46.809486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976643, 42.875454, 47.239082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.711384, 42.600189, 47.356842>,  <41.552227, 42.435032, 47.427498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.711384, 42.600189, 47.356842>,  <41.976643, 42.875454, 47.239082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711384, 42.600189, 47.356842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163176, 0.250945, 0.954149,
		-0.730487, 0.680779, -0.054121,
		-0.663146, -0.688162, 0.294399,
		41.512440, 42.393742, 47.445160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528320, 43.225018, 47.762390>,  <41.976643, 42.875454, 47.239082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528320, 43.225018, 47.762390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.504429, 42.829536, 47.817379>,  <41.490093, 42.592247, 47.850372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.504429, 42.829536, 47.817379>,  <41.528320, 43.225018, 47.762390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504429, 42.829536, 47.817379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140264, 0.128038, 0.981800,
		-0.988311, 0.077929, 0.131032,
		-0.059734, -0.988703, 0.137472,
		41.486507, 42.532925, 47.858620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149960, 43.651379, 48.270100>,  <41.528320, 43.225018, 47.762390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149960, 43.651379, 48.270100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053551, 44.039516, 48.262730>,  <40.995705, 44.272400, 48.258308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.053551, 44.039516, 48.262730>,  <41.149960, 43.651379, 48.270100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053551, 44.039516, 48.262730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292501, -0.090725, -0.951952,
		-0.925394, -0.224049, 0.305693,
		-0.241018, 0.970346, -0.018422,
		40.981247, 44.330620, 48.257202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051991, 43.840862, 47.643520>,  <41.149960, 43.651379, 48.270100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051991, 43.840862, 47.643520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.835251, 44.143093, 47.790760>,  <40.705208, 44.324432, 47.879105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.835251, 44.143093, 47.790760>,  <41.051991, 43.840862, 47.643520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835251, 44.143093, 47.790760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435936, 0.121794, -0.891699,
		-0.718581, -0.643636, 0.263389,
		-0.541850, 0.755579, 0.368103,
		40.672695, 44.369766, 47.901192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382698, 43.726543, 47.497303>,  <41.051991, 43.840862, 47.643520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382698, 43.726543, 47.497303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387932, 44.121647, 47.559483>,  <40.391071, 44.358707, 47.596790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387932, 44.121647, 47.559483>,  <40.382698, 43.726543, 47.497303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387932, 44.121647, 47.559483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293997, 0.152391, -0.943580,
		-0.955717, -0.033351, 0.292392,
		0.013088, 0.987758, 0.155448,
		40.391857, 44.417973, 47.606117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793385, 44.018559, 47.232960>,  <40.382698, 43.726543, 47.497303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793385, 44.018559, 47.232960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.060425, 44.315495, 47.255726>,  <40.220650, 44.493656, 47.269386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.060425, 44.315495, 47.255726>,  <39.793385, 44.018559, 47.232960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060425, 44.315495, 47.255726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148294, 0.207499, -0.966930,
		-0.729602, 0.637083, 0.248611,
		0.667601, 0.742341, 0.056916,
		40.260704, 44.538197, 47.272800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456905, 44.624626, 47.014893>,  <39.793385, 44.018559, 47.232960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456905, 44.624626, 47.014893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.847157, 44.666298, 46.937634>,  <40.081306, 44.691299, 46.891277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.847157, 44.666298, 46.937634>,  <39.456905, 44.624626, 47.014893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847157, 44.666298, 46.937634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211083, 0.204749, -0.955783,
		-0.060024, 0.973255, 0.221748,
		0.975623, 0.104177, -0.193148,
		40.139843, 44.697552, 46.879688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447269, 45.184315, 46.551388>,  <39.456905, 44.624626, 47.014893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447269, 45.184315, 46.551388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.811543, 45.027206, 46.500168>,  <40.030106, 44.932941, 46.469437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.811543, 45.027206, 46.500168>,  <39.447269, 45.184315, 46.551388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811543, 45.027206, 46.500168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060087, 0.180736, -0.981695,
		0.408722, 0.901702, 0.140992,
		0.910679, -0.392769, -0.128052,
		40.084747, 44.909374, 46.461754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831226, 45.653122, 46.177197>,  <39.447269, 45.184315, 46.551388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831226, 45.653122, 46.177197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.012897, 45.301132, 46.121529>,  <40.121899, 45.089939, 46.088127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.012897, 45.301132, 46.121529>,  <39.831226, 45.653122, 46.177197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012897, 45.301132, 46.121529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117350, 0.095757, -0.988463,
		0.883149, 0.465268, -0.059774,
		0.454176, -0.879975, -0.139167,
		40.149151, 45.037140, 46.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067184, 45.724419, 45.505970>,  <39.831226, 45.653122, 46.177197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067184, 45.724419, 45.505970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138714, 45.335308, 45.564922>,  <40.181633, 45.101841, 45.600292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138714, 45.335308, 45.564922>,  <40.067184, 45.724419, 45.505970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138714, 45.335308, 45.564922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258417, -0.190974, -0.946968,
		0.949338, 0.131255, -0.285533,
		0.178823, -0.972780, 0.147381,
		40.192360, 45.043472, 45.609135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478172, 45.453758, 44.928474>,  <40.067184, 45.724419, 45.505970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478172, 45.453758, 44.928474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351376, 45.107582, 45.083668>,  <40.275299, 44.899876, 45.176785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.351376, 45.107582, 45.083668>,  <40.478172, 45.453758, 44.928474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351376, 45.107582, 45.083668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134672, -0.363863, -0.921665,
		0.938819, -0.344409, -0.001210,
		-0.316989, -0.865440, 0.387984,
		40.256279, 44.847950, 45.200062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819733, 44.903713, 44.439884>,  <40.478172, 45.453758, 44.928474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819733, 44.903713, 44.439884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534687, 44.731133, 44.661163>,  <40.363659, 44.627583, 44.793930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534687, 44.731133, 44.661163>,  <40.819733, 44.903713, 44.439884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534687, 44.731133, 44.661163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305840, -0.518597, -0.798448,
		0.631378, -0.738177, 0.237606,
		-0.712617, -0.431453, 0.553195,
		40.320900, 44.601696, 44.827122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888763, 44.276459, 44.165249>,  <40.819733, 44.903713, 44.439884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888763, 44.276459, 44.165249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.527569, 44.327171, 44.329460>,  <40.310852, 44.357597, 44.427986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.527569, 44.327171, 44.329460>,  <40.888763, 44.276459, 44.165249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527569, 44.327171, 44.329460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429320, -0.304301, -0.850344,
		0.017122, -0.944102, 0.329209,
		-0.902990, 0.126777, 0.410532,
		40.256672, 44.365204, 44.452618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585754, 43.566082, 44.233570>,  <40.888763, 44.276459, 44.165249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585754, 43.566082, 44.233570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.291363, 43.835781, 44.209141>,  <40.114727, 43.997601, 44.194481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.291363, 43.835781, 44.209141>,  <40.585754, 43.566082, 44.233570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291363, 43.835781, 44.209141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393227, -0.499175, -0.772138,
		-0.551097, -0.544260, 0.632513,
		-0.735979, 0.674243, -0.061076,
		40.070568, 44.038055, 44.190819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041584, 43.114197, 43.894718>,  <40.585754, 43.566082, 44.233570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041584, 43.114197, 43.894718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.915619, 43.493694, 43.883980>,  <39.840038, 43.721394, 43.877537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.915619, 43.493694, 43.883980>,  <40.041584, 43.114197, 43.894718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915619, 43.493694, 43.883980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329559, -0.135826, -0.934314,
		-0.890068, -0.285379, 0.355440,
		-0.314912, 0.948741, -0.026845,
		39.821144, 43.778316, 43.875927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349400, 43.086170, 43.767223>,  <40.041584, 43.114197, 43.894718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349400, 43.086170, 43.767223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501083, 43.438759, 43.654644>,  <39.592094, 43.650311, 43.587097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.501083, 43.438759, 43.654644>,  <39.349400, 43.086170, 43.767223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501083, 43.438759, 43.654644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222455, -0.208398, -0.952409,
		-0.898174, 0.423769, 0.117062,
		0.379206, 0.881470, -0.281447,
		39.614845, 43.703201, 43.570210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885742, 43.254517, 43.224621>,  <39.349400, 43.086170, 43.767223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885742, 43.254517, 43.224621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207226, 43.489647, 43.187733>,  <39.400116, 43.630726, 43.165600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.207226, 43.489647, 43.187733>,  <38.885742, 43.254517, 43.224621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207226, 43.489647, 43.187733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073829, -0.055269, -0.995738,
		-0.590421, 0.807095, -0.001021,
		0.803711, 0.587829, -0.092219,
		39.448338, 43.665997, 43.160069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436825, 43.858059, 43.235279>,  <38.885742, 43.254517, 43.224621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436825, 43.858059, 43.235279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042713, 43.907822, 43.188362>,  <37.806248, 43.937679, 43.160213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042713, 43.907822, 43.188362>,  <38.436825, 43.858059, 43.235279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042713, 43.907822, 43.188362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079147, 0.276212, 0.957832,
		0.151556, 0.953011, -0.262299,
		-0.985275, 0.124405, -0.117290,
		37.747131, 43.945145, 43.153175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264446, 44.548248, 43.309792>,  <38.436825, 43.858059, 43.235279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264446, 44.548248, 43.309792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931042, 44.340336, 43.384708>,  <37.730999, 44.215588, 43.429661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.931042, 44.340336, 43.384708>,  <38.264446, 44.548248, 43.309792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931042, 44.340336, 43.384708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072060, 0.438376, 0.895898,
		-0.547777, 0.733249, -0.402849,
		-0.833515, -0.519781, 0.187295,
		37.680988, 44.184402, 43.440895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947098, 44.910320, 43.665813>,  <38.264446, 44.548248, 43.309792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947098, 44.910320, 43.665813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717182, 44.590015, 43.733227>,  <37.579235, 44.397831, 43.773674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717182, 44.590015, 43.733227>,  <37.947098, 44.910320, 43.665813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717182, 44.590015, 43.733227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220234, 0.349733, 0.910595,
		-0.788111, 0.486280, -0.377376,
		-0.574786, -0.800761, 0.168533,
		37.544746, 44.349789, 43.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290733, 45.242897, 43.787991>,  <37.947098, 44.910320, 43.665813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290733, 45.242897, 43.787991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.310650, 44.879917, 43.954868>,  <37.322601, 44.662128, 44.054996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.310650, 44.879917, 43.954868>,  <37.290733, 45.242897, 43.787991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310650, 44.879917, 43.954868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221726, 0.397247, 0.890523,
		-0.973837, -0.136842, -0.181427,
		0.049790, -0.907452, 0.417195,
		37.325588, 44.607681, 44.080029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710850, 45.187130, 44.225178>,  <37.290733, 45.242897, 43.787991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710850, 45.187130, 44.225178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967709, 44.906662, 44.349117>,  <37.121822, 44.738380, 44.423481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967709, 44.906662, 44.349117>,  <36.710850, 45.187130, 44.225178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967709, 44.906662, 44.349117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140120, 0.290030, 0.946704,
		-0.753669, -0.651337, 0.087993,
		0.642144, -0.701172, 0.309852,
		37.160351, 44.696312, 44.442074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421467, 44.990887, 44.844391>,  <36.710850, 45.187130, 44.225178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421467, 44.990887, 44.844391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790001, 44.839005, 44.877766>,  <37.011124, 44.747875, 44.897793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790001, 44.839005, 44.877766>,  <36.421467, 44.990887, 44.844391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790001, 44.839005, 44.877766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028250, 0.279456, 0.959743,
		-0.387735, -0.881890, 0.268200,
		0.921338, -0.379702, 0.083442,
		37.066402, 44.725094, 44.902798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410610, 44.446072, 45.401028>,  <36.421467, 44.990887, 44.844391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410610, 44.446072, 45.401028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762817, 44.619350, 45.324051>,  <36.974140, 44.723316, 45.277866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762817, 44.619350, 45.324051>,  <36.410610, 44.446072, 45.401028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762817, 44.619350, 45.324051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046818, 0.324513, 0.944722,
		0.471700, -0.840851, 0.265458,
		0.880515, 0.433197, -0.192440,
		37.026974, 44.749310, 45.266319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085426, 43.791534, 45.505436>,  <36.410610, 44.446072, 45.401028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085426, 43.791534, 45.505436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914783, 43.506737, 45.728531>,  <35.812397, 43.335857, 45.862389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914783, 43.506737, 45.728531>,  <36.085426, 43.791534, 45.505436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914783, 43.506737, 45.728531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206589, -0.523657, -0.826501,
		0.880525, -0.467818, 0.076309,
		-0.426611, -0.711990, 0.557739,
		35.786800, 43.293140, 45.895851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400574, 43.240246, 45.171879>,  <36.085426, 43.791534, 45.505436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400574, 43.240246, 45.171879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077305, 43.125832, 45.377808>,  <35.883343, 43.057182, 45.501366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077305, 43.125832, 45.377808>,  <36.400574, 43.240246, 45.171879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077305, 43.125832, 45.377808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323528, -0.514821, -0.793908,
		0.492131, -0.808172, 0.323520,
		-0.808168, -0.286039, 0.514825,
		35.834854, 43.040020, 45.532257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432137, 42.525890, 45.217247>,  <36.400574, 43.240246, 45.171879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432137, 42.525890, 45.217247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.047245, 42.626255, 45.259491>,  <35.816311, 42.686474, 45.284836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.047245, 42.626255, 45.259491>,  <36.432137, 42.525890, 45.217247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047245, 42.626255, 45.259491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194053, -0.360112, -0.912504,
		-0.190927, -0.898534, 0.395201,
		-0.962232, 0.250911, 0.105608,
		35.758575, 42.701530, 45.291172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025951, 41.953148, 45.043129>,  <36.432137, 42.525890, 45.217247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025951, 41.953148, 45.043129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755939, 42.247219, 45.018291>,  <35.593933, 42.423660, 45.003391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755939, 42.247219, 45.018291>,  <36.025951, 41.953148, 45.043129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755939, 42.247219, 45.018291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230338, -0.289946, -0.928911,
		-0.700917, -0.612736, 0.365060,
		-0.675025, 0.735178, -0.062092,
		35.553432, 42.467773, 44.999664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407940, 41.641132, 44.735168>,  <36.025951, 41.953148, 45.043129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407940, 41.641132, 44.735168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394897, 42.037029, 44.679543>,  <35.387074, 42.274567, 44.646168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394897, 42.037029, 44.679543>,  <35.407940, 41.641132, 44.735168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394897, 42.037029, 44.679543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497384, -0.136754, -0.856684,
		-0.866918, 0.041239, 0.496743,
		-0.032603, 0.989746, -0.139067,
		35.385117, 42.333954, 44.637821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745834, 41.807671, 44.415249>,  <35.407940, 41.641132, 44.735168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745834, 41.807671, 44.415249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969532, 42.125870, 44.321938>,  <35.103752, 42.316792, 44.265949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969532, 42.125870, 44.321938>,  <34.745834, 41.807671, 44.415249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969532, 42.125870, 44.321938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340418, -0.036210, -0.939577,
		-0.755882, 0.604869, 0.250552,
		0.559248, 0.795502, -0.233279,
		35.137306, 42.364521, 44.251953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398384, 42.072880, 43.786545>,  <34.745834, 41.807671, 44.415249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398384, 42.072880, 43.786545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747131, 42.268757, 43.789291>,  <34.956379, 42.386284, 43.790939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747131, 42.268757, 43.789291>,  <34.398384, 42.072880, 43.786545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747131, 42.268757, 43.789291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005265, 0.023386, -0.999713,
		-0.489716, 0.871580, 0.022968,
		0.871866, 0.489696, 0.006864,
		35.008690, 42.415665, 43.791351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.165806, 39.476448, 48.770504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.300346, 39.833588, 48.650719>,  <39.381073, 40.047871, 48.578846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.300346, 39.833588, 48.650719>,  <39.165806, 39.476448, 48.770504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300346, 39.833588, 48.650719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574995, -0.057133, -0.816160,
		-0.745819, 0.446711, 0.494169,
		0.336354, 0.892852, -0.299468,
		39.401253, 40.101444, 48.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577984, 39.905449, 48.569435>,  <39.165806, 39.476448, 48.770504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577984, 39.905449, 48.569435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.884750, 40.060959, 48.365200>,  <39.068810, 40.154263, 48.242661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.884750, 40.060959, 48.365200>,  <38.577984, 39.905449, 48.569435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884750, 40.060959, 48.365200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539081, -0.041388, -0.841236,
		-0.348180, 0.920404, 0.177838,
		0.766917, 0.388771, -0.510583,
		39.114826, 40.177589, 48.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220108, 40.432529, 48.041126>,  <38.577984, 39.905449, 48.569435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220108, 40.432529, 48.041126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.591125, 40.327747, 47.934517>,  <38.813736, 40.264877, 47.870552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.591125, 40.327747, 47.934517>,  <38.220108, 40.432529, 48.041126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591125, 40.327747, 47.934517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336782, -0.276851, -0.899962,
		0.161962, 0.924518, -0.345014,
		0.927548, -0.261954, -0.266522,
		38.869389, 40.249161, 47.854561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318432, 40.633602, 47.347553>,  <38.220108, 40.432529, 48.041126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318432, 40.633602, 47.347553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.578121, 40.334461, 47.403015>,  <38.733936, 40.154976, 47.436291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.578121, 40.334461, 47.403015>,  <38.318432, 40.633602, 47.347553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578121, 40.334461, 47.403015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296682, -0.416848, -0.859196,
		0.700350, 0.516674, -0.492502,
		0.649223, -0.747854, 0.138651,
		38.772888, 40.110104, 47.444611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710041, 40.576454, 46.693317>,  <38.318432, 40.633602, 47.347553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710041, 40.576454, 46.693317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.781353, 40.232651, 46.884930>,  <38.824139, 40.026371, 46.999897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.781353, 40.232651, 46.884930>,  <38.710041, 40.576454, 46.693317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781353, 40.232651, 46.884930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086436, -0.498624, -0.862498,
		0.980176, 0.112359, -0.163186,
		0.178278, -0.859506, 0.479027,
		38.834835, 39.974800, 47.028637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230034, 40.234959, 46.349762>,  <38.710041, 40.576454, 46.693317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230034, 40.234959, 46.349762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.037617, 39.950634, 46.555031>,  <38.922165, 39.780041, 46.678192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.037617, 39.950634, 46.555031>,  <39.230034, 40.234959, 46.349762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037617, 39.950634, 46.555031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085222, -0.544659, -0.834316,
		0.872544, -0.445077, 0.201429,
		-0.481045, -0.710812, 0.513169,
		38.893303, 39.737392, 46.708981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416702, 39.566174, 45.943108>,  <39.230034, 40.234959, 46.349762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416702, 39.566174, 45.943108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.113464, 39.431229, 46.166348>,  <38.931522, 39.350262, 46.300293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.113464, 39.431229, 46.166348>,  <39.416702, 39.566174, 45.943108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113464, 39.431229, 46.166348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200700, -0.693569, -0.691868,
		0.620494, -0.636512, 0.458082,
		-0.758094, -0.337363, 0.558103,
		38.886036, 39.330021, 46.333778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489285, 38.923290, 45.899532>,  <39.416702, 39.566174, 45.943108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489285, 38.923290, 45.899532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.107555, 38.986546, 46.000927>,  <38.878517, 39.024498, 46.061764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.107555, 38.986546, 46.000927>,  <39.489285, 38.923290, 45.899532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107555, 38.986546, 46.000927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293137, -0.659654, -0.692046,
		0.057775, -0.734743, 0.675881,
		-0.954323, 0.158143, 0.253491,
		38.821259, 39.033989, 46.076973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130512, 38.246323, 45.911686>,  <39.489285, 38.923290, 45.899532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130512, 38.246323, 45.911686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.825787, 38.504841, 45.894081>,  <38.642952, 38.659950, 45.883518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.825787, 38.504841, 45.894081>,  <39.130512, 38.246323, 45.911686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825787, 38.504841, 45.894081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520402, -0.651051, -0.552553,
		-0.385768, -0.398038, 0.832315,
		-0.761817, 0.646296, -0.044015,
		38.597240, 38.698730, 45.880875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348442, 37.854298, 46.045345>,  <39.130512, 38.246323, 45.911686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348442, 37.854298, 46.045345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291878, 38.189945, 45.835251>,  <38.257938, 38.391335, 45.709194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291878, 38.189945, 45.835251>,  <38.348442, 37.854298, 46.045345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291878, 38.189945, 45.835251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250795, -0.543630, -0.800979,
		-0.957656, 0.018461, 0.287322,
		-0.141410, 0.839122, -0.525241,
		38.249454, 38.441681, 45.677677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814705, 37.686600, 45.670162>,  <38.348442, 37.854298, 46.045345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814705, 37.686600, 45.670162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.943245, 38.010815, 45.474300>,  <38.020370, 38.205345, 45.356781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.943245, 38.010815, 45.474300>,  <37.814705, 37.686600, 45.670162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943245, 38.010815, 45.474300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346216, -0.380721, -0.857429,
		-0.881400, 0.445064, 0.158275,
		0.321353, 0.810536, -0.489657,
		38.039650, 38.253975, 45.327404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275700, 37.905064, 45.263100>,  <37.814705, 37.686600, 45.670162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275700, 37.905064, 45.263100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.602627, 38.028309, 45.068348>,  <37.798782, 38.102257, 44.951496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.602627, 38.028309, 45.068348>,  <37.275700, 37.905064, 45.263100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602627, 38.028309, 45.068348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266789, -0.546592, -0.793763,
		-0.510697, 0.778653, -0.364538,
		0.817320, 0.308117, -0.486879,
		37.847824, 38.120743, 44.922283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804974, 38.547287, 45.313431>,  <37.275700, 37.905064, 45.263100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804974, 38.547287, 45.313431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408199, 38.597916, 45.315811>,  <36.170135, 38.628292, 45.317238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408199, 38.597916, 45.315811>,  <36.804974, 38.547287, 45.313431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408199, 38.597916, 45.315811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072118, 0.525339, 0.847832,
		0.104184, 0.841427, -0.530232,
		-0.991940, 0.126570, 0.005950,
		36.110619, 38.635887, 45.317596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701073, 39.221348, 45.413719>,  <36.804974, 38.547287, 45.313431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701073, 39.221348, 45.413719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351887, 39.077103, 45.545101>,  <36.142376, 38.990555, 45.623932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351887, 39.077103, 45.545101>,  <36.701073, 39.221348, 45.413719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351887, 39.077103, 45.545101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035443, 0.624698, 0.780061,
		-0.486489, 0.692610, -0.532560,
		-0.872968, -0.360616, 0.328457,
		36.089996, 38.968918, 45.643639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365936, 39.800144, 45.658085>,  <36.701073, 39.221348, 45.413719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365936, 39.800144, 45.658085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.172356, 39.498737, 45.836071>,  <36.056206, 39.317894, 45.942863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.172356, 39.498737, 45.836071>,  <36.365936, 39.800144, 45.658085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172356, 39.498737, 45.836071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011518, 0.513920, 0.857761,
		-0.875018, 0.409992, -0.257392,
		-0.483954, -0.753521, 0.444966,
		36.027168, 39.272682, 45.969563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981857, 40.155506, 46.117462>,  <36.365936, 39.800144, 45.658085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981857, 40.155506, 46.117462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.963696, 39.783855, 46.264248>,  <35.952797, 39.560863, 46.352318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.963696, 39.783855, 46.264248>,  <35.981857, 40.155506, 46.117462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963696, 39.783855, 46.264248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078290, 0.362903, 0.928532,
		-0.995896, 0.070890, 0.056263,
		-0.045406, -0.929126, 0.366964,
		35.950073, 39.505119, 46.374336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419205, 40.246185, 46.582394>,  <35.981857, 40.155506, 46.117462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419205, 40.246185, 46.582394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.616772, 39.921162, 46.706196>,  <35.735313, 39.726147, 46.780476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.616772, 39.921162, 46.706196>,  <35.419205, 40.246185, 46.582394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616772, 39.921162, 46.706196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060224, 0.387065, 0.920084,
		-0.867421, -0.435805, 0.240114,
		0.493916, -0.812561, 0.309502,
		35.764946, 39.677395, 46.799046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014202, 39.919075, 47.128349>,  <35.419205, 40.246185, 46.582394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014202, 39.919075, 47.128349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.394932, 39.807415, 47.179104>,  <35.623371, 39.740417, 47.209557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.394932, 39.807415, 47.179104>,  <35.014202, 39.919075, 47.128349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394932, 39.807415, 47.179104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013590, 0.374990, 0.926929,
		-0.306337, -0.884000, 0.353132,
		0.951826, -0.279153, 0.126887,
		35.680481, 39.723671, 47.217171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081444, 39.846916, 47.861980>,  <35.014202, 39.919075, 47.128349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081444, 39.846916, 47.861980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472164, 39.823429, 47.779606>,  <35.706596, 39.809338, 47.730183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472164, 39.823429, 47.779606>,  <35.081444, 39.846916, 47.861980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472164, 39.823429, 47.779606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207650, 0.494750, 0.843862,
		0.052335, -0.867049, 0.495466,
		0.976802, -0.058720, -0.205936,
		35.765205, 39.805813, 47.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447807, 39.655201, 48.474781>,  <35.081444, 39.846916, 47.861980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447807, 39.655201, 48.474781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.707832, 39.846699, 48.238743>,  <35.863850, 39.961597, 48.097118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.707832, 39.846699, 48.238743>,  <35.447807, 39.655201, 48.474781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707832, 39.846699, 48.238743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387387, 0.459283, 0.799369,
		0.653717, -0.748239, 0.113104,
		0.650066, 0.478746, -0.590099,
		35.902851, 39.990322, 48.061714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106335, 39.532700, 48.762016>,  <35.447807, 39.655201, 48.474781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106335, 39.532700, 48.762016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.159943, 39.857059, 48.534164>,  <36.192108, 40.051678, 48.397453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.159943, 39.857059, 48.534164>,  <36.106335, 39.532700, 48.762016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159943, 39.857059, 48.534164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502830, 0.439673, 0.744211,
		0.853933, -0.386162, -0.348823,
		0.134018, 0.810904, -0.569625,
		36.200150, 40.100330, 48.363277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762119, 39.808094, 48.991268>,  <36.106335, 39.532700, 48.762016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762119, 39.808094, 48.991268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.622597, 40.112125, 48.771954>,  <36.538883, 40.294544, 48.640366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.622597, 40.112125, 48.771954>,  <36.762119, 39.808094, 48.991268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622597, 40.112125, 48.771954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536512, 0.641628, 0.548151,
		0.768433, -0.102965, -0.631592,
		-0.348806, 0.760074, -0.548290,
		36.517956, 40.340149, 48.607468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298470, 40.266697, 49.083370>,  <36.762119, 39.808094, 48.991268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298470, 40.266697, 49.083370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985809, 40.498951, 48.992260>,  <36.798214, 40.638306, 48.937595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985809, 40.498951, 48.992260>,  <37.298470, 40.266697, 49.083370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985809, 40.498951, 48.992260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353912, 0.713598, 0.604587,
		0.513584, 0.391965, -0.763279,
		-0.781651, 0.580640, -0.227772,
		36.751312, 40.673141, 48.923927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605606, 40.819202, 49.198811>,  <37.298470, 40.266697, 49.083370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605606, 40.819202, 49.198811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.223938, 40.934292, 49.165913>,  <36.994934, 41.003345, 49.146175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.223938, 40.934292, 49.165913>,  <37.605606, 40.819202, 49.198811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223938, 40.934292, 49.165913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182099, 0.776372, 0.603395,
		0.237466, 0.560768, -0.793190,
		-0.954175, 0.287725, -0.082246,
		36.937687, 41.020611, 49.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538830, 41.531208, 48.884609>,  <37.605606, 40.819202, 49.198811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538830, 41.531208, 48.884609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.244389, 41.428421, 49.135086>,  <37.067722, 41.366749, 49.285374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.244389, 41.428421, 49.135086>,  <37.538830, 41.531208, 48.884609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244389, 41.428421, 49.135086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140198, 0.847188, 0.512461,
		-0.662188, 0.465016, -0.587594,
		-0.736105, -0.256966, 0.626193,
		37.023556, 41.351330, 49.322945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304432, 42.223442, 49.029621>,  <37.538830, 41.531208, 48.884609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304432, 42.223442, 49.029621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.130539, 41.987640, 49.301941>,  <37.026203, 41.846161, 49.465332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.130539, 41.987640, 49.301941>,  <37.304432, 42.223442, 49.029621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130539, 41.987640, 49.301941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020840, 0.749189, 0.662028,
		-0.900316, 0.301996, -0.313415,
		-0.434737, -0.589503, 0.680801,
		37.000118, 41.810791, 49.506180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267487, 42.548126, 48.347298>,  <37.304432, 42.223442, 49.029621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267487, 42.548126, 48.347298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141941, 42.926735, 48.377216>,  <37.066612, 43.153900, 48.395168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.141941, 42.926735, 48.377216>,  <37.267487, 42.548126, 48.347298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141941, 42.926735, 48.377216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448514, -0.078372, -0.890333,
		-0.836854, -0.312991, 0.449124,
		-0.313865, 0.946517, 0.074795,
		37.047783, 43.210690, 48.399654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553570, 42.537270, 48.097198>,  <37.267487, 42.548126, 48.347298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553570, 42.537270, 48.097198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.646770, 42.926128, 48.087105>,  <36.702690, 43.159443, 48.081051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.646770, 42.926128, 48.087105>,  <36.553570, 42.537270, 48.097198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646770, 42.926128, 48.087105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430811, 0.079924, -0.898896,
		-0.871845, 0.220313, 0.437435,
		0.233000, 0.972149, -0.025232,
		36.716671, 43.217773, 48.079536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906467, 42.982662, 48.183254>,  <36.553570, 42.537270, 48.097198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906467, 42.982662, 48.183254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.195419, 43.181213, 47.990677>,  <36.368790, 43.300343, 47.875130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.195419, 43.181213, 47.990677>,  <35.906467, 42.982662, 48.183254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195419, 43.181213, 47.990677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566290, 0.025084, -0.823824,
		-0.396849, 0.867746, 0.299212,
		0.722375, 0.496374, -0.481442,
		36.412132, 43.330124, 47.846245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542614, 43.459679, 47.851082>,  <35.906467, 42.982662, 48.183254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542614, 43.459679, 47.851082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.897858, 43.450485, 47.667461>,  <36.111004, 43.444969, 47.557289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.897858, 43.450485, 47.667461>,  <35.542614, 43.459679, 47.851082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897858, 43.450485, 47.667461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456473, 0.072719, -0.886761,
		0.053765, 0.997088, 0.054089,
		0.888112, -0.022987, -0.459053,
		36.164291, 43.443588, 47.529747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416729, 43.915657, 47.363701>,  <35.542614, 43.459679, 47.851082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416729, 43.915657, 47.363701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747669, 43.736210, 47.228508>,  <35.946232, 43.628540, 47.147392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.747669, 43.736210, 47.228508>,  <35.416729, 43.915657, 47.363701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747669, 43.736210, 47.228508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337383, 0.084170, -0.937597,
		0.449070, 0.889752, -0.081717,
		0.827351, -0.448617, -0.337986,
		35.995872, 43.601624, 47.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597149, 44.240845, 46.666965>,  <35.416729, 43.915657, 47.363701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597149, 44.240845, 46.666965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.763451, 43.877487, 46.684708>,  <35.863232, 43.659473, 46.695354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.763451, 43.877487, 46.684708>,  <35.597149, 44.240845, 46.666965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763451, 43.877487, 46.684708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306248, -0.185756, -0.933652,
		0.856365, 0.374585, -0.355423,
		0.415755, -0.908395, 0.044359,
		35.888176, 43.604969, 46.698017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147694, 44.186199, 46.113102>,  <35.597149, 44.240845, 46.666965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147694, 44.186199, 46.113102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025841, 43.818779, 46.213871>,  <35.952728, 43.598328, 46.274334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.025841, 43.818779, 46.213871>,  <36.147694, 44.186199, 46.113102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025841, 43.818779, 46.213871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165385, -0.209467, -0.963728,
		0.938001, -0.335249, -0.088103,
		-0.304635, -0.918549, 0.251925,
		35.934452, 43.543213, 46.289448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887249, 44.285458, 46.071537>,  <36.147694, 44.186199, 46.113102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887249, 44.285458, 46.071537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061428, 44.576260, 45.859180>,  <37.165936, 44.750740, 45.731766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061428, 44.576260, 45.859180>,  <36.887249, 44.285458, 46.071537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061428, 44.576260, 45.859180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373829, 0.390448, 0.841310,
		0.818925, -0.564808, -0.101758,
		0.435447, 0.727009, -0.530889,
		37.192062, 44.794361, 45.699913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548256, 44.281605, 46.431396>,  <36.887249, 44.285458, 46.071537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548256, 44.281605, 46.431396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510422, 44.626015, 46.231522>,  <37.487720, 44.832661, 46.111595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510422, 44.626015, 46.231522>,  <37.548256, 44.281605, 46.431396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510422, 44.626015, 46.231522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330114, 0.500669, 0.800222,
		0.939190, -0.089265, -0.331592,
		-0.094586, 0.861024, -0.499691,
		37.482044, 44.884323, 46.081615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154152, 44.568001, 46.466034>,  <37.548256, 44.281605, 46.431396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154152, 44.568001, 46.466034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938946, 44.895748, 46.386856>,  <37.809822, 45.092396, 46.339348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938946, 44.895748, 46.386856>,  <38.154152, 44.568001, 46.466034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938946, 44.895748, 46.386856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441192, 0.473819, 0.762132,
		0.718255, 0.322703, -0.616419,
		-0.538014, 0.819364, -0.197949,
		37.777542, 45.141556, 46.327473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656887, 45.004456, 46.636280>,  <38.154152, 44.568001, 46.466034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656887, 45.004456, 46.636280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.307583, 45.199348, 46.634659>,  <38.098000, 45.316284, 46.633686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.307583, 45.199348, 46.634659>,  <38.656887, 45.004456, 46.636280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307583, 45.199348, 46.634659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284577, 0.516761, 0.807449,
		0.395514, 0.703959, -0.589924,
		-0.873261, 0.487236, -0.004056,
		38.045605, 45.345520, 46.633442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709381, 45.691067, 46.547215>,  <38.656887, 45.004456, 46.636280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709381, 45.691067, 46.547215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.356144, 45.668449, 46.733528>,  <38.144203, 45.654881, 46.845318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.356144, 45.668449, 46.733528>,  <38.709381, 45.691067, 46.547215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356144, 45.668449, 46.733528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370753, 0.524323, 0.766569,
		-0.287563, 0.849640, -0.442062,
		-0.883091, -0.056541, 0.465783,
		38.091217, 45.651485, 46.873264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562088, 46.396572, 46.915089>,  <38.709381, 45.691067, 46.547215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562088, 46.396572, 46.915089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324566, 46.134762, 47.102276>,  <38.182053, 45.977676, 47.214588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324566, 46.134762, 47.102276>,  <38.562088, 46.396572, 46.915089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324566, 46.134762, 47.102276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306835, 0.353447, 0.883701,
		-0.743806, 0.668335, -0.009048,
		-0.593806, -0.654526, 0.467965,
		38.146423, 45.938404, 47.242664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266388, 46.812984, 47.459656>,  <38.562088, 46.396572, 46.915089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266388, 46.812984, 47.459656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240273, 46.429543, 47.570511>,  <38.224602, 46.199478, 47.637024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.240273, 46.429543, 47.570511>,  <38.266388, 46.812984, 47.459656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240273, 46.429543, 47.570511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157367, 0.264368, 0.951496,
		-0.985380, 0.105734, 0.133593,
		-0.065288, -0.958608, 0.277142,
		38.220688, 46.141960, 47.653652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067059, 46.865417, 48.143795>,  <38.266388, 46.812984, 47.459656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067059, 46.865417, 48.143795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.188122, 46.485634, 48.110516>,  <38.260761, 46.257763, 48.090549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.188122, 46.485634, 48.110516>,  <38.067059, 46.865417, 48.143795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188122, 46.485634, 48.110516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313705, 0.016813, 0.949372,
		-0.899992, -0.313436, 0.302940,
		0.302660, -0.949461, -0.083194,
		38.278919, 46.200794, 48.085556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802662, 46.613865, 48.739941>,  <38.067059, 46.865417, 48.143795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802662, 46.613865, 48.739941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.100094, 46.379719, 48.610676>,  <38.278553, 46.239231, 48.533115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.100094, 46.379719, 48.610676>,  <37.802662, 46.613865, 48.739941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100094, 46.379719, 48.610676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439065, 0.062950, 0.896248,
		-0.504286, -0.808325, 0.303821,
		0.743585, -0.585362, -0.323162,
		38.323170, 46.204109, 48.513729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.808159, 39.826729, 34.046219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141209, 39.676189, 34.208752>,  <37.341038, 39.585865, 34.306271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141209, 39.676189, 34.208752>,  <36.808159, 39.826729, 34.046219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141209, 39.676189, 34.208752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173132, 0.520033, 0.836416,
		-0.526089, -0.766766, 0.367832,
		0.832620, -0.376346, 0.406335,
		37.390995, 39.563286, 34.330650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695141, 39.486935, 34.658703>,  <36.808159, 39.826729, 34.046219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695141, 39.486935, 34.658703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065945, 39.636944, 34.660328>,  <37.288425, 39.726948, 34.661304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065945, 39.636944, 34.660328>,  <36.695141, 39.486935, 34.658703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065945, 39.636944, 34.660328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175807, 0.424943, 0.887984,
		0.331285, -0.823882, 0.459857,
		0.927007, 0.375022, 0.004067,
		37.344048, 39.749451, 34.661549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765263, 39.711792, 35.280022>,  <36.695141, 39.486935, 34.658703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765263, 39.711792, 35.280022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104218, 39.872444, 35.141098>,  <37.307590, 39.968838, 35.057743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104218, 39.872444, 35.141098>,  <36.765263, 39.711792, 35.280022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104218, 39.872444, 35.141098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004054, 0.658970, 0.752158,
		0.530954, -0.635964, 0.560033,
		0.847391, 0.401632, -0.347305,
		37.358433, 39.992935, 35.036907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193195, 39.808907, 35.791233>,  <36.765263, 39.711792, 35.280022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193195, 39.808907, 35.791233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368923, 40.065037, 35.539207>,  <37.474361, 40.218716, 35.387993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368923, 40.065037, 35.539207>,  <37.193195, 39.808907, 35.791233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368923, 40.065037, 35.539207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059951, 0.720703, 0.690646,
		0.896328, -0.265642, 0.355008,
		0.439320, 0.640329, -0.630061,
		37.500721, 40.257133, 35.350189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492676, 40.249683, 36.251202>,  <37.193195, 39.808907, 35.791233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492676, 40.249683, 36.251202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493477, 40.448486, 35.904102>,  <37.493958, 40.567768, 35.695843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493477, 40.448486, 35.904102>,  <37.492676, 40.249683, 36.251202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493477, 40.448486, 35.904102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272049, 0.835290, 0.477787,
		0.962281, 0.235112, 0.136883,
		0.002004, 0.497004, -0.867746,
		37.494080, 40.597588, 35.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889591, 40.924164, 36.375206>,  <37.492676, 40.249683, 36.251202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889591, 40.924164, 36.375206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664581, 40.999733, 36.053242>,  <37.529575, 41.045074, 35.860065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664581, 40.999733, 36.053242>,  <37.889591, 40.924164, 36.375206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664581, 40.999733, 36.053242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341044, 0.833834, 0.434061,
		0.753165, 0.518678, -0.404618,
		-0.562523, 0.188927, -0.804907,
		37.495823, 41.056412, 35.811771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002110, 41.543831, 36.061089>,  <37.889591, 40.924164, 36.375206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002110, 41.543831, 36.061089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616840, 41.461533, 35.991844>,  <37.385677, 41.412155, 35.950298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616840, 41.461533, 35.991844>,  <38.002110, 41.543831, 36.061089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616840, 41.461533, 35.991844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268628, 0.764411, 0.586102,
		0.011740, 0.611019, -0.791529,
		-0.963173, -0.205746, -0.173111,
		37.327888, 41.399807, 35.939911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664932, 42.176914, 35.963978>,  <38.002110, 41.543831, 36.061089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664932, 42.176914, 35.963978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339779, 41.947517, 36.004623>,  <37.144688, 41.809879, 36.029011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339779, 41.947517, 36.004623>,  <37.664932, 42.176914, 35.963978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339779, 41.947517, 36.004623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369949, 0.643163, 0.670432,
		-0.449843, 0.507391, -0.734980,
		-0.812883, -0.573494, 0.101613,
		37.095913, 41.775471, 36.035107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009132, 42.615181, 35.908043>,  <37.664932, 42.176914, 35.963978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009132, 42.615181, 35.908043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928032, 42.277466, 36.106464>,  <36.879372, 42.074837, 36.225517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928032, 42.277466, 36.106464>,  <37.009132, 42.615181, 35.908043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928032, 42.277466, 36.106464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254515, 0.534601, 0.805869,
		-0.945576, 0.037136, -0.323274,
		-0.202749, -0.844289, 0.496054,
		36.867207, 42.024178, 36.255280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416328, 42.822002, 36.306927>,  <37.009132, 42.615181, 35.908043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416328, 42.822002, 36.306927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541542, 42.483360, 36.479095>,  <36.616669, 42.280174, 36.582397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541542, 42.483360, 36.479095>,  <36.416328, 42.822002, 36.306927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541542, 42.483360, 36.479095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249906, 0.363806, 0.897325,
		-0.916275, -0.388454, -0.097691,
		0.313029, -0.846610, 0.430423,
		36.635452, 42.229378, 36.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836384, 42.598026, 36.850769>,  <36.416328, 42.822002, 36.306927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836384, 42.598026, 36.850769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165100, 42.402004, 36.967049>,  <36.362331, 42.284389, 37.036816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165100, 42.402004, 36.967049>,  <35.836384, 42.598026, 36.850769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165100, 42.402004, 36.967049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179304, 0.261846, 0.948307,
		-0.540842, -0.831433, 0.127313,
		0.821791, -0.490057, 0.290696,
		36.411636, 42.254986, 37.054256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641464, 42.183022, 37.453228>,  <35.836384, 42.598026, 36.850769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641464, 42.183022, 37.453228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035702, 42.249626, 37.465080>,  <36.272243, 42.289589, 37.472191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035702, 42.249626, 37.465080>,  <35.641464, 42.183022, 37.453228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035702, 42.249626, 37.465080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058681, 0.172362, 0.983284,
		0.158608, -0.970860, 0.179650,
		0.985596, 0.166499, 0.029633,
		36.331379, 42.299580, 37.473969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201290, 41.695599, 37.776428>,  <35.641464, 42.183022, 37.453228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201290, 41.695599, 37.776428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971626, 41.451557, 37.994827>,  <34.833828, 41.305134, 38.125866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971626, 41.451557, 37.994827>,  <35.201290, 41.695599, 37.776428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971626, 41.451557, 37.994827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590688, -0.153104, -0.792242,
		0.566944, -0.777388, -0.272475,
		-0.574162, -0.610105, 0.545995,
		34.799377, 41.268524, 38.158627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070389, 41.239632, 37.294579>,  <35.201290, 41.695599, 37.776428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070389, 41.239632, 37.294579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793667, 41.175140, 37.576118>,  <34.627632, 41.136444, 37.745041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793667, 41.175140, 37.576118>,  <35.070389, 41.239632, 37.294579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793667, 41.175140, 37.576118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602930, -0.407393, -0.685934,
		0.397337, -0.898908, 0.184627,
		-0.691808, -0.161230, 0.703852,
		34.586124, 41.126770, 37.787273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929710, 40.442455, 37.231373>,  <35.070389, 41.239632, 37.294579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929710, 40.442455, 37.231373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625645, 40.650299, 37.387405>,  <34.443207, 40.775005, 37.481026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625645, 40.650299, 37.387405>,  <34.929710, 40.442455, 37.231373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625645, 40.650299, 37.387405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633817, -0.460966, -0.621117,
		-0.142921, -0.719390, 0.679744,
		-0.760164, 0.519604, 0.390080,
		34.397594, 40.806179, 37.504429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346851, 39.988495, 37.164761>,  <34.929710, 40.442455, 37.231373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346851, 39.988495, 37.164761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201614, 40.355965, 37.226982>,  <34.114471, 40.576447, 37.264317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201614, 40.355965, 37.226982>,  <34.346851, 39.988495, 37.164761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201614, 40.355965, 37.226982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778398, -0.207314, -0.592552,
		-0.512115, -0.336235, 0.790370,
		-0.363091, 0.918676, 0.155556,
		34.092686, 40.631569, 37.273647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703720, 39.932663, 37.247734>,  <34.346851, 39.988495, 37.164761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703720, 39.932663, 37.247734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744404, 40.320454, 37.158493>,  <33.768814, 40.553127, 37.104946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744404, 40.320454, 37.158493>,  <33.703720, 39.932663, 37.247734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744404, 40.320454, 37.158493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846505, -0.033468, -0.531327,
		-0.522575, 0.242899, 0.817261,
		0.101706, 0.969474, -0.223105,
		33.774914, 40.611298, 37.091560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050014, 40.333965, 37.393337>,  <33.703720, 39.932663, 37.247734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050014, 40.333965, 37.393337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246143, 40.573551, 37.140095>,  <33.363819, 40.717304, 36.988148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246143, 40.573551, 37.140095>,  <33.050014, 40.333965, 37.393337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246143, 40.573551, 37.140095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807326, 0.038469, -0.588850,
		-0.328346, 0.799851, 0.502422,
		0.490320, 0.598965, -0.633109,
		33.393238, 40.753242, 36.950161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500233, 40.854584, 37.151646>,  <33.050014, 40.333965, 37.393337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500233, 40.854584, 37.151646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800438, 40.839043, 36.887764>,  <32.980560, 40.829720, 36.729435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800438, 40.839043, 36.887764>,  <32.500233, 40.854584, 37.151646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800438, 40.839043, 36.887764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657693, -0.141382, -0.739900,
		-0.064526, 0.989193, -0.131660,
		0.750518, -0.038849, -0.659708,
		33.025593, 40.827389, 36.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275436, 41.246178, 36.578556>,  <32.500233, 40.854584, 37.151646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275436, 41.246178, 36.578556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572254, 41.022144, 36.431217>,  <32.750347, 40.887726, 36.342815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572254, 41.022144, 36.431217>,  <32.275436, 41.246178, 36.578556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572254, 41.022144, 36.431217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546795, -0.187842, -0.815924,
		0.387791, 0.806863, -0.445636,
		0.742047, -0.560079, -0.368345,
		32.794868, 40.854122, 36.320713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318558, 41.397945, 35.857468>,  <32.275436, 41.246178, 36.578556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318558, 41.397945, 35.857468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488213, 41.040215, 35.914433>,  <32.590004, 40.825577, 35.948612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488213, 41.040215, 35.914433>,  <32.318558, 41.397945, 35.857468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488213, 41.040215, 35.914433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421282, -0.334057, -0.843165,
		0.801643, 0.297619, -0.518451,
		0.424134, -0.894332, 0.142413,
		32.615452, 40.771915, 35.957157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411961, 41.195713, 35.142639>,  <32.318558, 41.397945, 35.857468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411961, 41.195713, 35.142639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440945, 40.852318, 35.345715>,  <32.458336, 40.646282, 35.467560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440945, 40.852318, 35.345715>,  <32.411961, 41.195713, 35.142639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440945, 40.852318, 35.345715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310630, -0.503134, -0.806452,
		0.947765, -0.099265, -0.303131,
		0.072463, -0.858489, 0.507687,
		32.462685, 40.594772, 35.498020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837532, 40.682774, 34.678947>,  <32.411961, 41.195713, 35.142639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837532, 40.682774, 34.678947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623730, 40.487103, 34.954628>,  <32.495449, 40.369698, 35.120037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623730, 40.487103, 34.954628>,  <32.837532, 40.682774, 34.678947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623730, 40.487103, 34.954628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448869, -0.526641, -0.721918,
		0.716112, -0.695234, 0.061916,
		-0.534510, -0.489182, 0.689203,
		32.463375, 40.340347, 35.161388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812939, 40.019932, 34.339272>,  <32.837532, 40.682774, 34.678947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812939, 40.019932, 34.339272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535980, 40.037792, 34.627323>,  <32.369804, 40.048508, 34.800156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535980, 40.037792, 34.627323>,  <32.812939, 40.019932, 34.339272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535980, 40.037792, 34.627323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606129, -0.577423, -0.546984,
		0.391398, -0.815224, 0.426870,
		-0.692398, 0.044650, 0.720133,
		32.328262, 40.051186, 34.843365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630173, 39.311256, 34.516590>,  <32.812939, 40.019932, 34.339272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630173, 39.311256, 34.516590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333622, 39.546532, 34.645832>,  <32.155693, 39.687695, 34.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333622, 39.546532, 34.645832>,  <32.630173, 39.311256, 34.516590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333622, 39.546532, 34.645832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670560, -0.630155, -0.391476,
		-0.026653, -0.506894, 0.861596,
		-0.741376, 0.588186, 0.323107,
		32.111210, 39.722988, 34.742764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263805, 38.899212, 35.010674>,  <32.630173, 39.311256, 34.516590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263805, 38.899212, 35.010674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044598, 39.180485, 34.829475>,  <31.913073, 39.349247, 34.720757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044598, 39.180485, 34.829475>,  <32.263805, 38.899212, 35.010674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044598, 39.180485, 34.829475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574366, -0.710049, -0.407350,
		-0.608089, 0.036947, 0.793008,
		-0.548024, 0.703183, -0.452994,
		31.880190, 39.391441, 34.693577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772869, 38.321388, 34.862366>,  <32.263805, 38.899212, 35.010674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772869, 38.321388, 34.862366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518978, 38.076405, 35.050838>,  <32.366642, 37.929417, 35.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518978, 38.076405, 35.050838>,  <32.772869, 38.321388, 34.862366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518978, 38.076405, 35.050838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659181, -0.110962, 0.743752,
		-0.403234, 0.782677, 0.474151,
		-0.634731, -0.612457, 0.471182,
		32.328560, 37.892666, 35.192192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714943, 38.441299, 35.526299>,  <32.772869, 38.321388, 34.862366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714943, 38.441299, 35.526299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636253, 38.049519, 35.508533>,  <32.589039, 37.814449, 35.497875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636253, 38.049519, 35.508533>,  <32.714943, 38.441299, 35.526299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636253, 38.049519, 35.508533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472913, -0.134470, 0.870788,
		-0.858868, 0.150299, 0.489649,
		-0.196722, -0.979453, -0.044414,
		32.577236, 37.755684, 35.495209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476948, 38.268963, 36.210068>,  <32.714943, 38.441299, 35.526299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476948, 38.268963, 36.210068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664909, 37.955776, 36.047020>,  <32.777687, 37.767864, 35.949192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664909, 37.955776, 36.047020>,  <32.476948, 38.268963, 36.210068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664909, 37.955776, 36.047020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306054, -0.288624, 0.907209,
		-0.827960, -0.551059, 0.104002,
		0.469908, -0.782962, -0.407622,
		32.805882, 37.720886, 35.924732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287167, 37.503944, 36.467258>,  <32.476948, 38.268963, 36.210068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287167, 37.503944, 36.467258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665329, 37.495632, 36.337162>,  <32.892227, 37.490646, 36.259106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665329, 37.495632, 36.337162>,  <32.287167, 37.503944, 36.467258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665329, 37.495632, 36.337162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283063, -0.442236, 0.851059,
		-0.161514, -0.896658, -0.412211,
		0.945404, -0.020776, -0.325238,
		32.948952, 37.489399, 36.239590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632500, 36.728977, 36.554092>,  <32.287167, 37.503944, 36.467258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632500, 36.728977, 36.554092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903915, 37.022076, 36.533463>,  <33.066765, 37.197937, 36.521084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903915, 37.022076, 36.533463>,  <32.632500, 36.728977, 36.554092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903915, 37.022076, 36.533463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285082, -0.197980, 0.937834,
		0.676986, -0.651062, -0.343231,
		0.678541, 0.732749, -0.051576,
		33.107479, 37.241901, 36.517990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153412, 36.385777, 36.968197>,  <32.632500, 36.728977, 36.554092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153412, 36.385777, 36.968197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258282, 36.770874, 36.941685>,  <33.321205, 37.001930, 36.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258282, 36.770874, 36.941685>,  <33.153412, 36.385777, 36.968197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258282, 36.770874, 36.941685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491720, -0.074176, 0.867588,
		0.830346, -0.260055, -0.492846,
		0.262177, 0.962740, -0.066282,
		33.336933, 37.059696, 36.921799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940441, 36.413689, 37.074486>,  <33.153412, 36.385777, 36.968197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940441, 36.413689, 37.074486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771244, 36.763203, 37.170464>,  <33.669727, 36.972912, 37.228050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771244, 36.763203, 37.170464>,  <33.940441, 36.413689, 37.074486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771244, 36.763203, 37.170464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334529, -0.095509, 0.937533,
		0.842121, 0.476839, -0.251907,
		-0.422993, 0.873787, 0.239946,
		33.644348, 37.025337, 37.242447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401333, 36.713299, 37.425709>,  <33.940441, 36.413689, 37.074486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401333, 36.713299, 37.425709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084332, 36.936321, 37.524563>,  <33.894131, 37.070133, 37.583874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084332, 36.936321, 37.524563>,  <34.401333, 36.713299, 37.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084332, 36.936321, 37.524563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314398, 0.026277, 0.948927,
		0.522583, 0.829726, -0.196118,
		-0.792503, 0.557552, 0.247132,
		33.846581, 37.103588, 37.598701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661228, 37.148449, 37.898228>,  <34.401333, 36.713299, 37.425709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661228, 37.148449, 37.898228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264935, 37.150661, 37.952515>,  <34.027161, 37.151989, 37.985088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264935, 37.150661, 37.952515>,  <34.661228, 37.148449, 37.898228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264935, 37.150661, 37.952515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135784, 0.014115, 0.990638,
		0.003564, 0.999885, -0.014735,
		-0.990732, 0.005532, 0.135718,
		33.967716, 37.152321, 37.993229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468807, 37.800560, 38.314522>,  <34.661228, 37.148449, 37.898228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468807, 37.800560, 38.314522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156006, 37.554955, 38.357330>,  <33.968327, 37.407589, 38.383015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156006, 37.554955, 38.357330>,  <34.468807, 37.800560, 38.314522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156006, 37.554955, 38.357330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039886, 0.122049, 0.991722,
		-0.621996, 0.779799, -0.070952,
		-0.782004, -0.614017, 0.107017,
		33.921406, 37.370750, 38.389435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071335, 38.077263, 38.930847>,  <34.468807, 37.800560, 38.314522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071335, 38.077263, 38.930847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933548, 37.703400, 38.895630>,  <33.850876, 37.479080, 38.874500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933548, 37.703400, 38.895630>,  <34.071335, 38.077263, 38.930847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933548, 37.703400, 38.895630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100886, -0.130089, 0.986356,
		-0.933362, 0.330886, 0.139105,
		-0.344467, -0.934661, -0.088039,
		33.830208, 37.423000, 38.869217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521744, 37.998959, 39.375938>,  <34.071335, 38.077263, 38.930847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521744, 37.998959, 39.375938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633007, 37.619648, 39.314758>,  <33.699764, 37.392059, 39.278049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633007, 37.619648, 39.314758>,  <33.521744, 37.998959, 39.375938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633007, 37.619648, 39.314758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129690, -0.120699, 0.984181,
		-0.951741, -0.293591, 0.089409,
		0.278155, -0.948281, -0.152950,
		33.716454, 37.335163, 39.268875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271187, 37.624687, 39.917316>,  <33.521744, 37.998959, 39.375938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271187, 37.624687, 39.917316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579071, 37.402241, 39.791924>,  <33.763802, 37.268772, 39.716686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579071, 37.402241, 39.791924>,  <33.271187, 37.624687, 39.917316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579071, 37.402241, 39.791924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312819, -0.099499, 0.944587,
		-0.556494, -0.825125, 0.097379,
		0.769713, -0.556119, -0.313485,
		33.809986, 37.235405, 39.697876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221111, 37.092209, 40.297935>,  <33.271187, 37.624687, 39.917316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221111, 37.092209, 40.297935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602959, 37.073868, 40.180222>,  <33.832066, 37.062862, 40.109592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602959, 37.073868, 40.180222>,  <33.221111, 37.092209, 40.297935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602959, 37.073868, 40.180222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293729, -0.018542, 0.955709,
		-0.049289, -0.998776, -0.004229,
		0.954617, -0.045864, -0.294283,
		33.889343, 37.060112, 40.091938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423435, 36.695946, 40.758743>,  <33.221111, 37.092209, 40.297935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423435, 36.695946, 40.758743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758766, 36.845047, 40.599613>,  <33.959965, 36.934505, 40.504135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758766, 36.845047, 40.599613>,  <33.423435, 36.695946, 40.758743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758766, 36.845047, 40.599613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452948, -0.070121, 0.888775,
		0.303396, -0.925278, -0.227621,
		0.838325, 0.372751, -0.397829,
		34.010265, 36.956871, 40.480263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940186, 36.207832, 40.779823>,  <33.423435, 36.695946, 40.758743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940186, 36.207832, 40.779823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120461, 36.563416, 40.747250>,  <34.228626, 36.776768, 40.727707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120461, 36.563416, 40.747250>,  <33.940186, 36.207832, 40.779823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120461, 36.563416, 40.747250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399131, -0.119069, 0.909130,
		0.798484, -0.442235, -0.408474,
		0.450686, 0.888960, -0.081435,
		34.255665, 36.830105, 40.722820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681992, 36.111885, 40.962849>,  <33.940186, 36.207832, 40.779823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681992, 36.111885, 40.962849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611851, 36.504566, 40.992519>,  <34.569767, 36.740177, 41.010323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611851, 36.504566, 40.992519>,  <34.681992, 36.111885, 40.962849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611851, 36.504566, 40.992519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548549, 0.034865, 0.835391,
		0.817523, 0.187177, -0.544628,
		-0.175355, 0.981707, 0.074173,
		34.559246, 36.799080, 41.014771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311340, 36.409138, 41.235176>,  <34.681992, 36.111885, 40.962849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311340, 36.409138, 41.235176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070286, 36.719898, 41.308121>,  <34.925652, 36.906353, 41.351887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070286, 36.719898, 41.308121>,  <35.311340, 36.409138, 41.235176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070286, 36.719898, 41.308121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491520, 0.181334, 0.851778,
		0.628680, 0.602945, -0.491140,
		-0.602636, 0.776901, 0.182359,
		34.889496, 36.952969, 41.362827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755802, 37.064407, 41.262600>,  <35.311340, 36.409138, 41.235176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755802, 37.064407, 41.262600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412735, 37.122196, 41.459999>,  <35.206894, 37.156872, 41.578438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412735, 37.122196, 41.459999>,  <35.755802, 37.064407, 41.262600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412735, 37.122196, 41.459999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506713, 0.400762, 0.763303,
		-0.087497, 0.904719, -0.416927,
		-0.857663, 0.144476, 0.493498,
		35.155437, 37.165539, 41.608047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821548, 37.729691, 41.488506>,  <35.755802, 37.064407, 41.262600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821548, 37.729691, 41.488506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538860, 37.582176, 41.730019>,  <35.369247, 37.493668, 41.874924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538860, 37.582176, 41.730019>,  <35.821548, 37.729691, 41.488506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538860, 37.582176, 41.730019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422219, 0.464933, 0.778183,
		-0.567695, 0.804884, -0.172871,
		-0.706720, -0.368781, 0.603778,
		35.326843, 37.471542, 41.911152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500301, 38.347958, 41.864273>,  <35.821548, 37.729691, 41.488506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500301, 38.347958, 41.864273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436489, 38.024220, 42.090374>,  <35.398201, 37.829975, 42.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436489, 38.024220, 42.090374>,  <35.500301, 38.347958, 41.864273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436489, 38.024220, 42.090374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253808, 0.519709, 0.815772,
		-0.954008, 0.273607, 0.122508,
		-0.159532, -0.809346, 0.565250,
		35.388630, 37.781414, 42.259949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944771, 38.541233, 42.367916>,  <35.500301, 38.347958, 41.864273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944771, 38.541233, 42.367916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122288, 38.221077, 42.529125>,  <35.228798, 38.028984, 42.625851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122288, 38.221077, 42.529125>,  <34.944771, 38.541233, 42.367916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122288, 38.221077, 42.529125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075214, 0.481422, 0.873256,
		-0.892969, -0.357230, 0.273851,
		0.443791, -0.800387, 0.403026,
		35.255424, 37.980961, 42.650032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655544, 38.566784, 43.034336>,  <34.944771, 38.541233, 42.367916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655544, 38.566784, 43.034336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970066, 38.325485, 43.087738>,  <35.158779, 38.180706, 43.119778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970066, 38.325485, 43.087738>,  <34.655544, 38.566784, 43.034336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970066, 38.325485, 43.087738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136662, 0.380542, 0.914610,
		-0.602542, -0.700912, 0.381662,
		0.786300, -0.603249, 0.133504,
		35.205956, 38.144512, 43.127789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590405, 38.269680, 43.671734>,  <34.655544, 38.566784, 43.034336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590405, 38.269680, 43.671734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980179, 38.221428, 43.595921>,  <35.214043, 38.192478, 43.550434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980179, 38.221428, 43.595921>,  <34.590405, 38.269680, 43.671734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980179, 38.221428, 43.595921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193997, 0.026288, 0.980650,
		-0.113312, -0.992350, 0.049017,
		0.974436, -0.120628, -0.189534,
		35.272511, 38.185242, 43.539059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842258, 37.796661, 44.149384>,  <34.590405, 38.269680, 43.671734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842258, 37.796661, 44.149384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163174, 38.002541, 44.028439>,  <35.355724, 38.126068, 43.955872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163174, 38.002541, 44.028439>,  <34.842258, 37.796661, 44.149384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163174, 38.002541, 44.028439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194574, 0.253375, 0.947598,
		0.564337, -0.819077, 0.103132,
		0.802287, 0.514698, -0.302360,
		35.403858, 38.156948, 43.937729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393379, 37.500046, 44.549000>,  <34.842258, 37.796661, 44.149384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393379, 37.500046, 44.549000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561604, 37.837151, 44.414608>,  <35.662540, 38.039413, 44.333973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561604, 37.837151, 44.414608>,  <35.393379, 37.500046, 44.549000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561604, 37.837151, 44.414608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388905, 0.167113, 0.905995,
		0.819683, -0.511691, -0.257473,
		0.420562, 0.842761, -0.335978,
		35.687771, 38.089977, 44.313816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010647, 37.473404, 44.975956>,  <35.393379, 37.500046, 44.549000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010647, 37.473404, 44.975956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952126, 37.835842, 44.817169>,  <35.917015, 38.053307, 44.721897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952126, 37.835842, 44.817169>,  <36.010647, 37.473404, 44.975956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952126, 37.835842, 44.817169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338075, 0.422920, 0.840741,
		0.929679, -0.011205, -0.368201,
		-0.146299, 0.906098, -0.396967,
		35.908237, 38.107670, 44.698078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569187, 37.881844, 45.124569>,  <36.010647, 37.473404, 44.975956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569187, 37.881844, 45.124569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284672, 38.154392, 45.055511>,  <36.113964, 38.317921, 45.014076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284672, 38.154392, 45.055511>,  <36.569187, 37.881844, 45.124569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284672, 38.154392, 45.055511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252475, 0.476886, 0.841924,
		0.655995, 0.555260, -0.511232,
		-0.711286, 0.681371, -0.172645,
		36.071285, 38.358803, 45.003719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004173, 37.919735, 44.565357>,  <36.569187, 37.881844, 45.124569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004173, 37.919735, 44.565357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398628, 37.976837, 44.531544>,  <37.635303, 38.011097, 44.511257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398628, 37.976837, 44.531544>,  <37.004173, 37.919735, 44.565357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398628, 37.976837, 44.531544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068367, -0.114585, -0.991058,
		-0.151162, 0.983103, -0.103237,
		0.986142, 0.142753, -0.084532,
		37.694469, 38.019665, 44.506184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041855, 38.293125, 43.945457>,  <37.004173, 37.919735, 44.565357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041855, 38.293125, 43.945457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392529, 38.110603, 44.006390>,  <37.602936, 38.001091, 44.042950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392529, 38.110603, 44.006390>,  <37.041855, 38.293125, 43.945457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392529, 38.110603, 44.006390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172337, 0.002267, -0.985036,
		0.449129, 0.889822, 0.080625,
		0.876689, -0.456302, 0.152331,
		37.655537, 37.973713, 44.052090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448368, 38.528061, 43.418671>,  <37.041855, 38.293125, 43.945457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448368, 38.528061, 43.418671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670174, 38.216183, 43.535004>,  <37.803257, 38.029057, 43.604805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670174, 38.216183, 43.535004>,  <37.448368, 38.528061, 43.418671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670174, 38.216183, 43.535004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033853, -0.328062, -0.944050,
		0.831483, 0.533338, -0.155521,
		0.554518, -0.779696, 0.290832,
		37.836529, 37.982273, 43.622253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021675, 38.472954, 42.940475>,  <37.448368, 38.528061, 43.418671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021675, 38.472954, 42.940475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964813, 38.106155, 43.089561>,  <37.930695, 37.886078, 43.179012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964813, 38.106155, 43.089561>,  <38.021675, 38.472954, 42.940475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964813, 38.106155, 43.089561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047351, -0.382404, -0.922781,
		0.988711, -0.113532, 0.097783,
		-0.142158, -0.916994, 0.372711,
		37.922165, 37.831059, 43.201374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577999, 38.100094, 42.702072>,  <38.021675, 38.472954, 42.940475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577999, 38.100094, 42.702072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295330, 37.830864, 42.789326>,  <38.125729, 37.669327, 42.841679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295330, 37.830864, 42.789326>,  <38.577999, 38.100094, 42.702072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295330, 37.830864, 42.789326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138921, -0.434288, -0.889997,
		0.693767, -0.598634, 0.400404,
		-0.706674, -0.673075, 0.218132,
		38.083328, 37.628941, 42.854767>
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
