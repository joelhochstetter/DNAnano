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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.347195, 52.263554, 49.704838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557636, 52.599499, 49.651413>,  <36.683903, 52.801067, 49.619358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557636, 52.599499, 49.651413>,  <36.347195, 52.263554, 49.704838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557636, 52.599499, 49.651413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090378, -0.100943, -0.990778,
		-0.845604, 0.533324, 0.022799,
		0.526104, 0.839867, -0.133558,
		36.715469, 52.851460, 49.611347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736172, 52.229317, 50.345375>,  <36.347195, 52.263554, 49.704838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736172, 52.229317, 50.345375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115467, 52.172356, 50.458916>,  <37.343044, 52.138180, 50.527039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115467, 52.172356, 50.458916>,  <36.736172, 52.229317, 50.345375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115467, 52.172356, 50.458916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280499, 0.794649, -0.538379,
		-0.148899, 0.590131, 0.793457,
		0.948235, -0.142400, 0.283853,
		37.399937, 52.129635, 50.544071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043446, 52.762329, 50.795959>,  <36.736172, 52.229317, 50.345375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043446, 52.762329, 50.795959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306648, 52.580780, 50.555618>,  <37.464569, 52.471851, 50.411415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306648, 52.580780, 50.555618>,  <37.043446, 52.762329, 50.795959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306648, 52.580780, 50.555618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295573, 0.889571, -0.348281,
		0.692573, 0.051578, 0.719501,
		0.658011, -0.453875, -0.600848,
		37.504051, 52.444618, 50.375362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188160, 53.327087, 50.424637>,  <37.043446, 52.762329, 50.795959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188160, 53.327087, 50.424637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435524, 53.022514, 50.346878>,  <37.583942, 52.839771, 50.300224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435524, 53.022514, 50.346878>,  <37.188160, 53.327087, 50.424637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435524, 53.022514, 50.346878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625701, 0.626745, -0.464423,
		0.475461, 0.165572, 0.864015,
		0.618413, -0.761431, -0.194394,
		37.621048, 52.794086, 50.288559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704288, 53.882454, 50.205765>,  <37.188160, 53.327087, 50.424637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704288, 53.882454, 50.205765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775665, 53.490814, 50.244804>,  <37.818493, 53.255833, 50.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775665, 53.490814, 50.244804>,  <37.704288, 53.882454, 50.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775665, 53.490814, 50.244804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983684, 0.175206, -0.040855,
		0.022900, 0.103300, 0.994387,
		0.178443, -0.979098, 0.097602,
		37.829197, 53.197086, 50.274086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389824, 53.883423, 50.465023>,  <37.704288, 53.882454, 50.205765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389824, 53.883423, 50.465023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326973, 53.520882, 50.308136>,  <38.289265, 53.303356, 50.214005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326973, 53.520882, 50.308136>,  <38.389824, 53.883423, 50.465023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326973, 53.520882, 50.308136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987574, -0.145459, -0.059494,
		-0.003129, -0.396694, 0.917946,
		-0.157124, -0.906353, -0.392220,
		38.279835, 53.248974, 50.190472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798203, 53.377583, 50.806702>,  <38.389824, 53.883423, 50.465023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798203, 53.377583, 50.806702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722042, 53.298206, 50.422127>,  <38.676346, 53.250580, 50.191380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722042, 53.298206, 50.422127>,  <38.798203, 53.377583, 50.806702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722042, 53.298206, 50.422127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954180, -0.267699, -0.133708,
		-0.230843, -0.942845, 0.240321,
		-0.190400, -0.198444, -0.961441,
		38.664921, 53.238674, 50.133694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975338, 52.670860, 50.568031>,  <38.798203, 53.377583, 50.806702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975338, 52.670860, 50.568031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024727, 52.922497, 50.261047>,  <39.054359, 53.073479, 50.076855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024727, 52.922497, 50.261047>,  <38.975338, 52.670860, 50.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024727, 52.922497, 50.261047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973652, -0.226212, -0.028782,
		-0.191716, -0.743689, -0.640447,
		0.123473, 0.629091, -0.767463,
		39.061768, 53.111225, 50.030807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425812, 52.317375, 50.097355>,  <38.975338, 52.670860, 50.568031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425812, 52.317375, 50.097355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430382, 52.717339, 50.094406>,  <39.433125, 52.957317, 50.092636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430382, 52.717339, 50.094406>,  <39.425812, 52.317375, 50.097355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430382, 52.717339, 50.094406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970596, -0.009319, 0.240536,
		0.240445, -0.009906, -0.970612,
		0.011428, 0.999908, -0.007374,
		39.433811, 53.017311, 50.092194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920238, 52.562737, 49.603401>,  <39.425812, 52.317375, 50.097355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920238, 52.562737, 49.603401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881683, 52.843369, 49.885818>,  <39.858551, 53.011745, 50.055267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881683, 52.843369, 49.885818>,  <39.920238, 52.562737, 49.603401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881683, 52.843369, 49.885818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995256, 0.058552, 0.077695,
		0.013169, 0.710183, -0.703894,
		-0.096392, 0.701578, 0.706043,
		39.852764, 53.053841, 50.097633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416351, 53.050900, 49.627525>,  <39.920238, 52.562737, 49.603401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416351, 53.050900, 49.627525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334801, 53.033829, 50.018753>,  <40.285870, 53.023586, 50.253490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334801, 53.033829, 50.018753>,  <40.416351, 53.050900, 49.627525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334801, 53.033829, 50.018753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977304, 0.049830, 0.205897,
		-0.057525, 0.997845, 0.031552,
		-0.203881, -0.042680, 0.978065,
		40.273636, 53.021027, 50.312172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960152, 53.585125, 49.947433>,  <40.416351, 53.050900, 49.627525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960152, 53.585125, 49.947433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841667, 53.289062, 50.188908>,  <40.770576, 53.111427, 50.333790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841667, 53.289062, 50.188908>,  <40.960152, 53.585125, 49.947433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841667, 53.289062, 50.188908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906718, -0.019249, 0.421298,
		-0.300205, 0.672162, 0.676813,
		-0.296209, -0.740154, 0.603682,
		40.752804, 53.067017, 50.370010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488152, 54.067009, 50.109459>,  <40.960152, 53.585125, 49.947433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488152, 54.067009, 50.109459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312115, 53.769222, 50.310295>,  <41.206493, 53.590549, 50.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312115, 53.769222, 50.310295>,  <41.488152, 54.067009, 50.109459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312115, 53.769222, 50.310295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362235, -0.658822, -0.659348,
		0.821648, -0.108299, 0.559612,
		-0.440092, -0.744463, 0.502090,
		41.180088, 53.545883, 50.460922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144749, 54.296585, 49.873501>,  <41.488152, 54.067009, 50.109459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144749, 54.296585, 49.873501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229015, 54.686729, 49.899685>,  <42.279575, 54.920818, 49.915394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229015, 54.686729, 49.899685>,  <42.144749, 54.296585, 49.873501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229015, 54.686729, 49.899685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841057, -0.214970, 0.496398,
		0.498240, -0.049518, -0.865624,
		0.210664, 0.975364, 0.065459,
		42.292213, 54.979340, 49.919323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684441, 54.485664, 49.460114>,  <42.144749, 54.296585, 49.873501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684441, 54.485664, 49.460114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647602, 54.695023, 49.798954>,  <42.625500, 54.820637, 50.002258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647602, 54.695023, 49.798954>,  <42.684441, 54.485664, 49.460114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647602, 54.695023, 49.798954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906863, -0.307251, 0.288437,
		0.411239, 0.794766, -0.446352,
		-0.092097, 0.523397, 0.847098,
		42.619972, 54.852043, 50.053082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249794, 54.979053, 49.633926>,  <42.684441, 54.485664, 49.460114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249794, 54.979053, 49.633926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063953, 54.815266, 49.947990>,  <42.952450, 54.716991, 50.136429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063953, 54.815266, 49.947990>,  <43.249794, 54.979053, 49.633926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063953, 54.815266, 49.947990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872455, -0.363402, 0.326743,
		0.151537, 0.836823, 0.526084,
		-0.464605, -0.409471, 0.785159,
		42.924572, 54.692425, 50.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552910, 55.280750, 50.280369>,  <43.249794, 54.979053, 49.633926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552910, 55.280750, 50.280369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389172, 54.918774, 50.326855>,  <43.290928, 54.701588, 50.354748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389172, 54.918774, 50.326855>,  <43.552910, 55.280750, 50.280369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389172, 54.918774, 50.326855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860765, -0.340812, 0.378062,
		-0.302518, 0.254795, 0.918457,
		-0.409349, -0.904946, 0.116216,
		43.266365, 54.647289, 50.361721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480080, 55.016628, 50.986065>,  <43.552910, 55.280750, 50.280369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480080, 55.016628, 50.986065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529854, 54.707474, 50.737175>,  <43.559719, 54.521980, 50.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529854, 54.707474, 50.737175>,  <43.480080, 55.016628, 50.986065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529854, 54.707474, 50.737175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845490, -0.245600, 0.474159,
		-0.519289, -0.585089, 0.622904,
		0.124440, -0.772885, -0.622225,
		43.567184, 54.475609, 50.550507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697964, 54.409641, 51.426552>,  <43.480080, 55.016628, 50.986065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697964, 54.409641, 51.426552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845604, 54.457787, 51.057926>,  <43.934189, 54.486675, 50.836750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845604, 54.457787, 51.057926>,  <43.697964, 54.409641, 51.426552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845604, 54.457787, 51.057926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922131, -0.171112, 0.346979,
		-0.115926, -0.977871, -0.174151,
		0.369100, 0.120366, -0.921562,
		43.956333, 54.493896, 50.781456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129623, 53.921032, 51.275642>,  <43.697964, 54.409641, 51.426552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129623, 53.921032, 51.275642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288677, 54.206989, 51.045578>,  <44.384109, 54.378563, 50.907539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288677, 54.206989, 51.045578>,  <44.129623, 53.921032, 51.275642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288677, 54.206989, 51.045578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898479, -0.176263, 0.402078,
		0.186061, -0.676656, -0.712403,
		0.397639, 0.714890, -0.575165,
		44.407970, 54.421455, 50.873028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622284, 53.665852, 50.927662>,  <44.129623, 53.921032, 51.275642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622284, 53.665852, 50.927662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726700, 54.033070, 51.047028>,  <44.789349, 54.253399, 51.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726700, 54.033070, 51.047028>,  <44.622284, 53.665852, 50.927662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726700, 54.033070, 51.047028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780284, -0.382673, 0.494690,
		0.568343, 0.103713, -0.816229,
		0.261043, 0.918044, 0.298415,
		44.805012, 54.308483, 51.136551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381351, 53.855679, 50.704418>,  <44.622284, 53.665852, 50.927662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381351, 53.855679, 50.704418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251339, 54.000168, 51.054016>,  <45.173332, 54.086861, 51.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251339, 54.000168, 51.054016>,  <45.381351, 53.855679, 50.704418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251339, 54.000168, 51.054016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663705, -0.571219, 0.482913,
		0.673682, 0.737040, -0.054078,
		-0.325036, 0.361222, 0.873997,
		45.153828, 54.108536, 51.316216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935261, 53.949791, 51.079342>,  <45.381351, 53.855679, 50.704418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935261, 53.949791, 51.079342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639797, 53.976730, 51.347626>,  <45.462521, 53.992893, 51.508595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639797, 53.976730, 51.347626>,  <45.935261, 53.949791, 51.079342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639797, 53.976730, 51.347626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419192, -0.733304, 0.535298,
		0.527886, 0.676557, 0.513427,
		-0.738657, 0.067352, 0.670708,
		45.418201, 53.996937, 51.548840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482246, 54.137581, 51.564537>,  <45.935261, 53.949791, 51.079342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482246, 54.137581, 51.564537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676422, 54.384468, 51.812210>,  <46.792927, 54.532600, 51.960815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676422, 54.384468, 51.812210>,  <46.482246, 54.137581, 51.564537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676422, 54.384468, 51.812210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082957, -0.737551, 0.670177,
		0.870327, -0.273964, -0.409238,
		0.485438, 0.617222, 0.619183,
		46.822052, 54.569633, 51.997967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060730, 53.822952, 51.759983>,  <46.482246, 54.137581, 51.564537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060730, 53.822952, 51.759983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983784, 54.073978, 52.061752>,  <46.937614, 54.224594, 52.242813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983784, 54.073978, 52.061752>,  <47.060730, 53.822952, 51.759983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983784, 54.073978, 52.061752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330584, -0.682405, 0.651949,
		0.923963, 0.374815, -0.076191,
		-0.192368, 0.627565, 0.754425,
		46.926075, 54.262249, 52.288078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450993, 53.539570, 52.310452>,  <47.060730, 53.822952, 51.759983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450993, 53.539570, 52.310452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195305, 53.796440, 52.479691>,  <47.041893, 53.950562, 52.581234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195305, 53.796440, 52.479691>,  <47.450993, 53.539570, 52.310452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195305, 53.796440, 52.479691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094722, -0.480231, 0.872013,
		0.763171, 0.597481, 0.246143,
		-0.639216, 0.642180, 0.423093,
		47.003540, 53.989094, 52.606617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.722980, 53.604279, 52.914085>,  <47.450993, 53.539570, 52.310452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.722980, 53.604279, 52.914085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332806, 53.681152, 52.957138>,  <47.098701, 53.727276, 52.982971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332806, 53.681152, 52.957138>,  <47.722980, 53.604279, 52.914085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332806, 53.681152, 52.957138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002715, -0.478106, 0.878298,
		0.220252, 0.857019, 0.465842,
		-0.975439, 0.192182, 0.107631,
		47.040173, 53.738808, 52.989426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.223476, 53.350727, 52.382771>,  <47.722980, 53.604279, 52.914085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.223476, 53.350727, 52.382771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.438507, 53.022465, 52.305275>,  <48.567528, 52.825508, 52.258778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.438507, 53.022465, 52.305275>,  <48.223476, 53.350727, 52.382771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.438507, 53.022465, 52.305275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403709, -0.452207, 0.795316,
		-0.740288, -0.349334, -0.574403,
		0.537580, -0.820655, -0.193735,
		48.599781, 52.776268, 52.247154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.714996, 53.621456, 52.769306>,  <48.223476, 53.350727, 52.382771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.714996, 53.621456, 52.769306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.686771, 53.792046, 52.408607>,  <48.669834, 53.894398, 52.192188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.686771, 53.792046, 52.408607>,  <48.714996, 53.621456, 52.769306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.686771, 53.792046, 52.408607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556079, 0.767315, 0.319380,
		0.828128, -0.478904, -0.291298,
		-0.070565, 0.426472, -0.901744,
		48.665604, 53.919987, 52.138084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.400307, 53.828407, 52.575935>,  <48.714996, 53.621456, 52.769306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.400307, 53.828407, 52.575935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.180054, 54.076427, 52.352383>,  <49.047901, 54.225239, 52.218250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.180054, 54.076427, 52.352383>,  <49.400307, 53.828407, 52.575935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.180054, 54.076427, 52.352383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642770, 0.742110, 0.190047,
		0.532591, -0.254588, -0.807175,
		-0.550629, 0.620046, -0.558883,
		49.014866, 54.262440, 52.184719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.870388, 54.116375, 52.029522>,  <49.400307, 53.828407, 52.575935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.870388, 54.116375, 52.029522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.552750, 54.346748, 52.107197>,  <49.362167, 54.484970, 52.153801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.552750, 54.346748, 52.107197>,  <49.870388, 54.116375, 52.029522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.552750, 54.346748, 52.107197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607723, 0.757036, 0.239937,
		-0.008822, 0.308548, -0.951168,
		-0.794100, 0.575930, 0.194190,
		49.314518, 54.519527, 52.165455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.859516, 54.712025, 51.650799>,  <49.870388, 54.116375, 52.029522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.859516, 54.712025, 51.650799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.659119, 54.794044, 51.987122>,  <49.538879, 54.843258, 52.188915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.659119, 54.794044, 51.987122>,  <49.859516, 54.712025, 51.650799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.659119, 54.794044, 51.987122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505454, 0.857941, 0.091948,
		-0.702510, 0.471055, -0.533467,
		-0.500996, 0.205048, 0.840808,
		49.508820, 54.855560, 52.239365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.398666, 55.402283, 51.687080>,  <49.859516, 54.712025, 51.650799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.398666, 55.402283, 51.687080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.582527, 55.288010, 52.023438>,  <49.692844, 55.219448, 52.225254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.582527, 55.288010, 52.023438>,  <49.398666, 55.402283, 51.687080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.582527, 55.288010, 52.023438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472727, 0.880271, 0.040652,
		-0.751829, 0.378828, 0.539669,
		0.459654, -0.285680, 0.840895,
		49.720425, 55.202305, 52.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.289284, 55.902412, 52.139019>,  <49.398666, 55.402283, 51.687080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.289284, 55.902412, 52.139019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.639988, 55.725838, 52.215359>,  <49.850410, 55.619892, 52.261162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.639988, 55.725838, 52.215359>,  <49.289284, 55.902412, 52.139019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.639988, 55.725838, 52.215359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426192, 0.897042, 0.116947,
		-0.222824, -0.021196, 0.974628,
		0.876761, -0.441437, 0.190848,
		49.903015, 55.593407, 52.272614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.630695, 56.105350, 52.780582>,  <49.289284, 55.902412, 52.139019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.630695, 56.105350, 52.780582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.898060, 55.987621, 52.507347>,  <50.058479, 55.916985, 52.343407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.898060, 55.987621, 52.507347>,  <49.630695, 56.105350, 52.780582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.898060, 55.987621, 52.507347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563999, 0.799283, 0.207490,
		0.484909, -0.523947, 0.700245,
		0.668408, -0.294324, -0.683085,
		50.098583, 55.899323, 52.302422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.334930, 56.048317, 53.153591>,  <49.630695, 56.105350, 52.780582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.334930, 56.048317, 53.153591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387569, 56.067562, 52.757538>,  <50.419155, 56.079109, 52.519905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387569, 56.067562, 52.757538>,  <50.334930, 56.048317, 53.153591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.387569, 56.067562, 52.757538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794751, 0.591869, 0.134393,
		0.592494, -0.804597, 0.039664,
		0.131608, 0.048104, -0.990134,
		50.427048, 56.081997, 52.460499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.057354, 55.893738, 53.091057>,  <50.334930, 56.048317, 53.153591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.057354, 55.893738, 53.091057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.865955, 56.103767, 52.809536>,  <50.751114, 56.229786, 52.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.865955, 56.103767, 52.809536>,  <51.057354, 55.893738, 53.091057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.865955, 56.103767, 52.809536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743966, 0.668177, -0.007315,
		0.466425, -0.527106, -0.710357,
		-0.478500, 0.525070, -0.703804,
		50.722404, 56.261288, 52.598396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.367985, 55.911812, 52.423206>,  <51.057354, 55.893738, 53.091057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.367985, 55.911812, 52.423206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.170280, 56.254402, 52.482750>,  <51.051659, 56.459957, 52.518475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.170280, 56.254402, 52.482750>,  <51.367985, 55.911812, 52.423206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.170280, 56.254402, 52.482750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816646, 0.516157, -0.258210,
		-0.297985, -0.006058, -0.954551,
		-0.494262, 0.856473, 0.148860,
		51.022003, 56.511345, 52.527409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.032444, 55.523205, 52.360920>,  <51.367985, 55.911812, 52.423206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.032444, 55.523205, 52.360920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.304436, 55.815063, 52.389874>,  <52.467632, 55.990177, 52.407246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.304436, 55.815063, 52.389874>,  <52.032444, 55.523205, 52.360920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.304436, 55.815063, 52.389874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598387, -0.495174, -0.629870,
		-0.423742, 0.471612, -0.773321,
		0.679983, 0.729647, 0.072380,
		52.508430, 56.033958, 52.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.136177, 55.733204, 51.724380>,  <52.032444, 55.523205, 52.360920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.136177, 55.733204, 51.724380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.474762, 55.804214, 51.925175>,  <52.677914, 55.846821, 52.045650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.474762, 55.804214, 51.925175>,  <52.136177, 55.733204, 51.724380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.474762, 55.804214, 51.925175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520020, -0.478197, -0.707748,
		0.114406, 0.860124, -0.497090,
		0.846458, 0.177526, 0.501990,
		52.728699, 55.857471, 52.075771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.709995, 56.043655, 51.292164>,  <52.136177, 55.733204, 51.724380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.709995, 56.043655, 51.292164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.799305, 55.775066, 51.574799>,  <52.852890, 55.613911, 51.744381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.799305, 55.775066, 51.574799>,  <52.709995, 56.043655, 51.292164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.799305, 55.775066, 51.574799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466945, -0.562626, -0.682213,
		0.855636, 0.482258, 0.187923,
		0.223273, -0.671475, 0.706591,
		52.866287, 55.573624, 51.786777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.471443, 55.896206, 51.343208>,  <52.709995, 56.043655, 51.292164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.471443, 55.896206, 51.343208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.261688, 55.576500, 51.460636>,  <53.135834, 55.384674, 51.531094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.261688, 55.576500, 51.460636>,  <53.471443, 55.896206, 51.343208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.261688, 55.576500, 51.460636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480585, -0.562440, -0.672830,
		0.702888, -0.211739, 0.679054,
		-0.524391, -0.799268, 0.293574,
		53.104370, 55.336720, 51.548710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.175190, 56.656898, 51.294998>,  <53.471443, 55.896206, 51.343208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.175190, 56.656898, 51.294998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.436840, 56.835960, 51.051121>,  <53.593830, 56.943398, 50.904793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.436840, 56.835960, 51.051121>,  <53.175190, 56.656898, 51.294998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.436840, 56.835960, 51.051121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077888, 0.841642, 0.534390,
		0.752363, -0.302072, 0.585408,
		0.654128, 0.447651, -0.609692,
		53.633080, 56.970257, 50.868214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.761593, 56.933002, 51.695171>,  <53.175190, 56.656898, 51.294998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.761593, 56.933002, 51.695171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.683052, 57.139549, 51.361748>,  <53.635929, 57.263477, 51.161694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.683052, 57.139549, 51.361748>,  <53.761593, 56.933002, 51.695171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.683052, 57.139549, 51.361748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077051, 0.839350, 0.538103,
		0.977502, 0.169883, -0.125021,
		-0.196351, 0.516364, -0.833555,
		53.624146, 57.294456, 51.111683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.675320, 57.638077, 52.020489>,  <53.761593, 56.933002, 51.695171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.675320, 57.638077, 52.020489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.635593, 57.727585, 51.632660>,  <53.611759, 57.781288, 51.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.635593, 57.727585, 51.632660>,  <53.675320, 57.638077, 52.020489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.635593, 57.727585, 51.632660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046460, 0.974366, 0.220120,
		0.993971, -0.023185, -0.107165,
		-0.099315, 0.223772, -0.969568,
		53.605801, 57.794716, 51.341789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.275860, 58.005119, 51.677303>,  <53.675320, 57.638077, 52.020489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.275860, 58.005119, 51.677303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.912834, 58.131634, 51.566814>,  <53.695019, 58.207542, 51.500519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.912834, 58.131634, 51.566814>,  <54.275860, 58.005119, 51.677303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.912834, 58.131634, 51.566814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298835, 0.948587, 0.104307,
		0.295013, 0.012119, -0.955416,
		-0.907560, 0.316284, -0.276224,
		53.640568, 58.226521, 51.483948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.794502, 57.809238, 51.160339>,  <54.275860, 58.005119, 51.677303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.794502, 57.809238, 51.160339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.856796, 57.680412, 51.533867>,  <54.894173, 57.603119, 51.757984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.856796, 57.680412, 51.533867>,  <54.794502, 57.809238, 51.160339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.856796, 57.680412, 51.533867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659148, -0.670216, -0.341078,
		0.735710, 0.668645, 0.107908,
		0.155739, -0.322062, 0.933821,
		54.903519, 57.583794, 51.814014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.318825, 57.685349, 50.626862>,  <54.794502, 57.809238, 51.160339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.318825, 57.685349, 50.626862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.561836, 57.566547, 50.332191>,  <55.707645, 57.495266, 50.155388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.561836, 57.566547, 50.332191>,  <55.318825, 57.685349, 50.626862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.561836, 57.566547, 50.332191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776398, 0.417821, 0.471838,
		0.167663, -0.858613, 0.484431,
		0.607531, -0.297001, -0.736679,
		55.744095, 57.477448, 50.111187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.852501, 57.134979, 50.923634>,  <55.318825, 57.685349, 50.626862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.852501, 57.134979, 50.923634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.921051, 57.381733, 50.616364>,  <55.962181, 57.529785, 50.432003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.921051, 57.381733, 50.616364>,  <55.852501, 57.134979, 50.923634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.921051, 57.381733, 50.616364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824005, 0.337651, 0.454979,
		0.540043, -0.710949, -0.450450,
		0.171372, 0.616882, -0.768172,
		55.972462, 57.566799, 50.385910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.532612, 57.190468, 50.897087>,  <55.852501, 57.134979, 50.923634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.532612, 57.190468, 50.897087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.429085, 57.536850, 50.725906>,  <56.366970, 57.744678, 50.623199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.429085, 57.536850, 50.725906>,  <56.532612, 57.190468, 50.897087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.429085, 57.536850, 50.725906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764809, 0.454328, 0.456786,
		0.589984, -0.209075, -0.779876,
		-0.258817, 0.865952, -0.427949,
		56.351440, 57.796635, 50.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.047760, 57.554489, 50.450985>,  <56.532612, 57.190468, 50.897087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.047760, 57.554489, 50.450985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.809380, 57.812378, 50.642471>,  <56.666351, 57.967113, 50.757362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.809380, 57.812378, 50.642471>,  <57.047760, 57.554489, 50.450985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.809380, 57.812378, 50.642471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780926, 0.326437, 0.532536,
		0.187068, 0.691209, -0.698023,
		-0.595953, 0.644724, 0.478717,
		56.630592, 58.005795, 50.786087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.356876, 58.181965, 50.465084>,  <57.047760, 57.554489, 50.450985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.356876, 58.181965, 50.465084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.113602, 58.121887, 50.776867>,  <56.967636, 58.085842, 50.963936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.113602, 58.121887, 50.776867>,  <57.356876, 58.181965, 50.465084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.113602, 58.121887, 50.776867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761425, 0.167160, 0.626331,
		-0.224365, 0.974422, 0.012696,
		-0.608188, -0.150194, 0.779454,
		56.931145, 58.076828, 51.010704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.387554, 58.785439, 51.046688>,  <57.356876, 58.181965, 50.465084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.387554, 58.785439, 51.046688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.298981, 58.417488, 51.176174>,  <57.245838, 58.196716, 51.253864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.298981, 58.417488, 51.176174>,  <57.387554, 58.785439, 51.046688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.298981, 58.417488, 51.176174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622965, 0.121954, 0.772685,
		-0.750255, 0.372759, 0.546048,
		-0.221432, -0.919879, 0.323713,
		57.232552, 58.141525, 51.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.258263, 58.888252, 51.773617>,  <57.387554, 58.785439, 51.046688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.258263, 58.888252, 51.773617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.362091, 58.514771, 51.674969>,  <57.424389, 58.290684, 51.615780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.362091, 58.514771, 51.674969>,  <57.258263, 58.888252, 51.773617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.362091, 58.514771, 51.674969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634470, -0.027643, 0.772453,
		-0.728058, -0.356983, 0.585231,
		0.259575, -0.933702, -0.246620,
		57.439964, 58.234661, 51.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.146927, 58.398792, 52.320087>,  <57.258263, 58.888252, 51.773617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.146927, 58.398792, 52.320087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.463348, 58.246239, 52.128765>,  <57.653202, 58.154705, 52.013973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.463348, 58.246239, 52.128765>,  <57.146927, 58.398792, 52.320087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.463348, 58.246239, 52.128765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491098, -0.070288, 0.868264,
		-0.364763, -0.921739, 0.131697,
		0.791056, -0.381387, -0.478303,
		57.700665, 58.131824, 51.985275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.516041, 58.044567, 52.852146>,  <57.146927, 58.398792, 52.320087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.516041, 58.044567, 52.852146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.778778, 58.140358, 52.566151>,  <57.936420, 58.197830, 52.394554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.778778, 58.140358, 52.566151>,  <57.516041, 58.044567, 52.852146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.778778, 58.140358, 52.566151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709933, 0.123095, 0.693428,
		0.254069, -0.963068, -0.089156,
		0.656844, 0.239474, -0.714988,
		57.975830, 58.212200, 52.351654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.141998, 57.819248, 53.035103>,  <57.516041, 58.044567, 52.852146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.141998, 57.819248, 53.035103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.233856, 58.093811, 52.759102>,  <58.288971, 58.258549, 52.593502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.233856, 58.093811, 52.759102>,  <58.141998, 57.819248, 53.035103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.233856, 58.093811, 52.759102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848140, 0.206618, 0.487820,
		0.477411, -0.697247, -0.534720,
		0.229648, 0.686408, -0.690005,
		58.302750, 58.299732, 52.552101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.871662, 57.649040, 52.829239>,  <58.141998, 57.819248, 53.035103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.871662, 57.649040, 52.829239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.723007, 58.019485, 52.803326>,  <58.633816, 58.241753, 52.787777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.723007, 58.019485, 52.803326>,  <58.871662, 57.649040, 52.829239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.723007, 58.019485, 52.803326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894684, 0.375902, 0.241328,
		0.247848, 0.031730, -0.968279,
		-0.371635, 0.926116, -0.064778,
		58.611515, 58.297321, 52.783894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.283199, 58.187489, 52.360168>,  <58.871662, 57.649040, 52.829239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.283199, 58.187489, 52.360168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.104828, 58.370735, 52.667747>,  <58.997807, 58.480682, 52.852295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.104828, 58.370735, 52.667747>,  <59.283199, 58.187489, 52.360168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.104828, 58.370735, 52.667747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884502, 0.357162, 0.300153,
		-0.137134, 0.813981, -0.564473,
		-0.445927, 0.458116, 0.768947,
		58.971050, 58.508171, 52.898430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.421860, 58.942394, 52.324116>,  <59.283199, 58.187489, 52.360168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.421860, 58.942394, 52.324116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.411118, 58.762321, 52.681129>,  <59.404671, 58.654278, 52.895336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.411118, 58.762321, 52.681129>,  <59.421860, 58.942394, 52.324116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.411118, 58.762321, 52.681129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972619, 0.194418, 0.127333,
		-0.230848, 0.871513, 0.432636,
		-0.026860, -0.450184, 0.892532,
		59.403061, 58.627266, 52.948891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.801529, 59.367592, 52.749096>,  <59.421860, 58.942394, 52.324116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.801529, 59.367592, 52.749096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.794075, 59.017288, 52.942055>,  <59.789600, 58.807106, 53.057831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.794075, 59.017288, 52.942055>,  <59.801529, 59.367592, 52.749096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.794075, 59.017288, 52.942055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964110, 0.112066, 0.240694,
		-0.264849, 0.469568, 0.842236,
		-0.018636, -0.875755, 0.482395,
		59.788483, 58.754562, 53.086773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.893986, 59.382904, 53.458004>,  <59.801529, 59.367592, 52.749096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.893986, 59.382904, 53.458004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.055527, 59.064102, 53.278366>,  <60.152451, 58.872822, 53.170582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.055527, 59.064102, 53.278366>,  <59.893986, 59.382904, 53.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.055527, 59.064102, 53.278366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911878, 0.390073, 0.127758,
		0.073356, -0.461115, 0.884303,
		0.403854, -0.797005, -0.449094,
		60.176682, 58.825001, 53.143639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.373577, 59.114716, 53.948284>,  <59.893986, 59.382904, 53.458004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.373577, 59.114716, 53.948284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.493462, 59.081268, 53.568142>,  <60.565392, 59.061199, 53.340057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.493462, 59.081268, 53.568142>,  <60.373577, 59.114716, 53.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.493462, 59.081268, 53.568142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825249, 0.522542, 0.214276,
		0.478686, -0.848503, 0.225616,
		0.299707, -0.083618, -0.950359,
		60.583374, 59.056183, 53.283035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.075253, 58.973782, 54.005795>,  <60.373577, 59.114716, 53.948284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.075253, 58.973782, 54.005795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.995445, 59.142464, 53.651993>,  <60.947563, 59.243675, 53.439713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.995445, 59.142464, 53.651993>,  <61.075253, 58.973782, 54.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.995445, 59.142464, 53.651993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828088, 0.555161, 0.077896,
		0.523894, -0.716909, -0.459976,
		-0.199516, 0.421709, -0.884508,
		60.935589, 59.268978, 53.386639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.713631, 58.924782, 53.496414>,  <61.075253, 58.973782, 54.005795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.713631, 58.924782, 53.496414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.485725, 59.240597, 53.405201>,  <61.348984, 59.430088, 53.350471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.485725, 59.240597, 53.405201>,  <61.713631, 58.924782, 53.496414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.485725, 59.240597, 53.405201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820427, 0.562557, -0.102119,
		0.047654, -0.245268, -0.968283,
		-0.569761, 0.789540, -0.228033,
		61.314796, 59.477459, 53.336792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.978870, 59.190922, 52.885105>,  <61.713631, 58.924782, 53.496414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.978870, 59.190922, 52.885105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.799843, 59.455620, 53.125698>,  <61.692429, 59.614437, 53.270054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.799843, 59.455620, 53.125698>,  <61.978870, 59.190922, 52.885105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.799843, 59.455620, 53.125698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804093, 0.592125, -0.053120,
		-0.391303, 0.459871, -0.797120,
		-0.447566, 0.661745, 0.601480,
		61.665573, 59.654144, 53.306141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.832977, 59.839546, 52.543644>,  <61.978870, 59.190922, 52.885105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.832977, 59.839546, 52.543644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.928497, 59.857494, 52.931656>,  <61.985809, 59.868263, 53.164463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.928497, 59.857494, 52.931656>,  <61.832977, 59.839546, 52.543644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.928497, 59.857494, 52.931656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902893, 0.357431, -0.238803,
		-0.357435, 0.932861, 0.044839,
		0.238797, 0.044872, 0.970032,
		62.000137, 59.870956, 53.222664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.232182, 60.462906, 52.931816>,  <61.832977, 59.839546, 52.543644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.232182, 60.462906, 52.931816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.324715, 60.116539, 53.109203>,  <62.380234, 59.908718, 53.215637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.324715, 60.116539, 53.109203>,  <62.232182, 60.462906, 52.931816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.324715, 60.116539, 53.109203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969099, 0.245226, -0.026691,
		-0.085638, 0.435941, 0.895891,
		0.231331, -0.865921, 0.443471,
		62.394115, 59.856762, 53.242245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.636093, 60.570343, 53.431389>,  <62.232182, 60.462906, 52.931816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.636093, 60.570343, 53.431389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.733871, 60.200321, 53.315094>,  <62.792538, 59.978310, 53.245319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.733871, 60.200321, 53.315094>,  <62.636093, 60.570343, 53.431389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.733871, 60.200321, 53.315094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947828, 0.164677, 0.272953,
		-0.204618, -0.342288, 0.917044,
		0.244445, -0.925052, -0.290735,
		62.807205, 59.922806, 53.227875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.914032, 60.167625, 53.993511>,  <62.636093, 60.570343, 53.431389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.914032, 60.167625, 53.993511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.076584, 60.018219, 53.659962>,  <63.174114, 59.928577, 53.459831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.076584, 60.018219, 53.659962>,  <62.914032, 60.167625, 53.993511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.076584, 60.018219, 53.659962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907517, 0.058974, 0.415853,
		-0.106150, -0.925748, 0.362937,
		0.406379, -0.373514, -0.833872,
		63.198498, 59.906166, 53.409801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.169277, 59.441090, 54.077133>,  <62.914032, 60.167625, 53.993511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.169277, 59.441090, 54.077133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.405441, 59.663525, 53.843147>,  <63.547138, 59.796986, 53.702755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.405441, 59.663525, 53.843147>,  <63.169277, 59.441090, 54.077133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.405441, 59.663525, 53.843147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799662, -0.304852, 0.517306,
		0.109340, -0.773196, -0.624670,
		0.590411, 0.556087, -0.584963,
		63.582565, 59.830349, 53.667660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.851006, 59.045959, 53.906815>,  <63.169277, 59.441090, 54.077133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.851006, 59.045959, 53.906815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.918564, 59.438896, 53.939018>,  <63.959099, 59.674660, 53.958340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.918564, 59.438896, 53.939018>,  <63.851006, 59.045959, 53.906815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.918564, 59.438896, 53.939018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880018, -0.187081, 0.436541,
		0.443894, -0.002880, -0.896075,
		0.168896, 0.982340, 0.080510,
		63.969234, 59.733597, 53.963173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.516243, 59.262745, 53.599907>,  <63.851006, 59.045959, 53.906815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.516243, 59.262745, 53.599907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.407463, 59.472076, 53.922935>,  <64.342194, 59.597675, 54.116753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.407463, 59.472076, 53.922935>,  <64.516243, 59.262745, 53.599907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.407463, 59.472076, 53.922935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867741, -0.229429, 0.440895,
		0.416013, 0.820662, -0.391723,
		-0.271953, 0.523332, 0.807567,
		64.325874, 59.629074, 54.165207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.003174, 59.828045, 53.870377>,  <64.516243, 59.262745, 53.599907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.003174, 59.828045, 53.870377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.784035, 59.621750, 54.133850>,  <64.652550, 59.497971, 54.291935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.784035, 59.621750, 54.133850>,  <65.003174, 59.828045, 53.870377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.784035, 59.621750, 54.133850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835985, -0.367035, 0.407939,
		0.031371, 0.774144, 0.632232,
		-0.547854, -0.515740, 0.658687,
		64.619675, 59.467030, 54.331455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.215630, 59.957066, 54.482098>,  <65.003174, 59.828045, 53.870377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.215630, 59.957066, 54.482098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.055702, 59.590939, 54.501431>,  <64.959747, 59.371262, 54.513031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.055702, 59.590939, 54.501431>,  <65.215630, 59.957066, 54.482098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.055702, 59.590939, 54.501431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798354, -0.321853, 0.508961,
		-0.450304, 0.242083, 0.859431,
		-0.399822, -0.915317, 0.048336,
		64.935753, 59.316341, 54.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.175171, 59.581059, 55.162361>,  <65.215630, 59.957066, 54.482098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.175171, 59.581059, 55.162361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.224472, 59.320694, 54.862732>,  <65.254051, 59.164474, 54.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.224472, 59.320694, 54.862732>,  <65.175171, 59.581059, 55.162361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.224472, 59.320694, 54.862732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851952, -0.317684, 0.416240,
		-0.508906, -0.689482, 0.515392,
		0.123258, -0.650916, -0.749077,
		65.261452, 59.125420, 54.638008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.404266, 58.858902, 55.345860>,  <65.175171, 59.581059, 55.162361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.404266, 58.858902, 55.345860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.567245, 58.941536, 54.990036>,  <65.665031, 58.991116, 54.776543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.567245, 58.941536, 54.990036>,  <65.404266, 58.858902, 55.345860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.567245, 58.941536, 54.990036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893778, -0.290173, 0.341996,
		-0.187476, -0.934411, -0.302868,
		0.407449, 0.206581, -0.889556,
		65.689484, 59.003510, 54.723167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.769821, 59.333546, 55.758171>,  <65.404266, 58.858902, 55.345860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.769821, 59.333546, 55.758171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.895721, 59.452412, 56.118752>,  <65.971260, 59.523731, 56.335102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.895721, 59.452412, 56.118752>,  <65.769821, 59.333546, 55.758171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.895721, 59.452412, 56.118752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870397, -0.469188, -0.149240,
		0.378602, 0.831597, -0.406333,
		0.314754, 0.297168, 0.901455,
		65.990150, 59.541561, 56.389187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.418434, 59.692535, 55.645866>,  <65.769821, 59.333546, 55.758171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.418434, 59.692535, 55.645866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.380318, 59.530926, 56.009773>,  <66.357445, 59.433960, 56.228119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.380318, 59.530926, 56.009773>,  <66.418434, 59.692535, 55.645866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.380318, 59.530926, 56.009773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782552, -0.595272, -0.182383,
		0.615248, 0.694561, 0.372899,
		-0.095300, -0.404024, 0.909771,
		66.351730, 59.409718, 56.282703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.066948, 59.645100, 56.055344>,  <66.418434, 59.692535, 55.645866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.066948, 59.645100, 56.055344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.812798, 59.360901, 56.176331>,  <66.660309, 59.190384, 56.248920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.812798, 59.360901, 56.176331>,  <67.066948, 59.645100, 56.055344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.812798, 59.360901, 56.176331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769021, -0.617693, 0.164506,
		0.069950, 0.337126, 0.938857,
		-0.635385, -0.710494, 0.302464,
		66.622185, 59.147751, 56.267071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.360229, 59.351509, 56.680988>,  <67.066948, 59.645100, 56.055344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.360229, 59.351509, 56.680988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.110329, 59.099136, 56.496986>,  <66.960388, 58.947712, 56.386585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.110329, 59.099136, 56.496986>,  <67.360229, 59.351509, 56.680988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.110329, 59.099136, 56.496986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683322, -0.726860, 0.068890,
		-0.377826, -0.271294, 0.885238,
		-0.624755, -0.630931, -0.460008,
		66.922905, 58.909859, 56.358982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.241142, 58.714207, 57.087486>,  <67.360229, 59.351509, 56.680988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.241142, 58.714207, 57.087486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.200745, 58.672043, 56.691772>,  <67.176506, 58.646744, 56.454342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.200745, 58.672043, 56.691772>,  <67.241142, 58.714207, 57.087486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.200745, 58.672043, 56.691772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721416, -0.692502, 0.000141,
		-0.685099, -0.713673, 0.145981,
		-0.100991, -0.105410, -0.989287,
		67.170448, 58.640419, 56.394985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.115417, 57.899410, 56.900894>,  <67.241142, 58.714207, 57.087486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.115417, 57.899410, 56.900894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.319046, 58.173988, 56.693184>,  <67.441223, 58.338737, 56.568558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.319046, 58.173988, 56.693184>,  <67.115417, 57.899410, 56.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.319046, 58.173988, 56.693184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852726, -0.484293, 0.195752,
		-0.117106, -0.542447, -0.831888,
		0.509062, 0.686449, -0.519272,
		67.471764, 58.379925, 56.537403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.549278, 57.678402, 56.288578>,  <67.115417, 57.899410, 56.900894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.549278, 57.678402, 56.288578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.719589, 57.993626, 56.466423>,  <67.821777, 58.182758, 56.573132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.719589, 57.993626, 56.466423>,  <67.549278, 57.678402, 56.288578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.719589, 57.993626, 56.466423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884523, -0.466022, -0.021031,
		0.190625, 0.402225, -0.895476,
		0.425770, 0.788060, 0.444613,
		67.847321, 58.230045, 56.599808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.147728, 57.752514, 55.822483>,  <67.549278, 57.678402, 56.288578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.147728, 57.752514, 55.822483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.167488, 57.862656, 56.206512>,  <68.179344, 57.928741, 56.436932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.167488, 57.862656, 56.206512>,  <68.147728, 57.752514, 55.822483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.167488, 57.862656, 56.206512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827338, -0.549785, 0.115105,
		0.559528, 0.788617, -0.254975,
		0.049408, 0.275355, 0.960072,
		68.182312, 57.945263, 56.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.739250, 57.436848, 56.068981>,  <68.147728, 57.752514, 55.822483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.739250, 57.436848, 56.068981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.663170, 57.641541, 56.404114>,  <68.617523, 57.764355, 56.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.663170, 57.641541, 56.404114>,  <68.739250, 57.436848, 56.068981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.663170, 57.641541, 56.404114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881010, -0.287578, 0.375660,
		0.433176, 0.809589, -0.396137,
		-0.190210, 0.511728, 0.837827,
		68.606110, 57.795059, 56.655460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.378357, 57.697643, 56.396790>,  <68.739250, 57.436848, 56.068981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.378357, 57.697643, 56.396790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.182083, 57.781075, 56.735191>,  <69.064316, 57.831131, 56.938232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.182083, 57.781075, 56.735191>,  <69.378357, 57.697643, 56.396790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.182083, 57.781075, 56.735191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728712, -0.434073, 0.529679,
		0.477704, 0.876400, 0.061005,
		-0.490691, 0.208575, 0.846002,
		69.034874, 57.843647, 56.988991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.859047, 58.109074, 56.792168>,  <69.378357, 57.697643, 56.396790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.859047, 58.109074, 56.792168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.587013, 57.886028, 56.982559>,  <69.423790, 57.752201, 57.096794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.587013, 57.886028, 56.982559>,  <69.859047, 58.109074, 56.792168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.587013, 57.886028, 56.982559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733031, -0.506212, 0.454329,
		-0.012390, 0.657892, 0.753011,
		-0.680082, -0.557609, 0.475983,
		69.382988, 57.718746, 57.125355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.009697, 58.086464, 57.480724>,  <69.859047, 58.109074, 56.792168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.009697, 58.086464, 57.480724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.825272, 57.739487, 57.405922>,  <69.714615, 57.531300, 57.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.825272, 57.739487, 57.405922>,  <70.009697, 58.086464, 57.480724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.825272, 57.739487, 57.405922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573236, -0.452018, 0.683432,
		-0.677366, 0.207906, 0.705656,
		-0.461059, -0.867442, -0.187003,
		69.686951, 57.479256, 57.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.778786, 57.830318, 58.129585>,  <70.009697, 58.086464, 57.480724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.778786, 57.830318, 58.129585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.846695, 57.546524, 57.856003>,  <69.887444, 57.376247, 57.691853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.846695, 57.546524, 57.856003>,  <69.778786, 57.830318, 58.129585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.846695, 57.546524, 57.856003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718005, -0.386330, 0.578980,
		-0.675014, -0.589387, 0.443823,
		0.169782, -0.709487, -0.683961,
		69.897629, 57.333679, 57.650814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.843185, 57.096947, 58.429001>,  <69.778786, 57.830318, 58.129585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.843185, 57.096947, 58.429001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.032951, 57.121124, 58.077713>,  <70.146812, 57.135632, 57.866940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.032951, 57.121124, 58.077713>,  <69.843185, 57.096947, 58.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.032951, 57.121124, 58.077713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879153, -0.083418, 0.469182,
		-0.044899, -0.994680, -0.092717,
		0.474421, 0.060447, -0.878221,
		70.175278, 57.139259, 57.814247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.356369, 56.502537, 58.355812>,  <69.843185, 57.096947, 58.429001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.356369, 56.502537, 58.355812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.484047, 56.802979, 58.124657>,  <70.560654, 56.983242, 57.985962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.484047, 56.802979, 58.124657>,  <70.356369, 56.502537, 58.355812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.484047, 56.802979, 58.124657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860150, 0.026356, 0.509360,
		0.397812, -0.659660, -0.637647,
		0.319199, 0.751102, -0.577891,
		70.579803, 57.028309, 57.951290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.995132, 56.199100, 58.323307>,  <70.356369, 56.502537, 58.355812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.995132, 56.199100, 58.323307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.953308, 56.585121, 58.227188>,  <70.928215, 56.816734, 58.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.953308, 56.585121, 58.227188>,  <70.995132, 56.199100, 58.323307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.953308, 56.585121, 58.227188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802046, 0.224690, 0.553387,
		0.588040, -0.134867, -0.797509,
		-0.104558, 0.965052, -0.240296,
		70.921944, 56.874638, 58.155098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.696991, 56.468868, 58.127144>,  <70.995132, 56.199100, 58.323307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.696991, 56.468868, 58.127144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.433838, 56.736439, 58.265549>,  <71.275948, 56.896980, 58.348591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.433838, 56.736439, 58.265549>,  <71.696991, 56.468868, 58.127144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.433838, 56.736439, 58.265549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639391, 0.253323, 0.725952,
		0.397956, 0.698830, -0.594363,
		-0.657883, 0.668928, 0.346014,
		71.236473, 56.937119, 58.369354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.045074, 57.176331, 58.162529>,  <71.696991, 56.468868, 58.127144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.045074, 57.176331, 58.162529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.743835, 57.128578, 58.421326>,  <71.563095, 57.099926, 58.576603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.743835, 57.128578, 58.421326>,  <72.045074, 57.176331, 58.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.743835, 57.128578, 58.421326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594489, 0.297808, 0.746922,
		-0.281849, 0.947132, -0.153305,
		-0.753089, -0.119382, 0.646996,
		71.517906, 57.092762, 58.615425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.812317, 57.896309, 58.431232>,  <72.045074, 57.176331, 58.162529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.812317, 57.896309, 58.431232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.825699, 57.572834, 58.666145>,  <71.833725, 57.378750, 58.807095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.825699, 57.572834, 58.666145>,  <71.812317, 57.896309, 58.431232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.825699, 57.572834, 58.666145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709120, 0.433286, 0.556248,
		-0.704294, 0.397850, 0.587950,
		0.033447, -0.808690, 0.587284,
		71.835732, 57.330227, 58.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.882690, 58.156860, 59.064899>,  <71.812317, 57.896309, 58.431232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.882690, 58.156860, 59.064899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.992081, 57.775414, 59.115219>,  <72.057716, 57.546543, 59.145412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.992081, 57.775414, 59.115219>,  <71.882690, 58.156860, 59.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.992081, 57.775414, 59.115219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637796, 0.277672, 0.718411,
		-0.720021, -0.116230, 0.684149,
		0.273470, -0.953619, 0.125799,
		72.074120, 57.489326, 59.152958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.003540, 58.055618, 59.890789>,  <71.882690, 58.156860, 59.064899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.003540, 58.055618, 59.890789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.194527, 57.757801, 59.704163>,  <72.309120, 57.579109, 59.592186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.194527, 57.757801, 59.704163>,  <72.003540, 58.055618, 59.890789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.194527, 57.757801, 59.704163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713073, 0.018083, 0.700856,
		-0.513382, -0.667328, 0.539549,
		0.477458, -0.744545, -0.466570,
		72.337761, 57.534439, 59.564190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.065971, 57.445812, 60.326569>,  <72.003540, 58.055618, 59.890789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.065971, 57.445812, 60.326569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.374550, 57.525837, 60.084961>,  <72.559700, 57.573853, 59.939995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.374550, 57.525837, 60.084961>,  <72.065971, 57.445812, 60.326569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.374550, 57.525837, 60.084961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617054, -0.003586, 0.786912,
		0.155268, -0.979776, -0.126218,
		0.771450, 0.200066, -0.604018,
		72.605988, 57.585857, 59.903755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.821510, 57.152779, 60.541088>,  <72.065971, 57.445812, 60.326569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.821510, 57.152779, 60.541088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.907700, 57.476242, 60.322128>,  <72.959412, 57.670319, 60.190754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.907700, 57.476242, 60.322128>,  <72.821510, 57.152779, 60.541088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.907700, 57.476242, 60.322128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699238, 0.263522, 0.664547,
		0.681641, -0.525958, -0.508658,
		0.215481, 0.808655, -0.547398,
		72.972343, 57.718838, 60.157909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
