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
	<0.447700, 1.430360, 2.809025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.271652, 1.074738, 2.758629>,  <0.166023, 0.861364, 2.728391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.271652, 1.074738, 2.758629>,  <0.447700, 1.430360, 2.809025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.271652, 1.074738, 2.758629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890425, 0.414006, 0.189058,
		-0.115923, 0.195394, -0.973850,
		-0.440121, -0.889056, -0.125991,
		0.139616, 0.808021, 2.720832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.563848, 1.267476, 2.116201>,  <0.447700, 1.430360, 2.809025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.563848, 1.267476, 2.116201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.778946, 0.932144, 2.152054>,  <0.908005, 0.730945, 2.173565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.778946, 0.932144, 2.152054>,  <0.563848, 1.267476, 2.116201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.778946, 0.932144, 2.152054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640033, -0.475109, -0.603846,
		0.548807, 0.267348, -0.792046,
		0.537745, -0.838330, 0.089632,
		0.940269, 0.680645, 2.178943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.814258, 0.867536, 1.425380>,  <0.563848, 1.267476, 2.116201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.814258, 0.867536, 1.425380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.781345, 0.584396, 1.706001>,  <0.761598, 0.414512, 1.874374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.781345, 0.584396, 1.706001>,  <0.814258, 0.867536, 1.425380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.781345, 0.584396, 1.706001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503621, -0.577915, -0.642169,
		0.859998, -0.406156, -0.308936,
		-0.082282, -0.707850, 0.701554,
		0.756661, 0.372041, 1.916467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.283913, 0.341253, 1.188554>,  <0.814258, 0.867536, 1.425380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.283913, 0.341253, 1.188554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.975170, 0.220627, 1.412445>,  <0.789925, 0.148251, 1.546780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.975170, 0.220627, 1.412445>,  <1.283913, 0.341253, 1.188554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.975170, 0.220627, 1.412445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375565, -0.494097, -0.784104,
		0.513019, -0.815430, 0.268114,
		-0.771857, -0.301566, 0.559728,
		0.743613, 0.130157, 1.580363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.166983, -0.426189, 1.170964>,  <1.283913, 0.341253, 1.188554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.166983, -0.426189, 1.170964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819164, -0.244858, 1.249329>,  <0.610473, -0.136059, 1.296347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819164, -0.244858, 1.249329>,  <1.166983, -0.426189, 1.170964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.819164, -0.244858, 1.249329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402113, -0.419633, -0.813765,
		-0.286689, -0.786387, 0.547179,
		-0.869549, 0.453326, 0.195912,
		0.558300, -0.108860, 1.308102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.688075, -0.984861, 1.118885>,  <1.166983, -0.426189, 1.170964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.688075, -0.984861, 1.118885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.493420, -0.637711, 1.078934>,  <0.376627, -0.429420, 1.054963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.493420, -0.637711, 1.078934>,  <0.688075, -0.984861, 1.118885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.493420, -0.637711, 1.078934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421676, -0.333480, -0.843197,
		-0.765097, -0.368215, 0.528246,
		-0.486637, 0.867876, -0.099878,
		0.347428, -0.377348, 1.048970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.046933, -1.158242, 1.074899>,  <0.688075, -0.984861, 1.118885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.046933, -1.158242, 1.074899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.085690, -0.798965, 0.903381>,  <0.108943, -0.583400, 0.800471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.085690, -0.798965, 0.903381>,  <0.046933, -1.158242, 1.074899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.085690, -0.798965, 0.903381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374358, -0.366298, -0.851870,
		-0.922208, 0.243061, 0.300754,
		0.096891, 0.898191, -0.428795,
		0.114757, -0.529508, 0.774743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.534629, -1.039666, 0.760439>,  <0.046933, -1.158242, 1.074899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.534629, -1.039666, 0.760439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.261086, -0.825394, 0.562294>,  <-0.096959, -0.696830, 0.443407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.261086, -0.825394, 0.562294>,  <-0.534629, -1.039666, 0.760439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.261086, -0.825394, 0.562294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333333, -0.374556, -0.865215,
		-0.649020, 0.756805, -0.077584,
		0.683859, 0.535680, -0.495362,
		-0.055928, -0.664690, 0.413685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.354001, 3.418338, -0.820579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.043304, 3.635681, -0.947975>,  <0.143113, 3.766087, -1.024413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.043304, 3.635681, -0.947975>,  <-0.354001, 3.418338, -0.820579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.043304, 3.635681, -0.947975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230198, 0.715619, 0.659468,
		0.586245, -0.438920, 0.680930,
		0.776741, 0.543359, -0.318489,
		0.189718, 3.798689, -1.043522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.107880, 3.631441, -0.254317>,  <-0.354001, 3.418338, -0.820579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.107880, 3.631441, -0.254317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.134583, 3.890793, -0.557671>,  <0.150604, 4.046404, -0.739683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.134583, 3.890793, -0.557671>,  <0.107880, 3.631441, -0.254317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.134583, 3.890793, -0.557671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015035, 0.760647, 0.648991,
		0.997656, -0.031923, 0.060527,
		0.066757, 0.648380, -0.758385,
		0.154610, 4.085307, -0.785186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.670946, 3.940118, -0.262899>,  <0.107880, 3.631441, -0.254317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.670946, 3.940118, -0.262899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.368382, 4.167480, -0.392365>,  <0.186843, 4.303898, -0.470044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.368382, 4.167480, -0.392365>,  <0.670946, 3.940118, -0.262899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.368382, 4.167480, -0.392365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250873, 0.709089, 0.658981,
		0.604075, 0.417261, -0.678960,
		-0.756410, 0.568407, -0.323663,
		0.141458, 4.338003, -0.489463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.900610, 4.602125, -0.348126>,  <0.670946, 3.940118, -0.262899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.900610, 4.602125, -0.348126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.511381, 4.574417, -0.260185>,  <0.277844, 4.557793, -0.207421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.511381, 4.574417, -0.260185>,  <0.900610, 4.602125, -0.348126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.511381, 4.574417, -0.260185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125226, 0.641897, 0.756496,
		-0.193523, 0.763656, -0.615937,
		-0.973071, -0.069268, 0.219851,
		0.219460, 4.553637, -0.194230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.582680, 5.277360, -0.174903>,  <0.900610, 4.602125, -0.348126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.582680, 5.277360, -0.174903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.361834, 4.999313, 0.009262>,  <0.229326, 4.832485, 0.119761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.361834, 4.999313, 0.009262>,  <0.582680, 5.277360, -0.174903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.361834, 4.999313, 0.009262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136559, 0.469359, 0.872384,
		-0.822508, 0.544531, -0.164216,
		-0.552116, -0.695118, 0.460412,
		0.196199, 4.790778, 0.147386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.242510, 5.659060, 0.272489>,  <0.582680, 5.277360, -0.174903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.242510, 5.659060, 0.272489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.170782, 5.297592, 0.428040>,  <0.127745, 5.080711, 0.521370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.170782, 5.297592, 0.428040>,  <0.242510, 5.659060, 0.272489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.170782, 5.297592, 0.428040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141320, 0.367523, 0.919215,
		-0.973588, 0.219790, 0.061802,
		-0.179320, -0.903670, 0.388877,
		0.116986, 5.026491, 0.544703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.182949, 5.786975, 0.875465>,  <0.242510, 5.659060, 0.272489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.182949, 5.786975, 0.875465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.047375, 5.415024, 0.932663>,  <0.033970, 5.191853, 0.966982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.047375, 5.415024, 0.932663>,  <-0.182949, 5.786975, 0.875465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.047375, 5.415024, 0.932663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274172, 0.243020, 0.930468,
		-0.899974, -0.276163, 0.337315,
		0.338935, -0.929879, 0.142995,
		0.054306, 5.136060, 0.975562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.524103, 5.631414, 1.503798>,  <-0.182949, 5.786975, 0.875465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.524103, 5.631414, 1.503798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.208818, 5.390518, 1.453156>,  <-0.019648, 5.245980, 1.422770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.208818, 5.390518, 1.453156>,  <-0.524103, 5.631414, 1.503798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.208818, 5.390518, 1.453156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345774, 0.263212, 0.900644,
		-0.509081, -0.753675, 0.415706,
		0.788211, -0.602241, -0.126605,
		0.027645, 5.209846, 1.415174>
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
