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
	<24.821066, 34.975086, 35.484531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502270, 35.041626, 35.252277>,  <24.310993, 35.081551, 35.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502270, 35.041626, 35.252277>,  <24.821066, 34.975086, 35.484531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502270, 35.041626, 35.252277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411477, -0.554195, -0.723571,
		-0.442149, -0.815596, 0.373239,
		-0.796989, 0.166346, -0.580636,
		24.263174, 35.091530, 35.078087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552675, 34.342663, 35.034401>,  <24.821066, 34.975086, 35.484531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552675, 34.342663, 35.034401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469303, 34.681942, 34.839622>,  <24.419281, 34.885509, 34.722755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.469303, 34.681942, 34.839622>,  <24.552675, 34.342663, 35.034401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469303, 34.681942, 34.839622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315607, -0.412915, -0.854338,
		-0.925716, -0.331752, -0.181634,
		-0.208429, 0.848199, -0.486945,
		24.406775, 34.936401, 34.693539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.159616, 34.290020, 34.384689>,  <24.552675, 34.342663, 35.034401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.159616, 34.290020, 34.384689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397268, 34.608852, 34.341484>,  <24.539860, 34.800152, 34.315563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397268, 34.608852, 34.341484>,  <24.159616, 34.290020, 34.384689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397268, 34.608852, 34.341484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264435, -0.320368, -0.909636,
		-0.759660, 0.511881, -0.401117,
		0.594131, 0.797084, -0.108012,
		24.575508, 34.847977, 34.309082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946905, 34.828537, 33.826042>,  <24.159616, 34.290020, 34.384689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946905, 34.828537, 33.826042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338102, 34.865719, 33.900761>,  <24.572821, 34.888027, 33.945591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338102, 34.865719, 33.900761>,  <23.946905, 34.828537, 33.826042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338102, 34.865719, 33.900761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203057, -0.218287, -0.954525,
		-0.047951, 0.971448, -0.232358,
		0.977992, 0.092952, 0.186792,
		24.631500, 34.893604, 33.956799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.223902, 35.107723, 33.221306>,  <23.946905, 34.828537, 33.826042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.223902, 35.107723, 33.221306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559143, 34.962116, 33.383823>,  <24.760288, 34.874752, 33.481335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559143, 34.962116, 33.383823>,  <24.223902, 35.107723, 33.221306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559143, 34.962116, 33.383823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310585, -0.293878, -0.903976,
		0.448460, 0.883815, -0.133244,
		0.838105, -0.364014, 0.406293,
		24.810575, 34.852913, 33.505711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778366, 35.217468, 32.795269>,  <24.223902, 35.107723, 33.221306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778366, 35.217468, 32.795269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898447, 34.910648, 33.022079>,  <24.970495, 34.726555, 33.158165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898447, 34.910648, 33.022079>,  <24.778366, 35.217468, 32.795269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898447, 34.910648, 33.022079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347960, -0.465418, -0.813824,
		0.888146, 0.441612, 0.127184,
		0.300200, -0.767050, 0.567023,
		24.988506, 34.680534, 33.192184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634708, 35.070412, 32.758442>,  <24.778366, 35.217468, 32.795269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634708, 35.070412, 32.758442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444029, 34.743832, 32.888779>,  <25.329620, 34.547886, 32.966980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444029, 34.743832, 32.888779>,  <25.634708, 35.070412, 32.758442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444029, 34.743832, 32.888779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253175, -0.482475, -0.838523,
		0.841819, -0.317228, 0.436700,
		-0.476700, -0.816446, 0.325843,
		25.301020, 34.498898, 32.986530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104759, 34.561893, 32.664852>,  <25.634708, 35.070412, 32.758442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104759, 34.561893, 32.664852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767872, 34.346481, 32.675068>,  <25.565739, 34.217236, 32.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767872, 34.346481, 32.675068>,  <26.104759, 34.561893, 32.664852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767872, 34.346481, 32.675068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387016, -0.636885, -0.666781,
		0.375347, -0.551691, 0.744816,
		-0.842219, -0.538530, 0.025539,
		25.515205, 34.184921, 32.682728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285400, 33.965328, 32.487736>,  <26.104759, 34.561893, 32.664852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285400, 33.965328, 32.487736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895670, 33.985901, 32.400059>,  <25.661833, 33.998245, 32.347450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895670, 33.985901, 32.400059>,  <26.285400, 33.965328, 32.487736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895670, 33.985901, 32.400059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155742, -0.549112, -0.821109,
		-0.162595, -0.834164, 0.527003,
		-0.974324, 0.051432, -0.219197,
		25.603373, 34.001331, 32.334301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027905, 33.246349, 32.452297>,  <26.285400, 33.965328, 32.487736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027905, 33.246349, 32.452297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821358, 33.503437, 32.225925>,  <25.697430, 33.657688, 32.090103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821358, 33.503437, 32.225925>,  <26.027905, 33.246349, 32.452297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821358, 33.503437, 32.225925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347214, -0.446967, -0.824417,
		-0.782819, -0.622202, 0.007640,
		-0.516369, 0.642717, -0.565932,
		25.666447, 33.696251, 32.056145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796900, 32.808651, 31.932631>,  <26.027905, 33.246349, 32.452297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796900, 32.808651, 31.932631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760939, 33.181320, 31.791832>,  <25.739363, 33.404922, 31.707354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760939, 33.181320, 31.791832>,  <25.796900, 32.808651, 31.932631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760939, 33.181320, 31.791832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224946, -0.325298, -0.918466,
		-0.970215, -0.161753, -0.180331,
		-0.089903, 0.931674, -0.351995,
		25.733967, 33.460823, 31.686234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355450, 32.757511, 31.315023>,  <25.796900, 32.808651, 31.932631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355450, 32.757511, 31.315023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574938, 33.090168, 31.280890>,  <25.706631, 33.289761, 31.260408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574938, 33.090168, 31.280890>,  <25.355450, 32.757511, 31.315023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574938, 33.090168, 31.280890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346329, -0.319036, -0.882198,
		-0.760895, 0.454526, -0.463083,
		0.548722, 0.831638, -0.085337,
		25.739553, 33.339661, 31.255289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442032, 33.092014, 30.595533>,  <25.355450, 32.757511, 31.315023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442032, 33.092014, 30.595533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780363, 33.180473, 30.789715>,  <25.983362, 33.233547, 30.906223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780363, 33.180473, 30.789715>,  <25.442032, 33.092014, 30.595533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780363, 33.180473, 30.789715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533250, -0.375665, -0.757971,
		0.014744, 0.899983, -0.435676,
		0.845829, 0.221149, 0.485454,
		26.034111, 33.246819, 30.935350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831150, 33.507332, 30.124619>,  <25.442032, 33.092014, 30.595533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831150, 33.507332, 30.124619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085087, 33.323383, 30.372972>,  <26.237450, 33.213017, 30.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085087, 33.323383, 30.372972>,  <25.831150, 33.507332, 30.124619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085087, 33.323383, 30.372972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633697, -0.149846, -0.758929,
		0.442044, 0.875253, 0.196288,
		0.634842, -0.459867, 0.620884,
		26.275539, 33.185425, 30.559238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423407, 33.926479, 30.236673>,  <25.831150, 33.507332, 30.124619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423407, 33.926479, 30.236673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454556, 33.528053, 30.253637>,  <26.473246, 33.288998, 30.263815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454556, 33.528053, 30.253637>,  <26.423407, 33.926479, 30.236673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454556, 33.528053, 30.253637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556929, 0.008179, -0.830520,
		0.826901, 0.088294, 0.555372,
		0.077872, -0.996061, 0.042410,
		26.477917, 33.229237, 30.266361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092911, 34.221413, 30.895428>,  <26.423407, 33.926479, 30.236673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092911, 34.221413, 30.895428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820084, 33.945946, 30.993834>,  <25.656387, 33.780666, 31.052877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820084, 33.945946, 30.993834>,  <26.092911, 34.221413, 30.895428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820084, 33.945946, 30.993834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275105, 0.553336, 0.786217,
		-0.677568, 0.468575, -0.566868,
		-0.682070, -0.688663, 0.246015,
		25.615463, 33.739346, 31.067638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570009, 34.574158, 31.106571>,  <26.092911, 34.221413, 30.895428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570009, 34.574158, 31.106571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580997, 34.219654, 31.291523>,  <25.587591, 34.006954, 31.402494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580997, 34.219654, 31.291523>,  <25.570009, 34.574158, 31.106571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580997, 34.219654, 31.291523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296268, 0.434553, 0.850523,
		-0.954710, -0.160354, -0.250631,
		0.027472, -0.886256, 0.462380,
		25.589239, 33.953777, 31.430237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856426, 34.479042, 31.353228>,  <25.570009, 34.574158, 31.106571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856426, 34.479042, 31.353228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091045, 34.236572, 31.568079>,  <25.231817, 34.091091, 31.696991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091045, 34.236572, 31.568079>,  <24.856426, 34.479042, 31.353228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091045, 34.236572, 31.568079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500569, 0.250036, 0.828802,
		-0.636703, -0.755004, -0.156776,
		0.586549, -0.606178, 0.537130,
		25.267010, 34.054718, 31.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.388010, 34.202137, 31.908319>,  <24.856426, 34.479042, 31.353228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.388010, 34.202137, 31.908319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760616, 34.152073, 32.044914>,  <24.984180, 34.122036, 32.126869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760616, 34.152073, 32.044914>,  <24.388010, 34.202137, 31.908319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760616, 34.152073, 32.044914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249602, 0.462912, 0.850536,
		-0.264529, -0.877524, 0.399971,
		0.931516, -0.125157, 0.341486,
		25.040071, 34.114525, 32.147362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412752, 33.612289, 32.258919>,  <24.388010, 34.202137, 31.908319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412752, 33.612289, 32.258919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797308, 33.670280, 32.352482>,  <25.028042, 33.705074, 32.408619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.797308, 33.670280, 32.352482>,  <24.412752, 33.612289, 32.258919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.797308, 33.670280, 32.352482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240594, 0.030194, 0.970156,
		0.133591, -0.988974, 0.063909,
		0.961388, 0.144980, 0.233908,
		25.085724, 33.713772, 32.422653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393438, 33.690029, 32.918453>,  <24.412752, 33.612289, 32.258919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393438, 33.690029, 32.918453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775402, 33.778912, 32.839687>,  <25.004580, 33.832241, 32.792427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775402, 33.778912, 32.839687>,  <24.393438, 33.690029, 32.918453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775402, 33.778912, 32.839687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059084, 0.507755, 0.859473,
		0.290964, -0.832352, 0.471731,
		0.954908, 0.222204, -0.196917,
		25.061874, 33.845573, 32.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819275, 33.335209, 33.309898>,  <24.393438, 33.690029, 32.918453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819275, 33.335209, 33.309898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964331, 33.698349, 33.225716>,  <25.051365, 33.916233, 33.175205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964331, 33.698349, 33.225716>,  <24.819275, 33.335209, 33.309898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964331, 33.698349, 33.225716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307901, 0.329866, 0.892404,
		0.879596, -0.258822, 0.399152,
		0.362641, 0.907855, -0.210457,
		25.073122, 33.970707, 33.162579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016623, 33.632343, 33.915203>,  <24.819275, 33.335209, 33.309898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016623, 33.632343, 33.915203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986778, 33.954109, 33.679459>,  <24.968872, 34.147167, 33.538010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986778, 33.954109, 33.679459>,  <25.016623, 33.632343, 33.915203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986778, 33.954109, 33.679459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245143, 0.558080, 0.792749,
		0.966612, 0.203625, 0.155559,
		-0.074609, 0.804415, -0.589364,
		24.964396, 34.195435, 33.502651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664215, 33.983688, 33.967522>,  <25.016623, 33.632343, 33.915203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664215, 33.983688, 33.967522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548267, 34.282730, 33.728504>,  <25.478699, 34.462154, 33.585094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548267, 34.282730, 33.728504>,  <25.664215, 33.983688, 33.967522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548267, 34.282730, 33.728504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309287, 0.517677, 0.797717,
		0.905713, 0.416048, 0.081165,
		-0.289871, 0.747606, -0.597545,
		25.461306, 34.507011, 33.549240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996994, 34.634754, 34.044151>,  <25.664215, 33.983688, 33.967522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996994, 34.634754, 34.044151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650169, 34.735962, 33.872482>,  <25.442076, 34.796688, 33.769482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650169, 34.735962, 33.872482>,  <25.996994, 34.634754, 34.044151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650169, 34.735962, 33.872482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266559, 0.492158, 0.828690,
		0.420895, 0.832923, -0.359285,
		-0.867060, 0.253021, -0.429170,
		25.390051, 34.811867, 33.743732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791267, 35.374756, 34.201252>,  <25.996994, 34.634754, 34.044151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791267, 35.374756, 34.201252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444567, 35.187862, 34.131477>,  <25.236546, 35.075726, 34.089611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444567, 35.187862, 34.131477>,  <25.791267, 35.374756, 34.201252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444567, 35.187862, 34.131477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427922, 0.517055, 0.741307,
		-0.256171, 0.717177, -0.648100,
		-0.866752, -0.467238, -0.174441,
		25.184542, 35.047691, 34.079144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216621, 35.946167, 34.254574>,  <25.791267, 35.374756, 34.201252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216621, 35.946167, 34.254574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041479, 35.587074, 34.273983>,  <24.936394, 35.371616, 34.285629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041479, 35.587074, 34.273983>,  <25.216621, 35.946167, 34.254574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041479, 35.587074, 34.273983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624715, 0.342625, 0.701669,
		-0.646539, 0.276915, -0.710849,
		-0.437857, -0.897734, 0.048527,
		24.910122, 35.317753, 34.288540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649111, 36.269928, 34.885300>,  <25.216621, 35.946167, 34.254574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649111, 36.269928, 34.885300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894917, 36.277851, 35.200760>,  <26.042400, 36.282604, 35.390038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894917, 36.277851, 35.200760>,  <25.649111, 36.269928, 34.885300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894917, 36.277851, 35.200760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283868, -0.927173, 0.244477,
		0.736063, -0.374108, -0.564140,
		0.614516, 0.019809, 0.788656,
		26.079271, 36.283794, 35.437355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249014, 35.764133, 34.824638>,  <25.649111, 36.269928, 34.885300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249014, 35.764133, 34.824638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098713, 35.841007, 35.187267>,  <26.008533, 35.887131, 35.404846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098713, 35.841007, 35.187267>,  <26.249014, 35.764133, 34.824638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098713, 35.841007, 35.187267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245094, -0.964035, 0.102784,
		0.893723, -0.183575, 0.409341,
		-0.375751, 0.192187, 0.906573,
		25.985987, 35.898663, 35.459240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637907, 35.309582, 35.210957>,  <26.249014, 35.764133, 34.824638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637907, 35.309582, 35.210957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269730, 35.406116, 35.333946>,  <26.048822, 35.464039, 35.407738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269730, 35.406116, 35.333946>,  <26.637907, 35.309582, 35.210957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269730, 35.406116, 35.333946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256538, -0.966489, -0.009352,
		0.294912, -0.087486, 0.951511,
		-0.920443, 0.241340, 0.307473,
		25.993597, 35.478519, 35.426189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148542, 34.955727, 34.708187>,  <26.637907, 35.309582, 35.210957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148542, 34.955727, 34.708187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163782, 35.271824, 34.463543>,  <27.172926, 35.461483, 34.316757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163782, 35.271824, 34.463543>,  <27.148542, 34.955727, 34.708187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163782, 35.271824, 34.463543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821351, -0.323839, -0.469586,
		-0.569149, 0.520237, 0.636728,
		0.038099, 0.790241, -0.611610,
		27.175211, 35.508896, 34.280060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721342, 35.325855, 34.815525>,  <27.148542, 34.955727, 34.708187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721342, 35.325855, 34.815525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114958, 35.388382, 34.781513>,  <28.351128, 35.425900, 34.761105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114958, 35.388382, 34.781513>,  <27.721342, 35.325855, 34.815525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114958, 35.388382, 34.781513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152283, 0.986963, 0.052090,
		0.092067, -0.038310, 0.995016,
		0.984039, 0.156319, -0.085033,
		28.410170, 35.435276, 34.756004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936672, 35.607449, 35.444290>,  <27.721342, 35.325855, 34.815525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936672, 35.607449, 35.444290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195293, 35.711548, 35.157448>,  <28.350466, 35.774010, 34.985344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195293, 35.711548, 35.157448>,  <27.936672, 35.607449, 35.444290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195293, 35.711548, 35.157448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122356, 0.963218, 0.239251,
		0.752993, -0.066946, 0.654614,
		0.646552, 0.260250, -0.717105,
		28.389259, 35.789623, 34.942318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331896, 36.075481, 35.813663>,  <27.936672, 35.607449, 35.444290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331896, 36.075481, 35.813663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382204, 36.145840, 35.423126>,  <28.412390, 36.188057, 35.188805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382204, 36.145840, 35.423126>,  <28.331896, 36.075481, 35.813663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382204, 36.145840, 35.423126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342011, 0.931510, 0.123764,
		0.931238, 0.318350, 0.177336,
		0.125789, 0.175905, -0.976337,
		28.419935, 36.198608, 35.130222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943052, 36.575539, 35.671215>,  <28.331896, 36.075481, 35.813663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943052, 36.575539, 35.671215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053217, 36.535328, 35.288792>,  <29.119316, 36.511200, 35.059338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053217, 36.535328, 35.288792>,  <28.943052, 36.575539, 35.671215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053217, 36.535328, 35.288792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542290, 0.804928, -0.240859,
		0.793769, 0.584795, 0.167171,
		0.275413, -0.100531, -0.956055,
		29.135841, 36.505169, 35.001976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337681, 37.189980, 35.438164>,  <28.943052, 36.575539, 35.671215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337681, 37.189980, 35.438164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158978, 37.006332, 35.131020>,  <29.051756, 36.896145, 34.946732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158978, 37.006332, 35.131020>,  <29.337681, 37.189980, 35.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158978, 37.006332, 35.131020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374225, 0.875488, -0.305738,
		0.812626, 0.150763, -0.562947,
		-0.446759, -0.459119, -0.767864,
		29.024950, 36.868595, 34.900661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547874, 37.480946, 34.752666>,  <29.337681, 37.189980, 35.438164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547874, 37.480946, 34.752666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174011, 37.342125, 34.721771>,  <28.949694, 37.258831, 34.703232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174011, 37.342125, 34.721771>,  <29.547874, 37.480946, 34.752666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174011, 37.342125, 34.721771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298336, 0.883714, -0.360617,
		0.193412, -0.314011, -0.929510,
		-0.934659, -0.347054, -0.077241,
		28.893614, 37.238010, 34.698601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297270, 37.465393, 34.038570>,  <29.547874, 37.480946, 34.752666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297270, 37.465393, 34.038570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978640, 37.460419, 34.280334>,  <28.787462, 37.457436, 34.425392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978640, 37.460419, 34.280334>,  <29.297270, 37.465393, 34.038570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978640, 37.460419, 34.280334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282933, 0.891201, -0.354556,
		-0.534244, -0.453439, -0.713426,
		-0.796576, -0.012432, 0.604411,
		28.739666, 37.456688, 34.461658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806574, 37.956432, 33.701378>,  <29.297270, 37.465393, 34.038570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806574, 37.956432, 33.701378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707777, 37.945927, 34.088840>,  <28.648499, 37.939625, 34.321320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707777, 37.945927, 34.088840>,  <28.806574, 37.956432, 33.701378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707777, 37.945927, 34.088840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075431, 0.997120, 0.007801,
		-0.966077, -0.071140, -0.248263,
		-0.246994, -0.026263, 0.968661,
		28.633678, 37.938049, 34.379440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258144, 38.522228, 33.916489>,  <28.806574, 37.956432, 33.701378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258144, 38.522228, 33.916489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508945, 38.435688, 34.215836>,  <28.659426, 38.383762, 34.395443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508945, 38.435688, 34.215836>,  <28.258144, 38.522228, 33.916489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508945, 38.435688, 34.215836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224831, 0.970039, 0.092064,
		-0.745868, 0.110532, 0.656859,
		0.627002, -0.216350, 0.748372,
		28.697046, 38.370785, 34.440346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225983, 38.992947, 34.566612>,  <28.258144, 38.522228, 33.916489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225983, 38.992947, 34.566612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015476, 38.696201, 34.400391>,  <27.889172, 38.518154, 34.300659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015476, 38.696201, 34.400391>,  <28.225983, 38.992947, 34.566612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015476, 38.696201, 34.400391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371166, -0.640104, 0.672683,
		-0.765036, 0.199770, 0.612219,
		-0.526266, -0.741862, -0.415554,
		27.857597, 38.473644, 34.275723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874208, 38.643700, 35.152199>,  <28.225983, 38.992947, 34.566612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874208, 38.643700, 35.152199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921118, 38.387924, 34.848259>,  <27.949263, 38.234459, 34.665897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921118, 38.387924, 34.848259>,  <27.874208, 38.643700, 35.152199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921118, 38.387924, 34.848259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291674, -0.709206, 0.641836,
		-0.949301, -0.296899, 0.103336,
		0.117274, -0.639436, -0.759848,
		27.956301, 38.196095, 34.620304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960363, 37.915207, 35.433315>,  <27.874208, 38.643700, 35.152199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960363, 37.915207, 35.433315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040766, 37.853909, 35.046303>,  <28.089006, 37.817131, 34.814095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040766, 37.853909, 35.046303>,  <27.960363, 37.915207, 35.433315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040766, 37.853909, 35.046303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207665, -0.958574, 0.194966,
		-0.957323, -0.240113, -0.160866,
		0.201016, -0.153240, -0.967528,
		28.101068, 37.807938, 34.756042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669767, 37.343605, 35.221588>,  <27.960363, 37.915207, 35.433315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669767, 37.343605, 35.221588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991295, 37.399616, 34.990322>,  <28.184212, 37.433224, 34.851562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991295, 37.399616, 34.990322>,  <27.669767, 37.343605, 35.221588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991295, 37.399616, 34.990322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271046, -0.951365, 0.146419,
		-0.529539, -0.274402, -0.802678,
		0.803817, 0.140028, -0.578161,
		28.232439, 37.441624, 34.816875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682047, 36.847755, 34.706802>,  <27.669767, 37.343605, 35.221588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682047, 36.847755, 34.706802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062904, 36.964432, 34.743320>,  <28.291420, 37.034439, 34.765232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062904, 36.964432, 34.743320>,  <27.682047, 36.847755, 34.706802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062904, 36.964432, 34.743320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287632, -0.956150, 0.055175,
		0.103385, -0.026276, -0.994294,
		0.952145, 0.291695, 0.091294,
		28.348547, 37.051941, 34.770710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088184, 36.412937, 34.159153>,  <27.682047, 36.847755, 34.706802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088184, 36.412937, 34.159153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317324, 36.536354, 34.462902>,  <28.454807, 36.610405, 34.645153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317324, 36.536354, 34.462902>,  <28.088184, 36.412937, 34.159153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317324, 36.536354, 34.462902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418798, -0.906565, 0.052416,
		0.704595, 0.287999, -0.648539,
		0.572848, 0.308539, 0.759374,
		28.489178, 36.628914, 34.690716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785412, 36.375679, 33.922871>,  <28.088184, 36.412937, 34.159153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785412, 36.375679, 33.922871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755140, 36.338177, 34.319958>,  <28.736977, 36.315674, 34.558208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755140, 36.338177, 34.319958>,  <28.785412, 36.375679, 33.922871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755140, 36.338177, 34.319958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353255, -0.933521, -0.061235,
		0.932461, 0.346047, 0.103770,
		-0.075681, -0.093757, 0.992715,
		28.732435, 36.310051, 34.617771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458073, 36.206131, 34.258041>,  <28.785412, 36.375679, 33.922871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458073, 36.206131, 34.258041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141470, 36.075760, 34.464844>,  <28.951508, 35.997540, 34.588924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141470, 36.075760, 34.464844>,  <29.458073, 36.206131, 34.258041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141470, 36.075760, 34.464844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381684, -0.924291, 0.001659,
		0.477319, 0.198644, 0.855983,
		-0.791507, -0.325923, 0.517001,
		28.904018, 35.977982, 34.619946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672121, 35.759026, 34.725636>,  <29.458073, 36.206131, 34.258041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672121, 35.759026, 34.725636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281126, 35.674633, 34.724968>,  <29.046530, 35.623997, 34.724567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281126, 35.674633, 34.724968>,  <29.672121, 35.759026, 34.725636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281126, 35.674633, 34.724968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209419, -0.971142, 0.114139,
		-0.025698, 0.111221, 0.993463,
		-0.977488, -0.210984, -0.001665,
		28.987879, 35.611340, 34.724468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560385, 35.469982, 35.373295>,  <29.672121, 35.759026, 34.725636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560385, 35.469982, 35.373295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317530, 35.335266, 35.085419>,  <29.171816, 35.254436, 34.912693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317530, 35.335266, 35.085419>,  <29.560385, 35.469982, 35.373295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317530, 35.335266, 35.085419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298093, -0.936120, 0.186602,
		-0.736563, -0.101242, 0.668749,
		-0.607137, -0.336793, -0.719691,
		29.135389, 35.234226, 34.869511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055740, 34.867756, 35.576931>,  <29.560385, 35.469982, 35.373295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055740, 34.867756, 35.576931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141836, 34.837379, 35.187489>,  <29.193493, 34.819153, 34.953823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141836, 34.837379, 35.187489>,  <29.055740, 34.867756, 35.576931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141836, 34.837379, 35.187489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320721, -0.936175, 0.143923,
		-0.922394, -0.343233, -0.177145,
		0.215238, -0.075940, -0.973604,
		29.206408, 34.814598, 34.895409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390471, 34.207947, 35.410862>,  <29.055740, 34.867756, 35.576931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390471, 34.207947, 35.410862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461554, 33.821411, 35.336449>,  <29.504204, 33.589489, 35.291801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461554, 33.821411, 35.336449>,  <29.390471, 34.207947, 35.410862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461554, 33.821411, 35.336449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626115, 0.256874, -0.736204,
		0.759210, 0.014349, 0.650687,
		0.177708, -0.966338, -0.186037,
		29.514866, 33.531509, 35.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147459, 33.904377, 35.373596>,  <29.390471, 34.207947, 35.410862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147459, 33.904377, 35.373596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878725, 33.735104, 35.130432>,  <29.717485, 33.633537, 34.984535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878725, 33.735104, 35.130432>,  <30.147459, 33.904377, 35.373596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878725, 33.735104, 35.130432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453713, 0.413605, -0.789351,
		0.585477, -0.806129, -0.085868,
		-0.671834, -0.423187, -0.607907,
		29.677176, 33.608147, 34.948059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652857, 33.684601, 34.810684>,  <30.147459, 33.904377, 35.373596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652857, 33.684601, 34.810684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268341, 33.734955, 34.712643>,  <30.037632, 33.765167, 34.653820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268341, 33.734955, 34.712643>,  <30.652857, 33.684601, 34.810684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268341, 33.734955, 34.712643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275161, 0.392043, -0.877832,
		-0.014419, -0.911293, -0.411506,
		-0.961290, 0.125888, -0.245100,
		29.979954, 33.772720, 34.639114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696869, 33.063404, 34.342880>,  <30.652857, 33.684601, 34.810684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696869, 33.063404, 34.342880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060242, 33.050873, 34.509621>,  <31.278267, 33.043354, 34.609665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060242, 33.050873, 34.509621>,  <30.696869, 33.063404, 34.342880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060242, 33.050873, 34.509621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335677, -0.648972, 0.682756,
		0.249134, -0.760166, -0.600066,
		0.908434, -0.031330, 0.416852,
		31.332771, 33.041473, 34.634678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815804, 32.340237, 34.505520>,  <30.696869, 33.063404, 34.342880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815804, 32.340237, 34.505520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095282, 32.539165, 34.711235>,  <31.262968, 32.658524, 34.834663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095282, 32.539165, 34.711235>,  <30.815804, 32.340237, 34.505520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095282, 32.539165, 34.711235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209079, -0.545542, 0.811585,
		0.684186, -0.674578, -0.277189,
		0.698695, 0.497321, 0.514292,
		31.304890, 32.688362, 34.865524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350340, 31.897886, 34.637558>,  <30.815804, 32.340237, 34.505520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350340, 31.897886, 34.637558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403706, 32.162514, 34.932728>,  <31.435724, 32.321289, 35.109829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403706, 32.162514, 34.932728>,  <31.350340, 31.897886, 34.637558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403706, 32.162514, 34.932728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027391, -0.741833, 0.670025,
		0.990682, -0.109603, -0.080850,
		0.133414, 0.661568, 0.737922,
		31.443729, 32.360985, 35.154106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588064, 31.494650, 35.143440>,  <31.350340, 31.897886, 34.637558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588064, 31.494650, 35.143440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430559, 31.812838, 35.327690>,  <31.336056, 32.003750, 35.438240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430559, 31.812838, 35.327690>,  <31.588064, 31.494650, 35.143440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430559, 31.812838, 35.327690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103718, -0.536360, 0.837592,
		0.913341, 0.282038, 0.293704,
		-0.393764, 0.795470, 0.460627,
		31.312429, 32.051479, 35.465878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940079, 31.662165, 35.850143>,  <31.588064, 31.494650, 35.143440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940079, 31.662165, 35.850143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546772, 31.721165, 35.807384>,  <31.310787, 31.756565, 35.781731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546772, 31.721165, 35.807384>,  <31.940079, 31.662165, 35.850143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546772, 31.721165, 35.807384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157280, -0.391343, 0.906705,
		0.091907, 0.908346, 0.407994,
		-0.983268, 0.147502, -0.106897,
		31.251791, 31.765415, 35.775314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626921, 31.686581, 36.453205>,  <31.940079, 31.662165, 35.850143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626921, 31.686581, 36.453205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301966, 31.573757, 36.249062>,  <31.106993, 31.506063, 36.126575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301966, 31.573757, 36.249062>,  <31.626921, 31.686581, 36.453205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301966, 31.573757, 36.249062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457478, -0.234425, 0.857764,
		-0.361581, 0.930316, 0.061409,
		-0.812387, -0.282058, -0.510363,
		31.058250, 31.489140, 36.095951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034719, 32.016109, 36.609245>,  <31.626921, 31.686581, 36.453205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034719, 32.016109, 36.609245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904987, 31.645819, 36.531429>,  <30.827148, 31.423645, 36.484741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904987, 31.645819, 36.531429>,  <31.034719, 32.016109, 36.609245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904987, 31.645819, 36.531429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277658, -0.103436, 0.955095,
		-0.904277, 0.363782, -0.223487,
		-0.324330, -0.925723, -0.194542,
		30.807688, 31.368101, 36.473068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571857, 32.333225, 36.179962>,  <31.034719, 32.016109, 36.609245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571857, 32.333225, 36.179962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969807, 32.340786, 36.219700>,  <31.208576, 32.345322, 36.243542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969807, 32.340786, 36.219700>,  <30.571857, 32.333225, 36.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969807, 32.340786, 36.219700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064915, 0.633876, -0.770706,
		-0.077539, 0.773203, 0.629400,
		0.994874, 0.018902, 0.099342,
		31.268269, 32.346458, 36.249504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911743, 33.008011, 36.177448>,  <30.571857, 32.333225, 36.179962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911743, 33.008011, 36.177448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198744, 32.782829, 36.013367>,  <31.370945, 32.647720, 35.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198744, 32.782829, 36.013367>,  <30.911743, 33.008011, 36.177448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198744, 32.782829, 36.013367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016075, 0.575370, -0.817735,
		0.696369, 0.593322, 0.403781,
		0.717504, -0.562955, -0.410208,
		31.413996, 32.613941, 35.890305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631216, 33.416851, 35.949764>,  <30.911743, 33.008011, 36.177448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631216, 33.416851, 35.949764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590218, 33.083363, 35.732731>,  <31.565619, 32.883270, 35.602509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590218, 33.083363, 35.732731>,  <31.631216, 33.416851, 35.949764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590218, 33.083363, 35.732731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179908, 0.520928, -0.834427,
		0.978329, -0.183142, 0.096600,
		-0.102497, -0.833723, -0.542587,
		31.559469, 32.833244, 35.569954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160015, 33.362183, 35.557671>,  <31.631216, 33.416851, 35.949764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160015, 33.362183, 35.557671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916916, 33.129089, 35.341869>,  <31.771055, 32.989235, 35.212391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916916, 33.129089, 35.341869>,  <32.160015, 33.362183, 35.557671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916916, 33.129089, 35.341869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366660, 0.396704, -0.841538,
		0.704413, -0.709260, -0.027433,
		-0.607752, -0.582732, -0.539501,
		31.734591, 32.954269, 35.180019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542301, 33.061108, 35.056995>,  <32.160015, 33.362183, 35.557671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542301, 33.061108, 35.056995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163155, 33.065769, 34.929611>,  <31.935667, 33.068565, 34.853180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163155, 33.065769, 34.929611>,  <32.542301, 33.061108, 35.056995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163155, 33.065769, 34.929611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309114, 0.276519, -0.909937,
		0.077452, -0.960938, -0.265706,
		-0.947866, 0.011657, -0.318456,
		31.878796, 33.069267, 34.834076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242729, 32.488865, 34.633926>,  <32.542301, 33.061108, 35.056995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242729, 32.488865, 34.633926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068119, 32.839050, 34.550976>,  <31.963354, 33.049164, 34.501205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068119, 32.839050, 34.550976>,  <32.242729, 32.488865, 34.633926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068119, 32.839050, 34.550976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579327, 0.097160, -0.809284,
		-0.688352, -0.473411, -0.549594,
		-0.436523, 0.875467, -0.207379,
		31.937162, 33.101688, 34.488762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881487, 32.413952, 34.001152>,  <32.242729, 32.488865, 34.633926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881487, 32.413952, 34.001152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973244, 32.803127, 34.012230>,  <32.028297, 33.036633, 34.018875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973244, 32.803127, 34.012230>,  <31.881487, 32.413952, 34.001152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973244, 32.803127, 34.012230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447308, -0.080110, -0.890785,
		-0.864462, 0.216726, -0.453581,
		0.229392, 0.972940, 0.027692,
		32.042061, 33.095009, 34.020538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504343, 32.731102, 33.342339>,  <31.881487, 32.413952, 34.001152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504343, 32.731102, 33.342339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797243, 32.980240, 33.452518>,  <31.972982, 33.129723, 33.518627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797243, 32.980240, 33.452518>,  <31.504343, 32.731102, 33.342339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797243, 32.980240, 33.452518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285039, 0.087034, -0.954557,
		-0.618518, 0.777486, -0.113806,
		0.732249, 0.622849, 0.275445,
		32.016918, 33.167095, 33.535152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628965, 32.887615, 32.684414>,  <31.504343, 32.731102, 33.342339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628965, 32.887615, 32.684414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933409, 33.060490, 32.877876>,  <32.116074, 33.164215, 32.993954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933409, 33.060490, 32.877876>,  <31.628965, 32.887615, 32.684414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933409, 33.060490, 32.877876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479410, 0.127425, -0.868291,
		-0.436897, 0.892734, -0.110212,
		0.761109, 0.432190, 0.483657,
		32.161743, 33.190147, 33.022972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777599, 33.475101, 32.364086>,  <31.628965, 32.887615, 32.684414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777599, 33.475101, 32.364086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111259, 33.368385, 32.557175>,  <32.311455, 33.304356, 32.673027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111259, 33.368385, 32.557175>,  <31.777599, 33.475101, 32.364086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111259, 33.368385, 32.557175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543057, 0.244382, -0.803347,
		0.096360, 0.932255, 0.348735,
		0.834149, -0.266793, 0.482719,
		32.361504, 33.288345, 32.701992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185097, 33.990799, 32.190525>,  <31.777599, 33.475101, 32.364086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185097, 33.990799, 32.190525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404453, 33.672916, 32.294613>,  <32.536068, 33.482189, 32.357067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404453, 33.672916, 32.294613>,  <32.185097, 33.990799, 32.190525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404453, 33.672916, 32.294613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562788, 0.120587, -0.817758,
		0.618496, 0.594899, 0.513379,
		0.548390, -0.794704, 0.260219,
		32.568970, 33.434505, 32.372677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882397, 34.230797, 31.959156>,  <32.185097, 33.990799, 32.190525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882397, 34.230797, 31.959156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895031, 33.831528, 31.979725>,  <32.902611, 33.591965, 31.992067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895031, 33.831528, 31.979725>,  <32.882397, 34.230797, 31.959156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895031, 33.831528, 31.979725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681347, -0.016138, -0.731782,
		0.731278, 0.058153, 0.679596,
		0.031588, -0.998177, 0.051424,
		32.904507, 33.532074, 31.995152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562778, 34.084358, 31.573408>,  <32.882397, 34.230797, 31.959156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562778, 34.084358, 31.573408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384304, 33.729439, 31.620089>,  <33.277218, 33.516487, 31.648098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384304, 33.729439, 31.620089>,  <33.562778, 34.084358, 31.573408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384304, 33.729439, 31.620089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366977, -0.300336, -0.880413,
		0.816238, -0.350001, 0.459623,
		-0.446187, -0.887298, 0.116703,
		33.250446, 33.463249, 31.655100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046806, 33.518173, 31.531900>,  <33.562778, 34.084358, 31.573408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046806, 33.518173, 31.531900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705299, 33.342247, 31.420444>,  <33.500393, 33.236691, 31.353571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705299, 33.342247, 31.420444>,  <34.046806, 33.518173, 31.531900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705299, 33.342247, 31.420444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417702, -0.259133, -0.870847,
		0.310807, -0.859891, 0.404952,
		-0.853770, -0.439815, -0.278638,
		33.449169, 33.210304, 31.336853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266529, 32.825581, 31.322472>,  <34.046806, 33.518173, 31.531900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266529, 32.825581, 31.322472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902287, 32.900311, 31.175020>,  <33.683739, 32.945148, 31.086550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902287, 32.900311, 31.175020>,  <34.266529, 32.825581, 31.322472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902287, 32.900311, 31.175020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303350, -0.303595, -0.903221,
		-0.280649, -0.934307, 0.219787,
		-0.910613, 0.186815, -0.368626,
		33.629105, 32.956356, 31.064432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116356, 32.292671, 30.854780>,  <34.266529, 32.825581, 31.322472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116356, 32.292671, 30.854780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849590, 32.561371, 30.725798>,  <33.689529, 32.722591, 30.648409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849590, 32.561371, 30.725798>,  <34.116356, 32.292671, 30.854780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849590, 32.561371, 30.725798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185149, -0.269784, -0.944953,
		-0.721765, -0.689906, 0.055549,
		-0.666915, 0.671748, -0.322457,
		33.649517, 32.762894, 30.629061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603325, 31.916292, 30.409807>,  <34.116356, 32.292671, 30.854780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603325, 31.916292, 30.409807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602104, 32.308247, 30.329996>,  <33.601372, 32.543419, 30.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602104, 32.308247, 30.329996>,  <33.603325, 31.916292, 30.409807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602104, 32.308247, 30.329996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025668, -0.199388, -0.979584,
		-0.999666, -0.008114, -0.024543,
		-0.003055, 0.979887, -0.199529,
		33.601189, 32.602211, 30.270138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040928, 32.029015, 29.877129>,  <33.603325, 31.916292, 30.409807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040928, 32.029015, 29.877129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279659, 32.346462, 29.829857>,  <33.422897, 32.536930, 29.801493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279659, 32.346462, 29.829857>,  <33.040928, 32.029015, 29.877129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279659, 32.346462, 29.829857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020646, -0.132052, -0.991028,
		-0.802104, 0.593913, -0.062427,
		0.596828, 0.793618, -0.118181,
		33.458706, 32.584549, 29.794403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842411, 32.323040, 29.218361>,  <33.040928, 32.029015, 29.877129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842411, 32.323040, 29.218361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205845, 32.478176, 29.280390>,  <33.423904, 32.571259, 29.317606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205845, 32.478176, 29.280390>,  <32.842411, 32.323040, 29.218361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205845, 32.478176, 29.280390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201745, -0.082405, -0.975965,
		-0.365738, 0.918036, -0.153117,
		0.908589, 0.387839, 0.155071,
		33.478420, 32.594528, 29.326912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860630, 32.983181, 28.844610>,  <32.842411, 32.323040, 29.218361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860630, 32.983181, 28.844610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243752, 32.877518, 28.889931>,  <33.473625, 32.814117, 28.917124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243752, 32.877518, 28.889931>,  <32.860630, 32.983181, 28.844610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243752, 32.877518, 28.889931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191370, 0.291944, -0.937095,
		0.214466, 0.919232, 0.330176,
		0.957800, -0.264161, 0.113302,
		33.531090, 32.798271, 28.923922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325417, 33.592129, 28.577461>,  <32.860630, 32.983181, 28.844610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325417, 33.592129, 28.577461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538414, 33.253639, 28.585032>,  <33.666214, 33.050545, 28.589575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538414, 33.253639, 28.585032>,  <33.325417, 33.592129, 28.577461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538414, 33.253639, 28.585032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289432, 0.161026, -0.943557,
		0.795409, 0.507920, 0.330669,
		0.532497, -0.846220, 0.018927,
		33.698162, 32.999775, 28.590710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009209, 33.906700, 28.410389>,  <33.325417, 33.592129, 28.577461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009209, 33.906700, 28.410389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038677, 33.516449, 28.327711>,  <34.056358, 33.282299, 28.278105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038677, 33.516449, 28.327711>,  <34.009209, 33.906700, 28.410389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038677, 33.516449, 28.327711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426738, 0.218164, -0.877667,
		0.901369, -0.023544, 0.432410,
		0.073673, -0.975628, -0.206694,
		34.060780, 33.223759, 28.265703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622429, 33.839256, 28.003630>,  <34.009209, 33.906700, 28.410389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622429, 33.839256, 28.003630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446751, 33.484463, 27.946539>,  <34.341343, 33.271587, 27.912285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446751, 33.484463, 27.946539>,  <34.622429, 33.839256, 28.003630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446751, 33.484463, 27.946539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200072, 0.058315, -0.978044,
		0.875830, -0.458109, 0.151848,
		-0.439196, -0.886981, -0.142729,
		34.314991, 33.218369, 27.903721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099720, 33.418484, 27.603407>,  <34.622429, 33.839256, 28.003630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099720, 33.418484, 27.603407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740170, 33.254520, 27.541454>,  <34.524437, 33.156143, 27.504282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740170, 33.254520, 27.541454>,  <35.099720, 33.418484, 27.603407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740170, 33.254520, 27.541454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209836, -0.092359, -0.973365,
		0.384690, -0.907437, 0.169034,
		-0.898879, -0.409913, -0.154883,
		34.470505, 33.131546, 27.494989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231743, 32.981903, 27.038607>,  <35.099720, 33.418484, 27.603407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231743, 32.981903, 27.038607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836407, 33.033997, 27.070152>,  <34.599205, 33.065254, 27.089081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836407, 33.033997, 27.070152>,  <35.231743, 32.981903, 27.038607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836407, 33.033997, 27.070152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067536, 0.089238, -0.993718,
		-0.136452, -0.987459, -0.079402,
		-0.988342, 0.130233, 0.078865,
		34.539906, 33.073067, 27.093811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035969, 32.404305, 26.816948>,  <35.231743, 32.981903, 27.038607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035969, 32.404305, 26.816948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789101, 32.714352, 26.762846>,  <34.640980, 32.900379, 26.730385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789101, 32.714352, 26.762846>,  <35.035969, 32.404305, 26.816948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789101, 32.714352, 26.762846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086763, -0.237896, -0.967408,
		-0.782030, -0.585322, 0.214074,
		-0.617172, 0.775115, -0.135257,
		34.603951, 32.946888, 26.722269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532894, 32.218044, 26.275747>,  <35.035969, 32.404305, 26.816948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532894, 32.218044, 26.275747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441422, 32.605038, 26.318998>,  <34.386539, 32.837234, 26.344950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441422, 32.605038, 26.318998>,  <34.532894, 32.218044, 26.275747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441422, 32.605038, 26.318998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201659, 0.061584, -0.977518,
		-0.952387, -0.245340, 0.181018,
		-0.228677, 0.967479, 0.108127,
		34.372818, 32.895283, 26.351437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964195, 32.329781, 25.801956>,  <34.532894, 32.218044, 26.275747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964195, 32.329781, 25.801956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100163, 32.701195, 25.861656>,  <34.181744, 32.924046, 25.897476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100163, 32.701195, 25.861656>,  <33.964195, 32.329781, 25.801956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100163, 32.701195, 25.861656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025882, 0.167877, -0.985468,
		-0.940100, 0.331112, 0.081096,
		0.339914, 0.928538, 0.149251,
		34.202137, 32.979755, 25.906431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574585, 32.755661, 25.388685>,  <33.964195, 32.329781, 25.801956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574585, 32.755661, 25.388685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895290, 32.975914, 25.481615>,  <34.087715, 33.108067, 25.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895290, 32.975914, 25.481615>,  <33.574585, 32.755661, 25.388685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895290, 32.975914, 25.481615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034121, 0.345930, -0.937640,
		-0.596661, 0.759696, 0.258568,
		0.801768, 0.550630, 0.232324,
		34.135822, 33.141102, 25.551311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500347, 33.351044, 24.963179>,  <33.574585, 32.755661, 25.388685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500347, 33.351044, 24.963179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886292, 33.344460, 25.068079>,  <34.117859, 33.340511, 25.131020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886292, 33.344460, 25.068079>,  <33.500347, 33.351044, 24.963179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886292, 33.344460, 25.068079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254569, 0.305860, -0.917412,
		-0.065115, 0.951934, 0.299301,
		0.964860, -0.016456, 0.262249,
		34.175751, 33.339523, 25.146753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815742, 34.052197, 24.777662>,  <33.500347, 33.351044, 24.963179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815742, 34.052197, 24.777662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114117, 33.786083, 24.790218>,  <34.293140, 33.626415, 24.797752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114117, 33.786083, 24.790218>,  <33.815742, 34.052197, 24.777662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114117, 33.786083, 24.790218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264939, 0.253154, -0.930441,
		0.611058, 0.702363, 0.365095,
		0.745933, -0.665281, 0.031391,
		34.337898, 33.586498, 24.799635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466129, 34.424629, 24.437578>,  <33.815742, 34.052197, 24.777662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466129, 34.424629, 24.437578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579830, 34.041836, 24.414288>,  <34.648052, 33.812160, 24.400314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579830, 34.041836, 24.414288>,  <34.466129, 34.424629, 24.437578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579830, 34.041836, 24.414288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370946, 0.165777, -0.913738,
		0.884081, 0.238134, 0.402110,
		0.284253, -0.956980, -0.058225,
		34.665108, 33.754742, 24.396820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269482, 34.325306, 24.285229>,  <34.466129, 34.424629, 24.437578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269482, 34.325306, 24.285229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110023, 33.989605, 24.137312>,  <35.014351, 33.788185, 24.048561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110023, 33.989605, 24.137312>,  <35.269482, 34.325306, 24.285229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110023, 33.989605, 24.137312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466966, 0.161287, -0.869442,
		0.789320, -0.519277, 0.327604,
		-0.398643, -0.839248, -0.369792,
		34.990429, 33.737831, 24.026375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904335, 33.996784, 24.028847>,  <35.269482, 34.325306, 24.285229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904335, 33.996784, 24.028847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583317, 33.838459, 23.850294>,  <35.390705, 33.743465, 23.743162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583317, 33.838459, 23.850294>,  <35.904335, 33.996784, 24.028847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583317, 33.838459, 23.850294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407915, 0.181938, -0.894709,
		0.435353, -0.900127, 0.015446,
		-0.802542, -0.395815, -0.446383,
		35.342556, 33.719715, 23.716379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155258, 33.525677, 23.486177>,  <35.904335, 33.996784, 24.028847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155258, 33.525677, 23.486177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788406, 33.655502, 23.393633>,  <35.568295, 33.733398, 23.338106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788406, 33.655502, 23.393633>,  <36.155258, 33.525677, 23.486177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788406, 33.655502, 23.393633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277338, 0.102740, -0.955263,
		-0.286270, -0.940269, -0.184239,
		-0.917133, 0.324560, -0.231361,
		35.513268, 33.752869, 23.324224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046597, 33.258938, 22.870441>,  <36.155258, 33.525677, 23.486177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046597, 33.258938, 22.870441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755718, 33.533146, 22.884583>,  <35.581192, 33.697670, 22.893066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755718, 33.533146, 22.884583>,  <36.046597, 33.258938, 22.870441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755718, 33.533146, 22.884583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156890, 0.216126, -0.963678,
		-0.668261, -0.695235, -0.264717,
		-0.727195, 0.685520, 0.035353,
		35.537560, 33.738800, 22.895189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669556, 33.071705, 22.248224>,  <36.046597, 33.258938, 22.870441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669556, 33.071705, 22.248224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551044, 33.440239, 22.348913>,  <35.479939, 33.661358, 22.409327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551044, 33.440239, 22.348913>,  <35.669556, 33.071705, 22.248224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551044, 33.440239, 22.348913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108260, 0.294253, -0.949576,
		-0.948947, -0.254086, -0.186924,
		-0.296277, 0.921333, 0.251723,
		35.462162, 33.716640, 22.424431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303104, 33.343369, 21.631371>,  <35.669556, 33.071705, 22.248224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303104, 33.343369, 21.631371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407566, 33.659950, 21.852423>,  <35.470242, 33.849899, 21.985054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407566, 33.659950, 21.852423>,  <35.303104, 33.343369, 21.631371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407566, 33.659950, 21.852423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318238, 0.469902, -0.823357,
		-0.911332, 0.390888, -0.129156,
		0.261150, 0.791454, 0.552632,
		35.485912, 33.897385, 22.018213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119698, 33.821117, 21.232635>,  <35.303104, 33.343369, 21.631371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119698, 33.821117, 21.232635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389465, 34.013977, 21.456308>,  <35.551327, 34.129692, 21.590513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389465, 34.013977, 21.456308>,  <35.119698, 33.821117, 21.232635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389465, 34.013977, 21.456308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176415, 0.630181, -0.756141,
		-0.716963, 0.608605, 0.339947,
		0.674420, 0.482154, 0.559183,
		35.591793, 34.158623, 21.624063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116230, 34.465656, 21.009987>,  <35.119698, 33.821117, 21.232635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116230, 34.465656, 21.009987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477036, 34.485191, 21.181559>,  <35.693520, 34.496914, 21.284502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477036, 34.485191, 21.181559>,  <35.116230, 34.465656, 21.009987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477036, 34.485191, 21.181559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329278, 0.564712, -0.756754,
		-0.279183, 0.823842, 0.493297,
		0.902016, 0.048841, 0.428931,
		35.747639, 34.499844, 21.310238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280602, 35.106201, 21.026407>,  <35.116230, 34.465656, 21.009987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280602, 35.106201, 21.026407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634407, 34.919697, 21.032400>,  <35.846691, 34.807793, 21.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634407, 34.919697, 21.032400>,  <35.280602, 35.106201, 21.026407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634407, 34.919697, 21.032400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289982, 0.524378, -0.800586,
		0.365428, 0.712478, 0.599031,
		0.884518, -0.466265, 0.014983,
		35.899761, 34.779816, 21.036896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765148, 35.667206, 20.854382>,  <35.280602, 35.106201, 21.026407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765148, 35.667206, 20.854382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983948, 35.333149, 20.831305>,  <36.115227, 35.132713, 20.817457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983948, 35.333149, 20.831305>,  <35.765148, 35.667206, 20.854382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983948, 35.333149, 20.831305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563605, 0.418353, -0.712271,
		0.618984, 0.357094, 0.699530,
		0.546998, -0.835143, -0.057694,
		36.148048, 35.082607, 20.813997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380974, 35.867882, 20.824848>,  <35.765148, 35.667206, 20.854382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380974, 35.867882, 20.824848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401802, 35.502075, 20.664375>,  <36.414299, 35.282593, 20.568090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401802, 35.502075, 20.664375>,  <36.380974, 35.867882, 20.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401802, 35.502075, 20.664375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397032, 0.387571, -0.831958,
		0.916327, -0.115966, 0.383272,
		0.052066, -0.914516, -0.401184,
		36.417423, 35.227722, 20.544020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079491, 35.779240, 20.575186>,  <36.380974, 35.867882, 20.824848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079491, 35.779240, 20.575186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867798, 35.506424, 20.373302>,  <36.740780, 35.342735, 20.252172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867798, 35.506424, 20.373302>,  <37.079491, 35.779240, 20.575186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867798, 35.506424, 20.373302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290696, 0.413089, -0.863049,
		0.797123, -0.603474, -0.020355,
		-0.529236, -0.682039, -0.504710,
		36.709026, 35.301811, 20.221889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538868, 35.551105, 20.031105>,  <37.079491, 35.779240, 20.575186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538868, 35.551105, 20.031105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178890, 35.432297, 19.903435>,  <36.962902, 35.361012, 19.826832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178890, 35.432297, 19.903435>,  <37.538868, 35.551105, 20.031105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178890, 35.432297, 19.903435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222043, 0.317787, -0.921796,
		0.375223, -0.900439, -0.220040,
		-0.899947, -0.297021, -0.319177,
		36.908905, 35.343189, 19.807682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664131, 35.125664, 19.429052>,  <37.538868, 35.551105, 20.031105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664131, 35.125664, 19.429052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295776, 35.278992, 19.400677>,  <37.074764, 35.370987, 19.383652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295776, 35.278992, 19.400677>,  <37.664131, 35.125664, 19.429052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295776, 35.278992, 19.400677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290331, 0.552962, -0.780987,
		-0.260138, -0.739798, -0.620505,
		-0.920888, 0.383317, -0.070940,
		37.019508, 35.393986, 19.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688938, 35.175297, 18.726013>,  <37.664131, 35.125664, 19.429052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688938, 35.175297, 18.726013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376583, 35.401714, 18.831696>,  <37.189171, 35.537563, 18.895105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376583, 35.401714, 18.831696>,  <37.688938, 35.175297, 18.726013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376583, 35.401714, 18.831696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225625, 0.649983, -0.725682,
		-0.582499, -0.507066, -0.635279,
		-0.780889, 0.566044, 0.264208,
		37.142315, 35.571526, 18.910957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251148, 35.262939, 18.134501>,  <37.688938, 35.175297, 18.726013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251148, 35.262939, 18.134501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192020, 35.566845, 18.387770>,  <37.156544, 35.749187, 18.539732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192020, 35.566845, 18.387770>,  <37.251148, 35.262939, 18.134501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192020, 35.566845, 18.387770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311162, 0.643423, -0.699418,
		-0.938791, 0.093635, -0.331517,
		-0.147816, 0.759763, 0.633175,
		37.147675, 35.794773, 18.577723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731651, 35.799576, 17.912827>,  <37.251148, 35.262939, 18.134501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731651, 35.799576, 17.912827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079041, 35.878021, 18.094944>,  <37.287476, 35.925087, 18.204214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079041, 35.878021, 18.094944>,  <36.731651, 35.799576, 17.912827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079041, 35.878021, 18.094944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177031, 0.735171, -0.654357,
		-0.463048, 0.648893, 0.603759,
		0.868474, 0.196115, 0.455293,
		37.339584, 35.936855, 18.231531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921806, 36.555614, 17.953306>,  <36.731651, 35.799576, 17.912827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921806, 36.555614, 17.953306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259678, 36.342644, 17.975323>,  <37.462402, 36.214859, 17.988533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259678, 36.342644, 17.975323>,  <36.921806, 36.555614, 17.953306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259678, 36.342644, 17.975323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415091, 0.586638, -0.695382,
		0.337952, 0.610224, 0.716529,
		0.844682, -0.532431, 0.055043,
		37.513084, 36.182915, 17.991837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779945, 37.315678, 18.137926>,  <36.921806, 36.555614, 17.953306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779945, 37.315678, 18.137926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907928, 37.694378, 18.152342>,  <36.984718, 37.921597, 18.160992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907928, 37.694378, 18.152342>,  <36.779945, 37.315678, 18.137926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907928, 37.694378, 18.152342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110399, 0.000522, -0.993887,
		-0.940978, 0.321980, -0.104353,
		0.319957, 0.946746, 0.036038,
		37.003914, 37.978401, 18.163153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321156, 37.598083, 17.636623>,  <36.779945, 37.315678, 18.137926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321156, 37.598083, 17.636623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666698, 37.796112, 17.673822>,  <36.874023, 37.914928, 17.696142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666698, 37.796112, 17.673822>,  <36.321156, 37.598083, 17.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666698, 37.796112, 17.673822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156693, -0.088639, -0.983662,
		-0.478742, 0.864318, -0.154147,
		0.863860, 0.495074, 0.092997,
		36.925858, 37.944633, 17.701721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358303, 38.056843, 17.032217>,  <36.321156, 37.598083, 17.636623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358303, 38.056843, 17.032217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736065, 38.011700, 17.155743>,  <36.962723, 37.984615, 17.229858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736065, 38.011700, 17.155743>,  <36.358303, 38.056843, 17.032217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736065, 38.011700, 17.155743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291728, -0.145575, -0.945358,
		0.151647, 0.982889, -0.104558,
		0.944403, -0.112858, 0.308812,
		37.019386, 37.977840, 17.248386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669006, 37.643269, 16.487659>,  <36.358303, 38.056843, 17.032217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669006, 37.643269, 16.487659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966244, 37.838104, 16.304113>,  <37.144585, 37.955006, 16.193985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966244, 37.838104, 16.304113>,  <36.669006, 37.643269, 16.487659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966244, 37.838104, 16.304113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532284, -0.014646, 0.846439,
		0.405569, -0.873230, -0.270153,
		0.743093, 0.487087, -0.458867,
		37.189171, 37.984230, 16.166452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368263, 37.345478, 16.477325>,  <36.669006, 37.643269, 16.487659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368263, 37.345478, 16.477325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325775, 37.742512, 16.500971>,  <37.300282, 37.980732, 16.515158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325775, 37.742512, 16.500971>,  <37.368263, 37.345478, 16.477325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325775, 37.742512, 16.500971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259337, -0.029736, 0.965329,
		0.959928, 0.117869, -0.254255,
		-0.106222, 0.992584, 0.059112,
		37.293907, 38.040287, 16.518703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963234, 37.663696, 16.821226>,  <37.368263, 37.345478, 16.477325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963234, 37.663696, 16.821226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632587, 37.867920, 16.915905>,  <37.434200, 37.990456, 16.972712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632587, 37.867920, 16.915905>,  <37.963234, 37.663696, 16.821226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632587, 37.867920, 16.915905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278246, 0.005208, 0.960496,
		0.489161, 0.859825, -0.146367,
		-0.826620, 0.510563, 0.236695,
		37.384602, 38.021088, 16.986914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175102, 37.914825, 17.497637>,  <37.963234, 37.663696, 16.821226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175102, 37.914825, 17.497637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794582, 38.027222, 17.446932>,  <37.566269, 38.094662, 17.416508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794582, 38.027222, 17.446932>,  <38.175102, 37.914825, 17.497637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794582, 38.027222, 17.446932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111331, 0.070288, 0.991295,
		0.287457, 0.957133, -0.035582,
		-0.951301, 0.280993, -0.126764,
		37.509193, 38.111519, 17.408903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082081, 38.507637, 17.914677>,  <38.175102, 37.914825, 17.497637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082081, 38.507637, 17.914677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725300, 38.342918, 17.840008>,  <37.511230, 38.244087, 17.795206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725300, 38.342918, 17.840008>,  <38.082081, 38.507637, 17.914677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725300, 38.342918, 17.840008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304770, 0.242629, 0.921003,
		-0.333969, 0.878384, -0.341916,
		-0.891953, -0.411792, -0.186675,
		37.457714, 38.219379, 17.784006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643784, 39.067032, 18.217501>,  <38.082081, 38.507637, 17.914677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643784, 39.067032, 18.217501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432583, 38.728985, 18.184061>,  <37.305862, 38.526157, 18.163998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432583, 38.728985, 18.184061>,  <37.643784, 39.067032, 18.217501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432583, 38.728985, 18.184061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299637, 0.093283, 0.949482,
		-0.794627, 0.526376, -0.302482,
		-0.528001, -0.845119, -0.083597,
		37.274181, 38.475449, 18.158981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043137, 39.250267, 18.609430>,  <37.643784, 39.067032, 18.217501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043137, 39.250267, 18.609430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054279, 38.850967, 18.588547>,  <37.060963, 38.611389, 18.576017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054279, 38.850967, 18.588547>,  <37.043137, 39.250267, 18.609430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054279, 38.850967, 18.588547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432131, -0.059120, 0.899871,
		-0.901381, -0.002502, -0.433020,
		0.027852, -0.998248, -0.052209,
		37.062634, 38.551495, 18.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309822, 39.036896, 18.821575>,  <37.043137, 39.250267, 18.609430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309822, 39.036896, 18.821575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569443, 38.737667, 18.876873>,  <36.725216, 38.558128, 18.910051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569443, 38.737667, 18.876873>,  <36.309822, 39.036896, 18.821575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569443, 38.737667, 18.876873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245890, -0.034330, 0.968690,
		-0.719908, -0.662725, -0.206226,
		0.649054, -0.748076, 0.138243,
		36.764160, 38.513245, 18.918346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992023, 38.400398, 19.223938>,  <36.309822, 39.036896, 18.821575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992023, 38.400398, 19.223938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388935, 38.373341, 19.265509>,  <36.627083, 38.357105, 19.290451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388935, 38.373341, 19.265509>,  <35.992023, 38.400398, 19.223938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388935, 38.373341, 19.265509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109502, -0.084729, 0.990369,
		-0.058175, -0.994106, -0.091481,
		0.992283, -0.067633, 0.103927,
		36.686619, 38.353046, 19.296686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103951, 37.825726, 19.582695>,  <35.992023, 38.400398, 19.223938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103951, 37.825726, 19.582695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454754, 38.001156, 19.661180>,  <36.665237, 38.106415, 19.708271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454754, 38.001156, 19.661180>,  <36.103951, 37.825726, 19.582695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454754, 38.001156, 19.661180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134378, -0.168183, 0.976554,
		0.461294, -0.882816, -0.088564,
		0.877012, 0.438577, 0.196213,
		36.717857, 38.132729, 19.720045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386929, 37.424026, 20.010242>,  <36.103951, 37.825726, 19.582695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386929, 37.424026, 20.010242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553032, 37.784512, 20.059835>,  <36.652695, 38.000805, 20.089592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553032, 37.784512, 20.059835>,  <36.386929, 37.424026, 20.010242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553032, 37.784512, 20.059835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151104, -0.066064, 0.986308,
		0.897066, -0.428307, 0.108743,
		0.415259, 0.901215, 0.123982,
		36.677608, 38.054874, 20.097031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752117, 37.379993, 20.584681>,  <36.386929, 37.424026, 20.010242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752117, 37.379993, 20.584681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684940, 37.770996, 20.533646>,  <36.644634, 38.005596, 20.503025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684940, 37.770996, 20.533646>,  <36.752117, 37.379993, 20.584681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684940, 37.770996, 20.533646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009531, 0.127811, 0.991752,
		0.985751, 0.167771, -0.012148,
		-0.167940, 0.977505, -0.127589,
		36.634560, 38.064247, 20.495369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264042, 37.791706, 21.078123>,  <36.752117, 37.379993, 20.584681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264042, 37.791706, 21.078123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985630, 38.067196, 20.996929>,  <36.818584, 38.232491, 20.948214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985630, 38.067196, 20.996929>,  <37.264042, 37.791706, 21.078123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985630, 38.067196, 20.996929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054186, 0.231509, 0.971322,
		0.715968, 0.687065, -0.123817,
		-0.696027, 0.688727, -0.202983,
		36.776821, 38.273815, 20.936035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378071, 38.291553, 21.608486>,  <37.264042, 37.791706, 21.078123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378071, 38.291553, 21.608486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001244, 38.367664, 21.497990>,  <36.775146, 38.413330, 21.431692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001244, 38.367664, 21.497990>,  <37.378071, 38.291553, 21.608486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001244, 38.367664, 21.497990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218967, 0.275005, 0.936176,
		0.254104, 0.942425, -0.217407,
		-0.942064, 0.190281, -0.276240,
		36.718624, 38.424747, 21.415117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207497, 39.048836, 21.846729>,  <37.378071, 38.291553, 21.608486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207497, 39.048836, 21.846729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863022, 38.854542, 21.786850>,  <36.656338, 38.737965, 21.750921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863022, 38.854542, 21.786850>,  <37.207497, 39.048836, 21.846729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863022, 38.854542, 21.786850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313438, 0.275653, 0.908720,
		-0.400132, 0.829504, -0.389638,
		-0.861192, -0.485735, -0.149700,
		36.604664, 38.708820, 21.741940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695408, 39.415718, 22.151150>,  <37.207497, 39.048836, 21.846729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695408, 39.415718, 22.151150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505665, 39.064110, 22.131981>,  <36.391819, 38.853146, 22.120480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505665, 39.064110, 22.131981>,  <36.695408, 39.415718, 22.151150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505665, 39.064110, 22.131981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308331, 0.114910, 0.944313,
		-0.824569, 0.462721, -0.325539,
		-0.474361, -0.879025, -0.047920,
		36.363358, 38.800404, 22.117605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151154, 39.474220, 22.537653>,  <36.695408, 39.415718, 22.151150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151154, 39.474220, 22.537653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126740, 39.077408, 22.493574>,  <36.112091, 38.839321, 22.467127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126740, 39.077408, 22.493574>,  <36.151154, 39.474220, 22.537653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126740, 39.077408, 22.493574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241746, -0.092424, 0.965928,
		-0.968418, 0.085596, -0.234179,
		-0.061035, -0.992034, -0.110198,
		36.108429, 38.779797, 22.460514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507202, 39.161076, 22.854496>,  <36.151154, 39.474220, 22.537653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507202, 39.161076, 22.854496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764091, 38.854553, 22.847292>,  <35.918224, 38.670639, 22.842970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764091, 38.854553, 22.847292>,  <35.507202, 39.161076, 22.854496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764091, 38.854553, 22.847292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232350, -0.217012, 0.948114,
		-0.730454, -0.604715, -0.317421,
		0.642223, -0.766307, -0.018012,
		35.956757, 38.624660, 22.841888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180935, 38.479286, 23.121010>,  <35.507202, 39.161076, 22.854496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180935, 38.479286, 23.121010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576324, 38.433567, 23.160725>,  <35.813557, 38.406136, 23.184553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576324, 38.433567, 23.160725>,  <35.180935, 38.479286, 23.121010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576324, 38.433567, 23.160725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133062, -0.342997, 0.929864,
		-0.072228, -0.932356, -0.354252,
		0.988472, -0.114300, 0.099287,
		35.872868, 38.399277, 23.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353512, 37.841133, 23.322634>,  <35.180935, 38.479286, 23.121010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353512, 37.841133, 23.322634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684658, 38.034821, 23.435888>,  <35.883347, 38.151031, 23.503841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684658, 38.034821, 23.435888>,  <35.353512, 37.841133, 23.322634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684658, 38.034821, 23.435888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118311, -0.342675, 0.931975,
		0.548302, -0.805051, -0.226402,
		0.827869, 0.484217, 0.283136,
		35.933018, 38.180084, 23.520828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714668, 37.406044, 23.779884>,  <35.353512, 37.841133, 23.322634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714668, 37.406044, 23.779884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915798, 37.743546, 23.854986>,  <36.036476, 37.946045, 23.900047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915798, 37.743546, 23.854986>,  <35.714668, 37.406044, 23.779884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915798, 37.743546, 23.854986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157668, -0.124041, 0.979671,
		0.849888, -0.522205, 0.070662,
		0.502824, 0.843751, 0.187756,
		36.066647, 37.996670, 23.911312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038986, 37.225040, 24.333973>,  <35.714668, 37.406044, 23.779884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038986, 37.225040, 24.333973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032433, 37.624981, 24.335852>,  <36.028500, 37.864944, 24.336979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032433, 37.624981, 24.335852>,  <36.038986, 37.225040, 24.333973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032433, 37.624981, 24.335852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197631, -0.007845, 0.980245,
		0.980140, 0.015132, 0.197731,
		-0.016384, 0.999855, 0.004699,
		36.027515, 37.924938, 24.337261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400658, 37.508598, 24.970119>,  <36.038986, 37.225040, 24.333973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400658, 37.508598, 24.970119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147766, 37.795010, 24.851736>,  <35.996033, 37.966858, 24.780706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147766, 37.795010, 24.851736>,  <36.400658, 37.508598, 24.970119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147766, 37.795010, 24.851736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375375, 0.051081, 0.925464,
		0.677777, 0.696199, 0.236485,
		-0.632227, 0.716029, -0.295957,
		35.958099, 38.009819, 24.762949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355320, 37.847404, 25.513519>,  <36.400658, 37.508598, 24.970119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355320, 37.847404, 25.513519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035503, 38.010597, 25.337210>,  <35.843613, 38.108513, 25.231424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035503, 38.010597, 25.337210>,  <36.355320, 37.847404, 25.513519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035503, 38.010597, 25.337210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414194, 0.156903, 0.896563,
		0.434944, 0.899405, 0.043535,
		-0.799542, 0.407986, -0.440773,
		35.795639, 38.132992, 25.204977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223854, 38.383400, 25.809679>,  <36.355320, 37.847404, 25.513519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223854, 38.383400, 25.809679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868122, 38.337387, 25.632652>,  <35.654682, 38.309780, 25.526436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868122, 38.337387, 25.632652>,  <36.223854, 38.383400, 25.809679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868122, 38.337387, 25.632652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453332, 0.095012, 0.886264,
		-0.059904, 0.988807, -0.136646,
		-0.889327, -0.115037, -0.442566,
		35.601326, 38.302876, 25.499882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803310, 38.899857, 26.063173>,  <36.223854, 38.383400, 25.809679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803310, 38.899857, 26.063173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584332, 38.587376, 25.943157>,  <35.452942, 38.399887, 25.871147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584332, 38.587376, 25.943157>,  <35.803310, 38.899857, 26.063173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584332, 38.587376, 25.943157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449028, -0.028338, 0.893068,
		-0.706166, 0.623639, -0.335266,
		-0.547452, -0.781199, -0.300043,
		35.420097, 38.353016, 25.853144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227715, 38.955433, 26.540552>,  <35.803310, 38.899857, 26.063173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227715, 38.955433, 26.540552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171753, 38.590340, 26.387011>,  <35.138176, 38.371284, 26.294886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171753, 38.590340, 26.387011>,  <35.227715, 38.955433, 26.540552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171753, 38.590340, 26.387011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499694, -0.269596, 0.823179,
		-0.854829, 0.306974, -0.418370,
		-0.139904, -0.912735, -0.383852,
		35.129784, 38.316521, 26.271854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534081, 38.812252, 26.808796>,  <35.227715, 38.955433, 26.540552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534081, 38.812252, 26.808796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711315, 38.464218, 26.722422>,  <34.817657, 38.255398, 26.670597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711315, 38.464218, 26.722422>,  <34.534081, 38.812252, 26.808796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711315, 38.464218, 26.722422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446023, -0.422903, 0.788807,
		-0.777647, -0.253199, -0.575461,
		0.443089, -0.870082, -0.215937,
		34.844242, 38.203194, 26.657640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997448, 38.324543, 26.872431>,  <34.534081, 38.812252, 26.808796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997448, 38.324543, 26.872431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334324, 38.110256, 26.896820>,  <34.536449, 37.981682, 26.911453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334324, 38.110256, 26.896820>,  <33.997448, 38.324543, 26.872431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334324, 38.110256, 26.896820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401835, -0.548231, 0.733466,
		-0.359503, -0.642221, -0.676986,
		0.842191, -0.535720, 0.060976,
		34.586983, 37.949539, 26.915113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789444, 37.612999, 26.988737>,  <33.997448, 38.324543, 26.872431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789444, 37.612999, 26.988737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159557, 37.653030, 27.135069>,  <34.381626, 37.677048, 27.222868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159557, 37.653030, 27.135069>,  <33.789444, 37.612999, 26.988737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159557, 37.653030, 27.135069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273380, -0.492584, 0.826211,
		0.262888, -0.864491, -0.428421,
		0.925286, 0.100079, 0.365829,
		34.437141, 37.683056, 27.244818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951138, 36.907284, 27.129942>,  <33.789444, 37.612999, 26.988737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951138, 36.907284, 27.129942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202969, 37.140682, 27.335142>,  <34.354069, 37.280720, 27.458261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202969, 37.140682, 27.335142>,  <33.951138, 36.907284, 27.129942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202969, 37.140682, 27.335142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300872, -0.425660, 0.853399,
		0.716315, -0.691628, -0.092429,
		0.629578, 0.583493, 0.512998,
		34.391842, 37.315731, 27.489042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125343, 36.471394, 27.682217>,  <33.951138, 36.907284, 27.129942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125343, 36.471394, 27.682217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228760, 36.845325, 27.779585>,  <34.290810, 37.069683, 27.838007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228760, 36.845325, 27.779585>,  <34.125343, 36.471394, 27.682217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228760, 36.845325, 27.779585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323125, -0.153784, 0.933778,
		0.910356, -0.320074, 0.262307,
		0.258540, 0.934828, 0.243422,
		34.306320, 37.125774, 27.852612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619469, 36.428753, 28.216806>,  <34.125343, 36.471394, 27.682217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619469, 36.428753, 28.216806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456779, 36.790257, 28.270168>,  <34.359165, 37.007156, 28.302185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456779, 36.790257, 28.270168>,  <34.619469, 36.428753, 28.216806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456779, 36.790257, 28.270168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129885, -0.201754, 0.970786,
		0.904270, 0.377517, 0.199443,
		-0.406727, 0.903757, 0.133406,
		34.334763, 37.061382, 28.310190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880127, 36.667816, 28.843016>,  <34.619469, 36.428753, 28.216806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880127, 36.667816, 28.843016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558098, 36.894276, 28.772221>,  <34.364880, 37.030151, 28.729744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558098, 36.894276, 28.772221>,  <34.880127, 36.667816, 28.843016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558098, 36.894276, 28.772221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333534, -0.185325, 0.924343,
		0.490517, 0.803199, 0.338032,
		-0.805077, 0.566151, -0.176989,
		34.316574, 37.064121, 28.719124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759663, 37.061913, 29.540184>,  <34.880127, 36.667816, 28.843016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759663, 37.061913, 29.540184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409573, 37.074051, 29.347080>,  <34.199520, 37.081333, 29.231218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409573, 37.074051, 29.347080>,  <34.759663, 37.061913, 29.540184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409573, 37.074051, 29.347080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475727, -0.234616, 0.847726,
		-0.087540, 0.971614, 0.219778,
		-0.875226, 0.030344, -0.482761,
		34.147003, 37.083153, 29.202251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426552, 37.483997, 29.910051>,  <34.759663, 37.061913, 29.540184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426552, 37.483997, 29.910051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139416, 37.274452, 29.726629>,  <33.967133, 37.148724, 29.616577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139416, 37.274452, 29.726629>,  <34.426552, 37.483997, 29.910051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139416, 37.274452, 29.726629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450621, -0.152460, 0.879600,
		-0.530699, 0.838048, -0.126621,
		-0.717843, -0.523861, -0.458553,
		33.924065, 37.117294, 29.589064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724411, 37.633144, 30.118689>,  <34.426552, 37.483997, 29.910051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724411, 37.633144, 30.118689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662937, 37.289204, 29.923944>,  <33.626053, 37.082840, 29.807098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662937, 37.289204, 29.923944>,  <33.724411, 37.633144, 30.118689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662937, 37.289204, 29.923944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598618, -0.310987, 0.738203,
		-0.786153, 0.404898, -0.466928,
		-0.153688, -0.859852, -0.486863,
		33.616829, 37.031250, 29.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104771, 37.451733, 30.442614>,  <33.724411, 37.633144, 30.118689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104771, 37.451733, 30.442614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206841, 37.118832, 30.245745>,  <33.268082, 36.919090, 30.127623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206841, 37.118832, 30.245745>,  <33.104771, 37.451733, 30.442614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206841, 37.118832, 30.245745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426326, -0.553717, 0.715292,
		-0.867832, 0.027302, -0.496107,
		0.255175, -0.832257, -0.492173,
		33.283394, 36.869156, 30.098093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478046, 37.007355, 30.364542>,  <33.104771, 37.451733, 30.442614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478046, 37.007355, 30.364542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809494, 36.783470, 30.360163>,  <33.008362, 36.649139, 30.357534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809494, 36.783470, 30.360163>,  <32.478046, 37.007355, 30.364542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809494, 36.783470, 30.360163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363351, -0.552591, 0.750080,
		-0.425877, -0.617550, -0.661257,
		0.828616, -0.559710, -0.010948,
		33.058079, 36.615559, 30.356878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178116, 36.386436, 30.528900>,  <32.478046, 37.007355, 30.364542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178116, 36.386436, 30.528900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571598, 36.363312, 30.596994>,  <32.807686, 36.349438, 30.637852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571598, 36.363312, 30.596994>,  <32.178116, 36.386436, 30.528900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571598, 36.363312, 30.596994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171606, -0.584257, 0.793219,
		0.053607, -0.809508, -0.584657,
		0.983706, -0.057809, 0.170236,
		32.866711, 36.345970, 30.648066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195530, 35.731709, 30.934341>,  <32.178116, 36.386436, 30.528900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195530, 35.731709, 30.934341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547821, 35.910915, 30.995802>,  <32.759193, 36.018440, 31.032679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547821, 35.910915, 30.995802>,  <32.195530, 35.731709, 30.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547821, 35.910915, 30.995802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136522, -0.550776, 0.823412,
		0.453527, -0.704222, -0.546246,
		0.880724, 0.448014, 0.153650,
		32.812038, 36.045319, 31.041897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756561, 35.176907, 31.128740>,  <32.195530, 35.731709, 30.934341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756561, 35.176907, 31.128740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870625, 35.526775, 31.285528>,  <32.939064, 35.736694, 31.379601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870625, 35.526775, 31.285528>,  <32.756561, 35.176907, 31.128740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870625, 35.526775, 31.285528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033898, -0.417895, 0.907863,
		0.957881, -0.245597, -0.148816,
		0.285158, 0.874669, 0.391968,
		32.956173, 35.789177, 31.403118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471424, 35.050987, 31.429560>,  <32.756561, 35.176907, 31.128740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471424, 35.050987, 31.429560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288067, 35.365749, 31.594801>,  <33.178055, 35.554607, 31.693945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288067, 35.365749, 31.594801>,  <33.471424, 35.050987, 31.429560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288067, 35.365749, 31.594801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002481, -0.463678, 0.886000,
		0.888747, 0.407159, 0.210593,
		-0.458391, 0.786908, 0.413103,
		33.150551, 35.601822, 31.718731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741203, 35.014965, 31.999681>,  <33.471424, 35.050987, 31.429560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741203, 35.014965, 31.999681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447048, 35.265846, 32.102306>,  <33.270554, 35.416374, 32.163879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447048, 35.265846, 32.102306>,  <33.741203, 35.014965, 31.999681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447048, 35.265846, 32.102306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007372, -0.371176, 0.928533,
		0.677608, 0.684722, 0.268334,
		-0.735387, 0.627203, 0.256560,
		33.226433, 35.454006, 32.179276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989407, 35.482647, 32.523331>,  <33.741203, 35.014965, 31.999681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989407, 35.482647, 32.523331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592228, 35.455967, 32.562550>,  <33.353920, 35.439960, 32.586079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592228, 35.455967, 32.562550>,  <33.989407, 35.482647, 32.523331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592228, 35.455967, 32.562550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117796, -0.460012, 0.880064,
		-0.013596, 0.885404, 0.464623,
		-0.992945, -0.066696, 0.098043,
		33.294346, 35.435959, 32.591961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496326, 35.807972, 32.975464>,  <33.989407, 35.482647, 32.523331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496326, 35.807972, 32.975464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763271, 36.032684, 33.171028>,  <34.923439, 36.167511, 33.288368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763271, 36.032684, 33.171028>,  <34.496326, 35.807972, 32.975464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763271, 36.032684, 33.171028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390537, 0.294994, -0.872043,
		-0.634120, 0.772907, -0.022526,
		0.667363, 0.561777, 0.488910,
		34.963482, 36.201218, 33.317699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422390, 36.630177, 32.942905>,  <34.496326, 35.807972, 32.975464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422390, 36.630177, 32.942905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784786, 36.462059, 32.963039>,  <35.002224, 36.361191, 32.975121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784786, 36.462059, 32.963039>,  <34.422390, 36.630177, 32.942905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784786, 36.462059, 32.963039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168698, 0.249458, -0.953578,
		0.388225, 0.872426, 0.296909,
		0.905993, -0.420291, 0.050331,
		35.056583, 36.335972, 32.978138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969536, 37.162521, 32.715378>,  <34.422390, 36.630177, 32.942905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969536, 37.162521, 32.715378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126667, 36.796932, 32.674725>,  <35.220947, 36.577579, 32.650333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126667, 36.796932, 32.674725>,  <34.969536, 37.162521, 32.715378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126667, 36.796932, 32.674725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513228, 0.309600, -0.800466,
		0.763073, 0.262288, 0.590699,
		0.392833, -0.913977, -0.101634,
		35.244518, 36.522739, 32.644234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706844, 37.350296, 32.570866>,  <34.969536, 37.162521, 32.715378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706844, 37.350296, 32.570866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625202, 36.985020, 32.429768>,  <35.576218, 36.765854, 32.345108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625202, 36.985020, 32.429768>,  <35.706844, 37.350296, 32.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625202, 36.985020, 32.429768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476622, 0.222043, -0.850605,
		0.855086, -0.341741, 0.389925,
		-0.204106, -0.913187, -0.352747,
		35.563969, 36.711063, 32.323944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264198, 37.147842, 32.358597>,  <35.706844, 37.350296, 32.570866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264198, 37.147842, 32.358597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022186, 36.908276, 32.148743>,  <35.876980, 36.764538, 32.022831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022186, 36.908276, 32.148743>,  <36.264198, 37.147842, 32.358597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022186, 36.908276, 32.148743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477848, 0.253913, -0.840945,
		0.636865, -0.759493, 0.132565,
		-0.605032, -0.598914, -0.524631,
		35.840675, 36.728600, 31.991354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715733, 36.899361, 31.907763>,  <36.264198, 37.147842, 32.358597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715733, 36.899361, 31.907763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355911, 36.847515, 31.740911>,  <36.140018, 36.816410, 31.640800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355911, 36.847515, 31.740911>,  <36.715733, 36.899361, 31.907763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355911, 36.847515, 31.740911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399364, 0.142764, -0.905608,
		0.176923, -0.981234, -0.076665,
		-0.899559, -0.129606, -0.417128,
		36.086044, 36.808632, 31.615772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850956, 36.603706, 31.353540>,  <36.715733, 36.899361, 31.907763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850956, 36.603706, 31.353540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483150, 36.747643, 31.290274>,  <36.262466, 36.834003, 31.252314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483150, 36.747643, 31.290274>,  <36.850956, 36.603706, 31.353540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483150, 36.747643, 31.290274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284638, 0.332067, -0.899285,
		-0.271078, -0.871921, -0.407763,
		-0.919510, 0.359841, -0.158166,
		36.207298, 36.855595, 31.242825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606220, 36.312450, 30.686747>,  <36.850956, 36.603706, 31.353540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606220, 36.312450, 30.686747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372978, 36.632664, 30.742085>,  <36.233032, 36.824791, 30.775288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372978, 36.632664, 30.742085>,  <36.606220, 36.312450, 30.686747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372978, 36.632664, 30.742085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272451, 0.353127, -0.895026,
		-0.765350, -0.484201, -0.424015,
		-0.583104, 0.800531, 0.138345,
		36.198048, 36.872822, 30.783588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208447, 36.428024, 30.058401>,  <36.606220, 36.312450, 30.686747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208447, 36.428024, 30.058401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235439, 36.774979, 30.255617>,  <36.251633, 36.983150, 30.373947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235439, 36.774979, 30.255617>,  <36.208447, 36.428024, 30.058401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235439, 36.774979, 30.255617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155011, 0.479050, -0.863992,
		-0.985606, 0.134727, -0.102129,
		0.067478, 0.867387, 0.493039,
		36.255684, 37.035194, 30.403528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781223, 36.963142, 29.697412>,  <36.208447, 36.428024, 30.058401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781223, 36.963142, 29.697412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035126, 37.182499, 29.915165>,  <36.187466, 37.314114, 30.045816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035126, 37.182499, 29.915165>,  <35.781223, 36.963142, 29.697412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035126, 37.182499, 29.915165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298048, 0.476232, -0.827267,
		-0.712917, 0.687366, 0.138845,
		0.634757, 0.548390, 0.544381,
		36.225552, 37.347015, 30.078480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814362, 37.514469, 29.344534>,  <35.781223, 36.963142, 29.697412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814362, 37.514469, 29.344534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124790, 37.604843, 29.580048>,  <36.311047, 37.659065, 29.721355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124790, 37.604843, 29.580048>,  <35.814362, 37.514469, 29.344534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124790, 37.604843, 29.580048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322807, 0.659724, -0.678646,
		-0.541761, 0.716742, 0.439062,
		0.776074, 0.225931, 0.588782,
		36.357613, 37.672623, 29.756681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932472, 38.224789, 29.363512>,  <35.814362, 37.514469, 29.344534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932472, 38.224789, 29.363512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282169, 38.062500, 29.470160>,  <36.491989, 37.965126, 29.534147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282169, 38.062500, 29.470160>,  <35.932472, 38.224789, 29.363512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282169, 38.062500, 29.470160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459748, 0.515457, -0.723143,
		0.155962, 0.754783, 0.637165,
		0.874247, -0.405718, 0.266619,
		36.544445, 37.940784, 29.550144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400658, 38.751312, 29.268373>,  <35.932472, 38.224789, 29.363512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400658, 38.751312, 29.268373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634071, 38.426495, 29.271814>,  <36.774120, 38.231606, 29.273880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634071, 38.426495, 29.271814>,  <36.400658, 38.751312, 29.268373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634071, 38.426495, 29.271814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441249, 0.308151, -0.842818,
		0.681754, 0.495610, 0.538129,
		0.583534, -0.812043, 0.008605,
		36.809132, 38.182880, 29.274395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983597, 38.989273, 28.998768>,  <36.400658, 38.751312, 29.268373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983597, 38.989273, 28.998768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005787, 38.590900, 28.970375>,  <37.019100, 38.351875, 28.953339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005787, 38.590900, 28.970375>,  <36.983597, 38.989273, 28.998768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005787, 38.590900, 28.970375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582447, 0.090022, -0.807869,
		0.810974, 0.003470, 0.585072,
		0.055473, -0.995934, -0.070984,
		37.022430, 38.292122, 28.949080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703869, 38.886169, 28.833197>,  <36.983597, 38.989273, 28.998768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703869, 38.886169, 28.833197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530609, 38.545025, 28.716572>,  <37.426651, 38.340340, 28.646597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530609, 38.545025, 28.716572>,  <37.703869, 38.886169, 28.833197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530609, 38.545025, 28.716572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428818, 0.089528, -0.898944,
		0.792776, -0.514408, 0.326942,
		-0.433154, -0.852859, -0.291563,
		37.400661, 38.289165, 28.629103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247204, 38.533615, 28.500587>,  <37.703869, 38.886169, 28.833197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247204, 38.533615, 28.500587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913685, 38.377045, 28.344856>,  <37.713573, 38.283104, 28.251417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913685, 38.377045, 28.344856>,  <38.247204, 38.533615, 28.500587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913685, 38.377045, 28.344856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475083, -0.149501, -0.867148,
		0.281216, -0.907986, 0.310611,
		-0.833795, -0.391422, -0.389327,
		37.663548, 38.259617, 28.228058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492786, 37.970623, 28.034180>,  <38.247204, 38.533615, 28.500587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492786, 37.970623, 28.034180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120396, 38.055321, 27.915216>,  <37.896961, 38.106140, 27.843840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120396, 38.055321, 27.915216>,  <38.492786, 37.970623, 28.034180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120396, 38.055321, 27.915216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272703, -0.138292, -0.952107,
		-0.242734, -0.967491, 0.071003,
		-0.930974, 0.211746, -0.297406,
		37.841103, 38.118843, 27.825994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511154, 37.629745, 27.449045>,  <38.492786, 37.970623, 28.034180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511154, 37.629745, 27.449045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186821, 37.863377, 27.434071>,  <37.992222, 38.003555, 27.425085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186821, 37.863377, 27.434071>,  <38.511154, 37.629745, 27.449045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186821, 37.863377, 27.434071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167992, 0.170981, -0.970847,
		-0.560652, -0.793483, -0.236757,
		-0.810832, 0.584081, -0.037438,
		37.943573, 38.038601, 27.422840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125935, 37.394485, 26.985884>,  <38.511154, 37.629745, 27.449045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125935, 37.394485, 26.985884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010174, 37.777153, 26.998789>,  <37.940720, 38.006752, 27.006533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010174, 37.777153, 26.998789>,  <38.125935, 37.394485, 26.985884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010174, 37.777153, 26.998789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185553, 0.089134, -0.978583,
		-0.939052, -0.277213, -0.203307,
		-0.289398, 0.956665, 0.032264,
		37.923355, 38.064152, 27.008469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685856, 37.508984, 26.400814>,  <38.125935, 37.394485, 26.985884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685856, 37.508984, 26.400814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802402, 37.876072, 26.508806>,  <37.872330, 38.096325, 26.573603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802402, 37.876072, 26.508806>,  <37.685856, 37.508984, 26.400814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802402, 37.876072, 26.508806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432636, 0.125297, -0.892820,
		-0.853188, 0.376944, -0.360532,
		0.291369, 0.917722, 0.269982,
		37.889812, 38.151390, 26.589800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448528, 37.929882, 25.835649>,  <37.685856, 37.508984, 26.400814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448528, 37.929882, 25.835649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762859, 38.092049, 26.022457>,  <37.951458, 38.189350, 26.134541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762859, 38.092049, 26.022457>,  <37.448528, 37.929882, 25.835649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762859, 38.092049, 26.022457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467340, 0.105299, -0.877785,
		-0.405046, 0.908047, -0.106720,
		0.785832, 0.405418, 0.467017,
		37.998608, 38.213673, 26.162561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654091, 38.536190, 25.509027>,  <37.448528, 37.929882, 25.835649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654091, 38.536190, 25.509027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992107, 38.418205, 25.687426>,  <38.194916, 38.347416, 25.794464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992107, 38.418205, 25.687426>,  <37.654091, 38.536190, 25.509027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992107, 38.418205, 25.687426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495786, 0.119813, -0.860140,
		0.200272, 0.947968, 0.247484,
		0.845037, -0.294961, 0.445994,
		38.245617, 38.329716, 25.821224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315327, 39.031006, 25.290390>,  <37.654091, 38.536190, 25.509027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315327, 39.031006, 25.290390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362885, 38.639915, 25.359573>,  <38.391418, 38.405262, 25.401083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362885, 38.639915, 25.359573>,  <38.315327, 39.031006, 25.290390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362885, 38.639915, 25.359573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329340, -0.125500, -0.935834,
		0.936696, 0.168224, 0.307084,
		0.118891, -0.977727, 0.172958,
		38.398552, 38.346596, 25.411461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974686, 38.882114, 25.035814>,  <38.315327, 39.031006, 25.290390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974686, 38.882114, 25.035814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742859, 38.556145, 25.036385>,  <38.603764, 38.360565, 25.036726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742859, 38.556145, 25.036385>,  <38.974686, 38.882114, 25.035814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742859, 38.556145, 25.036385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243794, -0.175054, -0.953898,
		0.777601, -0.552503, 0.300129,
		-0.579570, -0.814921, 0.001425,
		38.568989, 38.311668, 25.036812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357403, 38.504356, 24.591166>,  <38.974686, 38.882114, 25.035814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357403, 38.504356, 24.591166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994404, 38.336864, 24.604540>,  <38.776604, 38.236370, 24.612564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994404, 38.336864, 24.604540>,  <39.357403, 38.504356, 24.591166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994404, 38.336864, 24.604540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097379, -0.287141, -0.952926,
		0.408619, -0.861520, 0.301354,
		-0.907495, -0.418729, 0.033437,
		38.722157, 38.211246, 24.614571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406742, 37.818062, 24.266373>,  <39.357403, 38.504356, 24.591166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406742, 37.818062, 24.266373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011047, 37.873932, 24.248913>,  <38.773632, 37.907452, 24.238436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011047, 37.873932, 24.248913>,  <39.406742, 37.818062, 24.266373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011047, 37.873932, 24.248913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002892, -0.316906, -0.948452,
		-0.146305, -0.938117, 0.313899,
		-0.989235, 0.139671, -0.043651,
		38.714275, 37.915833, 24.235817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090443, 37.145805, 24.100889>,  <39.406742, 37.818062, 24.266373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090443, 37.145805, 24.100889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865517, 37.458008, 23.991621>,  <38.730560, 37.645329, 23.926060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865517, 37.458008, 23.991621>,  <39.090443, 37.145805, 24.100889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865517, 37.458008, 23.991621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132211, -0.241236, -0.961419,
		-0.816288, -0.576732, 0.032458,
		-0.562311, 0.780503, -0.273169,
		38.696823, 37.692158, 23.909670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592800, 36.826263, 23.586138>,  <39.090443, 37.145805, 24.100889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592800, 36.826263, 23.586138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641205, 37.219116, 23.528492>,  <38.670246, 37.454830, 23.493904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641205, 37.219116, 23.528492>,  <38.592800, 36.826263, 23.586138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641205, 37.219116, 23.528492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087950, -0.155219, -0.983957,
		-0.988747, 0.106397, -0.105163,
		0.121013, 0.982134, -0.144115,
		38.677509, 37.513756, 23.485258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282364, 36.871620, 23.012180>,  <38.592800, 36.826263, 23.586138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282364, 36.871620, 23.012180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499763, 37.206894, 23.030348>,  <38.630203, 37.408058, 23.041248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499763, 37.206894, 23.030348>,  <38.282364, 36.871620, 23.012180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499763, 37.206894, 23.030348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188563, -0.069184, -0.979621,
		-0.817959, 0.540983, -0.195651,
		0.543495, 0.838183, 0.045420,
		38.662811, 37.458347, 23.043974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085293, 37.147354, 22.426538>,  <38.282364, 36.871620, 23.012180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085293, 37.147354, 22.426538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422188, 37.350204, 22.499695>,  <38.624325, 37.471916, 22.543589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422188, 37.350204, 22.499695>,  <38.085293, 37.147354, 22.426538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422188, 37.350204, 22.499695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217915, -0.009957, -0.975917,
		-0.493093, 0.861814, -0.118897,
		0.842242, 0.507128, 0.182893,
		38.674862, 37.502342, 22.554564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261341, 37.578045, 21.834736>,  <38.085293, 37.147354, 22.426538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261341, 37.578045, 21.834736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624424, 37.554523, 22.000923>,  <38.842274, 37.540409, 22.100636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624424, 37.554523, 22.000923>,  <38.261341, 37.578045, 21.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624424, 37.554523, 22.000923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411617, -0.067544, -0.908850,
		0.081510, 0.995982, -0.037104,
		0.907704, -0.058808, 0.415469,
		38.896736, 37.536880, 22.125565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655041, 37.856911, 21.333775>,  <38.261341, 37.578045, 21.834736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655041, 37.856911, 21.333775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949467, 37.711113, 21.561932>,  <39.126122, 37.623634, 21.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949467, 37.711113, 21.561932>,  <38.655041, 37.856911, 21.333775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949467, 37.711113, 21.561932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483274, -0.307056, -0.819856,
		0.473977, 0.879124, -0.049861,
		0.736065, -0.364496, 0.570395,
		39.170288, 37.601765, 21.733049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316864, 38.132160, 21.116001>,  <38.655041, 37.856911, 21.333775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316864, 38.132160, 21.116001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417507, 37.799648, 21.314259>,  <39.477894, 37.600140, 21.433214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417507, 37.799648, 21.314259>,  <39.316864, 38.132160, 21.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417507, 37.799648, 21.314259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554760, -0.295768, -0.777665,
		0.793056, 0.470628, 0.386745,
		0.251604, -0.831282, 0.495646,
		39.492989, 37.550262, 21.462952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001587, 38.100826, 20.991468>,  <39.316864, 38.132160, 21.116001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001587, 38.100826, 20.991468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877895, 37.731998, 21.084562>,  <39.803680, 37.510700, 21.140419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877895, 37.731998, 21.084562>,  <40.001587, 38.100826, 20.991468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877895, 37.731998, 21.084562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583020, -0.377158, -0.719611,
		0.751308, -0.086839, 0.654214,
		-0.309232, -0.922069, 0.232733,
		39.785126, 37.455379, 21.154383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666748, 37.598099, 21.003326>,  <40.001587, 38.100826, 20.991468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666748, 37.598099, 21.003326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339592, 37.372982, 20.955473>,  <40.143299, 37.237911, 20.926762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339592, 37.372982, 20.955473>,  <40.666748, 37.598099, 21.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339592, 37.372982, 20.955473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488509, -0.569385, -0.661180,
		0.303992, -0.599216, 0.740627,
		-0.817892, -0.562797, -0.119634,
		40.094223, 37.204144, 20.919582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918072, 36.939781, 20.896517>,  <40.666748, 37.598099, 21.003326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918072, 36.939781, 20.896517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538494, 36.900524, 20.776604>,  <40.310745, 36.876972, 20.704655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538494, 36.900524, 20.776604>,  <40.918072, 36.939781, 20.896517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538494, 36.900524, 20.776604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303606, -0.542029, -0.783600,
		-0.085589, -0.834610, 0.544152,
		-0.948946, -0.098140, -0.299784,
		40.253811, 36.871082, 20.686668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755096, 36.244938, 20.813042>,  <40.918072, 36.939781, 20.896517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755096, 36.244938, 20.813042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525669, 36.455242, 20.561773>,  <40.388012, 36.581425, 20.411013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525669, 36.455242, 20.561773>,  <40.755096, 36.244938, 20.813042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525669, 36.455242, 20.561773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475173, -0.411100, -0.777951,
		-0.667258, -0.744694, -0.014036,
		-0.573565, 0.525764, -0.628169,
		40.353600, 36.612972, 20.373323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480522, 35.827553, 20.141319>,  <40.755096, 36.244938, 20.813042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480522, 35.827553, 20.141319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477367, 36.213543, 20.036425>,  <40.475475, 36.445137, 19.973488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477367, 36.213543, 20.036425>,  <40.480522, 35.827553, 20.141319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477367, 36.213543, 20.036425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222182, -0.253996, -0.941340,
		-0.974973, -0.065692, -0.212395,
		-0.007891, 0.964972, -0.262235,
		40.474998, 36.503033, 19.957754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091171, 35.671791, 19.787680>,  <40.480522, 35.827553, 20.141319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091171, 35.671791, 19.787680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405968, 35.443336, 19.881020>,  <41.594845, 35.306263, 19.937023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405968, 35.443336, 19.881020>,  <41.091171, 35.671791, 19.787680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405968, 35.443336, 19.881020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392586, -0.171807, 0.903526,
		-0.475943, -0.802676, -0.359429,
		0.786991, -0.571134, 0.233349,
		41.642067, 35.271996, 19.951025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797703, 35.021614, 20.025269>,  <41.091171, 35.671791, 19.787680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797703, 35.021614, 20.025269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165741, 35.049381, 20.179470>,  <41.386562, 35.066044, 20.271992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165741, 35.049381, 20.179470>,  <40.797703, 35.021614, 20.025269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165741, 35.049381, 20.179470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370031, -0.168790, 0.913557,
		0.128490, -0.983204, -0.129614,
		0.920091, 0.069422, 0.385504,
		41.441769, 35.070206, 20.295120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761349, 34.564846, 20.556540>,  <40.797703, 35.021614, 20.025269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761349, 34.564846, 20.556540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065838, 34.808712, 20.644955>,  <41.248531, 34.955032, 20.698004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065838, 34.808712, 20.644955>,  <40.761349, 34.564846, 20.556540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065838, 34.808712, 20.644955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219279, -0.078788, 0.972476,
		0.610298, -0.788735, 0.073712,
		0.761218, 0.609664, 0.221036,
		41.294205, 34.991611, 20.711266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135571, 34.247482, 21.088455>,  <40.761349, 34.564846, 20.556540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135571, 34.247482, 21.088455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216640, 34.637825, 21.121010>,  <41.265282, 34.872032, 21.140543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216640, 34.637825, 21.121010>,  <41.135571, 34.247482, 21.088455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216640, 34.637825, 21.121010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131375, -0.055266, 0.989791,
		0.970394, -0.211298, 0.117003,
		0.202675, 0.975858, 0.081389,
		41.277443, 34.930584, 21.145426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466644, 34.257233, 21.610390>,  <41.135571, 34.247482, 21.088455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466644, 34.257233, 21.610390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391865, 34.650047, 21.600100>,  <41.346996, 34.885735, 21.593925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391865, 34.650047, 21.600100>,  <41.466644, 34.257233, 21.610390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391865, 34.650047, 21.600100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191756, -0.010794, 0.981383,
		0.963473, 0.188399, 0.190329,
		-0.186946, 0.982033, -0.025727,
		41.335781, 34.944656, 21.592382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791603, 34.520344, 22.176725>,  <41.466644, 34.257233, 21.610390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791603, 34.520344, 22.176725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536255, 34.817272, 22.095293>,  <41.383045, 34.995430, 22.046434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536255, 34.817272, 22.095293>,  <41.791603, 34.520344, 22.176725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536255, 34.817272, 22.095293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270680, 0.031099, 0.962167,
		0.720569, 0.669321, 0.181079,
		-0.638367, 0.742323, -0.203580,
		41.344746, 35.039970, 22.034220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891460, 34.970768, 22.698826>,  <41.791603, 34.520344, 22.176725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891460, 34.970768, 22.698826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543934, 35.096889, 22.546120>,  <41.335419, 35.172562, 22.454496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543934, 35.096889, 22.546120>,  <41.891460, 34.970768, 22.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543934, 35.096889, 22.546120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353624, 0.144550, 0.924151,
		0.346576, 0.937916, -0.014087,
		-0.868813, 0.315307, -0.381767,
		41.283291, 35.191483, 22.431589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696148, 35.550312, 23.087154>,  <41.891460, 34.970768, 22.698826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696148, 35.550312, 23.087154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347389, 35.441582, 22.924229>,  <41.138134, 35.376343, 22.826473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347389, 35.441582, 22.924229>,  <41.696148, 35.550312, 23.087154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347389, 35.441582, 22.924229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449310, 0.113328, 0.886159,
		-0.194724, 0.955649, -0.220946,
		-0.871896, -0.271829, -0.407315,
		41.085819, 35.360031, 22.802034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208496, 36.075897, 23.331532>,  <41.696148, 35.550312, 23.087154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208496, 36.075897, 23.331532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996326, 35.751362, 23.233232>,  <40.869026, 35.556641, 23.174253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996326, 35.751362, 23.233232>,  <41.208496, 36.075897, 23.331532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996326, 35.751362, 23.233232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383850, -0.028609, 0.922952,
		-0.755853, 0.583882, -0.296256,
		-0.530419, -0.811334, -0.245748,
		40.837200, 35.507961, 23.159508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526783, 36.244076, 23.573917>,  <41.208496, 36.075897, 23.331532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526783, 36.244076, 23.573917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547073, 35.846024, 23.540125>,  <40.559246, 35.607193, 23.519850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547073, 35.846024, 23.540125>,  <40.526783, 36.244076, 23.573917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547073, 35.846024, 23.540125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487113, -0.098496, 0.867767,
		-0.871865, -0.002864, -0.489738,
		0.050722, -0.995133, -0.084480,
		40.562290, 35.547485, 23.514780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799736, 36.065224, 23.613998>,  <40.526783, 36.244076, 23.573917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799736, 36.065224, 23.613998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016350, 35.746807, 23.722115>,  <40.146317, 35.555756, 23.786983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016350, 35.746807, 23.722115>,  <39.799736, 36.065224, 23.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016350, 35.746807, 23.722115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524941, -0.069062, 0.848332,
		-0.656644, -0.601284, -0.455276,
		0.541532, -0.796045, 0.270289,
		40.178810, 35.507992, 23.803202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368191, 35.496029, 23.869959>,  <39.799736, 36.065224, 23.613998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368191, 35.496029, 23.869959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714233, 35.424133, 24.057274>,  <39.921860, 35.380997, 24.169662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714233, 35.424133, 24.057274>,  <39.368191, 35.496029, 23.869959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714233, 35.424133, 24.057274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501508, -0.292556, 0.814187,
		-0.009344, -0.939204, -0.343233,
		0.865102, -0.179742, 0.468285,
		39.973763, 35.370213, 24.197760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209816, 35.009693, 24.283175>,  <39.368191, 35.496029, 23.869959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209816, 35.009693, 24.283175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561634, 35.098743, 24.451382>,  <39.772724, 35.152172, 24.552307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561634, 35.098743, 24.451382>,  <39.209816, 35.009693, 24.283175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561634, 35.098743, 24.451382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413305, -0.080423, 0.907034,
		0.235751, -0.971580, 0.021277,
		0.879545, 0.222629, 0.420519,
		39.825497, 35.165531, 24.577538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414371, 34.471355, 24.799469>,  <39.209816, 35.009693, 24.283175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414371, 34.471355, 24.799469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575703, 34.826553, 24.887825>,  <39.672501, 35.039673, 24.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575703, 34.826553, 24.887825>,  <39.414371, 34.471355, 24.799469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575703, 34.826553, 24.887825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423222, -0.032998, 0.905425,
		0.811302, -0.458667, 0.362510,
		0.403326, 0.887996, 0.220889,
		39.696701, 35.092953, 24.954092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705212, 34.434681, 25.485672>,  <39.414371, 34.471355, 24.799469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705212, 34.434681, 25.485672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711784, 34.830868, 25.430965>,  <39.715729, 35.068581, 25.398142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711784, 34.830868, 25.430965>,  <39.705212, 34.434681, 25.485672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711784, 34.830868, 25.430965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407981, 0.131522, 0.903467,
		0.912842, 0.040951, 0.406254,
		0.016433, 0.990467, -0.136766,
		39.716713, 35.128010, 25.389936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985989, 34.591984, 26.071745>,  <39.705212, 34.434681, 25.485672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985989, 34.591984, 26.071745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819836, 34.920193, 25.914677>,  <39.720142, 35.117119, 25.820436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819836, 34.920193, 25.914677>,  <39.985989, 34.591984, 26.071745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819836, 34.920193, 25.914677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334108, 0.263880, 0.904842,
		0.846065, 0.507054, 0.164532,
		-0.415387, 0.820526, -0.392671,
		39.695221, 35.166351, 25.796875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312897, 35.113430, 26.393099>,  <39.985989, 34.591984, 26.071745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312897, 35.113430, 26.393099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 35.226784, 26.272799>,  <39.730095, 35.294796, 26.200619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 35.226784, 26.272799>,  <40.312897, 35.113430, 26.393099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948647, 35.226784, 26.272799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254693, 0.188219, 0.948528,
		0.325401, 0.940356, -0.099222,
		-0.910629, 0.283380, -0.300749,
		39.675457, 35.311798, 26.182573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139828, 35.726601, 26.873436>,  <40.312897, 35.113430, 26.393099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139828, 35.726601, 26.873436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802734, 35.582748, 26.713203>,  <39.600479, 35.496437, 26.617064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802734, 35.582748, 26.713203>,  <40.139828, 35.726601, 26.873436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802734, 35.582748, 26.713203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471535, 0.134132, 0.871587,
		-0.259717, 0.923404, -0.282615,
		-0.842735, -0.359629, -0.400581,
		39.549915, 35.474861, 26.593029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640408, 36.129032, 27.045399>,  <40.139828, 35.726601, 26.873436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640408, 36.129032, 27.045399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426693, 35.798023, 26.976404>,  <39.298466, 35.599419, 26.935007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426693, 35.798023, 26.976404>,  <39.640408, 36.129032, 27.045399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426693, 35.798023, 26.976404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542782, 0.179427, 0.820484,
		-0.648016, 0.531997, -0.545027,
		-0.534287, -0.827518, -0.172487,
		39.266407, 35.549767, 26.924658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074841, 36.377537, 27.333143>,  <39.640408, 36.129032, 27.045399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074841, 36.377537, 27.333143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006168, 35.986221, 27.286724>,  <38.964966, 35.751431, 27.258873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006168, 35.986221, 27.286724>,  <39.074841, 36.377537, 27.333143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006168, 35.986221, 27.286724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663012, 0.027610, 0.748100,
		-0.728657, 0.205379, -0.653360,
		-0.171683, -0.978293, -0.116050,
		38.954662, 35.692734, 27.251909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348839, 36.311382, 27.387594>,  <39.074841, 36.377537, 27.333143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348839, 36.311382, 27.387594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483047, 35.940990, 27.456867>,  <38.563572, 35.718758, 27.498430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483047, 35.940990, 27.456867>,  <38.348839, 36.311382, 27.387594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483047, 35.940990, 27.456867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660636, -0.100233, 0.743985,
		-0.671554, -0.364033, -0.645364,
		0.335522, -0.925977, 0.173182,
		38.583706, 35.663197, 27.508821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760540, 35.912479, 27.643623>,  <38.348839, 36.311382, 27.387594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760540, 35.912479, 27.643623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067654, 35.677116, 27.745041>,  <38.251923, 35.535900, 27.805891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067654, 35.677116, 27.745041>,  <37.760540, 35.912479, 27.643623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067654, 35.677116, 27.745041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486067, -0.277105, 0.828826,
		-0.417431, -0.759597, -0.498763,
		0.767783, -0.588409, 0.253543,
		38.297989, 35.500595, 27.821104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439209, 35.513958, 28.046780>,  <37.760540, 35.912479, 27.643623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439209, 35.513958, 28.046780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824310, 35.452702, 28.135920>,  <38.055370, 35.415947, 28.189404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824310, 35.452702, 28.135920>,  <37.439209, 35.513958, 28.046780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824310, 35.452702, 28.135920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235433, -0.069425, 0.969408,
		-0.132983, -0.985763, -0.102892,
		0.962750, -0.153139, 0.222849,
		38.113136, 35.406761, 28.202774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464699, 35.070351, 28.648949>,  <37.439209, 35.513958, 28.046780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464699, 35.070351, 28.648949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798832, 35.289848, 28.635717>,  <37.999313, 35.421547, 28.627779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798832, 35.289848, 28.635717>,  <37.464699, 35.070351, 28.648949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798832, 35.289848, 28.635717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059647, 0.150289, 0.986841,
		0.546496, -0.822370, 0.158273,
		0.835335, 0.548745, -0.033081,
		38.049431, 35.454472, 28.625793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862522, 34.814243, 29.208292>,  <37.464699, 35.070351, 28.648949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862522, 34.814243, 29.208292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027355, 35.171967, 29.138546>,  <38.126255, 35.386600, 29.096699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027355, 35.171967, 29.138546>,  <37.862522, 34.814243, 29.208292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027355, 35.171967, 29.138546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047857, 0.169858, 0.984306,
		0.909890, -0.413957, 0.027196,
		0.412079, 0.894309, -0.174363,
		38.150978, 35.440258, 29.086237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443638, 34.859745, 29.499226>,  <37.862522, 34.814243, 29.208292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443638, 34.859745, 29.499226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392559, 35.255508, 29.471611>,  <38.361912, 35.492966, 29.455042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392559, 35.255508, 29.471611>,  <38.443638, 34.859745, 29.499226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392559, 35.255508, 29.471611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446590, 0.119509, 0.886721,
		0.885580, 0.082397, -0.457121,
		-0.127693, 0.989408, -0.069037,
		38.354252, 35.552330, 29.450899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071453, 35.176468, 29.687044>,  <38.443638, 34.859745, 29.499226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071453, 35.176468, 29.687044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799427, 35.468395, 29.714983>,  <38.636211, 35.643551, 29.731747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799427, 35.468395, 29.714983>,  <39.071453, 35.176468, 29.687044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799427, 35.468395, 29.714983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405571, 0.295131, 0.865107,
		0.610756, 0.616656, -0.496702,
		-0.680065, 0.729817, 0.069845,
		38.595406, 35.687340, 29.735937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438007, 35.815899, 29.759258>,  <39.071453, 35.176468, 29.687044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438007, 35.815899, 29.759258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081711, 35.900356, 29.920254>,  <38.867931, 35.951031, 30.016851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081711, 35.900356, 29.920254>,  <39.438007, 35.815899, 29.759258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081711, 35.900356, 29.920254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426289, 0.080925, 0.900960,
		0.157659, 0.974100, -0.162090,
		-0.890742, 0.211142, 0.402489,
		38.814487, 35.963699, 30.041000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500286, 36.417088, 30.243614>,  <39.438007, 35.815899, 29.759258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500286, 36.417088, 30.243614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171455, 36.217987, 30.354202>,  <38.974155, 36.098526, 30.420555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171455, 36.217987, 30.354202>,  <39.500286, 36.417088, 30.243614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171455, 36.217987, 30.354202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359698, -0.077604, 0.929836,
		-0.441368, 0.863843, 0.242836,
		-0.822078, -0.497748, 0.276470,
		38.924831, 36.068665, 30.437143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303009, 36.763111, 30.846767>,  <39.500286, 36.417088, 30.243614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303009, 36.763111, 30.846767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104824, 36.416176, 30.865685>,  <38.985912, 36.208015, 30.877035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104824, 36.416176, 30.865685>,  <39.303009, 36.763111, 30.846767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104824, 36.416176, 30.865685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045615, 0.028388, 0.998556,
		-0.867430, 0.496906, 0.025498,
		-0.495465, -0.867340, 0.047291,
		38.956184, 36.155975, 30.879871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938469, 36.820740, 31.462635>,  <39.303009, 36.763111, 30.846767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938469, 36.820740, 31.462635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910294, 36.432880, 31.368982>,  <38.893387, 36.200165, 31.312792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910294, 36.432880, 31.368982>,  <38.938469, 36.820740, 31.462635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910294, 36.432880, 31.368982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079961, -0.239448, 0.967611,
		-0.994306, 0.049439, 0.094402,
		-0.070442, -0.969650, -0.234131,
		38.889160, 36.141987, 31.298742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426090, 36.557938, 31.877182>,  <38.938469, 36.820740, 31.462635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426090, 36.557938, 31.877182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671799, 36.260586, 31.771303>,  <38.819221, 36.082176, 31.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671799, 36.260586, 31.771303>,  <38.426090, 36.557938, 31.877182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671799, 36.260586, 31.771303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076635, -0.277660, 0.957618,
		-0.785367, -0.608520, -0.113590,
		0.614269, -0.743376, -0.264699,
		38.856079, 36.037575, 31.691893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130524, 35.974728, 32.102814>,  <38.426090, 36.557938, 31.877182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130524, 35.974728, 32.102814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516197, 35.884933, 32.046314>,  <38.747601, 35.831059, 32.012413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516197, 35.884933, 32.046314>,  <38.130524, 35.974728, 32.102814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516197, 35.884933, 32.046314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024123, -0.456141, 0.889580,
		-0.264130, -0.861128, -0.434389,
		0.964185, -0.224486, -0.141253,
		38.805454, 35.817589, 32.003937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254494, 35.184414, 32.375992>,  <38.130524, 35.974728, 32.102814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254494, 35.184414, 32.375992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603611, 35.379654, 32.375931>,  <38.813080, 35.496796, 32.375896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603611, 35.379654, 32.375931>,  <38.254494, 35.184414, 32.375992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603611, 35.379654, 32.375931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174085, -0.311000, 0.934331,
		0.455998, -0.815500, -0.356407,
		0.872789, 0.488098, -0.000151,
		38.865448, 35.526085, 32.375885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765072, 34.666759, 32.705833>,  <38.254494, 35.184414, 32.375992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765072, 34.666759, 32.705833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954166, 35.018890, 32.721596>,  <39.067623, 35.230167, 32.731052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954166, 35.018890, 32.721596>,  <38.765072, 34.666759, 32.705833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954166, 35.018890, 32.721596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260993, -0.182586, 0.947916,
		0.841669, -0.437826, -0.316073,
		0.472733, 0.880324, 0.039407,
		39.095985, 35.282990, 32.733418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542637, 34.600471, 32.983219>,  <38.765072, 34.666759, 32.705833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542637, 34.600471, 32.983219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417694, 34.977646, 33.029346>,  <39.342728, 35.203953, 33.057022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417694, 34.977646, 33.029346>,  <39.542637, 34.600471, 32.983219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417694, 34.977646, 33.029346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159078, -0.067759, 0.984938,
		0.936552, 0.325994, -0.128836,
		-0.312354, 0.942940, 0.115318,
		39.323986, 35.260529, 33.063942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073868, 35.016682, 33.350174>,  <39.542637, 34.600471, 32.983219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073868, 35.016682, 33.350174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719013, 35.184219, 33.427689>,  <39.506100, 35.284740, 33.474197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719013, 35.184219, 33.427689>,  <40.073868, 35.016682, 33.350174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719013, 35.184219, 33.427689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162371, -0.109789, 0.980603,
		0.431992, 0.901398, 0.029391,
		-0.887141, 0.418840, 0.193789,
		39.452869, 35.309872, 33.485825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228268, 35.411598, 33.869228>,  <40.073868, 35.016682, 33.350174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228268, 35.411598, 33.869228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832340, 35.357224, 33.886059>,  <39.594784, 35.324596, 33.896156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832340, 35.357224, 33.886059>,  <40.228268, 35.411598, 33.869228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832340, 35.357224, 33.886059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047315, -0.035527, 0.998248,
		-0.134206, 0.990080, 0.041598,
		-0.989823, -0.135939, 0.042078,
		39.535393, 35.316441, 33.898682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142662, 35.485546, 34.591156>,  <40.228268, 35.411598, 33.869228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142662, 35.485546, 34.591156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786198, 35.365864, 34.454746>,  <39.572319, 35.294052, 34.372898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786198, 35.365864, 34.454746>,  <40.142662, 35.485546, 34.591156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786198, 35.365864, 34.454746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244526, -0.316382, 0.916575,
		-0.382142, 0.900209, 0.208784,
		-0.891165, -0.299209, -0.341027,
		39.518848, 35.276100, 34.352440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608795, 35.882679, 35.006454>,  <40.142662, 35.485546, 34.591156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608795, 35.882679, 35.006454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470730, 35.525173, 34.891876>,  <39.387890, 35.310669, 34.823128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470730, 35.525173, 34.891876>,  <39.608795, 35.882679, 35.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470730, 35.525173, 34.891876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298395, -0.184861, 0.936369,
		-0.889842, 0.408678, -0.202886,
		-0.345167, -0.893761, -0.286445,
		39.367180, 35.257046, 34.805943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960007, 35.860405, 35.419151>,  <39.608795, 35.882679, 35.006454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960007, 35.860405, 35.419151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045513, 35.491695, 35.289757>,  <39.096817, 35.270470, 35.212120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045513, 35.491695, 35.289757>,  <38.960007, 35.860405, 35.419151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045513, 35.491695, 35.289757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403235, -0.384871, 0.830226,
		-0.889779, -0.047030, -0.453961,
		0.213762, -0.921771, -0.323487,
		39.109642, 35.215164, 35.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285141, 35.402023, 35.360260>,  <38.960007, 35.860405, 35.419151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285141, 35.402023, 35.360260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622070, 35.193649, 35.415565>,  <38.824226, 35.068626, 35.448750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622070, 35.193649, 35.415565>,  <38.285141, 35.402023, 35.360260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622070, 35.193649, 35.415565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387416, -0.406861, 0.827268,
		-0.374693, -0.750397, -0.544527,
		0.842326, -0.520930, 0.138269,
		38.874767, 35.037369, 35.457047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018188, 34.751141, 35.692734>,  <38.285141, 35.402023, 35.360260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018188, 34.751141, 35.692734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411537, 34.705753, 35.749466>,  <38.647545, 34.678520, 35.783504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411537, 34.705753, 35.749466>,  <38.018188, 34.751141, 35.692734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411537, 34.705753, 35.749466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175161, -0.385875, 0.905770,
		-0.048043, -0.915547, -0.399331,
		0.983367, -0.113463, 0.141829,
		38.706547, 34.671715, 35.792015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138489, 34.083126, 35.891632>,  <38.018188, 34.751141, 35.692734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138489, 34.083126, 35.891632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469994, 34.262890, 36.025009>,  <38.668896, 34.370750, 36.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469994, 34.262890, 36.025009>,  <38.138489, 34.083126, 35.891632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469994, 34.262890, 36.025009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106293, -0.458587, 0.882270,
		0.549416, -0.766633, -0.332289,
		0.828760, 0.449413, 0.333443,
		38.718620, 34.397713, 36.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595505, 33.525448, 36.253506>,  <38.138489, 34.083126, 35.891632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595505, 33.525448, 36.253506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676960, 33.888184, 36.401108>,  <38.725834, 34.105827, 36.489670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676960, 33.888184, 36.401108>,  <38.595505, 33.525448, 36.253506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676960, 33.888184, 36.401108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037323, -0.383823, 0.922652,
		0.978334, -0.174116, -0.112007,
		0.203639, 0.906843, 0.369009,
		38.738052, 34.160236, 36.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173565, 33.479198, 36.722992>,  <38.595505, 33.525448, 36.253506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173565, 33.479198, 36.722992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974434, 33.807991, 36.833637>,  <38.854958, 34.005268, 36.900024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974434, 33.807991, 36.833637>,  <39.173565, 33.479198, 36.722992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974434, 33.807991, 36.833637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085334, -0.270972, 0.958797,
		0.863070, 0.500916, 0.064753,
		-0.497823, 0.821984, 0.276613,
		38.825089, 34.054585, 36.916622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444408, 33.573036, 37.283646>,  <39.173565, 33.479198, 36.722992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444408, 33.573036, 37.283646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104836, 33.782120, 37.314861>,  <38.901093, 33.907570, 37.333591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104836, 33.782120, 37.314861>,  <39.444408, 33.573036, 37.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104836, 33.782120, 37.314861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184469, -0.431440, 0.883080,
		0.495263, 0.735279, 0.462687,
		-0.848932, 0.522708, 0.078040,
		38.850155, 33.938931, 37.338272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499512, 33.841679, 38.014305>,  <39.444408, 33.573036, 37.283646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499512, 33.841679, 38.014305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118603, 33.858746, 37.893406>,  <38.890057, 33.868984, 37.820866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118603, 33.858746, 37.893406>,  <39.499512, 33.841679, 38.014305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118603, 33.858746, 37.893406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303769, -0.229756, 0.924628,
		-0.029996, 0.972313, 0.231750,
		-0.952273, 0.042663, -0.302250,
		38.832920, 33.871544, 37.802731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255703, 34.113277, 38.530846>,  <39.499512, 33.841679, 38.014305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255703, 34.113277, 38.530846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946064, 33.957275, 38.331379>,  <38.760281, 33.863674, 38.211697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946064, 33.957275, 38.331379>,  <39.255703, 34.113277, 38.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946064, 33.957275, 38.331379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462626, -0.189214, 0.866127,
		-0.432148, 0.901163, -0.033956,
		-0.774097, -0.390004, -0.498670,
		38.713837, 33.840275, 38.181778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714794, 34.492653, 38.913261>,  <39.255703, 34.113277, 38.530846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714794, 34.492653, 38.913261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601006, 34.164471, 38.714897>,  <38.532734, 33.967560, 38.595879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601006, 34.164471, 38.714897>,  <38.714794, 34.492653, 38.913261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601006, 34.164471, 38.714897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578379, -0.265662, 0.771298,
		-0.764561, 0.506238, -0.398961,
		-0.284472, -0.820455, -0.495912,
		38.515663, 33.918335, 38.566124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060707, 34.290478, 39.123676>,  <38.714794, 34.492653, 38.913261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060707, 34.290478, 39.123676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155247, 33.940960, 38.953682>,  <38.211971, 33.731247, 38.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155247, 33.940960, 38.953682>,  <38.060707, 34.290478, 39.123676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155247, 33.940960, 38.953682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406450, -0.486184, 0.773578,
		-0.882574, -0.010101, -0.470066,
		0.236352, -0.873798, -0.424988,
		38.226151, 33.678822, 38.826187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422176, 33.902348, 39.238998>,  <38.060707, 34.290478, 39.123676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422176, 33.902348, 39.238998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720154, 33.652058, 39.146454>,  <37.898941, 33.501884, 39.090927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720154, 33.652058, 39.146454>,  <37.422176, 33.902348, 39.238998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720154, 33.652058, 39.146454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363491, -0.671505, 0.645721,
		-0.559407, -0.396925, -0.727678,
		0.744941, -0.625725, -0.231366,
		37.943638, 33.464340, 39.077045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111561, 33.298416, 39.361046>,  <37.422176, 33.902348, 39.238998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111561, 33.298416, 39.361046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505432, 33.229164, 39.369392>,  <37.741756, 33.187614, 39.374401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505432, 33.229164, 39.369392>,  <37.111561, 33.298416, 39.361046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505432, 33.229164, 39.369392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126162, -0.624641, 0.770654,
		-0.120387, -0.761479, -0.636912,
		0.984678, -0.173131, 0.020871,
		37.800835, 33.177223, 39.375652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177696, 32.555565, 39.345070>,  <37.111561, 33.298416, 39.361046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177696, 32.555565, 39.345070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488007, 32.747688, 39.508766>,  <37.674194, 32.862961, 39.606983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488007, 32.747688, 39.508766>,  <37.177696, 32.555565, 39.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488007, 32.747688, 39.508766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246382, -0.366503, 0.897202,
		0.580919, -0.796857, -0.165986,
		0.775776, 0.480306, 0.409240,
		37.720741, 32.891781, 39.631538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472775, 31.928621, 39.705467>,  <37.177696, 32.555565, 39.345070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472775, 31.928621, 39.705467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645607, 32.250553, 39.868217>,  <37.749306, 32.443714, 39.965870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645607, 32.250553, 39.868217>,  <37.472775, 31.928621, 39.705467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645607, 32.250553, 39.868217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340291, -0.272315, 0.900026,
		0.835169, -0.527342, 0.156215,
		0.432082, 0.804832, 0.406879,
		37.775230, 32.492004, 39.990280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898319, 31.797228, 40.363453>,  <37.472775, 31.928621, 39.705467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898319, 31.797228, 40.363453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797436, 32.183964, 40.379509>,  <37.736904, 32.416004, 40.389141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797436, 32.183964, 40.379509>,  <37.898319, 31.797228, 40.363453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797436, 32.183964, 40.379509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263196, -0.108454, 0.958627,
		0.931191, 0.231213, 0.281822,
		-0.252212, 0.966839, 0.040137,
		37.721771, 32.474014, 40.391552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257961, 32.074383, 40.931015>,  <37.898319, 31.797228, 40.363453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257961, 32.074383, 40.931015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962334, 32.336414, 40.868206>,  <37.784958, 32.493633, 40.830521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962334, 32.336414, 40.868206>,  <38.257961, 32.074383, 40.931015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962334, 32.336414, 40.868206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264161, -0.067414, 0.962120,
		0.619675, 0.752551, 0.222869,
		-0.739068, 0.655075, -0.157020,
		37.740612, 32.532936, 40.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312950, 32.506435, 41.509422>,  <38.257961, 32.074383, 40.931015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312950, 32.506435, 41.509422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941803, 32.554752, 41.368298>,  <37.719116, 32.583744, 41.283623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941803, 32.554752, 41.368298>,  <38.312950, 32.506435, 41.509422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941803, 32.554752, 41.368298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353663, 0.015010, 0.935252,
		0.118271, 0.992564, 0.028794,
		-0.927866, 0.120797, -0.352808,
		37.663445, 32.590992, 41.262455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905434, 33.145531, 41.858788>,  <38.312950, 32.506435, 41.509422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905434, 33.145531, 41.858788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635132, 32.890781, 41.710327>,  <37.472950, 32.737934, 41.621250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635132, 32.890781, 41.710327>,  <37.905434, 33.145531, 41.858788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635132, 32.890781, 41.710327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445943, -0.047701, 0.893789,
		-0.586931, 0.769495, -0.251773,
		-0.675757, -0.636869, -0.371148,
		37.432404, 32.699722, 41.598984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191322, 33.378086, 42.070171>,  <37.905434, 33.145531, 41.858788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191322, 33.378086, 42.070171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247517, 32.984390, 42.027222>,  <37.281235, 32.748173, 42.001453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247517, 32.984390, 42.027222>,  <37.191322, 33.378086, 42.070171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247517, 32.984390, 42.027222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287534, -0.144331, 0.946833,
		-0.947411, -0.102143, -0.303280,
		0.140485, -0.984243, -0.107371,
		37.289661, 32.689117, 41.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630867, 33.007626, 42.292587>,  <37.191322, 33.378086, 42.070171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630867, 33.007626, 42.292587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924099, 32.736702, 42.317379>,  <37.100040, 32.574146, 42.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924099, 32.736702, 42.317379>,  <36.630867, 33.007626, 42.292587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924099, 32.736702, 42.317379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199947, -0.127518, 0.971473,
		-0.650087, -0.724561, -0.228907,
		0.733082, -0.677311, 0.061976,
		37.144024, 32.533508, 42.335972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365456, 32.307892, 42.593548>,  <36.630867, 33.007626, 42.292587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365456, 32.307892, 42.593548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751743, 32.383099, 42.665146>,  <36.983517, 32.428223, 42.708107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751743, 32.383099, 42.665146>,  <36.365456, 32.307892, 42.593548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751743, 32.383099, 42.665146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138353, -0.210666, 0.967718,
		0.219655, -0.959307, -0.177431,
		0.965717, 0.188016, 0.178997,
		37.041458, 32.439503, 42.718845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811291, 32.005314, 43.198223>,  <36.365456, 32.307892, 42.593548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811291, 32.005314, 43.198223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575253, 31.839638, 42.921028>,  <36.433628, 31.740231, 42.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575253, 31.839638, 42.921028>,  <36.811291, 32.005314, 43.198223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575253, 31.839638, 42.921028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623721, 0.311114, -0.717064,
		0.512601, -0.855366, 0.074754,
		-0.590095, -0.414194, -0.692987,
		36.398224, 31.715380, 42.713131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188744, 31.619211, 42.692436>,  <36.811291, 32.005314, 43.198223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188744, 31.619211, 42.692436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851250, 31.737188, 42.513050>,  <36.648754, 31.807974, 42.405418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851250, 31.737188, 42.513050>,  <37.188744, 31.619211, 42.692436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851250, 31.737188, 42.513050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518290, 0.230398, -0.823585,
		-0.139586, -0.927322, -0.347261,
		-0.843737, 0.294942, -0.448461,
		36.598129, 31.825670, 42.378513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240685, 31.450663, 41.982395>,  <37.188744, 31.619211, 42.692436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240685, 31.450663, 41.982395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006287, 31.772161, 42.023567>,  <36.865646, 31.965061, 42.048271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006287, 31.772161, 42.023567>,  <37.240685, 31.450663, 41.982395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006287, 31.772161, 42.023567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331066, 0.353415, -0.874925,
		-0.739595, -0.478630, -0.473194,
		-0.585999, 0.803748, 0.102926,
		36.830486, 32.013287, 42.054443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853905, 31.504101, 41.381584>,  <37.240685, 31.450663, 41.982395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853905, 31.504101, 41.381584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858421, 31.871309, 41.540131>,  <36.861134, 32.091637, 41.635258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858421, 31.871309, 41.540131>,  <36.853905, 31.504101, 41.381584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858421, 31.871309, 41.540131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111459, 0.392765, -0.912860,
		-0.993705, 0.054488, -0.097886,
		0.011294, 0.918023, 0.396366,
		36.861809, 32.146717, 41.659039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507381, 31.955387, 41.014248>,  <36.853905, 31.504101, 41.381584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507381, 31.955387, 41.014248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796215, 32.153450, 41.207500>,  <36.969517, 32.272289, 41.323452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796215, 32.153450, 41.207500>,  <36.507381, 31.955387, 41.014248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796215, 32.153450, 41.207500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345003, 0.347576, -0.871874,
		-0.599639, 0.796247, 0.080148,
		0.722085, 0.495158, 0.483128,
		37.012840, 32.301998, 41.352440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475288, 32.736095, 40.795757>,  <36.507381, 31.955387, 41.014248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475288, 32.736095, 40.795757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845551, 32.657261, 40.924957>,  <37.067707, 32.609959, 41.002476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845551, 32.657261, 40.924957>,  <36.475288, 32.736095, 40.795757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845551, 32.657261, 40.924957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371641, 0.313182, -0.873957,
		0.071093, 0.929017, 0.363144,
		0.925651, -0.197091, 0.322996,
		37.123245, 32.598133, 41.021854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758152, 33.288494, 40.640621>,  <36.475288, 32.736095, 40.795757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758152, 33.288494, 40.640621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073757, 33.048988, 40.695683>,  <37.263119, 32.905285, 40.728718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073757, 33.048988, 40.695683>,  <36.758152, 33.288494, 40.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073757, 33.048988, 40.695683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353615, 0.259366, -0.898713,
		0.502412, 0.757770, 0.416373,
		0.789011, -0.598761, 0.137650,
		37.310459, 32.869362, 40.736977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530735, 33.681194, 40.687607>,  <36.758152, 33.288494, 40.640621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530735, 33.681194, 40.687607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578522, 33.299599, 40.577599>,  <37.607193, 33.070641, 40.511593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578522, 33.299599, 40.577599>,  <37.530735, 33.681194, 40.687607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578522, 33.299599, 40.577599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395889, 0.299804, -0.867980,
		0.910494, -0.005183, 0.413489,
		0.119468, -0.953987, -0.275022,
		37.614361, 33.013401, 40.495090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153576, 33.718163, 40.388405>,  <37.530735, 33.681194, 40.687607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153576, 33.718163, 40.388405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020412, 33.360985, 40.267189>,  <37.940514, 33.146679, 40.194458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020412, 33.360985, 40.267189>,  <38.153576, 33.718163, 40.388405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020412, 33.360985, 40.267189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347878, 0.182399, -0.919626,
		0.876444, -0.411569, 0.249912,
		-0.332906, -0.892940, -0.303038,
		37.920540, 33.093102, 40.176277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808159, 33.361012, 40.122070>,  <38.153576, 33.718163, 40.388405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808159, 33.361012, 40.122070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466415, 33.211830, 39.977310>,  <38.261368, 33.122322, 39.890453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466415, 33.211830, 39.977310>,  <38.808159, 33.361012, 40.122070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466415, 33.211830, 39.977310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328153, 0.152811, -0.932183,
		0.402964, -0.915179, -0.008169,
		-0.854363, -0.372956, -0.361897,
		38.210106, 33.099945, 39.868740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207710, 33.493607, 39.580193>,  <38.808159, 33.361012, 40.122070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207710, 33.493607, 39.580193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840851, 33.543579, 39.428810>,  <38.620735, 33.573563, 39.337982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840851, 33.543579, 39.428810>,  <39.207710, 33.493607, 39.580193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840851, 33.543579, 39.428810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179872, -0.977138, 0.113349,
		-0.355641, 0.172031, 0.918654,
		-0.917151, 0.124929, -0.378454,
		38.565704, 33.581059, 39.315273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048840, 32.876095, 39.386810>,  <39.207710, 33.493607, 39.580193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048840, 32.876095, 39.386810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653885, 32.939121, 39.380592>,  <38.416912, 32.976936, 39.376862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653885, 32.939121, 39.380592>,  <39.048840, 32.876095, 39.386810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653885, 32.939121, 39.380592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071232, 0.354413, -0.932372,
		-0.141403, -0.921718, -0.361166,
		-0.987386, 0.157567, -0.015540,
		38.357670, 32.986393, 39.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915302, 32.636459, 38.757195>,  <39.048840, 32.876095, 39.386810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915302, 32.636459, 38.757195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613499, 32.879642, 38.856071>,  <38.432419, 33.025555, 38.915398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613499, 32.879642, 38.856071>,  <38.915302, 32.636459, 38.757195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613499, 32.879642, 38.856071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009464, 0.386691, -0.922161,
		-0.656226, -0.693436, -0.297514,
		-0.754505, 0.607961, 0.247194,
		38.387146, 33.062031, 38.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524315, 32.588627, 38.135349>,  <38.915302, 32.636459, 38.757195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524315, 32.588627, 38.135349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433224, 32.919235, 38.341267>,  <38.378571, 33.117599, 38.464817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433224, 32.919235, 38.341267>,  <38.524315, 32.588627, 38.135349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433224, 32.919235, 38.341267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187419, 0.481593, -0.856120,
		-0.955519, -0.291442, 0.045234,
		-0.227725, 0.826517, 0.514793,
		38.364906, 33.167191, 38.495705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976196, 32.836430, 37.806530>,  <38.524315, 32.588627, 38.135349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976196, 32.836430, 37.806530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068893, 33.132664, 38.058826>,  <38.124512, 33.310402, 38.210205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068893, 33.132664, 38.058826>,  <37.976196, 32.836430, 37.806530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068893, 33.132664, 38.058826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261066, 0.671955, -0.693052,
		-0.937092, -0.004058, 0.349058,
		0.231739, 0.740581, 0.630743,
		38.138416, 33.354839, 38.248051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535587, 33.453289, 37.679756>,  <37.976196, 32.836430, 37.806530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535587, 33.453289, 37.679756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884010, 33.596375, 37.814396>,  <38.093063, 33.682228, 37.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884010, 33.596375, 37.814396>,  <37.535587, 33.453289, 37.679756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884010, 33.596375, 37.814396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058200, 0.605289, -0.793875,
		-0.487724, 0.711100, 0.506422,
		0.871056, 0.357718, 0.336600,
		38.145329, 33.703690, 37.915375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501293, 34.144764, 37.589859>,  <37.535587, 33.453289, 37.679756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501293, 34.144764, 37.589859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892933, 34.078739, 37.637394>,  <38.127918, 34.039124, 37.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892933, 34.078739, 37.637394>,  <37.501293, 34.144764, 37.589859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892933, 34.078739, 37.637394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194773, 0.592668, -0.781542,
		0.058569, 0.788353, 0.612429,
		0.979098, -0.165059, 0.118838,
		38.186661, 34.029221, 37.673046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804379, 34.718884, 37.385040>,  <37.501293, 34.144764, 37.589859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804379, 34.718884, 37.385040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108395, 34.459057, 37.376999>,  <38.290802, 34.303162, 37.372173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108395, 34.459057, 37.376999>,  <37.804379, 34.718884, 37.385040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108395, 34.459057, 37.376999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384149, 0.474000, -0.792309,
		0.524187, 0.594462, 0.609789,
		0.760038, -0.649568, -0.020103,
		38.336407, 34.264187, 37.370968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399044, 35.147598, 37.343643>,  <37.804379, 34.718884, 37.385040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399044, 35.147598, 37.343643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441433, 34.784477, 37.181332>,  <38.466866, 34.566605, 37.083942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441433, 34.784477, 37.181332>,  <38.399044, 35.147598, 37.343643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441433, 34.784477, 37.181332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410397, 0.411632, -0.813716,
		0.905729, -0.080304, 0.416180,
		0.105968, -0.907805, -0.405784,
		38.473225, 34.512135, 37.059597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924488, 35.386971, 36.913006>,  <38.399044, 35.147598, 37.343643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924488, 35.386971, 36.913006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891293, 35.004276, 36.801453>,  <38.871376, 34.774662, 36.734520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891293, 35.004276, 36.801453>,  <38.924488, 35.386971, 36.913006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891293, 35.004276, 36.801453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314354, 0.240423, -0.918356,
		0.945671, -0.163881, 0.280800,
		-0.082990, -0.956734, -0.278878,
		38.866394, 34.717255, 36.717789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561981, 35.129990, 36.677197>,  <38.924488, 35.386971, 36.913006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561981, 35.129990, 36.677197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321838, 34.872372, 36.487553>,  <39.177753, 34.717800, 36.373768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321838, 34.872372, 36.487553>,  <39.561981, 35.129990, 36.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321838, 34.872372, 36.487553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478542, 0.185678, -0.858208,
		0.640752, -0.742116, 0.196726,
		-0.600362, -0.644040, -0.474108,
		39.141731, 34.679161, 36.345322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929302, 34.760712, 36.147472>,  <39.561981, 35.129990, 36.677197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929302, 34.760712, 36.147472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548809, 34.724617, 36.029480>,  <39.320515, 34.702961, 35.958683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548809, 34.724617, 36.029480>,  <39.929302, 34.760712, 36.147472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548809, 34.724617, 36.029480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264187, 0.255370, -0.930049,
		0.159255, -0.962623, -0.219076,
		-0.951232, -0.090238, -0.294981,
		39.263439, 34.697544, 35.940987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898586, 34.237198, 35.573193>,  <39.929302, 34.760712, 36.147472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898586, 34.237198, 35.573193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610081, 34.512829, 35.545059>,  <39.436977, 34.678207, 35.528179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610081, 34.512829, 35.545059>,  <39.898586, 34.237198, 35.573193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610081, 34.512829, 35.545059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177854, 0.086103, -0.980283,
		-0.669436, -0.719554, -0.184659,
		-0.721266, 0.689079, -0.070336,
		39.393700, 34.719551, 35.523960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573029, 34.033916, 34.886181>,  <39.898586, 34.237198, 35.573193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573029, 34.033916, 34.886181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487698, 34.413719, 34.978207>,  <39.436497, 34.641602, 35.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487698, 34.413719, 34.978207>,  <39.573029, 34.033916, 34.886181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487698, 34.413719, 34.978207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251133, 0.280867, -0.926307,
		-0.944152, -0.139831, -0.298370,
		-0.213329, 0.949506, 0.230065,
		39.423698, 34.698570, 35.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245491, 34.221569, 34.597008>,  <39.573029, 34.033916, 34.886181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245491, 34.221569, 34.597008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373138, 34.543781, 34.796722>,  <40.449726, 34.737110, 34.916550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373138, 34.543781, 34.796722>,  <40.245491, 34.221569, 34.597008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373138, 34.543781, 34.796722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895551, -0.428686, 0.119231,
		0.310080, 0.409084, -0.858197,
		0.319121, 0.805530, 0.499282,
		40.468876, 34.785439, 34.946507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887886, 34.447983, 34.350582>,  <40.245491, 34.221569, 34.597008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887886, 34.447983, 34.350582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863945, 34.542625, 34.738487>,  <40.849579, 34.599411, 34.971230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863945, 34.542625, 34.738487>,  <40.887886, 34.447983, 34.350582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863945, 34.542625, 34.738487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958742, -0.256843, 0.121843,
		0.277905, 0.937042, -0.211473,
		-0.059857, 0.236609, 0.969759,
		40.845989, 34.613609, 35.029415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386459, 34.886963, 34.510395>,  <40.887886, 34.447983, 34.350582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386459, 34.886963, 34.510395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316307, 34.649578, 34.824604>,  <41.274216, 34.507145, 35.013130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316307, 34.649578, 34.824604>,  <41.386459, 34.886963, 34.510395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316307, 34.649578, 34.824604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982622, -0.154788, 0.102444,
		0.060792, 0.789836, 0.610298,
		-0.175381, -0.593465, 0.785520,
		41.263695, 34.471539, 35.060261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777111, 35.142078, 35.046207>,  <41.386459, 34.886963, 34.510395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777111, 35.142078, 35.046207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733372, 34.749432, 35.108788>,  <41.707127, 34.513844, 35.146336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733372, 34.749432, 35.108788>,  <41.777111, 35.142078, 35.046207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733372, 34.749432, 35.108788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981192, -0.081406, 0.175030,
		-0.159076, 0.172649, 0.972053,
		-0.109350, -0.981614, 0.156452,
		41.700565, 34.454948, 35.155724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213516, 34.879543, 35.579453>,  <41.777111, 35.142078, 35.046207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213516, 34.879543, 35.579453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124615, 34.547253, 35.375298>,  <42.071274, 34.347878, 35.252804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124615, 34.547253, 35.375298>,  <42.213516, 34.879543, 35.579453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124615, 34.547253, 35.375298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926773, -0.342584, 0.154040,
		-0.302815, -0.438775, 0.846038,
		-0.222250, -0.830730, -0.510385,
		42.057941, 34.298035, 35.222183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455914, 34.393211, 36.009346>,  <42.213516, 34.879543, 35.579453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455914, 34.393211, 36.009346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463329, 34.250374, 35.635792>,  <42.467777, 34.164673, 35.411659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463329, 34.250374, 35.635792>,  <42.455914, 34.393211, 36.009346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463329, 34.250374, 35.635792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864933, -0.462818, 0.194139,
		-0.501544, -0.811347, 0.300282,
		0.018538, -0.357094, -0.933885,
		42.468891, 34.143246, 35.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651253, 33.678352, 36.010494>,  <42.455914, 34.393211, 36.009346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651253, 33.678352, 36.010494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707783, 33.796555, 35.632561>,  <42.741699, 33.867474, 35.405800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707783, 33.796555, 35.632561>,  <42.651253, 33.678352, 36.010494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707783, 33.796555, 35.632561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821856, -0.567088, -0.054433,
		-0.551888, -0.768823, -0.323002,
		0.141321, 0.295502, -0.944832,
		42.750179, 33.885204, 35.349110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821335, 33.156448, 35.508316>,  <42.651253, 33.678352, 36.010494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821335, 33.156448, 35.508316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946831, 33.487400, 35.321980>,  <43.022129, 33.685970, 35.210175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946831, 33.487400, 35.321980>,  <42.821335, 33.156448, 35.508316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946831, 33.487400, 35.321980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939525, -0.341467, 0.026293,
		-0.137317, -0.445923, -0.884475,
		0.313744, 0.827377, -0.465846,
		43.040955, 33.735615, 35.182224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198139, 33.017986, 34.920662>,  <42.821335, 33.156448, 35.508316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198139, 33.017986, 34.920662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312916, 33.366089, 35.080818>,  <43.381783, 33.574951, 35.176914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312916, 33.366089, 35.080818>,  <43.198139, 33.017986, 34.920662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312916, 33.366089, 35.080818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918537, -0.368604, 0.142904,
		0.271951, 0.326773, -0.905131,
		0.286937, 0.870259, 0.400395,
		43.398998, 33.627167, 35.200935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888554, 33.133770, 34.851002>,  <43.198139, 33.017986, 34.920662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888554, 33.133770, 34.851002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799282, 33.379185, 35.153992>,  <43.745720, 33.526432, 35.335785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799282, 33.379185, 35.153992>,  <43.888554, 33.133770, 34.851002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799282, 33.379185, 35.153992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958937, -0.001325, 0.283614,
		0.175011, 0.789665, -0.588047,
		-0.223181, 0.613536, 0.757472,
		43.732327, 33.563244, 35.381233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354481, 33.742500, 34.894073>,  <43.888554, 33.133770, 34.851002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354481, 33.742500, 34.894073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228817, 33.628044, 35.256161>,  <44.153419, 33.559368, 35.473415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228817, 33.628044, 35.256161>,  <44.354481, 33.742500, 34.894073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228817, 33.628044, 35.256161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944895, -0.001757, 0.327369,
		-0.092084, 0.958185, 0.270928,
		-0.314156, -0.286144, 0.905222,
		44.134571, 33.542202, 35.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741402, 34.195522, 35.238316>,  <44.354481, 33.742500, 34.894073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741402, 34.195522, 35.238316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640453, 33.857601, 35.427040>,  <44.579884, 33.654846, 35.540276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640453, 33.857601, 35.427040>,  <44.741402, 34.195522, 35.238316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640453, 33.857601, 35.427040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958991, -0.153355, 0.238365,
		-0.129017, 0.512624, 0.848865,
		-0.252370, -0.844807, 0.471816,
		44.564743, 33.604160, 35.568584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842949, 34.234810, 35.936802>,  <44.741402, 34.195522, 35.238316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842949, 34.234810, 35.936802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899071, 33.860973, 35.806049>,  <44.932743, 33.636669, 35.727596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899071, 33.860973, 35.806049>,  <44.842949, 34.234810, 35.936802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899071, 33.860973, 35.806049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985557, 0.163447, -0.044299,
		0.094829, -0.315944, 0.944027,
		0.140302, -0.934593, -0.326881,
		44.941162, 33.580597, 35.707985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293324, 33.854694, 36.407246>,  <44.842949, 34.234810, 35.936802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293324, 33.854694, 36.407246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331810, 33.740974, 36.025688>,  <45.354900, 33.672745, 35.796753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331810, 33.740974, 36.025688>,  <45.293324, 33.854694, 36.407246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331810, 33.740974, 36.025688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959973, 0.279771, 0.013443,
		0.263051, -0.917008, 0.299834,
		0.096212, -0.284297, -0.953897,
		45.360672, 33.655685, 35.739521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878540, 33.378143, 36.287899>,  <45.293324, 33.854694, 36.407246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878540, 33.378143, 36.287899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807125, 33.589458, 35.955868>,  <45.764275, 33.716248, 35.756649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807125, 33.589458, 35.955868>,  <45.878540, 33.378143, 36.287899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807125, 33.589458, 35.955868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907324, 0.414763, 0.068813,
		0.380640, -0.740865, -0.553382,
		-0.178541, 0.528290, -0.830080,
		45.753563, 33.747944, 35.706844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496311, 33.307629, 35.800373>,  <45.878540, 33.378143, 36.287899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496311, 33.307629, 35.800373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306011, 33.651989, 35.728256>,  <46.191833, 33.858604, 35.684986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306011, 33.651989, 35.728256>,  <46.496311, 33.307629, 35.800373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306011, 33.651989, 35.728256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874489, 0.440922, -0.202129,
		-0.094518, -0.253829, -0.962620,
		-0.475747, 0.860905, -0.180296,
		46.163288, 33.910259, 35.674168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660034, 33.580273, 35.212055>,  <46.496311, 33.307629, 35.800373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660034, 33.580273, 35.212055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522007, 33.916267, 35.379551>,  <46.439190, 34.117867, 35.480049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522007, 33.916267, 35.379551>,  <46.660034, 33.580273, 35.212055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522007, 33.916267, 35.379551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779652, 0.504926, -0.370395,
		-0.522563, 0.198663, -0.829133,
		-0.345066, 0.839990, 0.418744,
		46.418488, 34.168266, 35.505173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.606834, 34.170685, 34.705967>,  <46.660034, 33.580273, 35.212055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.606834, 34.170685, 34.705967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679276, 34.283447, 35.082844>,  <46.722740, 34.351105, 35.308971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679276, 34.283447, 35.082844>,  <46.606834, 34.170685, 34.705967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679276, 34.283447, 35.082844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838944, 0.455650, -0.297584,
		-0.513202, 0.844341, -0.153987,
		0.181098, 0.281908, 0.942195,
		46.733604, 34.368019, 35.365501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646679, 34.997093, 34.915588>,  <46.606834, 34.170685, 34.705967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646679, 34.997093, 34.915588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883148, 34.714474, 35.071178>,  <47.025032, 34.544903, 35.164532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883148, 34.714474, 35.071178>,  <46.646679, 34.997093, 34.915588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883148, 34.714474, 35.071178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772750, 0.358044, -0.524082,
		0.231017, 0.610407, 0.757651,
		0.591175, -0.706547, 0.388978,
		47.060501, 34.502510, 35.187870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.313080, 35.225616, 35.182766>,  <46.646679, 34.997093, 34.915588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.313080, 35.225616, 35.182766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395756, 34.840401, 35.113674>,  <47.445362, 34.609272, 35.072220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395756, 34.840401, 35.113674>,  <47.313080, 35.225616, 35.182766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395756, 34.840401, 35.113674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822050, 0.266669, -0.503113,
		0.530579, -0.038005, 0.846783,
		0.206690, -0.963039, -0.172731,
		47.457764, 34.551491, 35.061855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.018097, 35.155575, 35.414268>,  <47.313080, 35.225616, 35.182766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.018097, 35.155575, 35.414268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.908638, 34.889408, 35.136467>,  <47.842960, 34.729706, 34.969788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.908638, 34.889408, 35.136467>,  <48.018097, 35.155575, 35.414268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.908638, 34.889408, 35.136467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673507, 0.382921, -0.632267,
		0.686662, -0.640770, 0.343379,
		-0.273650, -0.665421, -0.694500,
		47.826542, 34.689781, 34.928116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.897671, 31.605038, 25.270733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510777, 31.532351, 25.199821>,  <37.278641, 31.488739, 25.157274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.510777, 31.532351, 25.199821>,  <37.897671, 31.605038, 25.270733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510777, 31.532351, 25.199821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216819, 0.228055, 0.949200,
		-0.132056, 0.956541, -0.259983,
		-0.967239, -0.181717, -0.177280,
		37.220604, 31.477835, 25.146637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466858, 32.180485, 25.611744>,  <37.897671, 31.605038, 25.270733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466858, 32.180485, 25.611744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242199, 31.853338, 25.561724>,  <37.107403, 31.657049, 25.531712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242199, 31.853338, 25.561724>,  <37.466858, 32.180485, 25.611744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242199, 31.853338, 25.561724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398278, 0.134784, 0.907308,
		-0.725205, 0.559395, -0.401441,
		-0.561651, -0.817870, -0.125049,
		37.073704, 31.607977, 25.524208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753830, 32.288410, 25.834009>,  <37.466858, 32.180485, 25.611744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753830, 32.288410, 25.834009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813972, 31.893915, 25.861523>,  <36.850056, 31.657219, 25.878031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813972, 31.893915, 25.861523>,  <36.753830, 32.288410, 25.834009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813972, 31.893915, 25.861523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289754, 0.022559, 0.956835,
		-0.945218, -0.163794, -0.282374,
		0.150353, -0.986237, 0.068783,
		36.859077, 31.598043, 25.882158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259327, 32.191246, 26.315062>,  <36.753830, 32.288410, 25.834009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259327, 32.191246, 26.315062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460121, 31.845572, 26.328850>,  <36.580597, 31.638166, 26.337122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460121, 31.845572, 26.328850>,  <36.259327, 32.191246, 26.315062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460121, 31.845572, 26.328850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331956, -0.155716, 0.930353,
		-0.798633, -0.478468, -0.365040,
		0.501987, -0.864188, 0.034470,
		36.610718, 31.586315, 26.339191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785374, 31.684072, 26.453581>,  <36.259327, 32.191246, 26.315062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785374, 31.684072, 26.453581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135555, 31.538448, 26.580734>,  <36.345665, 31.451075, 26.657026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135555, 31.538448, 26.580734>,  <35.785374, 31.684072, 26.453581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135555, 31.538448, 26.580734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359006, -0.049495, 0.932022,
		-0.323577, -0.930060, -0.174030,
		0.875450, -0.364059, 0.317881,
		36.398190, 31.429232, 26.676098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558350, 31.251842, 27.058090>,  <35.785374, 31.684072, 26.453581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558350, 31.251842, 27.058090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954712, 31.278231, 27.104988>,  <36.192532, 31.294064, 27.133127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.954712, 31.278231, 27.104988>,  <35.558350, 31.251842, 27.058090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954712, 31.278231, 27.104988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108836, -0.119165, 0.986891,
		0.079080, -0.990680, -0.110901,
		0.990909, 0.065974, 0.117246,
		36.251984, 31.298023, 27.140162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796116, 30.667238, 27.452473>,  <35.558350, 31.251842, 27.058090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796116, 30.667238, 27.452473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033558, 30.987551, 27.484426>,  <36.176022, 31.179739, 27.503599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033558, 30.987551, 27.484426>,  <35.796116, 30.667238, 27.452473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033558, 30.987551, 27.484426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046937, -0.064646, 0.996804,
		0.803388, -0.595455, -0.000787,
		0.593603, 0.800783, 0.079885,
		36.211639, 31.227785, 27.508392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236477, 30.579880, 28.072161>,  <35.796116, 30.667238, 27.452473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236477, 30.579880, 28.072161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306534, 30.960821, 27.972282>,  <36.348568, 31.189386, 27.912355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306534, 30.960821, 27.972282>,  <36.236477, 30.579880, 28.072161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306534, 30.960821, 27.972282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076532, 0.239679, 0.967831,
		0.981564, -0.188618, -0.030907,
		0.175143, 0.952353, -0.249695,
		36.359077, 31.246527, 27.897373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680542, 30.805647, 28.657270>,  <36.236477, 30.579880, 28.072161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680542, 30.805647, 28.657270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551128, 31.152010, 28.504679>,  <36.473480, 31.359829, 28.413124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551128, 31.152010, 28.504679>,  <36.680542, 30.805647, 28.657270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551128, 31.152010, 28.504679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013929, 0.407477, 0.913109,
		0.946113, 0.290112, -0.143895,
		-0.323538, 0.865909, -0.381478,
		36.454067, 31.411783, 28.390236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253147, 31.276901, 28.664770>,  <36.680542, 30.805647, 28.657270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253147, 31.276901, 28.664770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894756, 31.451551, 28.697248>,  <36.679722, 31.556341, 28.716736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894756, 31.451551, 28.697248>,  <37.253147, 31.276901, 28.664770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894756, 31.451551, 28.697248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247286, 0.338620, 0.907847,
		0.368894, 0.833484, -0.411365,
		-0.895973, 0.436624, 0.081194,
		36.625965, 31.582539, 28.721607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388527, 31.849184, 29.115347>,  <37.253147, 31.276901, 28.664770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388527, 31.849184, 29.115347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992863, 31.904928, 29.096828>,  <36.755466, 31.938375, 29.085716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992863, 31.904928, 29.096828>,  <37.388527, 31.849184, 29.115347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992863, 31.904928, 29.096828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024842, 0.151926, 0.988080,
		0.144734, 0.978518, -0.146817,
		-0.989159, 0.139362, -0.046297,
		36.696114, 31.946737, 29.082939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290573, 32.549698, 29.292509>,  <37.388527, 31.849184, 29.115347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290573, 32.549698, 29.292509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953533, 32.345970, 29.362501>,  <36.751308, 32.223736, 29.404497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953533, 32.345970, 29.362501>,  <37.290573, 32.549698, 29.292509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953533, 32.345970, 29.362501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049139, 0.396275, 0.916816,
		-0.536290, 0.763913, -0.358929,
		-0.842602, -0.509317, 0.174980,
		36.700752, 32.193176, 29.414995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878212, 33.077072, 29.617237>,  <37.290573, 32.549698, 29.292509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878212, 33.077072, 29.617237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718140, 32.720257, 29.701258>,  <36.622097, 32.506168, 29.751671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718140, 32.720257, 29.701258>,  <36.878212, 33.077072, 29.617237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718140, 32.720257, 29.701258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159697, 0.293576, 0.942502,
		-0.902416, 0.343624, -0.259938,
		-0.400178, -0.892040, 0.210052,
		36.598087, 32.452644, 29.764273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274376, 33.198586, 30.080891>,  <36.878212, 33.077072, 29.617237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274376, 33.198586, 30.080891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292709, 32.807495, 30.162817>,  <36.303707, 32.572842, 30.211973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292709, 32.807495, 30.162817>,  <36.274376, 33.198586, 30.080891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292709, 32.807495, 30.162817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190325, 0.192728, 0.962617,
		-0.980651, -0.083100, -0.177253,
		0.045832, -0.977727, 0.204815,
		36.306458, 32.514175, 30.224262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638626, 32.971298, 30.324566>,  <36.274376, 33.198586, 30.080891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638626, 32.971298, 30.324566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905422, 32.710701, 30.469168>,  <36.065498, 32.554344, 30.555929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905422, 32.710701, 30.469168>,  <35.638626, 32.971298, 30.324566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905422, 32.710701, 30.469168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317010, 0.190945, 0.929002,
		-0.674265, -0.734233, -0.079172,
		0.666987, -0.651492, 0.361506,
		36.105518, 32.515255, 30.577620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341209, 32.755657, 30.922667>,  <35.638626, 32.971298, 30.324566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341209, 32.755657, 30.922667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717319, 32.629406, 30.973660>,  <35.942986, 32.553654, 31.004255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717319, 32.629406, 30.973660>,  <35.341209, 32.755657, 30.922667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717319, 32.629406, 30.973660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074817, 0.173724, 0.981948,
		-0.332082, -0.932843, 0.139734,
		0.940279, -0.315633, 0.127483,
		35.999405, 32.534718, 31.011904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391647, 32.274010, 31.533506>,  <35.341209, 32.755657, 30.922667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391647, 32.274010, 31.533506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762825, 32.417671, 31.493639>,  <35.985531, 32.503868, 31.469719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762825, 32.417671, 31.493639>,  <35.391647, 32.274010, 31.533506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762825, 32.417671, 31.493639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025364, 0.327631, 0.944465,
		0.371859, -0.873882, 0.313133,
		0.927943, 0.359150, -0.099667,
		36.041206, 32.525417, 31.463739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792267, 32.016590, 32.120872>,  <35.391647, 32.274010, 31.533506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792267, 32.016590, 32.120872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963512, 32.357258, 31.999960>,  <36.066261, 32.561661, 31.927414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963512, 32.357258, 31.999960>,  <35.792267, 32.016590, 32.120872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963512, 32.357258, 31.999960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058309, 0.307753, 0.949678,
		0.901840, -0.424199, 0.082094,
		0.428117, 0.851671, -0.302278,
		36.091949, 32.612759, 31.909277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261105, 32.134911, 32.526016>,  <35.792267, 32.016590, 32.120872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261105, 32.134911, 32.526016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207279, 32.502300, 32.377262>,  <36.174984, 32.722733, 32.288010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207279, 32.502300, 32.377262>,  <36.261105, 32.134911, 32.526016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207279, 32.502300, 32.377262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108707, 0.386721, 0.915767,
		0.984924, 0.082804, -0.151883,
		-0.134566, 0.918472, -0.371889,
		36.166908, 32.777843, 32.265694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794609, 32.474739, 32.906132>,  <36.261105, 32.134911, 32.526016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794609, 32.474739, 32.906132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537594, 32.736614, 32.746872>,  <36.383385, 32.893742, 32.651314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537594, 32.736614, 32.746872>,  <36.794609, 32.474739, 32.906132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537594, 32.736614, 32.746872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073666, 0.569980, 0.818350,
		0.762704, 0.496491, -0.414462,
		-0.642538, 0.654691, -0.398152,
		36.344833, 32.933022, 32.627426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995922, 33.048584, 33.267380>,  <36.794609, 32.474739, 32.906132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995922, 33.048584, 33.267380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651974, 33.163429, 33.098530>,  <36.445606, 33.232338, 32.997219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651974, 33.163429, 33.098530>,  <36.995922, 33.048584, 33.267380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651974, 33.163429, 33.098530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133048, 0.672254, 0.728267,
		0.492871, 0.682378, -0.539851,
		-0.859870, 0.287116, -0.422123,
		36.394012, 33.249565, 32.971893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195782, 33.176300, 34.032791>,  <36.995922, 33.048584, 33.267380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195782, 33.176300, 34.032791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536251, 33.209122, 34.240166>,  <37.740532, 33.228813, 34.364590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536251, 33.209122, 34.240166>,  <37.195782, 33.176300, 34.032791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536251, 33.209122, 34.240166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515411, -0.317522, -0.795947,
		0.099305, 0.944694, -0.312557,
		0.851170, 0.082054, 0.518437,
		37.791603, 33.233738, 34.395699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650036, 33.484127, 33.619186>,  <37.195782, 33.176300, 34.032791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650036, 33.484127, 33.619186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903313, 33.313976, 33.877834>,  <38.055279, 33.211887, 34.033024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903313, 33.313976, 33.877834>,  <37.650036, 33.484127, 33.619186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903313, 33.313976, 33.877834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625195, -0.211412, -0.751289,
		0.456282, 0.879979, 0.132076,
		0.633196, -0.425373, 0.646622,
		38.093273, 33.186363, 34.071819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302513, 33.699669, 33.411453>,  <37.650036, 33.484127, 33.619186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302513, 33.699669, 33.411453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382458, 33.374146, 33.629723>,  <38.430424, 33.178829, 33.760685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382458, 33.374146, 33.629723>,  <38.302513, 33.699669, 33.411453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382458, 33.374146, 33.629723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731230, -0.246813, -0.635913,
		0.652195, 0.526110, 0.545756,
		0.199861, -0.813813, 0.545677,
		38.442417, 33.130001, 33.793427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034355, 33.699978, 33.460411>,  <38.302513, 33.699669, 33.411453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034355, 33.699978, 33.460411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926235, 33.319740, 33.521492>,  <38.861362, 33.091599, 33.558140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.926235, 33.319740, 33.521492>,  <39.034355, 33.699978, 33.460411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926235, 33.319740, 33.521492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666951, -0.299263, -0.682362,
		0.694346, -0.082592, 0.714886,
		-0.270297, -0.950589, 0.152707,
		38.845146, 33.034565, 33.567303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689957, 33.226891, 33.383331>,  <39.034355, 33.699978, 33.460411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689957, 33.226891, 33.383331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372868, 32.986591, 33.341976>,  <39.182613, 32.842411, 33.317162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372868, 32.986591, 33.341976>,  <39.689957, 33.226891, 33.383331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372868, 32.986591, 33.341976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408966, -0.398355, -0.821012,
		0.452038, -0.693117, 0.561472,
		-0.792722, -0.600751, -0.103390,
		39.135052, 32.806366, 33.310959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000111, 32.733486, 33.200024>,  <39.689957, 33.226891, 33.383331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000111, 32.733486, 33.200024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617840, 32.699650, 33.087223>,  <39.388477, 32.679348, 33.019543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617840, 32.699650, 33.087223>,  <40.000111, 32.733486, 33.200024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617840, 32.699650, 33.087223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294274, -0.304164, -0.906028,
		-0.009135, -0.948857, 0.315576,
		-0.955678, -0.084590, -0.282002,
		39.331135, 32.674274, 33.002621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958645, 32.090038, 32.820782>,  <40.000111, 32.733486, 33.200024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958645, 32.090038, 32.820782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638485, 32.297638, 32.700779>,  <39.446388, 32.422199, 32.628777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638485, 32.297638, 32.700779>,  <39.958645, 32.090038, 32.820782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638485, 32.297638, 32.700779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223617, -0.205834, -0.952695,
		-0.556202, -0.829619, 0.048691,
		-0.800396, 0.519003, -0.300003,
		39.398365, 32.453339, 32.610779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625401, 31.632713, 32.310856>,  <39.958645, 32.090038, 32.820782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625401, 31.632713, 32.310856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.488430, 32.003269, 32.248184>,  <39.406246, 32.225601, 32.210583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.488430, 32.003269, 32.248184>,  <39.625401, 31.632713, 32.310856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488430, 32.003269, 32.248184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186882, -0.096270, -0.977654,
		-0.920770, -0.364058, -0.140160,
		-0.342430, 0.926387, -0.156679,
		39.385700, 32.281185, 32.201180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074665, 31.533037, 31.830490>,  <39.625401, 31.632713, 32.310856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074665, 31.533037, 31.830490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160873, 31.921923, 31.793945>,  <39.212601, 32.155254, 31.772018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160873, 31.921923, 31.793945>,  <39.074665, 31.533037, 31.830490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160873, 31.921923, 31.793945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115006, -0.067638, -0.991059,
		-0.969702, 0.224104, 0.097233,
		0.215524, 0.972215, -0.091362,
		39.225529, 32.213589, 31.766537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653214, 31.761786, 31.313379>,  <39.074665, 31.533037, 31.830490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653214, 31.761786, 31.313379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868050, 32.099178, 31.316593>,  <38.996952, 32.301613, 31.318521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868050, 32.099178, 31.316593>,  <38.653214, 31.761786, 31.313379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868050, 32.099178, 31.316593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097977, 0.071841, -0.992592,
		-0.837813, 0.532328, 0.121228,
		0.537094, 0.843484, 0.008034,
		39.029179, 32.352222, 31.319004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160538, 32.164211, 30.898006>,  <38.653214, 31.761786, 31.313379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160538, 32.164211, 30.898006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533108, 32.309307, 30.886217>,  <38.756649, 32.396362, 30.879143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533108, 32.309307, 30.886217>,  <38.160538, 32.164211, 30.898006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533108, 32.309307, 30.886217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086660, 0.142404, -0.986008,
		-0.353464, 0.920947, 0.164073,
		0.931425, 0.362737, -0.029474,
		38.812534, 32.418129, 30.877375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167789, 32.734554, 30.421518>,  <38.160538, 32.164211, 30.898006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167789, 32.734554, 30.421518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.549099, 32.613731, 30.419312>,  <38.777885, 32.541237, 30.417988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.549099, 32.613731, 30.419312>,  <38.167789, 32.734554, 30.421518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549099, 32.613731, 30.419312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039077, 0.141388, -0.989183,
		0.299569, 0.942747, 0.146585,
		0.953274, -0.302056, -0.005516,
		38.835083, 32.523113, 30.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520660, 33.293499, 30.021002>,  <38.167789, 32.734554, 30.421518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520660, 33.293499, 30.021002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.775311, 32.985119, 30.013573>,  <38.928101, 32.800091, 30.009115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.775311, 32.985119, 30.013573>,  <38.520660, 33.293499, 30.021002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775311, 32.985119, 30.013573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194878, 0.184133, -0.963389,
		0.746144, 0.609698, 0.267465,
		0.636625, -0.770950, -0.018573,
		38.966297, 32.753834, 30.008001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115944, 33.411400, 29.534666>,  <38.520660, 33.293499, 30.021002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115944, 33.411400, 29.534666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138966, 33.012062, 29.533762>,  <39.152779, 32.772461, 29.533220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138966, 33.012062, 29.533762>,  <39.115944, 33.411400, 29.534666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138966, 33.012062, 29.533762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171792, 0.012135, -0.985059,
		0.983450, 0.056307, 0.172205,
		0.057556, -0.998340, -0.002261,
		39.156231, 32.712559, 29.533083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658852, 33.330811, 29.144888>,  <39.115944, 33.411400, 29.534666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658852, 33.330811, 29.144888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449051, 32.990265, 29.148453>,  <39.323170, 32.785938, 29.150591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449051, 32.990265, 29.148453>,  <39.658852, 33.330811, 29.144888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449051, 32.990265, 29.148453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156230, -0.106527, -0.981959,
		0.836951, -0.513650, 0.188882,
		-0.524504, -0.851361, 0.008911,
		39.291698, 32.734856, 29.151127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037567, 32.904831, 28.740515>,  <39.658852, 33.330811, 29.144888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037567, 32.904831, 28.740515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.690826, 32.705414, 28.742010>,  <39.482780, 32.585762, 28.742907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.690826, 32.705414, 28.742010>,  <40.037567, 32.904831, 28.740515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690826, 32.705414, 28.742010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053659, -0.100748, -0.993464,
		0.495663, -0.860990, 0.114085,
		-0.866856, -0.498545, 0.003738,
		39.430771, 32.555851, 28.743132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137714, 32.248928, 28.414494>,  <40.037567, 32.904831, 28.740515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137714, 32.248928, 28.414494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.746132, 32.322239, 28.378616>,  <39.511181, 32.366226, 28.357090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.746132, 32.322239, 28.378616>,  <40.137714, 32.248928, 28.414494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746132, 32.322239, 28.378616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075018, -0.085502, -0.993510,
		-0.189764, -0.979335, 0.069953,
		-0.978959, 0.183284, -0.089693,
		39.452442, 32.377224, 28.351707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869354, 31.667715, 27.973988>,  <40.137714, 32.248928, 28.414494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869354, 31.667715, 27.973988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623657, 31.980486, 27.931473>,  <39.476238, 32.168148, 27.905964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623657, 31.980486, 27.931473>,  <39.869354, 31.667715, 27.973988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623657, 31.980486, 27.931473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057869, -0.178962, -0.982153,
		-0.786994, -0.597127, 0.155175,
		-0.614241, 0.781928, -0.106287,
		39.439384, 32.215065, 27.899588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399242, 31.380983, 27.433979>,  <39.869354, 31.667715, 27.973988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399242, 31.380983, 27.433979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278027, 31.762064, 27.424788>,  <39.205296, 31.990711, 27.419271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278027, 31.762064, 27.424788>,  <39.399242, 31.380983, 27.433979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278027, 31.762064, 27.424788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195350, -0.085704, -0.976982,
		-0.932740, -0.291578, 0.212082,
		-0.303043, 0.952700, -0.022980,
		39.187115, 32.047874, 27.417894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.555214, 31.495716, 27.232248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752056, 31.833672, 27.148342>,  <38.870159, 32.036446, 27.097998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752056, 31.833672, 27.148342>,  <38.555214, 31.495716, 27.232248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752056, 31.833672, 27.148342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201171, -0.124071, -0.971667,
		-0.846974, 0.520359, 0.108911,
		0.492103, 0.844886, -0.209766,
		38.899689, 32.087139, 27.085413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199516, 31.771452, 26.804476>,  <38.555214, 31.495716, 27.232248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199516, 31.771452, 26.804476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545109, 31.964048, 26.745548>,  <38.752464, 32.079605, 26.710192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.545109, 31.964048, 26.745548>,  <38.199516, 31.771452, 26.804476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545109, 31.964048, 26.745548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064251, -0.184760, -0.980681,
		-0.499410, 0.856754, -0.128693,
		0.863980, 0.481493, -0.147318,
		38.804302, 32.108498, 26.701353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098557, 32.318657, 26.270035>,  <38.199516, 31.771452, 26.804476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098557, 32.318657, 26.270035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479683, 32.197506, 26.261963>,  <38.708359, 32.124817, 26.257120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479683, 32.197506, 26.261963>,  <38.098557, 32.318657, 26.270035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479683, 32.197506, 26.261963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057889, -0.116042, -0.991556,
		0.297977, 0.945939, -0.128099,
		0.952816, -0.302877, -0.020182,
		38.765530, 32.106644, 26.255909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338306, 32.605705, 25.650072>,  <38.098557, 32.318657, 26.270035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338306, 32.605705, 25.650072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628708, 32.343174, 25.732193>,  <38.802948, 32.185654, 25.781466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628708, 32.343174, 25.732193>,  <38.338306, 32.605705, 25.650072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628708, 32.343174, 25.732193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114693, -0.178793, -0.977179,
		0.678060, 0.732981, -0.054528,
		0.726003, -0.656332, 0.205300,
		38.846508, 32.146275, 25.793783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830292, 32.780228, 25.203957>,  <38.338306, 32.605705, 25.650072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830292, 32.780228, 25.203957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922668, 32.402264, 25.296740>,  <38.978092, 32.175484, 25.352409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922668, 32.402264, 25.296740>,  <38.830292, 32.780228, 25.203957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922668, 32.402264, 25.296740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031251, -0.231077, -0.972434,
		0.972466, 0.231823, -0.023835,
		0.230940, -0.944914, 0.231959,
		38.991951, 32.118790, 25.366327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402924, 32.669147, 24.870304>,  <38.830292, 32.780228, 25.203957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402924, 32.669147, 24.870304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313213, 32.286087, 24.942524>,  <39.259388, 32.056252, 24.985855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313213, 32.286087, 24.942524>,  <39.402924, 32.669147, 24.870304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313213, 32.286087, 24.942524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255382, -0.236551, -0.937456,
		0.940467, -0.164143, 0.297621,
		-0.224279, -0.957654, 0.180549,
		39.245930, 31.998791, 24.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923294, 32.281441, 24.631958>,  <39.402924, 32.669147, 24.870304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923294, 32.281441, 24.631958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.628258, 32.011375, 24.636202>,  <39.451237, 31.849337, 24.638748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.628258, 32.011375, 24.636202>,  <39.923294, 32.281441, 24.631958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628258, 32.011375, 24.636202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246199, -0.283527, -0.926821,
		0.628763, -0.681005, 0.375352,
		-0.737592, -0.675162, 0.010609,
		39.406979, 31.808826, 24.639385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331909, 31.663521, 24.453388>,  <39.923294, 32.281441, 24.631958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331909, 31.663521, 24.453388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947739, 31.612471, 24.354355>,  <39.717236, 31.581841, 24.294935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947739, 31.612471, 24.354355>,  <40.331909, 31.663521, 24.453388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947739, 31.612471, 24.354355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252558, -0.024138, -0.967281,
		0.117474, -0.991529, 0.055415,
		-0.960424, -0.127626, -0.247583,
		39.659611, 31.574183, 24.280081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326309, 31.074060, 24.051394>,  <40.331909, 31.663521, 24.453388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326309, 31.074060, 24.051394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017097, 31.311518, 23.961937>,  <39.831570, 31.453993, 23.908262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.017097, 31.311518, 23.961937>,  <40.326309, 31.074060, 24.051394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017097, 31.311518, 23.961937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270965, -0.009774, -0.962539,
		-0.573592, -0.804668, -0.153301,
		-0.773026, 0.593644, -0.223644,
		39.785191, 31.489611, 23.894844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047638, 30.868141, 23.396511>,  <40.326309, 31.074060, 24.051394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047638, 30.868141, 23.396511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909790, 31.238783, 23.456699>,  <39.827080, 31.461168, 23.492811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909790, 31.238783, 23.456699>,  <40.047638, 30.868141, 23.396511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909790, 31.238783, 23.456699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240700, 0.242151, -0.939908,
		-0.907359, -0.287694, -0.306484,
		-0.344621, 0.926604, 0.150469,
		39.806404, 31.516764, 23.501841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520031, 30.948763, 22.869469>,  <40.047638, 30.868141, 23.396511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520031, 30.948763, 22.869469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655586, 31.310036, 22.974854>,  <39.736919, 31.526800, 23.038084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655586, 31.310036, 22.974854>,  <39.520031, 30.948763, 22.869469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655586, 31.310036, 22.974854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135079, 0.230421, -0.963670,
		-0.931078, 0.362167, -0.043914,
		0.338890, 0.903184, 0.263461,
		39.757252, 31.580992, 23.053892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323128, 31.440115, 22.293324>,  <39.520031, 30.948763, 22.869469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323128, 31.440115, 22.293324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604015, 31.655069, 22.480131>,  <39.772549, 31.784042, 22.592216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.604015, 31.655069, 22.480131>,  <39.323128, 31.440115, 22.293324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604015, 31.655069, 22.480131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365708, 0.290556, -0.884214,
		-0.610861, 0.791702, 0.007506,
		0.702216, 0.537387, 0.467021,
		39.814678, 31.816286, 22.620237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337891, 32.029160, 21.912357>,  <39.323128, 31.440115, 22.293324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337891, 32.029160, 21.912357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697800, 31.993475, 22.083218>,  <39.913746, 31.972065, 22.185734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697800, 31.993475, 22.083218>,  <39.337891, 32.029160, 21.912357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697800, 31.993475, 22.083218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435754, 0.235466, -0.868720,
		-0.023081, 0.967780, 0.250738,
		0.899770, -0.089209, 0.427149,
		39.967731, 31.966713, 22.211363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692245, 32.581524, 21.687193>,  <39.337891, 32.029160, 21.912357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692245, 32.581524, 21.687193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983471, 32.336227, 21.809736>,  <40.158207, 32.189049, 21.883263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983471, 32.336227, 21.809736>,  <39.692245, 32.581524, 21.687193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983471, 32.336227, 21.809736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564380, 0.282564, -0.775650,
		0.389093, 0.737628, 0.551826,
		0.728067, -0.613240, 0.306358,
		40.201893, 32.152256, 21.901644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230339, 32.957851, 21.725275>,  <39.692245, 32.581524, 21.687193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230339, 32.957851, 21.725275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391029, 32.592289, 21.701981>,  <40.487446, 32.372952, 21.688004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391029, 32.592289, 21.701981>,  <40.230339, 32.957851, 21.725275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391029, 32.592289, 21.701981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544707, 0.289591, -0.787040,
		0.736144, 0.284456, 0.614147,
		0.401729, -0.913905, -0.058236,
		40.511547, 32.318119, 21.684509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922325, 33.027424, 21.563114>,  <40.230339, 32.957851, 21.725275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922325, 33.027424, 21.563114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844158, 32.655361, 21.438786>,  <40.797256, 32.432121, 21.364187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844158, 32.655361, 21.438786>,  <40.922325, 33.027424, 21.563114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844158, 32.655361, 21.438786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599933, 0.137335, -0.788175,
		0.775816, -0.340499, 0.531196,
		-0.195421, -0.930161, -0.310823,
		40.785530, 32.376312, 21.345539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536869, 32.741592, 21.394800>,  <40.922325, 33.027424, 21.563114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536869, 32.741592, 21.394800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318756, 32.469563, 21.198772>,  <41.187889, 32.306343, 21.081156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318756, 32.469563, 21.198772>,  <41.536869, 32.741592, 21.394800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318756, 32.469563, 21.198772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684769, -0.024180, -0.728359,
		0.483491, -0.732741, 0.478881,
		-0.545278, -0.680078, -0.490068,
		41.155174, 32.265541, 21.051752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023243, 32.290062, 21.090078>,  <41.536869, 32.741592, 21.394800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023243, 32.290062, 21.090078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681557, 32.250038, 20.886000>,  <41.476543, 32.226025, 20.763552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681557, 32.250038, 20.886000>,  <42.023243, 32.290062, 21.090078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681557, 32.250038, 20.886000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517338, -0.065958, -0.853235,
		0.051719, -0.992793, 0.108105,
		-0.854217, -0.100055, -0.510199,
		41.425293, 32.220020, 20.732941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148846, 31.812101, 20.581512>,  <42.023243, 32.290062, 21.090078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148846, 31.812101, 20.581512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844990, 32.033310, 20.444626>,  <41.662674, 32.166035, 20.362494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844990, 32.033310, 20.444626>,  <42.148846, 31.812101, 20.581512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844990, 32.033310, 20.444626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399579, -0.018281, -0.916516,
		-0.513109, -0.832967, -0.207089,
		-0.759642, 0.553021, -0.342216,
		41.617096, 32.199215, 20.341961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828014, 31.446955, 19.912327>,  <42.148846, 31.812101, 20.581512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828014, 31.446955, 19.912327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713589, 31.829241, 19.884701>,  <41.644932, 32.058613, 19.868124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713589, 31.829241, 19.884701>,  <41.828014, 31.446955, 19.912327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713589, 31.829241, 19.884701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132492, -0.031934, -0.990669,
		-0.949005, -0.292550, -0.117490,
		-0.286068, 0.955717, -0.069066,
		41.627769, 32.115955, 19.863981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188461, 31.419916, 19.407694>,  <41.828014, 31.446955, 19.912327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188461, 31.419916, 19.407694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337673, 31.791012, 19.412560>,  <41.427200, 32.013668, 19.415480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.337673, 31.791012, 19.412560>,  <41.188461, 31.419916, 19.407694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337673, 31.791012, 19.412560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022211, 0.004179, -0.999745,
		-0.927555, 0.373201, -0.019047,
		0.373026, 0.927741, 0.012166,
		41.449581, 32.069336, 19.416210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796383, 31.781935, 18.800735>,  <41.188461, 31.419916, 19.407694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796383, 31.781935, 18.800735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.105057, 32.027523, 18.867119>,  <41.290260, 32.174877, 18.906950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.105057, 32.027523, 18.867119>,  <40.796383, 31.781935, 18.800735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105057, 32.027523, 18.867119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119514, 0.116308, -0.985996,
		-0.624678, 0.780711, 0.016374,
		0.771683, 0.613973, 0.165960,
		41.336563, 32.211716, 18.916906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560562, 32.390240, 18.550299>,  <40.796383, 31.781935, 18.800735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560562, 32.390240, 18.550299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957123, 32.338917, 18.539982>,  <41.195057, 32.308121, 18.533791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.957123, 32.338917, 18.539982>,  <40.560562, 32.390240, 18.550299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957123, 32.338917, 18.539982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021613, 0.033872, -0.999192,
		0.129081, 0.991155, 0.030807,
		0.991398, -0.128311, -0.025794,
		41.254543, 32.300423, 18.532244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485714, 33.126534, 18.423649>,  <40.560562, 32.390240, 18.550299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485714, 33.126534, 18.423649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250656, 33.361591, 18.201170>,  <40.109623, 33.502625, 18.067682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250656, 33.361591, 18.201170>,  <40.485714, 33.126534, 18.423649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250656, 33.361591, 18.201170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680506, 0.012921, 0.732628,
		0.437710, 0.809017, 0.392302,
		-0.587640, 0.587643, -0.556197,
		40.074364, 33.537884, 18.034311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358879, 33.882008, 18.710155>,  <40.485714, 33.126534, 18.423649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358879, 33.882008, 18.710155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063583, 33.735649, 18.483486>,  <39.886406, 33.647835, 18.347485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063583, 33.735649, 18.483486>,  <40.358879, 33.882008, 18.710155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063583, 33.735649, 18.483486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664220, 0.247959, 0.705215,
		-0.117522, 0.897016, -0.426088,
		-0.738242, -0.365894, -0.566675,
		39.842110, 33.625881, 18.313484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802074, 34.408554, 18.626835>,  <40.358879, 33.882008, 18.710155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802074, 34.408554, 18.626835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627514, 34.059113, 18.540699>,  <39.522778, 33.849449, 18.489017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.627514, 34.059113, 18.540699>,  <39.802074, 34.408554, 18.626835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627514, 34.059113, 18.540699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663937, 0.151137, 0.732356,
		-0.607244, 0.462571, -0.645974,
		-0.436397, -0.873605, -0.215341,
		39.496593, 33.797031, 18.476097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101330, 34.593925, 18.804321>,  <39.802074, 34.408554, 18.626835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101330, 34.593925, 18.804321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105789, 34.194160, 18.791304>,  <39.108463, 33.954304, 18.783493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105789, 34.194160, 18.791304>,  <39.101330, 34.593925, 18.804321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105789, 34.194160, 18.791304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531165, -0.033490, 0.846606,
		-0.847195, 0.007851, -0.531224,
		0.011144, -0.999408, -0.032542,
		39.109131, 33.894337, 18.781542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421135, 34.401535, 18.937140>,  <39.101330, 34.593925, 18.804321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421135, 34.401535, 18.937140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642200, 34.081017, 19.028788>,  <38.774837, 33.888706, 19.083776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642200, 34.081017, 19.028788>,  <38.421135, 34.401535, 18.937140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642200, 34.081017, 19.028788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631244, -0.222971, 0.742843,
		-0.544148, -0.555170, -0.629038,
		0.552661, -0.801293, 0.229119,
		38.807999, 33.840630, 19.097523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939720, 33.948093, 19.120956>,  <38.421135, 34.401535, 18.937140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939720, 33.948093, 19.120956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264408, 33.769066, 19.271046>,  <38.459221, 33.661648, 19.361099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264408, 33.769066, 19.271046>,  <37.939720, 33.948093, 19.120956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264408, 33.769066, 19.271046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538722, -0.325610, 0.777018,
		-0.225593, -0.832862, -0.505419,
		0.811718, -0.447570, 0.375226,
		38.507923, 33.634796, 19.383614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775757, 33.276669, 19.263084>,  <37.939720, 33.948093, 19.120956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775757, 33.276669, 19.263084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110844, 33.311386, 19.478752>,  <38.311893, 33.332218, 19.608152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.110844, 33.311386, 19.478752>,  <37.775757, 33.276669, 19.263084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110844, 33.311386, 19.478752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426947, -0.511518, 0.745698,
		0.340519, -0.854878, -0.391447,
		0.837713, 0.086797, 0.539169,
		38.362156, 33.337425, 19.640503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775974, 32.723942, 19.492184>,  <37.775757, 33.276669, 19.263084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775974, 32.723942, 19.492184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001209, 32.934288, 19.747181>,  <38.136349, 33.060497, 19.900179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001209, 32.934288, 19.747181>,  <37.775974, 32.723942, 19.492184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001209, 32.934288, 19.747181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364066, -0.534668, 0.762618,
		0.741882, -0.661510, -0.109615,
		0.563087, 0.525865, 0.637494,
		38.170135, 33.092049, 19.938429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128201, 32.230171, 19.981911>,  <37.775974, 32.723942, 19.492184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128201, 32.230171, 19.981911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143559, 32.589901, 20.156149>,  <38.152775, 32.805740, 20.260693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143559, 32.589901, 20.156149>,  <38.128201, 32.230171, 19.981911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143559, 32.589901, 20.156149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293765, -0.406494, 0.865138,
		0.955106, -0.161183, 0.248581,
		0.038399, 0.899323, 0.435595,
		38.155079, 32.859699, 20.286827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575096, 32.129040, 20.597067>,  <38.128201, 32.230171, 19.981911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575096, 32.129040, 20.597067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364964, 32.460171, 20.675793>,  <38.238884, 32.658848, 20.723028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364964, 32.460171, 20.675793>,  <38.575096, 32.129040, 20.597067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364964, 32.460171, 20.675793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021533, -0.244163, 0.969495,
		0.850628, 0.505064, 0.146091,
		-0.525327, 0.827825, 0.196816,
		38.207367, 32.708519, 20.734837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746296, 32.353439, 21.222670>,  <38.575096, 32.129040, 20.597067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746296, 32.353439, 21.222670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391159, 32.535641, 21.196592>,  <38.178078, 32.644962, 21.180946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391159, 32.535641, 21.196592>,  <38.746296, 32.353439, 21.222670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391159, 32.535641, 21.196592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223493, -0.303026, 0.926405,
		0.402228, 0.837071, 0.370842,
		-0.887842, 0.455507, -0.065194,
		38.124805, 32.672295, 21.177034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635212, 32.519642, 21.800844>,  <38.746296, 32.353439, 21.222670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635212, 32.519642, 21.800844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268372, 32.573349, 21.650698>,  <38.048267, 32.605576, 21.560610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268372, 32.573349, 21.650698>,  <38.635212, 32.519642, 21.800844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268372, 32.573349, 21.650698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396983, -0.393852, 0.829027,
		-0.036527, 0.909314, 0.414504,
		-0.917099, 0.134269, -0.375368,
		37.993240, 32.613628, 21.538088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257301, 32.873917, 22.373343>,  <38.635212, 32.519642, 21.800844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257301, 32.873917, 22.373343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.981682, 32.708492, 22.135292>,  <37.816311, 32.609238, 21.992462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.981682, 32.708492, 22.135292>,  <38.257301, 32.873917, 22.373343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981682, 32.708492, 22.135292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405769, -0.460245, 0.789637,
		-0.600465, 0.785585, 0.149324,
		-0.689052, -0.413559, -0.595127,
		37.774967, 32.584423, 21.956755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585247, 32.967964, 22.648439>,  <38.257301, 32.873917, 22.373343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585247, 32.967964, 22.648439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504181, 32.658699, 22.408056>,  <37.455544, 32.473141, 22.263826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504181, 32.658699, 22.408056>,  <37.585247, 32.967964, 22.648439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504181, 32.658699, 22.408056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385604, -0.501100, 0.774731,
		-0.900132, 0.388740, -0.196580,
		-0.202663, -0.773162, -0.600956,
		37.443382, 32.426750, 22.227770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968594, 32.834000, 22.864079>,  <37.585247, 32.967964, 22.648439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968594, 32.834000, 22.864079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080391, 32.503345, 22.668711>,  <37.147469, 32.304951, 22.551491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080391, 32.503345, 22.668711>,  <36.968594, 32.834000, 22.864079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080391, 32.503345, 22.668711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306859, -0.558917, 0.770356,
		-0.909791, -0.065435, -0.409876,
		0.279495, -0.826637, -0.488419,
		37.164238, 32.255356, 22.522184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451550, 32.353100, 22.932060>,  <36.968594, 32.834000, 22.864079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451550, 32.353100, 22.932060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785412, 32.145031, 22.859642>,  <36.985729, 32.020191, 22.816191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785412, 32.145031, 22.859642>,  <36.451550, 32.353100, 22.932060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785412, 32.145031, 22.859642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139353, -0.517453, 0.844289,
		-0.532862, -0.679455, -0.504379,
		0.834649, -0.520176, -0.181047,
		37.035809, 31.988979, 22.805328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228302, 31.760303, 23.119102>,  <36.451550, 32.353100, 22.932060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228302, 31.760303, 23.119102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.627491, 31.735706, 23.125633>,  <36.867004, 31.720947, 23.129553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.627491, 31.735706, 23.125633>,  <36.228302, 31.760303, 23.119102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627491, 31.735706, 23.125633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050072, -0.600748, 0.797869,
		-0.039254, -0.797070, -0.602610,
		0.997974, -0.061493, 0.016329,
		36.926884, 31.717258, 23.130531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367817, 31.102962, 23.193998>,  <36.228302, 31.760303, 23.119102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367817, 31.102962, 23.193998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696903, 31.286734, 23.327908>,  <36.894356, 31.396996, 23.408253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696903, 31.286734, 23.327908>,  <36.367817, 31.102962, 23.193998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696903, 31.286734, 23.327908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034753, -0.547159, 0.836307,
		0.567396, -0.699674, -0.434187,
		0.822711, 0.459428, 0.334772,
		36.943718, 31.424562, 23.428339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741249, 30.525389, 23.526308>,  <36.367817, 31.102962, 23.193998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741249, 30.525389, 23.526308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928349, 30.849337, 23.667915>,  <37.040607, 31.043705, 23.752880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928349, 30.849337, 23.667915>,  <36.741249, 30.525389, 23.526308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928349, 30.849337, 23.667915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061811, -0.369581, 0.927141,
		0.881699, -0.455548, -0.122811,
		0.467745, 0.809868, 0.354017,
		37.068672, 31.092297, 23.774120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285305, 30.263103, 23.916540>,  <36.741249, 30.525389, 23.526308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285305, 30.263103, 23.916540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230015, 30.637585, 24.045794>,  <37.196838, 30.862274, 24.123346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230015, 30.637585, 24.045794>,  <37.285305, 30.263103, 23.916540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230015, 30.637585, 24.045794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255635, -0.281485, 0.924887,
		0.956840, 0.210451, -0.200417,
		-0.138229, 0.936203, 0.323135,
		37.188545, 30.918446, 24.142735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859291, 30.453672, 24.433495>,  <37.285305, 30.263103, 23.916540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859291, 30.453672, 24.433495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.549690, 30.684780, 24.537111>,  <37.363930, 30.823444, 24.599281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.549690, 30.684780, 24.537111>,  <37.859291, 30.453672, 24.433495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549690, 30.684780, 24.537111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074522, -0.323146, 0.943410,
		0.628780, 0.749507, 0.207059,
		-0.774004, 0.577767, 0.259043,
		37.317490, 30.858110, 24.614824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.679195, 31.653555, 30.113150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467098, 31.991266, 30.082073>,  <39.339840, 32.193893, 30.063427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467098, 31.991266, 30.082073>,  <39.679195, 31.653555, 30.113150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467098, 31.991266, 30.082073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101782, 0.154358, 0.982758,
		0.841715, 0.513191, -0.167780,
		-0.530241, 0.844280, -0.077692,
		39.308025, 32.244549, 30.058765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016872, 32.137131, 30.458956>,  <39.679195, 31.653555, 30.113150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016872, 32.137131, 30.458956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650547, 32.297287, 30.446455>,  <39.430752, 32.393379, 30.438955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650547, 32.297287, 30.446455>,  <40.016872, 32.137131, 30.458956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650547, 32.297287, 30.446455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051668, 0.194634, 0.979514,
		0.398272, 0.895435, -0.198935,
		-0.915811, 0.400392, -0.031251,
		39.375805, 32.417404, 30.437080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124725, 32.722301, 30.857830>,  <40.016872, 32.137131, 30.458956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124725, 32.722301, 30.857830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738457, 32.619968, 30.875851>,  <39.506695, 32.558567, 30.886663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738457, 32.619968, 30.875851>,  <40.124725, 32.722301, 30.857830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738457, 32.619968, 30.875851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013213, 0.124827, 0.992091,
		-0.259432, 0.958628, -0.117161,
		-0.965671, -0.255832, 0.045051,
		39.448757, 32.543221, 30.889366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923122, 33.271816, 31.299629>,  <40.124725, 32.722301, 30.857830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923122, 33.271816, 31.299629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669399, 32.962589, 31.297688>,  <39.517166, 32.777054, 31.296522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669399, 32.962589, 31.297688>,  <39.923122, 33.271816, 31.299629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669399, 32.962589, 31.297688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210144, 0.166374, 0.963410,
		-0.743971, 0.612120, -0.267988,
		-0.634309, -0.773065, -0.004856,
		39.479107, 32.730671, 31.296230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465767, 33.556618, 31.848005>,  <39.923122, 33.271816, 31.299629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465767, 33.556618, 31.848005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376194, 33.171074, 31.790264>,  <39.322449, 32.939747, 31.755619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376194, 33.171074, 31.790264>,  <39.465767, 33.556618, 31.848005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376194, 33.171074, 31.790264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484910, -0.018292, 0.874373,
		-0.845409, 0.265799, -0.463287,
		-0.223933, -0.963855, -0.144353,
		39.309013, 32.881916, 31.746958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770493, 33.440292, 31.973677>,  <39.465767, 33.556618, 31.848005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770493, 33.440292, 31.973677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940792, 33.083622, 32.035198>,  <39.042973, 32.869621, 32.072113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.940792, 33.083622, 32.035198>,  <38.770493, 33.440292, 31.973677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940792, 33.083622, 32.035198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330822, 0.004815, 0.943681,
		-0.842194, -0.452657, -0.292934,
		0.425753, -0.891672, 0.153804,
		39.068520, 32.816120, 32.081341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285301, 33.068993, 32.318516>,  <38.770493, 33.440292, 31.973677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285301, 33.068993, 32.318516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628078, 32.876671, 32.392780>,  <38.833744, 32.761276, 32.437340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628078, 32.876671, 32.392780>,  <38.285301, 33.068993, 32.318516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628078, 32.876671, 32.392780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292011, -0.156099, 0.943590,
		-0.424702, -0.862821, -0.274168,
		0.856947, -0.480805, 0.185658,
		38.885162, 32.732430, 32.448479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056293, 32.491394, 32.653084>,  <38.285301, 33.068993, 32.318516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056293, 32.491394, 32.653084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441669, 32.529877, 32.753098>,  <38.672897, 32.552967, 32.813107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441669, 32.529877, 32.753098>,  <38.056293, 32.491394, 32.653084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441669, 32.529877, 32.753098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205946, -0.330966, 0.920895,
		0.171352, -0.938725, -0.299054,
		0.963444, 0.096208, 0.250038,
		38.730701, 32.558739, 32.828110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194382, 31.940329, 33.148632>,  <38.056293, 32.491394, 32.653084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194382, 31.940329, 33.148632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.479965, 32.216167, 33.197163>,  <38.651314, 32.381672, 33.226280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.479965, 32.216167, 33.197163>,  <38.194382, 31.940329, 33.148632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479965, 32.216167, 33.197163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275501, 0.117372, 0.954108,
		0.643712, -0.714617, 0.273784,
		0.713957, 0.689599, 0.121324,
		38.694153, 32.423046, 33.233559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500912, 31.759995, 33.743668>,  <38.194382, 31.940329, 33.148632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500912, 31.759995, 33.743668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.589378, 32.147854, 33.701973>,  <38.642460, 32.380569, 33.676956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.589378, 32.147854, 33.701973>,  <38.500912, 31.759995, 33.743668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589378, 32.147854, 33.701973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318664, 0.172871, 0.931970,
		0.921704, -0.172904, 0.347226,
		0.221167, 0.969649, -0.104238,
		38.655727, 32.438747, 33.670700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862621, 32.072849, 34.336288>,  <38.500912, 31.759995, 33.743668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862621, 32.072849, 34.336288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.737743, 32.419666, 34.180973>,  <38.662815, 32.627758, 34.087784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.737743, 32.419666, 34.180973>,  <38.862621, 32.072849, 34.336288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737743, 32.419666, 34.180973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295060, 0.300012, 0.907156,
		0.903036, 0.397779, 0.162168,
		-0.312195, 0.867044, -0.388290,
		38.644085, 32.679779, 34.064487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870033, 32.514458, 34.859928>,  <38.862621, 32.072849, 34.336288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870033, 32.514458, 34.859928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632679, 32.723423, 34.614983>,  <38.490269, 32.848801, 34.468018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632679, 32.723423, 34.614983>,  <38.870033, 32.514458, 34.859928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632679, 32.723423, 34.614983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388522, 0.480389, 0.786306,
		0.704944, 0.704496, -0.082088,
		-0.593384, 0.522409, -0.612360,
		38.454662, 32.880146, 34.431274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906200, 33.234112, 35.118870>,  <38.870033, 32.514458, 34.859928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906200, 33.234112, 35.118870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578911, 33.190975, 34.892994>,  <38.382538, 33.165092, 34.757469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578911, 33.190975, 34.892994>,  <38.906200, 33.234112, 35.118870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578911, 33.190975, 34.892994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563458, 0.345403, 0.750475,
		0.114112, 0.932237, -0.343382,
		-0.818226, -0.107843, -0.564691,
		38.333443, 33.158623, 34.723587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462452, 33.820126, 34.921238>,  <38.906200, 33.234112, 35.118870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462452, 33.820126, 34.921238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241325, 33.488304, 34.952812>,  <38.108650, 33.289211, 34.971756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241325, 33.488304, 34.952812>,  <38.462452, 33.820126, 34.921238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241325, 33.488304, 34.952812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446150, 0.374658, 0.812762,
		-0.703804, 0.414092, -0.577224,
		-0.552820, -0.829554, 0.078939,
		38.075478, 33.239437, 34.976494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809933, 34.173046, 34.362572>,  <38.462452, 33.820126, 34.921238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809933, 34.173046, 34.362572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988388, 34.509174, 34.485748>,  <39.095459, 34.710850, 34.559654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988388, 34.509174, 34.485748>,  <38.809933, 34.173046, 34.362572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988388, 34.509174, 34.485748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071069, 0.376260, -0.923785,
		-0.892139, 0.390248, 0.227583,
		0.446135, 0.840319, 0.307942,
		39.122227, 34.761269, 34.578133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371494, 34.750328, 33.989002>,  <38.809933, 34.173046, 34.362572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371494, 34.750328, 33.989002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712147, 34.929451, 34.097954>,  <38.916538, 35.036926, 34.163326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712147, 34.929451, 34.097954>,  <38.371494, 34.750328, 33.989002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712147, 34.929451, 34.097954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019497, 0.546379, -0.837311,
		-0.523781, 0.707768, 0.474044,
		0.851630, 0.447810, 0.272384,
		38.967636, 35.063793, 34.179668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239220, 35.466091, 33.916233>,  <38.371494, 34.750328, 33.989002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239220, 35.466091, 33.916233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636669, 35.420994, 33.915012>,  <38.875137, 35.393936, 33.914280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636669, 35.420994, 33.915012>,  <38.239220, 35.466091, 33.916233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636669, 35.420994, 33.915012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079854, 0.722301, -0.686953,
		0.079653, 0.682326, 0.726696,
		0.993619, -0.112748, -0.003047,
		38.934753, 35.387169, 33.914097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520290, 36.098179, 33.737652>,  <38.239220, 35.466091, 33.916233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520290, 36.098179, 33.737652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831772, 35.860237, 33.657879>,  <39.018661, 35.717472, 33.610016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.831772, 35.860237, 33.657879>,  <38.520290, 36.098179, 33.737652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831772, 35.860237, 33.657879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016420, 0.298440, -0.954287,
		0.627182, 0.746377, 0.222627,
		0.778699, -0.594856, -0.199432,
		39.065380, 35.681782, 33.598049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962536, 36.504948, 33.241051>,  <38.520290, 36.098179, 33.737652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962536, 36.504948, 33.241051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066010, 36.123287, 33.180817>,  <39.128094, 35.894291, 33.144676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066010, 36.123287, 33.180817>,  <38.962536, 36.504948, 33.241051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066010, 36.123287, 33.180817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274374, 0.222055, -0.935634,
		0.926174, 0.200720, 0.319237,
		0.258688, -0.954151, -0.150589,
		39.143616, 35.837044, 33.135639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483601, 36.522942, 32.796219>,  <38.962536, 36.504948, 33.241051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483601, 36.522942, 32.796219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382153, 36.137829, 32.758846>,  <39.321281, 35.906761, 32.736423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382153, 36.137829, 32.758846>,  <39.483601, 36.522942, 32.796219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382153, 36.137829, 32.758846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190818, 0.044893, -0.980598,
		0.948295, -0.266530, 0.172330,
		-0.253623, -0.962781, -0.093430,
		39.306065, 35.848995, 32.730816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020397, 36.171936, 32.346790>,  <39.483601, 36.522942, 32.796219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020397, 36.171936, 32.346790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682106, 35.958496, 32.347824>,  <39.479130, 35.830433, 32.348446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.682106, 35.958496, 32.347824>,  <40.020397, 36.171936, 32.346790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682106, 35.958496, 32.347824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041165, -0.070071, -0.996692,
		0.532020, -0.842827, 0.081227,
		-0.845731, -0.533604, 0.002584,
		39.428387, 35.798416, 32.348598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115639, 35.576130, 31.831617>,  <40.020397, 36.171936, 32.346790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115639, 35.576130, 31.831617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729355, 35.655865, 31.898157>,  <39.497585, 35.703705, 31.938082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729355, 35.655865, 31.898157>,  <40.115639, 35.576130, 31.831617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729355, 35.655865, 31.898157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166741, 0.014952, -0.985887,
		-0.199017, -0.979816, 0.018800,
		-0.965707, 0.199343, 0.166351,
		39.439644, 35.715668, 31.948063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721764, 35.098896, 31.458580>,  <40.115639, 35.576130, 31.831617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721764, 35.098896, 31.458580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.455204, 35.390259, 31.522243>,  <39.295269, 35.565075, 31.560442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.455204, 35.390259, 31.522243>,  <39.721764, 35.098896, 31.458580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455204, 35.390259, 31.522243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300244, -0.066774, -0.951523,
		-0.682468, -0.681884, 0.263198,
		-0.666402, 0.728407, 0.159160,
		39.255283, 35.608780, 31.569992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998764, 34.878937, 31.148788>,  <39.721764, 35.098896, 31.458580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998764, 34.878937, 31.148788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977531, 35.274197, 31.206390>,  <38.964794, 35.511353, 31.240952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977531, 35.274197, 31.206390>,  <38.998764, 34.878937, 31.148788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977531, 35.274197, 31.206390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443407, 0.105889, -0.890044,
		-0.894747, -0.111096, 0.432533,
		-0.053079, 0.988152, 0.144005,
		38.961609, 35.570641, 31.249592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377155, 34.980656, 30.853945>,  <38.998764, 34.878937, 31.148788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377155, 34.980656, 30.853945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542282, 35.343586, 30.885798>,  <38.641357, 35.561344, 30.904909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542282, 35.343586, 30.885798>,  <38.377155, 34.980656, 30.853945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542282, 35.343586, 30.885798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412812, 0.264320, -0.871620,
		-0.811891, 0.326948, 0.483671,
		0.412819, 0.907326, 0.079631,
		38.666126, 35.615784, 30.909687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823086, 35.440323, 30.772089>,  <38.377155, 34.980656, 30.853945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823086, 35.440323, 30.772089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162811, 35.633129, 30.685993>,  <38.366646, 35.748814, 30.634335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162811, 35.633129, 30.685993>,  <37.823086, 35.440323, 30.772089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162811, 35.633129, 30.685993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426642, 0.386642, -0.817609,
		-0.310881, 0.786236, 0.534029,
		0.849311, 0.482018, -0.215241,
		38.417606, 35.777733, 30.621420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653690, 36.124710, 30.525646>,  <37.823086, 35.440323, 30.772089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653690, 36.124710, 30.525646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018135, 36.037792, 30.385559>,  <38.236801, 35.985641, 30.301506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.018135, 36.037792, 30.385559>,  <37.653690, 36.124710, 30.525646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018135, 36.037792, 30.385559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355140, 0.017299, -0.934653,
		0.209152, 0.975953, -0.061408,
		0.911115, -0.217293, -0.350218,
		38.291470, 35.972603, 30.280493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727329, 36.609905, 29.947235>,  <37.653690, 36.124710, 30.525646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727329, 36.609905, 29.947235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.983612, 36.309872, 29.881666>,  <38.137383, 36.129852, 29.842325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.983612, 36.309872, 29.881666>,  <37.727329, 36.609905, 29.947235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983612, 36.309872, 29.881666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187015, 0.054606, -0.980838,
		0.744659, 0.659088, -0.105289,
		0.640709, -0.750081, -0.163922,
		38.175823, 36.084846, 29.832489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640488, 37.405766, 29.953686>,  <37.727329, 36.609905, 29.947235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640488, 37.405766, 29.953686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294495, 37.564377, 29.830675>,  <37.086899, 37.659542, 29.756868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294495, 37.564377, 29.830675>,  <37.640488, 37.405766, 29.953686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294495, 37.564377, 29.830675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348694, -0.034251, 0.936611,
		0.360859, 0.917384, 0.167893,
		-0.864982, 0.396528, -0.307526,
		37.035000, 37.683334, 29.738417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414452, 37.703209, 30.490814>,  <37.640488, 37.405766, 29.953686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414452, 37.703209, 30.490814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087120, 37.712345, 30.261097>,  <36.890720, 37.717827, 30.123266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087120, 37.712345, 30.261097>,  <37.414452, 37.703209, 30.490814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087120, 37.712345, 30.261097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574479, -0.063021, 0.816090,
		-0.017556, 0.997751, 0.064691,
		-0.818331, 0.022837, -0.574293,
		36.841621, 37.719196, 30.088810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004696, 38.096092, 30.815477>,  <37.414452, 37.703209, 30.490814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004696, 38.096092, 30.815477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.779823, 37.852551, 30.591602>,  <36.644901, 37.706425, 30.457277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.779823, 37.852551, 30.591602>,  <37.004696, 38.096092, 30.815477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779823, 37.852551, 30.591602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504352, -0.283939, 0.815480,
		-0.655428, 0.740724, -0.147454,
		-0.562177, -0.608857, -0.559687,
		36.611172, 37.669895, 30.423697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200413, 38.210228, 31.081615>,  <37.004696, 38.096092, 30.815477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200413, 38.210228, 31.081615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240341, 37.856281, 30.899605>,  <36.264297, 37.643913, 30.790398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.240341, 37.856281, 30.899605>,  <36.200413, 38.210228, 31.081615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240341, 37.856281, 30.899605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542680, -0.431720, 0.720497,
		-0.833987, 0.175017, -0.523292,
		0.099816, -0.884865, -0.455027,
		36.270287, 37.590820, 30.763096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608280, 37.930813, 31.129581>,  <36.200413, 38.210228, 31.081615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608280, 37.930813, 31.129581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.787643, 37.598125, 30.998627>,  <35.895260, 37.398514, 30.920053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.787643, 37.598125, 30.998627>,  <35.608280, 37.930813, 31.129581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787643, 37.598125, 30.998627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602467, -0.551805, 0.576667,
		-0.660277, -0.061341, -0.748513,
		0.448406, -0.831714, -0.327388,
		35.922165, 37.348610, 30.900410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053123, 37.484650, 31.089983>,  <35.608280, 37.930813, 31.129581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053123, 37.484650, 31.089983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391212, 37.271019, 31.097677>,  <35.594067, 37.142841, 31.102293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391212, 37.271019, 31.097677>,  <35.053123, 37.484650, 31.089983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391212, 37.271019, 31.097677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391916, -0.594971, 0.701720,
		-0.363324, -0.600647, -0.712193,
		0.845221, -0.534071, 0.019236,
		35.644779, 37.110798, 31.103447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895245, 36.682423, 31.065466>,  <35.053123, 37.484650, 31.089983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895245, 36.682423, 31.065466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262627, 36.705242, 31.222023>,  <35.483055, 36.718933, 31.315956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262627, 36.705242, 31.222023>,  <34.895245, 36.682423, 31.065466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262627, 36.705242, 31.222023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292400, -0.568433, 0.769016,
		0.266354, -0.820749, -0.505397,
		0.918454, 0.057052, 0.391392,
		35.538162, 36.722359, 31.339441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990082, 35.969563, 31.352507>,  <34.895245, 36.682423, 31.065466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990082, 35.969563, 31.352507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.241177, 36.222923, 31.533504>,  <35.391834, 36.374939, 31.642103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.241177, 36.222923, 31.533504>,  <34.990082, 35.969563, 31.352507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241177, 36.222923, 31.533504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221940, -0.411534, 0.883958,
		0.746114, -0.655321, -0.117760,
		0.627739, 0.633398, 0.452493,
		35.429497, 36.412941, 31.669252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232719, 35.514400, 31.888515>,  <34.990082, 35.969563, 31.352507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232719, 35.514400, 31.888515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.368488, 35.872311, 32.004559>,  <35.449951, 36.087059, 32.074184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.368488, 35.872311, 32.004559>,  <35.232719, 35.514400, 31.888515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368488, 35.872311, 32.004559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067762, -0.284355, 0.956321,
		0.938190, -0.344255, -0.035885,
		0.339422, 0.894780, 0.290106,
		35.470314, 36.140743, 32.091591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860348, 35.418453, 32.333881>,  <35.232719, 35.514400, 31.888515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860348, 35.418453, 32.333881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.650448, 35.742737, 32.437717>,  <35.524506, 35.937305, 32.500019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.650448, 35.742737, 32.437717>,  <35.860348, 35.418453, 32.333881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650448, 35.742737, 32.437717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096617, -0.359706, 0.928050,
		0.845755, 0.461915, 0.267084,
		-0.524752, 0.810708, 0.259594,
		35.493023, 35.985950, 32.515594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099026, 35.565239, 32.969196>,  <35.860348, 35.418453, 32.333881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099026, 35.565239, 32.969196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.767853, 35.789360, 32.959522>,  <35.569149, 35.923832, 32.953720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.767853, 35.789360, 32.959522>,  <36.099026, 35.565239, 32.969196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767853, 35.789360, 32.959522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044914, -0.023263, 0.998720,
		0.559022, 0.827962, 0.044426,
		-0.827935, 0.560302, -0.024183,
		35.519474, 35.957451, 32.952267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122074, 36.087898, 33.503967>,  <36.099026, 35.565239, 32.969196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122074, 36.087898, 33.503967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.735249, 36.015114, 33.432766>,  <35.503155, 35.971443, 33.390045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.735249, 36.015114, 33.432766>,  <36.122074, 36.087898, 33.503967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735249, 36.015114, 33.432766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202721, 0.127605, 0.970887,
		-0.153949, 0.974991, -0.160289,
		-0.967059, -0.181961, -0.178007,
		35.445129, 35.960526, 33.379364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.824978, 39.073647, 26.622728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551201, 38.825226, 26.469976>,  <38.386936, 38.676174, 26.378325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551201, 38.825226, 26.469976>,  <38.824978, 39.073647, 26.622728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551201, 38.825226, 26.469976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558519, 0.109984, 0.822168,
		-0.468607, 0.776015, -0.422146,
		-0.684444, -0.621051, -0.381880,
		38.345867, 38.638912, 26.355412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215614, 39.399822, 26.781170>,  <38.824978, 39.073647, 26.622728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215614, 39.399822, 26.781170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120983, 39.013294, 26.740646>,  <38.064205, 38.781380, 26.716333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120983, 39.013294, 26.740646>,  <38.215614, 39.399822, 26.781170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120983, 39.013294, 26.740646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547325, 0.046391, 0.835634,
		-0.802787, 0.253138, -0.539864,
		-0.236576, -0.966317, -0.101307,
		38.050011, 38.723400, 26.710255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563515, 39.294823, 27.109358>,  <38.215614, 39.399822, 26.781170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563515, 39.294823, 27.109358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700317, 38.920368, 27.076666>,  <37.782398, 38.695694, 27.057051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700317, 38.920368, 27.076666>,  <37.563515, 39.294823, 27.109358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700317, 38.920368, 27.076666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424994, -0.231663, 0.875050,
		-0.838100, -0.264539, -0.477083,
		0.342007, -0.936136, -0.081729,
		37.802921, 38.639526, 27.052147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042244, 38.967117, 27.279989>,  <37.563515, 39.294823, 27.109358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042244, 38.967117, 27.279989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322033, 38.685978, 27.331732>,  <37.489906, 38.517292, 27.362778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322033, 38.685978, 27.331732>,  <37.042244, 38.967117, 27.279989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322033, 38.685978, 27.331732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374695, -0.206548, 0.903848,
		-0.608554, -0.680689, -0.407830,
		0.699476, -0.702852, 0.129355,
		37.531876, 38.475121, 27.370539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670635, 38.320347, 27.332449>,  <37.042244, 38.967117, 27.279989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670635, 38.320347, 27.332449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032753, 38.276962, 27.496731>,  <37.250023, 38.250931, 27.595299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032753, 38.276962, 27.496731>,  <36.670635, 38.320347, 27.332449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032753, 38.276962, 27.496731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421960, -0.118315, 0.898861,
		-0.048894, -0.987036, -0.152874,
		0.905295, -0.108456, 0.410704,
		37.304340, 38.244423, 27.619942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590130, 37.767342, 27.714664>,  <36.670635, 38.320347, 27.332449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590130, 37.767342, 27.714664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920345, 37.928551, 27.872684>,  <37.118473, 38.025276, 27.967497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920345, 37.928551, 27.872684>,  <36.590130, 37.767342, 27.714664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920345, 37.928551, 27.872684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355572, -0.172144, 0.918659,
		0.438245, -0.898854, 0.001192,
		0.825536, 0.403022, 0.395048,
		37.168007, 38.049458, 27.991199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858917, 37.188728, 28.152027>,  <36.590130, 37.767342, 27.714664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858917, 37.188728, 28.152027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006332, 37.521847, 28.317259>,  <37.094780, 37.721718, 28.416399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006332, 37.521847, 28.317259>,  <36.858917, 37.188728, 28.152027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006332, 37.521847, 28.317259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238421, -0.344819, 0.907885,
		0.898519, -0.433076, 0.071477,
		0.368536, 0.832794, 0.413081,
		37.116894, 37.771687, 28.441183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054161, 36.938881, 28.775396>,  <36.858917, 37.188728, 28.152027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054161, 36.938881, 28.775396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065662, 37.335018, 28.829651>,  <37.072563, 37.572701, 28.862204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065662, 37.335018, 28.829651>,  <37.054161, 36.938881, 28.775396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065662, 37.335018, 28.829651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211001, -0.126620, 0.969250,
		0.977063, -0.056485, 0.205323,
		0.028750, 0.990342, 0.135634,
		37.074287, 37.632122, 28.870340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438271, 37.031067, 29.364344>,  <37.054161, 36.938881, 28.775396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438271, 37.031067, 29.364344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243546, 37.377892, 29.321962>,  <37.126709, 37.585987, 29.296534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243546, 37.377892, 29.321962>,  <37.438271, 37.031067, 29.364344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243546, 37.377892, 29.321962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256196, -0.025761, 0.966281,
		0.835092, 0.497542, 0.234677,
		-0.486811, 0.867057, -0.105955,
		37.097504, 37.638008, 29.290176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091187, 36.789822, 29.314442>,  <37.438271, 37.031067, 29.364344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091187, 36.789822, 29.314442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166447, 36.399181, 29.356117>,  <38.211605, 36.164799, 29.381123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166447, 36.399181, 29.356117>,  <38.091187, 36.789822, 29.314442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166447, 36.399181, 29.356117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040874, -0.098203, -0.994327,
		0.981288, 0.191346, 0.021440,
		0.188155, -0.976597, 0.104187,
		38.222893, 36.106201, 29.387373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730225, 36.532772, 28.806965>,  <38.091187, 36.789822, 29.314442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730225, 36.532772, 28.806965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503780, 36.212284, 28.884495>,  <38.367912, 36.019993, 28.931013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503780, 36.212284, 28.884495>,  <38.730225, 36.532772, 28.806965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503780, 36.212284, 28.884495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267943, -0.401216, -0.875918,
		0.779566, -0.443934, 0.441814,
		-0.566113, -0.801217, 0.193826,
		38.333946, 35.971920, 28.942642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217800, 35.905361, 28.854057>,  <38.730225, 36.532772, 28.806965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217800, 35.905361, 28.854057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852764, 35.775692, 28.754387>,  <38.633743, 35.697891, 28.694584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852764, 35.775692, 28.754387>,  <39.217800, 35.905361, 28.854057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852764, 35.775692, 28.754387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369805, -0.394437, -0.841228,
		0.174423, -0.859842, 0.479841,
		-0.912590, -0.324177, -0.249175,
		38.578987, 35.678440, 28.679634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384300, 35.285133, 28.492943>,  <39.217800, 35.905361, 28.854057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384300, 35.285133, 28.492943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998077, 35.344128, 28.407200>,  <38.766346, 35.379524, 28.355753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998077, 35.344128, 28.407200>,  <39.384300, 35.285133, 28.492943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998077, 35.344128, 28.407200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146129, -0.374265, -0.915736,
		-0.215288, -0.915518, 0.339821,
		-0.965555, 0.147489, -0.214359,
		38.708412, 35.388374, 28.342892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294804, 34.718304, 28.195671>,  <39.384300, 35.285133, 28.492943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294804, 34.718304, 28.195671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999580, 34.957367, 28.070408>,  <38.822445, 35.100803, 27.995251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999580, 34.957367, 28.070408>,  <39.294804, 34.718304, 28.195671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999580, 34.957367, 28.070408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213846, -0.232998, -0.948674,
		-0.639948, -0.767148, 0.044160,
		-0.738063, 0.597658, -0.313158,
		38.778160, 35.136665, 27.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070885, 34.444801, 27.627972>,  <39.294804, 34.718304, 28.195671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070885, 34.444801, 27.627972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897564, 34.802261, 27.581253>,  <38.793571, 35.016739, 27.553221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897564, 34.802261, 27.581253>,  <39.070885, 34.444801, 27.627972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897564, 34.802261, 27.581253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357423, 0.051422, -0.932526,
		-0.827345, -0.445809, -0.341692,
		-0.433299, 0.893650, -0.116798,
		38.767574, 35.070354, 27.546213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835007, 34.417206, 27.036757>,  <39.070885, 34.444801, 27.627972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835007, 34.417206, 27.036757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844315, 34.813335, 27.091484>,  <38.849899, 35.051014, 27.124321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844315, 34.813335, 27.091484>,  <38.835007, 34.417206, 27.036757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844315, 34.813335, 27.091484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397283, 0.116425, -0.910281,
		-0.917401, 0.075542, -0.390728,
		0.023274, 0.990322, 0.136820,
		38.851295, 35.110432, 27.132530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453094, 34.648277, 26.555807>,  <38.835007, 34.417206, 27.036757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453094, 34.648277, 26.555807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717201, 34.926556, 26.668985>,  <38.875664, 35.093521, 26.736893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717201, 34.926556, 26.668985>,  <38.453094, 34.648277, 26.555807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717201, 34.926556, 26.668985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316992, 0.083394, -0.944755,
		-0.680854, 0.713483, -0.165467,
		0.660268, 0.695692, 0.282948,
		38.915283, 35.135262, 26.753870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444138, 35.132332, 26.035467>,  <38.453094, 34.648277, 26.555807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444138, 35.132332, 26.035467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793781, 35.210571, 26.213312>,  <39.003567, 35.257515, 26.320019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793781, 35.210571, 26.213312>,  <38.444138, 35.132332, 26.035467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793781, 35.210571, 26.213312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401625, 0.223792, -0.888040,
		-0.273198, 0.954809, 0.117061,
		0.874105, 0.195596, 0.444614,
		39.056011, 35.269249, 26.346697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585999, 35.854961, 25.913631>,  <38.444138, 35.132332, 26.035467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585999, 35.854961, 25.913631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905903, 35.616833, 25.944574>,  <39.097843, 35.473957, 25.963140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905903, 35.616833, 25.944574>,  <38.585999, 35.854961, 25.913631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905903, 35.616833, 25.944574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281609, 0.258230, -0.924129,
		0.530174, 0.760863, 0.374169,
		0.799757, -0.595319, 0.077359,
		39.145828, 35.438236, 25.967781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148365, 36.302906, 25.525015>,  <38.585999, 35.854961, 25.913631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148365, 36.302906, 25.525015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311031, 35.942158, 25.583326>,  <39.408630, 35.725708, 25.618313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311031, 35.942158, 25.583326>,  <39.148365, 36.302906, 25.525015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311031, 35.942158, 25.583326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594022, 0.139798, -0.792209,
		0.694091, 0.408759, 0.592582,
		0.406665, -0.901872, 0.145779,
		39.433029, 35.671597, 25.627060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829643, 36.424580, 25.448790>,  <39.148365, 36.302906, 25.525015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829643, 36.424580, 25.448790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791138, 36.028786, 25.405594>,  <39.768036, 35.791309, 25.379677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791138, 36.028786, 25.405594>,  <39.829643, 36.424580, 25.448790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791138, 36.028786, 25.405594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578682, 0.032636, -0.814900,
		0.809852, -0.140937, 0.569453,
		-0.096265, -0.989480, -0.107988,
		39.762257, 35.731941, 25.373198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362732, 36.198902, 25.073421>,  <39.829643, 36.424580, 25.448790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362732, 36.198902, 25.073421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155445, 35.857849, 25.046680>,  <40.031075, 35.653217, 25.030636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155445, 35.857849, 25.046680>,  <40.362732, 36.198902, 25.073421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155445, 35.857849, 25.046680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518110, -0.250784, -0.817722,
		0.680453, -0.458390, 0.571718,
		-0.518213, -0.852635, -0.066850,
		39.999981, 35.602058, 25.026625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918892, 35.702347, 24.992321>,  <40.362732, 36.198902, 25.073421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918892, 35.702347, 24.992321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566051, 35.578194, 24.850580>,  <40.354347, 35.503704, 24.765535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566051, 35.578194, 24.850580>,  <40.918892, 35.702347, 24.992321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566051, 35.578194, 24.850580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429638, -0.221627, -0.875381,
		0.193167, -0.924416, 0.328849,
		-0.882098, -0.310381, -0.354353,
		40.301422, 35.485081, 24.744274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.268742, 33.183147, 23.305582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613701, 33.345966, 23.425966>,  <34.820675, 33.443657, 23.498198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613701, 33.345966, 23.425966>,  <34.268742, 33.183147, 23.305582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613701, 33.345966, 23.425966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131177, -0.394523, 0.909475,
		0.488938, -0.823809, -0.286840,
		0.862399, 0.407050, 0.300962,
		34.872421, 33.468082, 23.516254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551052, 32.632484, 23.600250>,  <34.268742, 33.183147, 23.305582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551052, 32.632484, 23.600250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.693085, 32.976681, 23.746387>,  <34.778305, 33.183197, 23.834070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.693085, 32.976681, 23.746387>,  <34.551052, 32.632484, 23.600250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693085, 32.976681, 23.746387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080775, -0.361108, 0.929019,
		0.931341, -0.359384, -0.058715,
		0.355077, 0.860491, 0.365344,
		34.799606, 33.234829, 23.855991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839520, 32.415604, 24.334684>,  <34.551052, 32.632484, 23.600250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839520, 32.415604, 24.334684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786343, 32.811943, 24.325270>,  <34.754436, 33.049747, 24.319620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786343, 32.811943, 24.325270>,  <34.839520, 32.415604, 24.334684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786343, 32.811943, 24.325270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169668, 0.000646, 0.985501,
		0.976494, 0.135006, 0.168029,
		-0.132940, 0.990844, -0.023537,
		34.746460, 33.109196, 24.318209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128342, 32.640808, 25.042233>,  <34.839520, 32.415604, 24.334684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128342, 32.640808, 25.042233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903946, 32.954960, 24.937572>,  <34.769306, 33.143452, 24.874777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903946, 32.954960, 24.937572>,  <35.128342, 32.640808, 25.042233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903946, 32.954960, 24.937572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110332, 0.242316, 0.963903,
		0.820434, 0.569612, -0.049285,
		-0.560994, 0.785382, -0.261651,
		34.735649, 33.190575, 24.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416096, 33.177017, 25.366350>,  <35.128342, 32.640808, 25.042233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416096, 33.177017, 25.366350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027405, 33.246738, 25.302645>,  <34.794189, 33.288570, 25.264421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.027405, 33.246738, 25.302645>,  <35.416096, 33.177017, 25.366350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027405, 33.246738, 25.302645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104728, 0.286348, 0.952385,
		0.211609, 0.942138, -0.259997,
		-0.971727, 0.174304, -0.159261,
		34.735886, 33.299030, 25.254866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228096, 33.795609, 25.717741>,  <35.416096, 33.177017, 25.366350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228096, 33.795609, 25.717741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890461, 33.586670, 25.669292>,  <34.687881, 33.461308, 25.640224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890461, 33.586670, 25.669292>,  <35.228096, 33.795609, 25.717741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890461, 33.586670, 25.669292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302005, 0.276476, 0.912334,
		-0.443069, 0.806669, -0.391121,
		-0.844087, -0.522347, -0.121120,
		34.637234, 33.429966, 25.632956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757484, 34.221226, 26.146317>,  <35.228096, 33.795609, 25.717741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757484, 34.221226, 26.146317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587559, 33.866917, 26.071539>,  <34.485603, 33.654331, 26.026672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587559, 33.866917, 26.071539>,  <34.757484, 34.221226, 26.146317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587559, 33.866917, 26.071539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334509, -0.038298, 0.941614,
		-0.841211, 0.462545, -0.280028,
		-0.424814, -0.885768, -0.186942,
		34.460114, 33.601185, 26.015457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107155, 34.235973, 26.485411>,  <34.757484, 34.221226, 26.146317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107155, 34.235973, 26.485411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167171, 33.845291, 26.424040>,  <34.203182, 33.610882, 26.387217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167171, 33.845291, 26.424040>,  <34.107155, 34.235973, 26.485411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167171, 33.845291, 26.424040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367071, -0.199125, 0.908630,
		-0.918012, -0.080017, -0.388396,
		0.150045, -0.976702, -0.153427,
		34.212185, 33.552280, 26.378012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543018, 33.801804, 26.786392>,  <34.107155, 34.235973, 26.485411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543018, 33.801804, 26.786392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.836609, 33.532883, 26.747847>,  <34.012764, 33.371532, 26.724720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.836609, 33.532883, 26.747847>,  <33.543018, 33.801804, 26.786392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836609, 33.532883, 26.747847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169685, -0.318906, 0.932473,
		-0.657632, -0.668065, -0.348150,
		0.733980, -0.672300, -0.096362,
		34.056805, 33.331192, 26.718939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249966, 33.224449, 27.128033>,  <33.543018, 33.801804, 26.786392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249966, 33.224449, 27.128033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646923, 33.175510, 27.122677>,  <33.885098, 33.146145, 27.119463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646923, 33.175510, 27.122677>,  <33.249966, 33.224449, 27.128033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646923, 33.175510, 27.122677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029757, -0.344069, 0.938473,
		-0.119429, -0.930939, -0.345094,
		0.992397, -0.122350, -0.013389,
		33.944641, 33.138805, 27.118660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346478, 32.528198, 27.198057>,  <33.249966, 33.224449, 27.128033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346478, 32.528198, 27.198057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.670498, 32.732624, 27.313046>,  <33.864910, 32.855278, 27.382038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.670498, 32.732624, 27.313046>,  <33.346478, 32.528198, 27.198057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670498, 32.732624, 27.313046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209838, -0.205136, 0.955974,
		0.547531, -0.834708, -0.058930,
		0.810048, 0.511060, 0.287472,
		33.913513, 32.885941, 27.399286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574299, 32.180138, 27.680904>,  <33.346478, 32.528198, 27.198057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574299, 32.180138, 27.680904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.808704, 32.496449, 27.751621>,  <33.949348, 32.686234, 27.794052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.808704, 32.496449, 27.751621>,  <33.574299, 32.180138, 27.680904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808704, 32.496449, 27.751621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048092, -0.251742, 0.966599,
		0.808870, -0.557941, -0.185555,
		0.586017, 0.790777, 0.176794,
		33.984509, 32.733681, 27.804659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178669, 31.942770, 28.036049>,  <33.574299, 32.180138, 27.680904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178669, 31.942770, 28.036049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.153809, 32.336468, 28.102259>,  <34.138893, 32.572685, 28.141985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.153809, 32.336468, 28.102259>,  <34.178669, 31.942770, 28.036049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153809, 32.336468, 28.102259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063975, -0.161576, 0.984784,
		0.996014, 0.071799, -0.052925,
		-0.062155, 0.984245, 0.165526,
		34.135162, 32.631741, 28.151917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818317, 32.177963, 28.554537>,  <34.178669, 31.942770, 28.036049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818317, 32.177963, 28.554537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493706, 32.411514, 28.563591>,  <34.298939, 32.551643, 28.569023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493706, 32.411514, 28.563591>,  <34.818317, 32.177963, 28.554537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493706, 32.411514, 28.563591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129004, -0.216815, 0.967651,
		0.569895, 0.782357, 0.251274,
		-0.811528, 0.583875, 0.022635,
		34.250248, 32.586678, 28.570381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507061, 32.326839, 28.467697>,  <34.818317, 32.177963, 28.554537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507061, 32.326839, 28.467697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821537, 32.098934, 28.563417>,  <36.010223, 31.962191, 28.620850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.821537, 32.098934, 28.563417>,  <35.507061, 32.326839, 28.467697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821537, 32.098934, 28.563417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182314, -0.156155, -0.970761,
		0.590476, 0.806834, -0.018892,
		0.786193, -0.569767, 0.239303,
		36.057396, 31.928003, 28.635208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149715, 32.602993, 28.032644>,  <35.507061, 32.326839, 28.467697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149715, 32.602993, 28.032644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222279, 32.226395, 28.146259>,  <36.265816, 32.000435, 28.214428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222279, 32.226395, 28.146259>,  <36.149715, 32.602993, 28.032644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222279, 32.226395, 28.146259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221061, -0.242398, -0.944656,
		0.958240, 0.234156, 0.164156,
		0.181406, -0.941496, 0.284038,
		36.276699, 31.943947, 28.231470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670609, 32.507294, 27.701237>,  <36.149715, 32.602993, 28.032644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670609, 32.507294, 27.701237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571068, 32.124989, 27.763969>,  <36.511345, 31.895605, 27.801609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571068, 32.124989, 27.763969>,  <36.670609, 32.507294, 27.701237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571068, 32.124989, 27.763969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291150, -0.228254, -0.929049,
		0.923746, -0.185530, 0.335070,
		-0.248848, -0.955761, 0.156831,
		36.496414, 31.838261, 27.811018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208191, 32.060593, 27.503290>,  <36.670609, 32.507294, 27.701237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208191, 32.060593, 27.503290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900311, 31.805552, 27.516071>,  <36.715584, 31.652527, 27.523739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.900311, 31.805552, 27.516071>,  <37.208191, 32.060593, 27.503290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900311, 31.805552, 27.516071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325078, -0.434516, -0.839952,
		0.549442, -0.636124, 0.541719,
		-0.769700, -0.637606, 0.031951,
		36.669399, 31.614269, 27.525658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506981, 31.442577, 27.426201>,  <37.208191, 32.060593, 27.503290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506981, 31.442577, 27.426201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121651, 31.399633, 27.327835>,  <36.890453, 31.373867, 27.268816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.121651, 31.399633, 27.327835>,  <37.506981, 31.442577, 27.426201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121651, 31.399633, 27.327835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268319, -0.393211, -0.879426,
		-0.002281, -0.913159, 0.407598,
		-0.963328, -0.107360, -0.245914,
		36.832653, 31.367426, 27.254061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499386, 30.870613, 26.985189>,  <37.506981, 31.442577, 27.426201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499386, 30.870613, 26.985189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155689, 31.058058, 26.903114>,  <36.949471, 31.170525, 26.853868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155689, 31.058058, 26.903114>,  <37.499386, 30.870613, 26.985189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155689, 31.058058, 26.903114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125235, -0.196206, -0.972532,
		-0.495999, -0.861340, 0.109902,
		-0.859244, 0.468612, -0.205188,
		36.897915, 31.198641, 26.841558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401611, 30.585833, 26.289572>,  <37.499386, 30.870613, 26.985189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401611, 30.585833, 26.289572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111938, 30.860918, 26.309998>,  <36.938133, 31.025969, 26.322254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111938, 30.860918, 26.309998>,  <37.401611, 30.585833, 26.289572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111938, 30.860918, 26.309998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099401, -0.030822, -0.994570,
		-0.682403, -0.725330, 0.090680,
		-0.724186, 0.687711, 0.051066,
		36.894684, 31.067232, 26.325317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791283, 30.324091, 25.884718>,  <37.401611, 30.585833, 26.289572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791283, 30.324091, 25.884718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813862, 30.723452, 25.883776>,  <36.827408, 30.963068, 25.883211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813862, 30.723452, 25.883776>,  <36.791283, 30.324091, 25.884718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813862, 30.723452, 25.883776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074561, 0.001864, -0.997215,
		-0.995618, 0.056463, 0.074547,
		0.056444, 0.998403, -0.002354,
		36.830795, 31.022972, 25.883070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284046, 30.578732, 25.443596>,  <36.791283, 30.324091, 25.884718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284046, 30.578732, 25.443596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535534, 30.888735, 25.469107>,  <36.686428, 31.074738, 25.484413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535534, 30.888735, 25.469107>,  <36.284046, 30.578732, 25.443596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535534, 30.888735, 25.469107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015768, 0.069294, -0.997472,
		-0.777470, 0.628138, 0.031346,
		0.628722, 0.775010, 0.063778,
		36.724152, 31.121239, 25.488239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075237, 30.936380, 24.869314>,  <36.284046, 30.578732, 25.443596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075237, 30.936380, 24.869314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.420578, 31.102072, 24.984579>,  <36.627781, 31.201487, 25.053738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.420578, 31.102072, 24.984579>,  <36.075237, 30.936380, 24.869314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420578, 31.102072, 24.984579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204260, 0.235298, -0.950217,
		-0.461411, 0.879232, 0.118534,
		0.863353, 0.414229, 0.288161,
		36.679585, 31.226341, 25.071028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266632, 31.633621, 24.619591>,  <36.075237, 30.936380, 24.869314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266632, 31.633621, 24.619591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610245, 31.429457, 24.635330>,  <36.816410, 31.306957, 24.644773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610245, 31.429457, 24.635330>,  <36.266632, 31.633621, 24.619591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610245, 31.429457, 24.635330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193015, 0.251740, -0.948352,
		0.474145, 0.822257, 0.314769,
		0.859030, -0.510412, 0.039347,
		36.867954, 31.276333, 24.647135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795929, 32.151649, 24.477594>,  <36.266632, 31.633621, 24.619591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795929, 32.151649, 24.477594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.918137, 31.779736, 24.395466>,  <36.991463, 31.556587, 24.346188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.918137, 31.779736, 24.395466>,  <36.795929, 32.151649, 24.477594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918137, 31.779736, 24.395466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406768, 0.322413, -0.854745,
		0.860928, 0.177624, 0.476711,
		0.305521, -0.929785, -0.205322,
		37.009792, 31.500801, 24.333870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587376, 32.120953, 24.325045>,  <36.795929, 32.151649, 24.477594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587376, 32.120953, 24.325045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393555, 31.821892, 24.143396>,  <37.277264, 31.642456, 24.034407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393555, 31.821892, 24.143396>,  <37.587376, 32.120953, 24.325045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393555, 31.821892, 24.143396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204397, 0.407998, -0.889809,
		0.850548, -0.523979, -0.044878,
		-0.484551, -0.747652, -0.454122,
		37.248188, 31.597595, 24.007160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064453, 31.970081, 23.798944>,  <37.587376, 32.120953, 24.325045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064453, 31.970081, 23.798944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711426, 31.815737, 23.691479>,  <37.499611, 31.723129, 23.626999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711426, 31.815737, 23.691479>,  <38.064453, 31.970081, 23.798944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711426, 31.815737, 23.691479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190287, 0.229395, -0.954552,
		0.429956, -0.893582, -0.129032,
		-0.882570, -0.385862, -0.268667,
		37.446655, 31.699978, 23.610878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358139, 31.553247, 24.264200>,  <38.064453, 31.970081, 23.798944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358139, 31.553247, 24.264200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755455, 31.508471, 24.252569>,  <38.993843, 31.481606, 24.245590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755455, 31.508471, 24.252569>,  <38.358139, 31.553247, 24.264200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755455, 31.508471, 24.252569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025146, -0.036370, 0.999022,
		-0.112891, -0.993049, -0.033311,
		0.993289, -0.111943, -0.029077,
		39.053440, 31.474888, 24.243847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418018, 30.999468, 24.706041>,  <38.358139, 31.553247, 24.264200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418018, 30.999468, 24.706041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745014, 31.228872, 24.684895>,  <38.941212, 31.366514, 24.672207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745014, 31.228872, 24.684895>,  <38.418018, 30.999468, 24.706041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745014, 31.228872, 24.684895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050158, 0.020546, 0.998530,
		0.573752, -0.818941, -0.011970,
		0.817492, 0.573509, -0.052865,
		38.990261, 31.400925, 24.669035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980190, 30.738642, 25.206358>,  <38.418018, 30.999468, 24.706041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980190, 30.738642, 25.206358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060448, 31.123037, 25.130211>,  <39.108604, 31.353674, 25.084522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060448, 31.123037, 25.130211>,  <38.980190, 30.738642, 25.206358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060448, 31.123037, 25.130211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076689, 0.178315, 0.980980,
		0.976657, -0.211429, -0.037919,
		0.200646, 0.960990, -0.190367,
		39.120640, 31.411335, 25.073101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366055, 30.935999, 25.666628>,  <38.980190, 30.738642, 25.206358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366055, 30.935999, 25.666628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255535, 31.308079, 25.569969>,  <39.189224, 31.531326, 25.511974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255535, 31.308079, 25.569969>,  <39.366055, 30.935999, 25.666628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255535, 31.308079, 25.569969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064346, 0.268773, 0.961052,
		0.958916, 0.249988, -0.134115,
		-0.276298, 0.930197, -0.241645,
		39.172646, 31.587137, 25.497477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849815, 31.339443, 26.071926>,  <39.366055, 30.935999, 25.666628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849815, 31.339443, 26.071926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556881, 31.596430, 25.981663>,  <39.381119, 31.750622, 25.927504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.556881, 31.596430, 25.981663>,  <39.849815, 31.339443, 26.071926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556881, 31.596430, 25.981663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084887, 0.414943, 0.905879,
		0.675631, 0.644253, -0.358416,
		-0.732337, 0.642464, -0.225659,
		39.337181, 31.789169, 25.913965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075386, 32.006401, 26.277109>,  <39.849815, 31.339443, 26.071926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075386, 32.006401, 26.277109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676086, 32.005917, 26.300758>,  <39.436508, 32.005627, 26.314947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.676086, 32.005917, 26.300758>,  <40.075386, 32.006401, 26.277109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676086, 32.005917, 26.300758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052282, 0.449054, 0.891974,
		-0.027629, 0.893504, -0.448205,
		-0.998250, -0.001211, 0.059121,
		39.376610, 32.005554, 26.318495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946983, 32.717876, 26.466305>,  <40.075386, 32.006401, 26.277109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946983, 32.717876, 26.466305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.595665, 32.537197, 26.529005>,  <39.384876, 32.428791, 26.566626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.595665, 32.537197, 26.529005>,  <39.946983, 32.717876, 26.466305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595665, 32.537197, 26.529005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057656, 0.425514, 0.903113,
		-0.474636, 0.784159, -0.399769,
		-0.878292, -0.451699, 0.156752,
		39.332176, 32.401688, 26.576031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565643, 33.176693, 26.930403>,  <39.946983, 32.717876, 26.466305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565643, 33.176693, 26.930403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.379143, 32.823933, 26.958265>,  <39.267242, 32.612274, 26.974983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.379143, 32.823933, 26.958265>,  <39.565643, 33.176693, 26.930403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379143, 32.823933, 26.958265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044126, 0.101825, 0.993823,
		-0.883549, 0.460301, -0.086391,
		-0.466255, -0.881904, 0.069656,
		39.239265, 32.559361, 26.979162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981705, 33.279922, 27.331841>,  <39.565643, 33.176693, 26.930403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981705, 33.279922, 27.331841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051758, 32.887833, 27.368683>,  <39.093788, 32.652576, 27.390789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051758, 32.887833, 27.368683>,  <38.981705, 33.279922, 27.331841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051758, 32.887833, 27.368683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165566, 0.062899, 0.984191,
		-0.970524, -0.187612, -0.151277,
		0.175131, -0.980227, 0.092108,
		39.104298, 32.593765, 27.396315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447010, 32.999550, 27.778595>,  <38.981705, 33.279922, 27.331841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447010, 32.999550, 27.778595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750717, 32.742050, 27.816755>,  <38.932941, 32.587551, 27.839651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.750717, 32.742050, 27.816755>,  <38.447010, 32.999550, 27.778595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750717, 32.742050, 27.816755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069646, 0.065376, 0.995427,
		-0.647042, -0.762439, 0.004804,
		0.759267, -0.643749, 0.095402,
		38.978497, 32.548927, 27.845375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178787, 32.551300, 28.194405>,  <38.447010, 32.999550, 27.778595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178787, 32.551300, 28.194405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576393, 32.520947, 28.225817>,  <38.814957, 32.502735, 28.244665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576393, 32.520947, 28.225817>,  <38.178787, 32.551300, 28.194405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576393, 32.520947, 28.225817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088469, -0.137958, 0.986479,
		-0.064026, -0.987527, -0.143846,
		0.994019, -0.075886, 0.078532,
		38.874599, 32.498180, 28.249376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270126, 31.985182, 28.672319>,  <38.178787, 32.551300, 28.194405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270126, 31.985182, 28.672319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616344, 32.184273, 28.694588>,  <38.824074, 32.303726, 28.707949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616344, 32.184273, 28.694588>,  <38.270126, 31.985182, 28.672319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616344, 32.184273, 28.694588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019845, -0.076989, 0.996835,
		0.500438, -0.863910, -0.056760,
		0.865545, 0.497727, 0.055672,
		38.876007, 32.333591, 28.711290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536270, 31.671572, 29.221893>,  <38.270126, 31.985182, 28.672319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536270, 31.671572, 29.221893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752766, 32.004898, 29.176914>,  <38.882664, 32.204895, 29.149927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.752766, 32.004898, 29.176914>,  <38.536270, 31.671572, 29.221893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752766, 32.004898, 29.176914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082005, 0.080781, 0.993353,
		0.836859, -0.546865, -0.024614,
		0.541242, 0.833314, -0.112448,
		38.915138, 32.254894, 29.143181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050209, 31.456812, 29.732981>,  <38.536270, 31.671572, 29.221893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050209, 31.456812, 29.732981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082985, 31.846571, 29.649235>,  <39.102650, 32.080425, 29.598988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082985, 31.846571, 29.649235>,  <39.050209, 31.456812, 29.732981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082985, 31.846571, 29.649235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266964, 0.180934, 0.946569,
		0.960217, -0.133454, -0.245304,
		0.081940, 0.974399, -0.209363,
		39.107567, 32.138889, 29.586426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.133575, 34.996204, 24.583689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.763405, 35.093735, 24.467663>,  <40.541302, 35.152252, 24.398046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.763405, 35.093735, 24.467663>,  <41.133575, 34.996204, 24.583689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763405, 35.093735, 24.467663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268609, -0.117827, -0.956016,
		-0.267275, -0.962636, 0.043548,
		-0.925426, 0.243822, -0.290064,
		40.485779, 35.166882, 24.380644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906456, 34.455845, 24.064156>,  <41.133575, 34.996204, 24.583689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906456, 34.455845, 24.064156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.679394, 34.777657, 23.994299>,  <40.543156, 34.970745, 23.952385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.679394, 34.777657, 23.994299>,  <40.906456, 34.455845, 24.064156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679394, 34.777657, 23.994299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170513, -0.092637, -0.980991,
		-0.805415, -0.586642, -0.084597,
		-0.567654, 0.804530, -0.174641,
		40.509098, 35.019016, 23.941906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564075, 34.289761, 23.559006>,  <40.906456, 34.455845, 24.064156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564075, 34.289761, 23.559006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.561462, 34.688263, 23.524540>,  <40.559895, 34.927364, 23.503860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.561462, 34.688263, 23.524540>,  <40.564075, 34.289761, 23.559006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561462, 34.688263, 23.524540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130585, -0.084579, -0.987823,
		-0.991416, -0.017701, -0.129545,
		-0.006528, 0.996260, -0.086165,
		40.559505, 34.987141, 23.498690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242920, 34.385445, 22.868031>,  <40.564075, 34.289761, 23.559006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242920, 34.385445, 22.868031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419350, 34.734371, 22.952421>,  <40.525208, 34.943729, 23.003056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.419350, 34.734371, 22.952421>,  <40.242920, 34.385445, 22.868031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419350, 34.734371, 22.952421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147261, 0.161548, -0.975816,
		-0.885305, 0.461480, -0.057203,
		0.441078, 0.872318, 0.210977,
		40.551674, 34.996067, 23.015715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939091, 34.869236, 22.453909>,  <40.242920, 34.385445, 22.868031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939091, 34.869236, 22.453909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301254, 35.005070, 22.555830>,  <40.518551, 35.086571, 22.616983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301254, 35.005070, 22.555830>,  <39.939091, 34.869236, 22.453909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301254, 35.005070, 22.555830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179467, 0.237776, -0.954597,
		-0.384748, 0.910026, 0.154340,
		0.905406, 0.339580, 0.254803,
		40.572876, 35.106945, 22.632271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060635, 35.397659, 21.987291>,  <39.939091, 34.869236, 22.453909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060635, 35.397659, 21.987291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428082, 35.314312, 22.121588>,  <40.648552, 35.264305, 22.202166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.428082, 35.314312, 22.121588>,  <40.060635, 35.397659, 21.987291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428082, 35.314312, 22.121588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386891, 0.301543, -0.871428,
		0.080336, 0.930406, 0.357619,
		0.918619, -0.208366, 0.335741,
		40.703667, 35.251801, 22.222311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466759, 35.975559, 21.761066>,  <40.060635, 35.397659, 21.987291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466759, 35.975559, 21.761066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.717758, 35.677155, 21.850258>,  <40.868359, 35.498112, 21.903772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.717758, 35.677155, 21.850258>,  <40.466759, 35.975559, 21.761066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717758, 35.677155, 21.850258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566094, 0.240492, -0.788480,
		0.534589, 0.620995, 0.573219,
		0.627497, -0.746009, 0.222977,
		40.906006, 35.453350, 21.917150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038647, 36.233833, 21.516371>,  <40.466759, 35.975559, 21.761066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038647, 36.233833, 21.516371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118450, 35.842495, 21.538385>,  <41.166332, 35.607693, 21.551594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118450, 35.842495, 21.538385>,  <41.038647, 36.233833, 21.516371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118450, 35.842495, 21.538385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601930, 0.078038, -0.794727,
		0.773226, 0.191680, 0.604467,
		0.199505, -0.978350, 0.055037,
		41.178303, 35.548988, 21.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691811, 36.153660, 21.383682>,  <41.038647, 36.233833, 21.516371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691811, 36.153660, 21.383682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520527, 35.803085, 21.295603>,  <41.417755, 35.592739, 21.242754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520527, 35.803085, 21.295603>,  <41.691811, 36.153660, 21.383682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520527, 35.803085, 21.295603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394251, 0.038072, -0.918214,
		0.813143, -0.480003, 0.329235,
		-0.428211, -0.876440, -0.220200,
		41.392063, 35.540154, 21.229544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254738, 35.795120, 21.038368>,  <41.691811, 36.153660, 21.383682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254738, 35.795120, 21.038368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.972286, 35.523209, 20.959095>,  <41.802814, 35.360062, 20.911531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.972286, 35.523209, 20.959095>,  <42.254738, 35.795120, 21.038368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972286, 35.523209, 20.959095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394005, -0.144658, -0.907653,
		0.588338, -0.719006, 0.369985,
		-0.706129, -0.679783, -0.198184,
		41.760448, 35.319275, 20.899639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654469, 35.272652, 20.794388>,  <42.254738, 35.795120, 21.038368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654469, 35.272652, 20.794388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.289021, 35.214130, 20.642651>,  <42.069752, 35.179016, 20.551607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.289021, 35.214130, 20.642651>,  <42.654469, 35.272652, 20.794388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289021, 35.214130, 20.642651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399522, -0.149964, -0.904374,
		0.075425, -0.977807, 0.195461,
		-0.913615, -0.146304, -0.379344,
		42.014935, 35.170238, 20.528847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762360, 34.713135, 20.287834>,  <42.654469, 35.272652, 20.794388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762360, 34.713135, 20.287834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422047, 34.898251, 20.188242>,  <42.217857, 35.009319, 20.128487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.422047, 34.898251, 20.188242>,  <42.762360, 34.713135, 20.287834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422047, 34.898251, 20.188242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276694, -0.008312, -0.960922,
		-0.446777, -0.886428, -0.120980,
		-0.850783, 0.462792, -0.248982,
		42.166813, 35.037086, 20.113546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423470, 34.346798, 19.763041>,  <42.762360, 34.713135, 20.287834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423470, 34.346798, 19.763041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.308475, 34.727566, 19.720701>,  <42.239479, 34.956024, 19.695297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.308475, 34.727566, 19.720701>,  <42.423470, 34.346798, 19.763041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308475, 34.727566, 19.720701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247807, -0.032826, -0.968253,
		-0.925171, -0.304592, -0.226455,
		-0.287488, 0.951917, -0.105849,
		42.222229, 35.013142, 19.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391373, 33.754910, 19.224699>,  <42.423470, 34.346798, 19.763041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391373, 33.754910, 19.224699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.585194, 33.947159, 18.932341>,  <42.701485, 34.062508, 18.756926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.585194, 33.947159, 18.932341>,  <42.391373, 33.754910, 19.224699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585194, 33.947159, 18.932341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066159, -0.853278, -0.517242,
		-0.872257, 0.202275, -0.445256,
		0.484552, 0.480626, -0.730896,
		42.730560, 34.091347, 18.713072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381489, 32.937435, 19.130594>,  <42.391373, 33.754910, 19.224699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381489, 32.937435, 19.130594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.039356, 32.742874, 19.059233>,  <41.834076, 32.626137, 19.016417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.039356, 32.742874, 19.059233>,  <42.381489, 32.937435, 19.130594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039356, 32.742874, 19.059233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180494, -0.043015, 0.982635,
		-0.485626, 0.872678, -0.051000,
		-0.855330, -0.486398, -0.178402,
		41.782757, 32.596954, 19.005713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874649, 33.273018, 19.479038>,  <42.381489, 32.937435, 19.130594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874649, 33.273018, 19.479038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725639, 32.902534, 19.455820>,  <41.636234, 32.680244, 19.441889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725639, 32.902534, 19.455820>,  <41.874649, 33.273018, 19.479038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725639, 32.902534, 19.455820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291953, 0.057595, 0.954697,
		-0.880902, 0.372595, -0.291864,
		-0.372525, -0.926205, -0.058044,
		41.613880, 32.624672, 19.438406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181496, 33.334160, 19.872364>,  <41.874649, 33.273018, 19.479038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181496, 33.334160, 19.872364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.283287, 32.948357, 19.844170>,  <41.344364, 32.716877, 19.827253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.283287, 32.948357, 19.844170>,  <41.181496, 33.334160, 19.872364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283287, 32.948357, 19.844170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498778, -0.193347, 0.844889,
		-0.828529, -0.179852, -0.530277,
		0.254482, -0.964505, -0.070487,
		41.359631, 32.659004, 19.823023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625355, 32.917377, 19.931879>,  <41.181496, 33.334160, 19.872364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625355, 32.917377, 19.931879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.937241, 32.695145, 20.047379>,  <41.124371, 32.561806, 20.116678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.937241, 32.695145, 20.047379>,  <40.625355, 32.917377, 19.931879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937241, 32.695145, 20.047379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513395, -0.303289, 0.802770,
		-0.358429, -0.774174, -0.521711,
		0.779714, -0.555581, 0.288750,
		41.171154, 32.528469, 20.134005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325390, 32.270748, 20.028921>,  <40.625355, 32.917377, 19.931879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325390, 32.270748, 20.028921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660469, 32.264374, 20.247284>,  <40.861515, 32.260551, 20.378302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660469, 32.264374, 20.247284>,  <40.325390, 32.270748, 20.028921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660469, 32.264374, 20.247284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535560, -0.219760, 0.815402,
		0.106978, -0.975424, -0.192624,
		0.837694, -0.015931, 0.545908,
		40.911777, 32.259594, 20.411057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363785, 31.576206, 20.349491>,  <40.325390, 32.270748, 20.028921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363785, 31.576206, 20.349491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585056, 31.815981, 20.580891>,  <40.717819, 31.959846, 20.719730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585056, 31.815981, 20.580891>,  <40.363785, 31.576206, 20.349491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585056, 31.815981, 20.580891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618417, -0.169792, 0.767288,
		0.558167, -0.782205, 0.276776,
		0.553183, 0.599438, 0.578501,
		40.751011, 31.995811, 20.754440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488403, 31.217604, 20.940401>,  <40.363785, 31.576206, 20.349491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488403, 31.217604, 20.940401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585190, 31.577774, 21.085003>,  <40.643261, 31.793877, 21.171764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585190, 31.577774, 21.085003>,  <40.488403, 31.217604, 20.940401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585190, 31.577774, 21.085003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243959, -0.304147, 0.920857,
		0.939114, -0.311010, 0.146074,
		0.241968, 0.900426, 0.361502,
		40.657780, 31.847902, 21.193453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964008, 31.143194, 21.489874>,  <40.488403, 31.217604, 20.940401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964008, 31.143194, 21.489874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816818, 31.508207, 21.561293>,  <40.728504, 31.727215, 21.604145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816818, 31.508207, 21.561293>,  <40.964008, 31.143194, 21.489874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816818, 31.508207, 21.561293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217245, -0.271079, 0.937721,
		0.904103, 0.306266, 0.297993,
		-0.367971, 0.912533, 0.178549,
		40.706429, 31.781967, 21.614857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152493, 31.393303, 22.313305>,  <40.964008, 31.143194, 21.489874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152493, 31.393303, 22.313305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.869884, 31.644913, 22.183592>,  <40.700321, 31.795879, 22.105764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.869884, 31.644913, 22.183592>,  <41.152493, 31.393303, 22.313305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869884, 31.644913, 22.183592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423518, -0.008700, 0.905846,
		0.566980, 0.777335, 0.272551,
		-0.706517, 0.629027, -0.324283,
		40.657928, 31.833620, 22.086308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008682, 31.865534, 22.956516>,  <41.152493, 31.393303, 22.313305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008682, 31.865534, 22.956516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695499, 31.919321, 22.713572>,  <40.507587, 31.951593, 22.567804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695499, 31.919321, 22.713572>,  <41.008682, 31.865534, 22.956516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695499, 31.919321, 22.713572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608273, 0.038997, 0.792769,
		0.130289, 0.990150, 0.051262,
		-0.782962, 0.134470, -0.607362,
		40.460609, 31.959661, 22.531363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758266, 32.439632, 23.237520>,  <41.008682, 31.865534, 22.956516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758266, 32.439632, 23.237520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460098, 32.264751, 23.036242>,  <40.281197, 32.159824, 22.915474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460098, 32.264751, 23.036242>,  <40.758266, 32.439632, 23.237520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460098, 32.264751, 23.036242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561147, 0.004094, 0.827706,
		-0.359815, 0.899354, -0.248387,
		-0.745418, -0.437202, -0.503197,
		40.236473, 32.133591, 22.885283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096176, 32.785770, 23.433542>,  <40.758266, 32.439632, 23.237520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096176, 32.785770, 23.433542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981171, 32.422546, 23.311714>,  <39.912167, 32.204613, 23.238617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981171, 32.422546, 23.311714>,  <40.096176, 32.785770, 23.433542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981171, 32.422546, 23.311714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540599, -0.108645, 0.834235,
		-0.790626, 0.404503, -0.459660,
		-0.287511, -0.908060, -0.304572,
		39.894917, 32.150127, 23.220343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334881, 32.730190, 23.463861>,  <40.096176, 32.785770, 23.433542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334881, 32.730190, 23.463861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463863, 32.351936, 23.480774>,  <39.541252, 32.124985, 23.490921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463863, 32.351936, 23.480774>,  <39.334881, 32.730190, 23.463861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463863, 32.351936, 23.480774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505548, -0.134282, 0.852285,
		-0.800276, -0.296203, -0.521366,
		0.322460, -0.945639, 0.042282,
		39.560600, 32.068245, 23.493458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748291, 32.240276, 23.347477>,  <39.334881, 32.730190, 23.463861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748291, 32.240276, 23.347477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037727, 32.048431, 23.546026>,  <39.211388, 31.933325, 23.665155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.037727, 32.048431, 23.546026>,  <38.748291, 32.240276, 23.347477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037727, 32.048431, 23.546026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655816, -0.253492, 0.711089,
		-0.215221, -0.840067, -0.497964,
		0.723592, -0.479614, 0.496372,
		39.254807, 31.904547, 23.694937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235966, 31.601789, 23.194798>,  <38.748291, 32.240276, 23.347477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235966, 31.601789, 23.194798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.837662, 31.637499, 23.185852>,  <37.598679, 31.658924, 23.180485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.837662, 31.637499, 23.185852>,  <38.235966, 31.601789, 23.194798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837662, 31.637499, 23.185852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044262, 0.251517, -0.966840,
		-0.080689, -0.963727, -0.254401,
		-0.995756, 0.089274, -0.022362,
		37.538937, 31.664282, 23.179144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108234, 31.263880, 22.597216>,  <38.235966, 31.601789, 23.194798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108234, 31.263880, 22.597216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776936, 31.479879, 22.657091>,  <37.578156, 31.609480, 22.693016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776936, 31.479879, 22.657091>,  <38.108234, 31.263880, 22.597216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776936, 31.479879, 22.657091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070938, 0.366015, -0.927901,
		-0.555855, -0.757913, -0.341458,
		-0.828247, 0.540001, 0.149687,
		37.528461, 31.641880, 22.701998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671558, 31.190140, 22.032339>,  <38.108234, 31.263880, 22.597216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671558, 31.190140, 22.032339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534241, 31.537722, 22.174923>,  <37.451851, 31.746271, 22.260473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534241, 31.537722, 22.174923>,  <37.671558, 31.190140, 22.032339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534241, 31.537722, 22.174923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081391, 0.405619, -0.910411,
		-0.935695, -0.283527, -0.209972,
		-0.343295, 0.868957, 0.356459,
		37.431252, 31.798409, 22.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353512, 31.407211, 21.456045>,  <37.671558, 31.190140, 22.032339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353512, 31.407211, 21.456045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394527, 31.714397, 21.708937>,  <37.419136, 31.898708, 21.860672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394527, 31.714397, 21.708937>,  <37.353512, 31.407211, 21.456045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394527, 31.714397, 21.708937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122097, 0.621057, -0.774196,
		-0.987207, 0.156580, -0.030083,
		0.102540, 0.767965, 0.632230,
		37.425289, 31.944786, 21.898605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985420, 31.967497, 21.125092>,  <37.353512, 31.407211, 21.456045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985420, 31.967497, 21.125092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221836, 32.150936, 21.390532>,  <37.363686, 32.261002, 21.549795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221836, 32.150936, 21.390532>,  <36.985420, 31.967497, 21.125092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221836, 32.150936, 21.390532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205933, 0.709621, -0.673818,
		-0.779916, 0.534907, 0.324970,
		0.591035, 0.458600, 0.663599,
		37.399147, 32.288517, 21.589611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782124, 32.724026, 21.141502>,  <36.985420, 31.967497, 21.125092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782124, 32.724026, 21.141502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158813, 32.684666, 21.270168>,  <37.384827, 32.661049, 21.347368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158813, 32.684666, 21.270168>,  <36.782124, 32.724026, 21.141502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158813, 32.684666, 21.270168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296912, 0.692592, -0.657388,
		-0.158094, 0.714586, 0.681449,
		0.941727, -0.098401, 0.321664,
		37.441330, 32.655144, 21.366667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998882, 33.326851, 21.109062>,  <36.782124, 32.724026, 21.141502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998882, 33.326851, 21.109062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343815, 33.124557, 21.119047>,  <37.550774, 33.003181, 21.125038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343815, 33.124557, 21.119047>,  <36.998882, 33.326851, 21.109062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343815, 33.124557, 21.119047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406408, 0.661878, -0.629881,
		0.302028, 0.553310, 0.776291,
		0.862329, -0.505733, 0.024964,
		37.602512, 32.972839, 21.126535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012020, 34.085564, 21.285404>,  <36.998882, 33.326851, 21.109062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012020, 34.085564, 21.285404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691654, 34.319813, 21.235481>,  <36.499435, 34.460361, 21.205528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691654, 34.319813, 21.235481>,  <37.012020, 34.085564, 21.285404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691654, 34.319813, 21.235481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286467, -0.191724, 0.938711,
		0.525802, 0.787584, 0.321317,
		-0.800918, 0.585623, -0.124808,
		36.451378, 34.495499, 21.198038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888557, 34.571674, 21.871412>,  <37.012020, 34.085564, 21.285404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888557, 34.571674, 21.871412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526459, 34.540321, 21.704376>,  <36.309200, 34.521511, 21.604155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526459, 34.540321, 21.704376>,  <36.888557, 34.571674, 21.871412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526459, 34.540321, 21.704376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411177, -0.086010, 0.907489,
		-0.107049, 0.993206, 0.045630,
		-0.905248, -0.078384, -0.417590,
		36.254883, 34.516808, 21.579100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477863, 34.673931, 22.384937>,  <36.888557, 34.571674, 21.871412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477863, 34.673931, 22.384937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179558, 34.539673, 22.154743>,  <36.000576, 34.459118, 22.016626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179558, 34.539673, 22.154743>,  <36.477863, 34.673931, 22.384937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179558, 34.539673, 22.154743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447428, -0.387676, 0.805925,
		-0.493603, 0.858517, 0.138940,
		-0.745764, -0.335642, -0.575483,
		35.955830, 34.438980, 21.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874245, 34.959389, 22.666420>,  <36.477863, 34.673931, 22.384937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874245, 34.959389, 22.666420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760277, 34.625721, 22.477535>,  <35.691898, 34.425522, 22.364204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.760277, 34.625721, 22.477535>,  <35.874245, 34.959389, 22.666420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760277, 34.625721, 22.477535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620331, -0.215101, 0.754269,
		-0.730761, 0.507830, -0.456176,
		-0.284916, -0.834171, -0.472210,
		35.674801, 34.375469, 22.335873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166637, 34.925072, 22.709530>,  <35.874245, 34.959389, 22.666420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166637, 34.925072, 22.709530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257389, 34.548828, 22.608519>,  <35.311840, 34.323082, 22.547911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257389, 34.548828, 22.608519>,  <35.166637, 34.925072, 22.709530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257389, 34.548828, 22.608519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417059, -0.328147, 0.847574,
		-0.880106, -0.086979, -0.466742,
		0.226881, -0.940614, -0.252529,
		35.325455, 34.266644, 22.532761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574631, 34.571602, 22.935255>,  <35.166637, 34.925072, 22.709530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574631, 34.571602, 22.935255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873516, 34.306526, 22.915199>,  <35.052849, 34.147480, 22.903166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873516, 34.306526, 22.915199>,  <34.574631, 34.571602, 22.935255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873516, 34.306526, 22.915199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347088, -0.453470, 0.820911,
		-0.566746, -0.595993, -0.568851,
		0.747214, -0.662689, -0.050140,
		35.097679, 34.107719, 22.900158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217552, 33.880070, 23.052458>,  <34.574631, 34.571602, 22.935255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217552, 33.880070, 23.052458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607422, 33.860714, 23.139784>,  <34.841343, 33.849102, 23.192181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607422, 33.860714, 23.139784>,  <34.217552, 33.880070, 23.052458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607422, 33.860714, 23.139784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217843, -0.425860, 0.878173,
		0.050478, -0.903494, -0.425618,
		0.974678, -0.048390, 0.218316,
		34.899826, 33.846195, 23.205278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.055161, 37.619888, 19.511242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.196732, 37.275238, 19.656754>,  <40.281673, 37.068447, 19.744061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.196732, 37.275238, 19.656754>,  <40.055161, 37.619888, 19.511242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196732, 37.275238, 19.656754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724476, -0.006578, 0.689269,
		-0.591501, -0.507496, -0.626557,
		0.353923, -0.861629, 0.363778,
		40.302910, 37.016750, 19.765886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543556, 37.168488, 19.557953>,  <40.055161, 37.619888, 19.511242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543556, 37.168488, 19.557953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791744, 37.019741, 19.834137>,  <39.940655, 36.930492, 19.999847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791744, 37.019741, 19.834137>,  <39.543556, 37.168488, 19.557953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791744, 37.019741, 19.834137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617258, 0.311518, 0.722460,
		-0.483750, -0.874455, -0.036251,
		0.620467, -0.371866, 0.690462,
		39.977882, 36.908180, 20.041275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091244, 36.849754, 20.062155>,  <39.543556, 37.168488, 19.557953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091244, 36.849754, 20.062155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440174, 36.858318, 20.257538>,  <39.649532, 36.863457, 20.374767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440174, 36.858318, 20.257538>,  <39.091244, 36.849754, 20.062155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440174, 36.858318, 20.257538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456683, 0.392479, 0.798374,
		-0.174613, -0.919512, 0.352148,
		0.872325, 0.021413, 0.488457,
		39.701870, 36.864742, 20.404076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032490, 36.472569, 20.697052>,  <39.091244, 36.849754, 20.062155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032490, 36.472569, 20.697052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346031, 36.714745, 20.752213>,  <39.534157, 36.860050, 20.785309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346031, 36.714745, 20.752213>,  <39.032490, 36.472569, 20.697052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346031, 36.714745, 20.752213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239812, 0.090318, 0.966609,
		0.572771, -0.790748, 0.215989,
		0.783852, 0.605443, 0.137899,
		39.581188, 36.896378, 20.793583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333340, 36.285385, 21.358873>,  <39.032490, 36.472569, 20.697052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333340, 36.285385, 21.358873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.456116, 36.659203, 21.286856>,  <39.529781, 36.883492, 21.243645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.456116, 36.659203, 21.286856>,  <39.333340, 36.285385, 21.358873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456116, 36.659203, 21.286856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230951, 0.256660, 0.938502,
		0.923283, -0.246478, 0.294612,
		0.306935, 0.934545, -0.180046,
		39.548195, 36.939568, 21.232841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618214, 36.371128, 21.991571>,  <39.333340, 36.285385, 21.358873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618214, 36.371128, 21.991571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.569866, 36.735607, 21.834038>,  <39.540859, 36.954296, 21.739517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.569866, 36.735607, 21.834038>,  <39.618214, 36.371128, 21.991571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569866, 36.735607, 21.834038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173437, 0.371256, 0.912189,
		0.977400, 0.178559, 0.113163,
		-0.120868, 0.911200, -0.393834,
		39.533607, 37.008968, 21.715887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939560, 36.853127, 22.448761>,  <39.618214, 36.371128, 21.991571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939560, 36.853127, 22.448761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.715881, 37.100990, 22.228464>,  <39.581673, 37.249710, 22.096287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.715881, 37.100990, 22.228464>,  <39.939560, 36.853127, 22.448761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715881, 37.100990, 22.228464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303912, 0.464848, 0.831597,
		0.771321, 0.632404, -0.071618,
		-0.559197, 0.619663, -0.550742,
		39.548122, 37.286888, 22.063242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052990, 37.574203, 22.639437>,  <39.939560, 36.853127, 22.448761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052990, 37.574203, 22.639437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.687828, 37.552811, 22.477577>,  <39.468731, 37.539974, 22.380461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.687828, 37.552811, 22.477577>,  <40.052990, 37.574203, 22.639437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687828, 37.552811, 22.477577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379601, 0.475606, 0.793538,
		0.150014, 0.878031, -0.454486,
		-0.912907, -0.053482, -0.404649,
		39.413956, 37.536766, 22.356182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756611, 38.206474, 22.871141>,  <40.052990, 37.574203, 22.639437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756611, 38.206474, 22.871141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.438023, 37.989845, 22.763557>,  <39.246872, 37.859867, 22.699007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.438023, 37.989845, 22.763557>,  <39.756611, 38.206474, 22.871141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438023, 37.989845, 22.763557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504123, 0.349088, 0.789935,
		-0.333915, 0.764747, -0.551056,
		-0.796468, -0.541571, -0.268960,
		39.199081, 37.827374, 22.682869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159733, 38.652863, 23.033749>,  <39.756611, 38.206474, 22.871141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159733, 38.652863, 23.033749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027996, 38.275276, 23.042318>,  <38.948956, 38.048725, 23.047461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027996, 38.275276, 23.042318>,  <39.159733, 38.652863, 23.033749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027996, 38.275276, 23.042318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425514, 0.168638, 0.889100,
		-0.842895, 0.283700, -0.457211,
		-0.329341, -0.943968, 0.021426,
		38.929195, 37.992085, 23.048746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385612, 38.708691, 23.163561>,  <39.159733, 38.652863, 23.033749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385612, 38.708691, 23.163561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491722, 38.339684, 23.275692>,  <38.555386, 38.118279, 23.342972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491722, 38.339684, 23.275692>,  <38.385612, 38.708691, 23.163561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491722, 38.339684, 23.275692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494722, 0.119324, 0.860820,
		-0.827576, -0.367035, -0.424739,
		0.265270, -0.922522, 0.280330,
		38.571304, 38.062927, 23.359791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813602, 38.340233, 23.287487>,  <38.385612, 38.708691, 23.163561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813602, 38.340233, 23.287487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.098499, 38.164455, 23.506432>,  <38.269436, 38.058987, 23.637798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.098499, 38.164455, 23.506432>,  <37.813602, 38.340233, 23.287487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098499, 38.164455, 23.506432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496894, 0.235135, 0.835349,
		-0.495794, -0.866948, -0.050886,
		0.712239, -0.439446, 0.547360,
		38.312172, 38.032623, 23.670639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117176, 38.197239, 23.395231>,  <37.813602, 38.340233, 23.287487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117176, 38.197239, 23.395231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735622, 38.284275, 23.312510>,  <36.506691, 38.336498, 23.262877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735622, 38.284275, 23.312510>,  <37.117176, 38.197239, 23.395231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735622, 38.284275, 23.312510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175824, -0.153414, -0.972394,
		-0.243312, -0.963908, 0.108081,
		-0.953879, 0.217592, -0.206806,
		36.449459, 38.349552, 23.250467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882118, 37.728691, 22.856777>,  <37.117176, 38.197239, 23.395231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882118, 37.728691, 22.856777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592983, 38.005024, 22.863264>,  <36.419502, 38.170822, 22.867157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.592983, 38.005024, 22.863264>,  <36.882118, 37.728691, 22.856777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592983, 38.005024, 22.863264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054625, 0.080522, -0.995255,
		-0.688856, -0.718521, -0.095941,
		-0.722837, 0.690828, 0.016219,
		36.376133, 38.212273, 22.868130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238060, 37.509720, 22.432522>,  <36.882118, 37.728691, 22.856777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238060, 37.509720, 22.432522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191235, 37.906437, 22.453083>,  <36.163139, 38.144466, 22.465420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191235, 37.906437, 22.453083>,  <36.238060, 37.509720, 22.432522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191235, 37.906437, 22.453083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103661, 0.063677, -0.992572,
		-0.987699, -0.110869, -0.110265,
		-0.117067, 0.991793, 0.051401,
		36.156113, 38.203976, 22.468504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660427, 37.707436, 21.938677>,  <36.238060, 37.509720, 22.432522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660427, 37.707436, 21.938677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.876072, 38.040287, 21.990705>,  <36.005459, 38.239998, 22.021923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.876072, 38.040287, 21.990705>,  <35.660427, 37.707436, 21.938677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876072, 38.040287, 21.990705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073817, 0.107160, -0.991498,
		-0.838995, 0.544127, -0.003654,
		0.539109, 0.832132, 0.130073,
		36.037804, 38.289925, 22.029728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425175, 38.080669, 21.446167>,  <35.660427, 37.707436, 21.938677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425175, 38.080669, 21.446167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.772068, 38.257973, 21.536880>,  <35.980206, 38.364353, 21.591309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.772068, 38.257973, 21.536880>,  <35.425175, 38.080669, 21.446167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772068, 38.257973, 21.536880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226763, 0.053879, -0.972459,
		-0.443269, 0.894774, -0.053788,
		0.867232, 0.443258, 0.226784,
		36.032238, 38.390949, 21.604916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458492, 38.654716, 21.071857>,  <35.425175, 38.080669, 21.446167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458492, 38.654716, 21.071857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.846062, 38.600479, 21.154615>,  <36.078602, 38.567936, 21.204269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.846062, 38.600479, 21.154615>,  <35.458492, 38.654716, 21.071857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846062, 38.600479, 21.154615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211613, 0.021207, -0.977123,
		0.128099, 0.990538, 0.049241,
		0.968922, -0.135589, 0.206894,
		36.136738, 38.559803, 21.216684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738796, 38.962601, 20.548971>,  <35.458492, 38.654716, 21.071857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738796, 38.962601, 20.548971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.058559, 38.759724, 20.677790>,  <36.250416, 38.637997, 20.755081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.058559, 38.759724, 20.677790>,  <35.738796, 38.962601, 20.548971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058559, 38.759724, 20.677790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413514, 0.075626, -0.907351,
		0.435843, 0.858511, 0.270185,
		0.799404, -0.507188, 0.322046,
		36.298382, 38.607567, 20.774403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441284, 39.348736, 20.385145>,  <35.738796, 38.962601, 20.548971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441284, 39.348736, 20.385145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.514141, 38.957172, 20.422165>,  <36.557854, 38.722237, 20.444378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.514141, 38.957172, 20.422165>,  <36.441284, 39.348736, 20.385145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514141, 38.957172, 20.422165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403535, -0.011414, -0.914893,
		0.896652, 0.203988, 0.392944,
		0.182142, -0.978907, 0.092551,
		36.568783, 38.663502, 20.449930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211170, 39.250320, 20.184069>,  <36.441284, 39.348736, 20.385145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211170, 39.250320, 20.184069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.019791, 38.900497, 20.152487>,  <36.904964, 38.690605, 20.133537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.019791, 38.900497, 20.152487>,  <37.211170, 39.250320, 20.184069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019791, 38.900497, 20.152487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367391, -0.117702, -0.922588,
		0.797565, -0.470419, 0.377620,
		-0.478450, -0.874558, -0.078953,
		36.876255, 38.638130, 20.128801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813225, 38.789177, 19.935808>,  <37.211170, 39.250320, 20.184069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813225, 38.789177, 19.935808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.469246, 38.599281, 19.860859>,  <37.262859, 38.485344, 19.815889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.469246, 38.599281, 19.860859>,  <37.813225, 38.789177, 19.935808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469246, 38.599281, 19.860859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280092, -0.132073, -0.950845,
		0.426659, -0.870159, 0.246548,
		-0.859948, -0.474742, -0.187374,
		37.211262, 38.456860, 19.804647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967739, 38.237530, 19.451300>,  <37.813225, 38.789177, 19.935808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967739, 38.237530, 19.451300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572472, 38.275101, 19.402802>,  <37.335312, 38.297646, 19.373703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572472, 38.275101, 19.402802>,  <37.967739, 38.237530, 19.451300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572472, 38.275101, 19.402802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094609, -0.248875, -0.963904,
		-0.120712, -0.963970, 0.237044,
		-0.988169, 0.093928, -0.121243,
		37.276020, 38.303280, 19.366428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714478, 37.583282, 19.077559>,  <37.967739, 38.237530, 19.451300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714478, 37.583282, 19.077559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407700, 37.837990, 19.045742>,  <37.223633, 37.990814, 19.026651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407700, 37.837990, 19.045742>,  <37.714478, 37.583282, 19.077559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407700, 37.837990, 19.045742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067570, -0.203393, -0.976763,
		-0.638151, -0.743744, 0.199017,
		-0.766940, 0.636770, -0.079541,
		37.177616, 38.029022, 19.021879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099499, 37.265369, 18.771250>,  <37.714478, 37.583282, 19.077559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099499, 37.265369, 18.771250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.086758, 37.655418, 18.683512>,  <37.079113, 37.889450, 18.630869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.086758, 37.655418, 18.683512>,  <37.099499, 37.265369, 18.771250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086758, 37.655418, 18.683512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135665, -0.213210, -0.967542,
		-0.990243, -0.060573, -0.125500,
		-0.031849, 0.975127, -0.219347,
		37.077202, 37.947956, 18.617708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497456, 36.852600, 19.242678>,  <37.099499, 37.265369, 18.771250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497456, 36.852600, 19.242678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.338280, 36.650181, 18.936592>,  <37.242775, 36.528728, 18.752941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.338280, 36.650181, 18.936592>,  <37.497456, 36.852600, 19.242678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338280, 36.650181, 18.936592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535828, -0.548838, 0.641612,
		-0.744667, 0.665348, -0.052751,
		-0.397943, -0.506053, -0.765214,
		37.218895, 36.498363, 18.707027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682503, 36.779163, 19.396244>,  <37.497456, 36.852600, 19.242678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682503, 36.779163, 19.396244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.827171, 36.487648, 19.163673>,  <36.913971, 36.312737, 19.024132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.827171, 36.487648, 19.163673>,  <36.682503, 36.779163, 19.396244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827171, 36.487648, 19.163673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324681, -0.683063, 0.654223,
		-0.873943, -0.047836, -0.483669,
		0.361672, -0.728791, -0.581427,
		36.935673, 36.269012, 18.989246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208225, 36.302807, 19.541489>,  <36.682503, 36.779163, 19.396244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208225, 36.302807, 19.541489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.475800, 36.092541, 19.331272>,  <36.636345, 35.966381, 19.205141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.475800, 36.092541, 19.331272>,  <36.208225, 36.302807, 19.541489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475800, 36.092541, 19.331272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261391, -0.828220, 0.495707,
		-0.695843, -0.194225, -0.691433,
		0.668937, -0.525669, -0.525543,
		36.676479, 35.934841, 19.173609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798256, 35.695290, 19.129261>,  <36.208225, 36.302807, 19.541489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798256, 35.695290, 19.129261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.180473, 35.626312, 19.224918>,  <36.409805, 35.584927, 19.282312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.180473, 35.626312, 19.224918>,  <35.798256, 35.695290, 19.129261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180473, 35.626312, 19.224918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269837, -0.838363, 0.473641,
		0.118811, -0.517117, -0.847629,
		0.955548, -0.172448, 0.239144,
		36.467136, 35.574577, 19.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694271, 34.986557, 19.376854>,  <35.798256, 35.695290, 19.129261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694271, 34.986557, 19.376854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054386, 35.095901, 19.512360>,  <36.270454, 35.161507, 19.593664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054386, 35.095901, 19.512360>,  <35.694271, 34.986557, 19.376854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054386, 35.095901, 19.512360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031642, -0.735079, 0.677242,
		0.434150, -0.620430, -0.653131,
		0.900285, 0.273358, 0.338766,
		36.324471, 35.177910, 19.613989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942707, 34.439323, 19.616194>,  <35.694271, 34.986557, 19.376854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942707, 34.439323, 19.616194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.177055, 34.712128, 19.791286>,  <36.317665, 34.875813, 19.896343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.177055, 34.712128, 19.791286>,  <35.942707, 34.439323, 19.616194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177055, 34.712128, 19.791286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049482, -0.509030, 0.859325,
		0.808891, -0.525115, -0.264478,
		0.585872, 0.682014, 0.437734,
		36.352818, 34.916733, 19.922607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351067, 34.090366, 19.943968>,  <35.942707, 34.439323, 19.616194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351067, 34.090366, 19.943968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.363049, 34.437355, 20.142601>,  <36.370239, 34.645550, 20.261782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.363049, 34.437355, 20.142601>,  <36.351067, 34.090366, 19.943968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363049, 34.437355, 20.142601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034005, -0.495635, 0.867865,
		0.998973, -0.042884, 0.014651,
		0.029957, 0.867472, 0.496584,
		36.372036, 34.697598, 20.291576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893372, 34.028728, 20.545431>,  <36.351067, 34.090366, 19.943968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893372, 34.028728, 20.545431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691654, 34.350510, 20.670998>,  <36.570625, 34.543579, 20.746338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691654, 34.350510, 20.670998>,  <36.893372, 34.028728, 20.545431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691654, 34.350510, 20.670998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024128, -0.376512, 0.926097,
		0.863195, 0.459452, 0.209283,
		-0.504294, 0.804452, 0.313917,
		36.540367, 34.591846, 20.765173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571571, 33.812813, 20.852612>,  <36.893372, 34.028728, 20.545431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571571, 33.812813, 20.852612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771488, 33.466461, 20.861256>,  <37.891438, 33.258652, 20.866442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771488, 33.466461, 20.861256>,  <37.571571, 33.812813, 20.852612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771488, 33.466461, 20.861256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640458, 0.352656, -0.682237,
		0.583111, 0.354817, 0.730812,
		0.499795, -0.865874, 0.021608,
		37.921425, 33.206699, 20.867739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226902, 34.042454, 20.810820>,  <37.571571, 33.812813, 20.852612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226902, 34.042454, 20.810820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226643, 33.668522, 20.668785>,  <38.226486, 33.444160, 20.583565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226643, 33.668522, 20.668785>,  <38.226902, 34.042454, 20.810820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226643, 33.668522, 20.668785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592267, 0.285748, -0.753371,
		0.805741, -0.210795, 0.553485,
		-0.000650, -0.934833, -0.355086,
		38.226448, 33.388073, 20.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809868, 33.851448, 20.760328>,  <38.226902, 34.042454, 20.810820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809868, 33.851448, 20.760328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636745, 33.600750, 20.501139>,  <38.532871, 33.450329, 20.345625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636745, 33.600750, 20.501139>,  <38.809868, 33.851448, 20.760328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636745, 33.600750, 20.501139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703749, 0.214317, -0.677352,
		0.563401, -0.749170, 0.348317,
		-0.432801, -0.626748, -0.647974,
		38.506905, 33.412727, 20.306747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325199, 33.570473, 20.426138>,  <38.809868, 33.851448, 20.760328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325199, 33.570473, 20.426138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.024399, 33.507679, 20.170057>,  <38.843918, 33.470005, 20.016409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.024399, 33.507679, 20.170057>,  <39.325199, 33.570473, 20.426138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024399, 33.507679, 20.170057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631610, 0.106279, -0.767967,
		0.188597, -0.981866, 0.019231,
		-0.751997, -0.156982, -0.640201,
		38.798801, 33.460583, 19.977997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649624, 33.260715, 19.894560>,  <39.325199, 33.570473, 20.426138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649624, 33.260715, 19.894560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.298080, 33.329243, 19.716457>,  <39.087154, 33.370361, 19.609596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.298080, 33.329243, 19.716457>,  <39.649624, 33.260715, 19.894560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298080, 33.329243, 19.716457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474584, 0.218639, -0.852624,
		-0.048724, -0.960648, -0.273460,
		-0.878860, 0.171323, -0.445256,
		39.034424, 33.380638, 19.582880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635376, 32.866398, 19.388250>,  <39.649624, 33.260715, 19.894560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635376, 32.866398, 19.388250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385063, 33.161747, 19.287691>,  <39.234875, 33.338955, 19.227356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385063, 33.161747, 19.287691>,  <39.635376, 32.866398, 19.388250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385063, 33.161747, 19.287691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424163, 0.051657, -0.904112,
		-0.654584, -0.672413, -0.345516,
		-0.625785, 0.738372, -0.251399,
		39.197327, 33.383259, 19.212271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238922, 32.612587, 18.787365>,  <39.635376, 32.866398, 19.388250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238922, 32.612587, 18.787365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.201103, 33.010674, 18.777506>,  <39.178413, 33.249527, 18.771589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.201103, 33.010674, 18.777506>,  <39.238922, 32.612587, 18.787365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201103, 33.010674, 18.777506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373249, 0.012483, -0.927647,
		-0.922901, -0.096905, -0.372643,
		-0.094545, 0.995215, -0.024649,
		39.172741, 33.309238, 18.770111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846378, 32.743542, 18.256287>,  <39.238922, 32.612587, 18.787365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846378, 32.743542, 18.256287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073528, 33.063641, 18.333353>,  <39.209816, 33.255699, 18.379593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073528, 33.063641, 18.333353>,  <38.846378, 32.743542, 18.256287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073528, 33.063641, 18.333353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423699, -0.083515, -0.901945,
		-0.705692, 0.593821, -0.386491,
		0.567871, 0.800251, 0.192666,
		39.243889, 33.303715, 18.391153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949432, 33.189957, 17.501944>,  <38.846378, 32.743542, 18.256287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949432, 33.189957, 17.501944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226036, 33.304142, 17.767372>,  <39.391998, 33.372654, 17.926630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226036, 33.304142, 17.767372>,  <38.949432, 33.189957, 17.501944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226036, 33.304142, 17.767372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697102, -0.022880, -0.716607,
		-0.189382, 0.958117, -0.214818,
		0.691508, 0.285462, 0.663572,
		39.433487, 33.389782, 17.966444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.247963, 32.833637, 33.127632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553673, 33.082344, 33.196091>,  <35.737099, 33.231567, 33.237164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553673, 33.082344, 33.196091>,  <35.247963, 32.833637, 33.127632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553673, 33.082344, 33.196091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322897, -0.139232, -0.936137,
		-0.558226, 0.770731, -0.307177,
		0.764278, 0.621763, 0.171144,
		35.782955, 33.268871, 33.247433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207333, 33.410198, 32.639435>,  <35.247963, 32.833637, 33.127632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207333, 33.410198, 32.639435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590385, 33.375603, 32.749321>,  <35.820217, 33.354847, 32.815250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.590385, 33.375603, 32.749321>,  <35.207333, 33.410198, 32.639435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590385, 33.375603, 32.749321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265837, -0.101543, -0.958655,
		0.110806, 0.991065, -0.074249,
		0.957629, -0.086486, 0.274714,
		35.877674, 33.349655, 32.831734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627380, 33.901073, 32.165520>,  <35.207333, 33.410198, 32.639435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627380, 33.901073, 32.165520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842121, 33.592335, 32.301781>,  <35.970966, 33.407093, 32.383537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842121, 33.592335, 32.301781>,  <35.627380, 33.901073, 32.165520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842121, 33.592335, 32.301781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086127, -0.351524, -0.932209,
		0.839268, 0.529798, -0.122239,
		0.536852, -0.771845, 0.340653,
		36.003178, 33.360783, 32.403976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245377, 33.904556, 31.721851>,  <35.627380, 33.901073, 32.165520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245377, 33.904556, 31.721851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220150, 33.542011, 31.888960>,  <36.205013, 33.324486, 31.989225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220150, 33.542011, 31.888960>,  <36.245377, 33.904556, 31.721851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220150, 33.542011, 31.888960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271352, -0.418410, -0.866777,
		0.960412, 0.058697, 0.272331,
		-0.063069, -0.906360, 0.417773,
		36.201229, 33.270103, 32.014294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711796, 33.614002, 31.395613>,  <36.245377, 33.904556, 31.721851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711796, 33.614002, 31.395613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514103, 33.303566, 31.552284>,  <36.395485, 33.117302, 31.646288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514103, 33.303566, 31.552284>,  <36.711796, 33.614002, 31.395613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514103, 33.303566, 31.552284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212706, -0.544817, -0.811130,
		0.842905, -0.317575, 0.434346,
		-0.494234, -0.776093, 0.391679,
		36.365833, 33.070740, 31.669788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150616, 33.059799, 31.347853>,  <36.711796, 33.614002, 31.395613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150616, 33.059799, 31.347853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802635, 32.868362, 31.395414>,  <36.593845, 32.753502, 31.423952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802635, 32.868362, 31.395414>,  <37.150616, 33.059799, 31.347853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802635, 32.868362, 31.395414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205717, -0.571336, -0.794516,
		0.448181, -0.666730, 0.595488,
		-0.869951, -0.478589, 0.118905,
		36.541649, 32.724785, 31.431086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282547, 32.292088, 31.232143>,  <37.150616, 33.059799, 31.347853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282547, 32.292088, 31.232143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893898, 32.359734, 31.166002>,  <36.660709, 32.400322, 31.126318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893898, 32.359734, 31.166002>,  <37.282547, 32.292088, 31.232143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893898, 32.359734, 31.166002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044758, -0.555005, -0.830642,
		-0.232249, -0.814474, 0.531688,
		-0.971626, 0.169119, -0.165353,
		36.602409, 32.410469, 31.116396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960220, 31.624569, 30.980164>,  <37.282547, 32.292088, 31.232143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960220, 31.624569, 30.980164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694427, 31.900513, 30.865227>,  <36.534954, 32.066078, 30.796265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694427, 31.900513, 30.865227>,  <36.960220, 31.624569, 30.980164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694427, 31.900513, 30.865227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147728, -0.255659, -0.955413,
		-0.732561, -0.677299, 0.067969,
		-0.664477, 0.689858, -0.287342,
		36.495083, 32.107471, 30.779024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755924, 31.336035, 30.363180>,  <36.960220, 31.624569, 30.980164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755924, 31.336035, 30.363180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602333, 31.704319, 30.335314>,  <36.510178, 31.925289, 30.318594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602333, 31.704319, 30.335314>,  <36.755924, 31.336035, 30.363180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602333, 31.704319, 30.335314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149241, -0.136342, -0.979356,
		-0.911201, -0.365656, 0.189760,
		-0.383979, 0.920710, -0.069664,
		36.487141, 31.980532, 30.314415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123638, 31.233385, 30.019442>,  <36.755924, 31.336035, 30.363180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123638, 31.233385, 30.019442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250702, 31.606245, 29.949947>,  <36.326942, 31.829962, 29.908251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250702, 31.606245, 29.949947>,  <36.123638, 31.233385, 30.019442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250702, 31.606245, 29.949947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131116, -0.138286, -0.981675,
		-0.939095, 0.334622, 0.078291,
		0.317664, 0.932151, -0.173738,
		36.346001, 31.885891, 29.897825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576588, 31.561190, 29.570375>,  <36.123638, 31.233385, 30.019442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576588, 31.561190, 29.570375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913956, 31.773094, 29.534622>,  <36.116379, 31.900236, 29.513170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913956, 31.773094, 29.534622>,  <35.576588, 31.561190, 29.570375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913956, 31.773094, 29.534622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085658, -0.031644, -0.995822,
		-0.530376, 0.847556, 0.018689,
		0.843424, 0.529761, -0.089383,
		36.166985, 31.932022, 29.507807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411446, 32.086697, 29.147112>,  <35.576588, 31.561190, 29.570375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411446, 32.086697, 29.147112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806229, 32.028690, 29.119152>,  <36.043098, 31.993887, 29.102375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806229, 32.028690, 29.119152>,  <35.411446, 32.086697, 29.147112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806229, 32.028690, 29.119152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067008, 0.024751, -0.997445,
		0.146378, 0.989119, 0.014710,
		0.986957, -0.145018, -0.069902,
		36.102314, 31.985186, 29.098181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830456, 32.609184, 29.127966>,  <35.411446, 32.086697, 29.147112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830456, 32.609184, 29.127966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443642, 32.692921, 29.069969>,  <34.211555, 32.743164, 29.035172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.443642, 32.692921, 29.069969>,  <34.830456, 32.609184, 29.127966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443642, 32.692921, 29.069969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153064, -0.022800, 0.987953,
		0.203513, 0.977577, 0.054091,
		-0.967034, 0.209341, -0.144992,
		34.153530, 32.755722, 29.026472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650997, 33.156662, 29.594608>,  <34.830456, 32.609184, 29.127966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650997, 33.156662, 29.594608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291649, 33.006657, 29.503136>,  <34.076038, 32.916653, 29.448252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291649, 33.006657, 29.503136>,  <34.650997, 33.156662, 29.594608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291649, 33.006657, 29.503136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281811, 0.092756, 0.954976,
		-0.336914, 0.922368, -0.189012,
		-0.898371, -0.375011, -0.228683,
		34.022137, 32.894154, 29.434530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204449, 33.723991, 29.764603>,  <34.650997, 33.156662, 29.594608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204449, 33.723991, 29.764603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003365, 33.378277, 29.771381>,  <33.882713, 33.170849, 29.775448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003365, 33.378277, 29.771381>,  <34.204449, 33.723991, 29.764603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003365, 33.378277, 29.771381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379760, 0.238415, 0.893835,
		-0.776570, 0.442907, -0.448077,
		-0.502714, -0.864287, 0.016947,
		33.852551, 33.118992, 29.776466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559734, 33.864456, 29.939230>,  <34.204449, 33.723991, 29.764603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559734, 33.864456, 29.939230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580479, 33.474674, 30.026632>,  <33.592926, 33.240803, 30.079073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580479, 33.474674, 30.026632>,  <33.559734, 33.864456, 29.939230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580479, 33.474674, 30.026632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381641, 0.182851, 0.906044,
		-0.922854, -0.130382, -0.362409,
		0.051865, -0.974457, 0.218504,
		33.596039, 33.182339, 30.092184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882290, 33.687344, 30.188768>,  <33.559734, 33.864456, 29.939230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882290, 33.687344, 30.188768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129059, 33.405289, 30.328590>,  <33.277119, 33.236053, 30.412483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129059, 33.405289, 30.328590>,  <32.882290, 33.687344, 30.188768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129059, 33.405289, 30.328590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247364, 0.247913, 0.936670,
		-0.747144, -0.664315, -0.021485,
		0.616918, -0.705142, 0.349554,
		33.314133, 33.193745, 30.433456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407749, 33.147079, 30.585888>,  <32.882290, 33.687344, 30.188768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407749, 33.147079, 30.585888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777241, 33.078049, 30.722679>,  <32.998936, 33.036629, 30.804754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777241, 33.078049, 30.722679>,  <32.407749, 33.147079, 30.585888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777241, 33.078049, 30.722679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313324, 0.173171, 0.933724,
		-0.220362, -0.969654, 0.105889,
		0.923725, -0.172579, 0.341976,
		33.054359, 33.026276, 30.825272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239834, 32.836872, 31.133898>,  <32.407749, 33.147079, 30.585888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239834, 32.836872, 31.133898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623962, 32.935093, 31.186790>,  <32.854439, 32.994026, 31.218527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623962, 32.935093, 31.186790>,  <32.239834, 32.836872, 31.133898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623962, 32.935093, 31.186790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158788, 0.091614, 0.983053,
		0.229278, -0.965044, 0.126970,
		0.960322, 0.245554, 0.132233,
		32.912060, 33.008759, 31.226460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457832, 32.402431, 31.615767>,  <32.239834, 32.836872, 31.133898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457832, 32.402431, 31.615767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733944, 32.691307, 31.633465>,  <32.899612, 32.864632, 31.644083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733944, 32.691307, 31.633465>,  <32.457832, 32.402431, 31.615767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733944, 32.691307, 31.633465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105644, 0.040105, 0.993595,
		0.715790, -0.690532, 0.103978,
		0.690279, 0.722190, 0.044244,
		32.941029, 32.907963, 31.646738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983952, 32.234592, 32.059643>,  <32.457832, 32.402431, 31.615767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983952, 32.234592, 32.059643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970463, 32.634346, 32.055595>,  <32.962372, 32.874199, 32.053165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970463, 32.634346, 32.055595>,  <32.983952, 32.234592, 32.059643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970463, 32.634346, 32.055595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222094, 0.002382, 0.975022,
		0.974442, 0.035124, 0.221876,
		-0.033718, 0.999380, -0.010122,
		32.960346, 32.934158, 32.052559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266594, 32.326244, 32.742172>,  <32.983952, 32.234592, 32.059643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266594, 32.326244, 32.742172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083954, 32.666641, 32.638378>,  <32.974369, 32.870880, 32.576103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083954, 32.666641, 32.638378>,  <33.266594, 32.326244, 32.742172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083954, 32.666641, 32.638378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274203, 0.142852, 0.951002,
		0.846360, 0.505382, 0.168117,
		-0.456603, 0.850989, -0.259482,
		32.946972, 32.921940, 32.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460190, 32.861412, 33.297134>,  <33.266594, 32.326244, 32.742172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460190, 32.861412, 33.297134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132324, 33.001396, 33.115723>,  <32.935604, 33.085388, 33.006878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132324, 33.001396, 33.115723>,  <33.460190, 32.861412, 33.297134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132324, 33.001396, 33.115723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377202, 0.266126, 0.887071,
		0.431135, 0.898167, -0.086127,
		-0.819659, 0.349961, -0.453527,
		32.886425, 33.106384, 32.979664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332333, 33.517467, 33.544353>,  <33.460190, 32.861412, 33.297134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332333, 33.517467, 33.544353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971104, 33.439896, 33.391068>,  <32.754368, 33.393353, 33.299095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971104, 33.439896, 33.391068>,  <33.332333, 33.517467, 33.544353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971104, 33.439896, 33.391068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419048, 0.202275, 0.885146,
		-0.094137, 0.959936, -0.263933,
		-0.903071, -0.193926, -0.383218,
		32.700184, 33.381718, 33.276104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920650, 34.028324, 33.862225>,  <33.332333, 33.517467, 33.544353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920650, 34.028324, 33.862225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646656, 33.760345, 33.747704>,  <32.482258, 33.599560, 33.678993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646656, 33.760345, 33.747704>,  <32.920650, 34.028324, 33.862225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646656, 33.760345, 33.747704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469383, 0.105265, 0.876698,
		-0.557202, 0.734911, -0.386565,
		-0.684986, -0.669945, -0.286301,
		32.441158, 33.559361, 33.661812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214794, 34.315346, 33.798187>,  <32.920650, 34.028324, 33.862225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214794, 34.315346, 33.798187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147083, 33.935097, 33.902229>,  <32.106457, 33.706947, 33.964657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147083, 33.935097, 33.902229>,  <32.214794, 34.315346, 33.798187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147083, 33.935097, 33.902229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427065, 0.308603, 0.849929,
		-0.888235, 0.032789, -0.458218,
		-0.169276, -0.950625, 0.260109,
		32.096302, 33.649910, 33.980263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565205, 35.018154, 33.757702>,  <32.214794, 34.315346, 33.798187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565205, 35.018154, 33.757702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843685, 34.897762, 34.018383>,  <33.010773, 34.825527, 34.174793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843685, 34.897762, 34.018383>,  <32.565205, 35.018154, 33.757702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843685, 34.897762, 34.018383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645726, -0.659183, 0.385376,
		0.313599, -0.689120, -0.653276,
		0.696199, -0.300983, 0.651702,
		33.052544, 34.807468, 34.213894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173126, 35.050121, 33.140144>,  <32.565205, 35.018154, 33.757702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173126, 35.050121, 33.140144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.537945, 35.206593, 33.090897>,  <32.756836, 35.300476, 33.061348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.537945, 35.206593, 33.090897>,  <32.173126, 35.050121, 33.140144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537945, 35.206593, 33.090897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317958, 0.484911, -0.814717,
		-0.259000, 0.782202, 0.566638,
		0.912043, 0.391178, -0.123116,
		32.811558, 35.323948, 33.053963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056854, 35.658188, 32.779739>,  <32.173126, 35.050121, 33.140144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056854, 35.658188, 32.779739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450066, 35.602749, 32.731663>,  <32.685993, 35.569485, 32.702816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450066, 35.602749, 32.731663>,  <32.056854, 35.658188, 32.779739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450066, 35.602749, 32.731663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058429, 0.384492, -0.921277,
		0.173895, 0.912665, 0.369869,
		0.983029, -0.138595, -0.120187,
		32.744976, 35.561169, 32.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276825, 36.314091, 32.396465>,  <32.056854, 35.658188, 32.779739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276825, 36.314091, 32.396465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558689, 36.035728, 32.341080>,  <32.727806, 35.868710, 32.307850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558689, 36.035728, 32.341080>,  <32.276825, 36.314091, 32.396465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558689, 36.035728, 32.341080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141765, 0.329289, -0.933526,
		0.695240, 0.638188, 0.330691,
		0.704658, -0.695906, -0.138462,
		32.770088, 35.826958, 32.299541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671955, 36.766418, 32.108780>,  <32.276825, 36.314091, 32.396465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671955, 36.766418, 32.108780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797897, 36.398785, 32.014000>,  <32.873463, 36.178204, 31.957130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797897, 36.398785, 32.014000>,  <32.671955, 36.766418, 32.108780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797897, 36.398785, 32.014000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186111, 0.304587, -0.934125,
		0.930715, 0.250011, 0.266952,
		0.314852, -0.919087, -0.236954,
		32.892353, 36.123058, 31.942913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451244, 36.803375, 31.954233>,  <32.671955, 36.766418, 32.108780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451244, 36.803375, 31.954233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290852, 36.490971, 31.762718>,  <33.194614, 36.303528, 31.647808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290852, 36.490971, 31.762718>,  <33.451244, 36.803375, 31.954233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290852, 36.490971, 31.762718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313649, 0.374013, -0.872776,
		0.860718, -0.500141, 0.094989,
		-0.400984, -0.781008, -0.478789,
		33.170555, 36.256668, 31.619081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883240, 36.694843, 31.451817>,  <33.451244, 36.803375, 31.954233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883240, 36.694843, 31.451817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572464, 36.498837, 31.293703>,  <33.385998, 36.381233, 31.198835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572464, 36.498837, 31.293703>,  <33.883240, 36.694843, 31.451817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572464, 36.498837, 31.293703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297121, 0.268154, -0.916413,
		0.555053, -0.829445, -0.062746,
		-0.776940, -0.490014, -0.395285,
		33.339382, 36.351833, 31.175117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166203, 36.289288, 30.889229>,  <33.883240, 36.694843, 31.451817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166203, 36.289288, 30.889229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771671, 36.285633, 30.823420>,  <33.534950, 36.283440, 30.783934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771671, 36.285633, 30.823420>,  <34.166203, 36.289288, 30.889229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771671, 36.285633, 30.823420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155244, 0.283111, -0.946439,
		0.055223, -0.959044, -0.277823,
		-0.986331, -0.009135, -0.164521,
		33.475773, 36.282894, 30.774063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097664, 35.815884, 30.325371>,  <34.166203, 36.289288, 30.889229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097664, 35.815884, 30.325371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785515, 36.065430, 30.342426>,  <33.598225, 36.215157, 30.352659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785515, 36.065430, 30.342426>,  <34.097664, 35.815884, 30.325371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785515, 36.065430, 30.342426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205127, 0.319805, -0.925012,
		-0.590718, -0.713104, -0.377538,
		-0.780369, 0.623864, 0.042638,
		33.551403, 36.252590, 30.355217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758625, 35.713768, 29.695671>,  <34.097664, 35.815884, 30.325371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758625, 35.713768, 29.695671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636238, 36.075504, 29.814697>,  <33.562805, 36.292545, 29.886114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636238, 36.075504, 29.814697>,  <33.758625, 35.713768, 29.695671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636238, 36.075504, 29.814697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334462, 0.394737, -0.855756,
		-0.891359, -0.162305, -0.423245,
		-0.305964, 0.904345, 0.297567,
		33.544449, 36.346809, 29.903967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466934, 35.909138, 29.168169>,  <33.758625, 35.713768, 29.695671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466934, 35.909138, 29.168169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522736, 36.251408, 29.367510>,  <33.556217, 36.456772, 29.487114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522736, 36.251408, 29.367510>,  <33.466934, 35.909138, 29.168169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522736, 36.251408, 29.367510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222058, 0.463423, -0.857863,
		-0.965003, 0.230336, -0.125361,
		0.139502, 0.855678, 0.498353,
		33.564587, 36.508110, 29.517015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946213, 36.512051, 28.923597>,  <33.466934, 35.909138, 29.168169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946213, 36.512051, 28.923597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242287, 36.692616, 29.122936>,  <33.419930, 36.800957, 29.242538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242287, 36.692616, 29.122936>,  <32.946213, 36.512051, 28.923597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242287, 36.692616, 29.122936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402611, 0.296060, -0.866171,
		-0.538543, 0.841768, 0.037394,
		0.740186, 0.451415, 0.498346,
		33.464344, 36.828041, 29.272440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059685, 37.133972, 28.570530>,  <32.946213, 36.512051, 28.923597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059685, 37.133972, 28.570530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404381, 37.088428, 28.768295>,  <33.611198, 37.061104, 28.886955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404381, 37.088428, 28.768295>,  <33.059685, 37.133972, 28.570530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404381, 37.088428, 28.768295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484946, 0.471254, -0.736714,
		-0.149116, 0.874618, 0.461311,
		0.861738, -0.113855, 0.494414,
		33.662903, 37.054272, 28.916620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289223, 37.747341, 28.390642>,  <33.059685, 37.133972, 28.570530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289223, 37.747341, 28.390642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593567, 37.526852, 28.527605>,  <33.776173, 37.394558, 28.609783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593567, 37.526852, 28.527605>,  <33.289223, 37.747341, 28.390642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593567, 37.526852, 28.527605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594195, 0.379733, -0.709038,
		0.260817, 0.742935, 0.616459,
		0.760859, -0.551227, 0.342408,
		33.821823, 37.361485, 28.630327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874378, 38.284039, 28.460140>,  <33.289223, 37.747341, 28.390642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874378, 38.284039, 28.460140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989052, 37.908665, 28.383034>,  <34.057858, 37.683441, 28.336769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989052, 37.908665, 28.383034>,  <33.874378, 38.284039, 28.460140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989052, 37.908665, 28.383034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489143, 0.316389, -0.812795,
		0.823742, 0.138726, 0.549731,
		0.286685, -0.938431, -0.192766,
		34.075058, 37.627136, 28.325203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638569, 38.314053, 28.334030>,  <33.874378, 38.284039, 28.460140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638569, 38.314053, 28.334030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547684, 37.952496, 28.189058>,  <34.493153, 37.735561, 28.102076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.547684, 37.952496, 28.189058>,  <34.638569, 38.314053, 28.334030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547684, 37.952496, 28.189058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567317, 0.179639, -0.803667,
		0.791535, -0.388213, 0.471978,
		-0.227208, -0.903892, -0.362430,
		34.479523, 37.681328, 28.080330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312092, 37.953022, 28.114653>,  <34.638569, 38.314053, 28.334030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312092, 37.953022, 28.114653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025963, 37.766918, 27.906097>,  <34.854286, 37.655254, 27.780964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025963, 37.766918, 27.906097>,  <35.312092, 37.953022, 28.114653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025963, 37.766918, 27.906097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541421, 0.102707, -0.834455,
		0.441789, -0.879195, 0.178433,
		-0.715322, -0.465260, -0.521390,
		34.811367, 37.627338, 27.749680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667599, 37.649254, 27.596132>,  <35.312092, 37.953022, 28.114653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667599, 37.649254, 27.596132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281693, 37.676422, 27.494452>,  <35.050148, 37.692722, 27.433443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281693, 37.676422, 27.494452>,  <35.667599, 37.649254, 27.596132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281693, 37.676422, 27.494452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260859, 0.120546, -0.957821,
		-0.034411, -0.990381, -0.134015,
		-0.964763, 0.067918, -0.254202,
		34.992264, 37.696796, 27.418190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794945, 37.316605, 26.959068>,  <35.667599, 37.649254, 27.596132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794945, 37.316605, 26.959068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427036, 37.472519, 26.940792>,  <35.206291, 37.566067, 26.929827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427036, 37.472519, 26.940792>,  <35.794945, 37.316605, 26.959068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427036, 37.472519, 26.940792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178528, 0.311873, -0.933201,
		-0.349501, -0.866487, -0.356439,
		-0.919770, 0.389789, -0.045692,
		35.151104, 37.589455, 26.927084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477531, 37.084217, 26.394798>,  <35.794945, 37.316605, 26.959068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477531, 37.084217, 26.394798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293766, 37.432327, 26.465845>,  <35.183506, 37.641193, 26.508472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293766, 37.432327, 26.465845>,  <35.477531, 37.084217, 26.394798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293766, 37.432327, 26.465845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076162, 0.237832, -0.968316,
		-0.884949, -0.431333, -0.175546,
		-0.459417, 0.870280, 0.177618,
		35.155941, 37.693413, 26.519131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942085, 37.073708, 25.920338>,  <35.477531, 37.084217, 26.394798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942085, 37.073708, 25.920338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034481, 37.451370, 26.014324>,  <35.089920, 37.677967, 26.070717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034481, 37.451370, 26.014324>,  <34.942085, 37.073708, 25.920338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034481, 37.451370, 26.014324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002614, 0.240894, -0.970548,
		-0.972952, 0.224804, 0.053176,
		0.230993, 0.944158, 0.234966,
		35.103779, 37.734619, 26.084814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512619, 37.495579, 25.477364>,  <34.942085, 37.073708, 25.920338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512619, 37.495579, 25.477364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817078, 37.737400, 25.571318>,  <34.999752, 37.882492, 25.627689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817078, 37.737400, 25.571318>,  <34.512619, 37.495579, 25.477364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817078, 37.737400, 25.571318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077566, 0.274704, -0.958395,
		-0.643927, 0.747697, 0.162197,
		0.761145, 0.604555, 0.234885,
		35.045422, 37.918766, 25.641783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484978, 38.008495, 24.947721>,  <34.512619, 37.495579, 25.477364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484978, 38.008495, 24.947721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841045, 38.081776, 25.114594>,  <35.054688, 38.125744, 25.214718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841045, 38.081776, 25.114594>,  <34.484978, 38.008495, 24.947721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841045, 38.081776, 25.114594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371342, 0.238856, -0.897247,
		-0.264020, 0.953618, 0.144593,
		0.890168, 0.183198, 0.417181,
		35.108097, 38.136734, 25.239748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780548, 38.657486, 24.698313>,  <34.484978, 38.008495, 24.947721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780548, 38.657486, 24.698313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089375, 38.441273, 24.832026>,  <35.274670, 38.311546, 24.912252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089375, 38.441273, 24.832026>,  <34.780548, 38.657486, 24.698313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089375, 38.441273, 24.832026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514862, 0.223584, -0.827604,
		0.372603, 0.811073, 0.450919,
		0.772065, -0.540529, 0.334282,
		35.320995, 38.279114, 24.932310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237965, 38.975761, 24.380728>,  <34.780548, 38.657486, 24.698313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237965, 38.975761, 24.380728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476753, 38.685345, 24.517252>,  <35.620026, 38.511093, 24.599167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476753, 38.685345, 24.517252>,  <35.237965, 38.975761, 24.380728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476753, 38.685345, 24.517252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548212, 0.058555, -0.834287,
		0.585741, 0.685154, 0.432979,
		0.596968, -0.726041, 0.341311,
		35.655842, 38.467533, 24.619646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875114, 39.209679, 24.344364>,  <35.237965, 38.975761, 24.380728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875114, 39.209679, 24.344364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923481, 38.812653, 24.338854>,  <35.952503, 38.574436, 24.335548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923481, 38.812653, 24.338854>,  <35.875114, 39.209679, 24.344364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923481, 38.812653, 24.338854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688024, 0.093805, -0.719599,
		0.715542, 0.077537, 0.694253,
		0.120920, -0.992567, -0.013774,
		35.959759, 38.514881, 24.334721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652550, 39.096470, 24.223112>,  <35.875114, 39.209679, 24.344364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652550, 39.096470, 24.223112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448288, 38.773521, 24.104874>,  <36.325729, 38.579750, 24.033930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448288, 38.773521, 24.104874>,  <36.652550, 39.096470, 24.223112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448288, 38.773521, 24.104874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571011, -0.061437, -0.818640,
		0.642788, -0.586833, 0.492393,
		-0.510656, -0.807374, -0.295597,
		36.295090, 38.531311, 24.016195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086620, 38.740501, 23.870186>,  <36.652550, 39.096470, 24.223112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086620, 38.740501, 23.870186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729721, 38.608841, 23.746538>,  <36.515583, 38.529842, 23.672350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.729721, 38.608841, 23.746538>,  <37.086620, 38.740501, 23.870186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729721, 38.608841, 23.746538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381048, -0.181543, -0.906557,
		0.242279, -0.926661, 0.287404,
		-0.892246, -0.329154, -0.309118,
		36.462048, 38.510094, 23.653803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475170, 38.166100, 24.136879>,  <37.086620, 38.740501, 23.870186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475170, 38.166100, 24.136879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864113, 38.079887, 24.172813>,  <38.097477, 38.028160, 24.194374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864113, 38.079887, 24.172813>,  <37.475170, 38.166100, 24.136879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864113, 38.079887, 24.172813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053431, 0.169143, 0.984142,
		-0.227308, -0.961736, 0.152952,
		0.972356, -0.215531, 0.089834,
		38.155819, 38.015228, 24.199764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510723, 37.692089, 24.680502>,  <37.475170, 38.166100, 24.136879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510723, 37.692089, 24.680502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.883682, 37.835411, 24.661524>,  <38.107460, 37.921402, 24.650137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.883682, 37.835411, 24.661524>,  <37.510723, 37.692089, 24.680502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883682, 37.835411, 24.661524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059145, -0.021757, 0.998012,
		0.356556, -0.933353, -0.041478,
		0.932400, 0.358301, -0.047446,
		38.163403, 37.942902, 24.647289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866398, 37.250393, 25.096117>,  <37.510723, 37.692089, 24.680502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866398, 37.250393, 25.096117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.080357, 37.586456, 25.060303>,  <38.208733, 37.788094, 25.038815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.080357, 37.586456, 25.060303>,  <37.866398, 37.250393, 25.096117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080357, 37.586456, 25.060303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003339, 0.103869, 0.994585,
		0.844909, -0.532303, 0.052754,
		0.534900, 0.840157, -0.089538,
		38.240826, 37.838505, 25.033442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352146, 37.047752, 25.431063>,  <37.866398, 37.250393, 25.096117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352146, 37.047752, 25.431063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365322, 37.447208, 25.447271>,  <38.373226, 37.686882, 25.456997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365322, 37.447208, 25.447271>,  <38.352146, 37.047752, 25.431063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365322, 37.447208, 25.447271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192679, -0.046130, 0.980177,
		0.980709, -0.024478, -0.193936,
		0.032940, 0.998635, 0.040524,
		38.375202, 37.746799, 25.459429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982815, 37.352402, 25.907900>,  <38.352146, 37.047752, 25.431063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982815, 37.352402, 25.907900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704094, 37.638550, 25.887108>,  <38.536861, 37.810238, 25.874632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704094, 37.638550, 25.887108>,  <38.982815, 37.352402, 25.907900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704094, 37.638550, 25.887108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026635, 0.046614, 0.998558,
		0.716765, 0.697185, -0.013426,
		-0.696806, 0.715374, -0.051981,
		38.495052, 37.853161, 25.871513>
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
