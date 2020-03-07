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
	<3.425644, 0.092134, 2.532868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.464615, 0.416039, 2.301422>,  <3.487998, 0.610381, 2.162555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.464615, 0.416039, 2.301422>,  <3.425644, 0.092134, 2.532868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.464615, 0.416039, 2.301422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977162, 0.032484, 0.209997,
		0.188843, -0.585859, -0.788104,
		0.097428, 0.809762, -0.578614,
		3.493843, 0.658967, 2.127838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.807644, 0.001092, 1.884167>,  <3.425644, 0.092134, 2.532868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.807644, 0.001092, 1.884167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.827728, 0.386127, 1.990677>,  <3.839778, 0.617149, 2.054583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.827728, 0.386127, 1.990677>,  <3.807644, 0.001092, 1.884167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.827728, 0.386127, 1.990677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998334, -0.040779, -0.040830,
		-0.028444, 0.267880, -0.963032,
		0.050209, 0.962589, 0.266274,
		3.842791, 0.674904, 2.070559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.333483, 0.276237, 1.425005>,  <3.807644, 0.001092, 1.884167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.333483, 0.276237, 1.425005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.279685, 0.549393, 1.712219>,  <4.247406, 0.713286, 1.884548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.279685, 0.549393, 1.712219>,  <4.333483, 0.276237, 1.425005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.279685, 0.549393, 1.712219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981670, 0.190572, 0.002633,
		-0.135040, 0.705227, -0.696002,
		-0.134495, 0.682889, 0.718035,
		4.239336, 0.754259, 1.927630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.724082, 0.789824, 1.231750>,  <4.333483, 0.276237, 1.425005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.724082, 0.789824, 1.231750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.699348, 0.822769, 1.629623>,  <4.684508, 0.842537, 1.868347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.699348, 0.822769, 1.629623>,  <4.724082, 0.789824, 1.231750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.699348, 0.822769, 1.629623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976465, 0.211302, 0.043205,
		-0.206620, 0.973944, -0.093490,
		-0.061834, 0.082363, 0.994682,
		4.680798, 0.847478, 1.928028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.959612, 1.362982, 1.360010>,  <4.724082, 0.789824, 1.231750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.959612, 1.362982, 1.360010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.014089, 1.164505, 1.702995>,  <5.046775, 1.045419, 1.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.014089, 1.164505, 1.702995>,  <4.959612, 1.362982, 1.360010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.014089, 1.164505, 1.702995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954462, 0.297618, 0.020626,
		-0.265431, 0.815608, 0.514130,
		0.136192, -0.496192, 0.857464,
		5.054946, 1.015647, 1.960235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.267019, 1.867336, 1.785587>,  <4.959612, 1.362982, 1.360010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.267019, 1.867336, 1.785587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.338904, 1.497650, 1.920364>,  <5.382035, 1.275839, 2.001231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.338904, 1.497650, 1.920364>,  <5.267019, 1.867336, 1.785587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.338904, 1.497650, 1.920364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967982, 0.227163, 0.106808,
		-0.175255, 0.306960, 0.935447,
		0.179713, -0.924214, 0.336943,
		5.392818, 1.220386, 2.021447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.730394, 1.941538, 2.314939>,  <5.267019, 1.867336, 1.785587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.730394, 1.941538, 2.314939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.787169, 1.558250, 2.215607>,  <5.821235, 1.328278, 2.156007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.787169, 1.558250, 2.215607>,  <5.730394, 1.941538, 2.314939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.787169, 1.558250, 2.215607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989820, 0.140062, 0.025304,
		0.010535, -0.249395, 0.968345,
		0.141939, -0.958220, -0.248332,
		5.829751, 1.270784, 2.141107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.295853, 1.590984, 2.783360>,  <5.730394, 1.941538, 2.314939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.295853, 1.590984, 2.783360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.273721, 1.423424, 2.420822>,  <6.260442, 1.322888, 2.203299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.273721, 1.423424, 2.420822>,  <6.295853, 1.590984, 2.783360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.273721, 1.423424, 2.420822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995494, 0.046866, -0.082433,
		0.077008, -0.906822, 0.414420,
		-0.055329, -0.418900, -0.906345,
		6.257123, 1.297754, 2.148919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.294627, 1.662907, 2.367243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.418530, 1.310143, 2.225098>,  <2.492871, 1.098484, 2.139811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.418530, 1.310143, 2.225098>,  <2.294627, 1.662907, 2.367243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.418530, 1.310143, 2.225098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949323, -0.265924, -0.167542,
		0.053257, 0.389251, -0.919591,
		0.309757, -0.881912, -0.355363,
		2.511457, 1.045569, 2.118489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075621, 1.573375, 1.585521>,  <2.294627, 1.662907, 2.367243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075621, 1.573375, 1.585521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.110920, 1.276630, 1.851410>,  <2.132099, 1.098584, 2.010943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.110920, 1.276630, 1.851410>,  <2.075621, 1.573375, 1.585521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.110920, 1.276630, 1.851410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958787, -0.244195, -0.145246,
		0.270074, -0.624510, -0.732836,
		0.088247, -0.741861, 0.664722,
		2.137394, 1.054072, 2.050827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.824391, 0.952603, 1.327145>,  <2.075621, 1.573375, 1.585521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.824391, 0.952603, 1.327145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.758240, 0.920132, 1.720299>,  <1.718549, 0.900649, 1.956191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.758240, 0.920132, 1.720299>,  <1.824391, 0.952603, 1.327145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.758240, 0.920132, 1.720299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967575, -0.179571, -0.177633,
		0.190918, -0.980389, -0.048855,
		-0.165376, -0.081184, 0.982884,
		1.708627, 0.895778, 2.015164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.386669, 0.375905, 1.459011>,  <1.824391, 0.952603, 1.327145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.386669, 0.375905, 1.459011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.323772, 0.630272, 1.761238>,  <1.286035, 0.782892, 1.942575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.323772, 0.630272, 1.761238>,  <1.386669, 0.375905, 1.459011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.323772, 0.630272, 1.761238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972813, -0.231468, -0.007637,
		0.170033, -0.736228, 0.655025,
		-0.157240, 0.635918, 0.755569,
		1.276600, 0.821047, 1.987909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.957708, 0.049239, 1.815067>,  <1.386669, 0.375905, 1.459011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.957708, 0.049239, 1.815067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.929996, 0.424553, 1.950607>,  <0.913370, 0.649742, 2.031932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.929996, 0.424553, 1.950607>,  <0.957708, 0.049239, 1.815067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.929996, 0.424553, 1.950607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995138, -0.088836, 0.042534,
		0.070011, -0.334257, 0.939878,
		-0.069278, 0.938286, 0.338851,
		0.909213, 0.706039, 2.052263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.553040, 0.012776, 2.397548>,  <0.957708, 0.049239, 1.815067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.553040, 0.012776, 2.397548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525787, 0.397316, 2.290840>,  <0.509436, 0.628040, 2.226815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.525787, 0.397316, 2.290840>,  <0.553040, 0.012776, 2.397548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.525787, 0.397316, 2.290840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966170, 0.003090, 0.257888,
		0.248745, 0.275315, 0.928616,
		-0.068131, 0.961349, -0.266769,
		0.505348, 0.685721, 2.210809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.347005, 0.391265, 2.995865>,  <0.553040, 0.012776, 2.397548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.347005, 0.391265, 2.995865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.233776, 0.577721, 2.660583>,  <0.165839, 0.689594, 2.459415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.233776, 0.577721, 2.660583>,  <0.347005, 0.391265, 2.995865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.233776, 0.577721, 2.660583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959092, -0.134278, 0.249224,
		0.003621, 0.874462, 0.485080,
		-0.283072, 0.466139, -0.838203,
		0.148854, 0.717562, 2.409122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.201409, 0.805958, 3.236314>,  <0.347005, 0.391265, 2.995865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.201409, 0.805958, 3.236314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.264038, 0.772591, 2.842659>,  <-0.301616, 0.752570, 2.606466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.264038, 0.772591, 2.842659>,  <-0.201409, 0.805958, 3.236314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.264038, 0.772591, 2.842659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987466, -0.006860, 0.157685,
		-0.019905, 0.996491, -0.081299,
		-0.156574, -0.083419, -0.984137,
		-0.311010, 0.747565, 2.547418>
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
