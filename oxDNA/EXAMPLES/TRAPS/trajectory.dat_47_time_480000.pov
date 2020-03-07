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
	<36.812737, 53.019157, 50.020584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667667, 53.158989, 49.675037>,  <36.580627, 53.242886, 49.467709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667667, 53.158989, 49.675037>,  <36.812737, 53.019157, 50.020584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667667, 53.158989, 49.675037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525834, 0.688554, 0.499392,
		0.769394, 0.635366, -0.065902,
		-0.362674, 0.349575, -0.863866,
		36.558865, 53.263863, 49.415878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074596, 53.605515, 50.527527>,  <36.812737, 53.019157, 50.020584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074596, 53.605515, 50.527527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367725, 53.592117, 50.799362>,  <37.543602, 53.584080, 50.962463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367725, 53.592117, 50.799362>,  <37.074596, 53.605515, 50.527527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367725, 53.592117, 50.799362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576353, 0.561414, -0.593829,
		-0.361641, 0.826857, 0.430724,
		0.732826, -0.033496, 0.679591,
		37.587574, 53.582069, 51.003239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229958, 54.193977, 50.708153>,  <37.074596, 53.605515, 50.527527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229958, 54.193977, 50.708153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575298, 54.005768, 50.781059>,  <37.782505, 53.892841, 50.824802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575298, 54.005768, 50.781059>,  <37.229958, 54.193977, 50.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575298, 54.005768, 50.781059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482536, 0.664241, -0.570914,
		0.147564, 0.580851, 0.800523,
		0.863356, -0.470528, 0.182264,
		37.834305, 53.864609, 50.835739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760994, 54.752327, 50.688049>,  <37.229958, 54.193977, 50.708153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760994, 54.752327, 50.688049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939518, 54.399300, 50.628868>,  <38.046631, 54.187485, 50.593361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939518, 54.399300, 50.628868>,  <37.760994, 54.752327, 50.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939518, 54.399300, 50.628868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710326, 0.449950, -0.541278,
		0.544284, 0.136481, 0.827725,
		0.446308, -0.882564, -0.147955,
		38.073410, 54.134529, 50.584480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538532, 54.900646, 50.710209>,  <37.760994, 54.752327, 50.688049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538532, 54.900646, 50.710209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428509, 54.586185, 50.488827>,  <38.362495, 54.397511, 50.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428509, 54.586185, 50.488827>,  <38.538532, 54.900646, 50.710209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428509, 54.586185, 50.488827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736572, 0.197660, -0.646832,
		0.617902, -0.585577, 0.524687,
		-0.275060, -0.786149, -0.553454,
		38.345989, 54.350342, 50.322792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041389, 54.397793, 50.512142>,  <38.538532, 54.900646, 50.710209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041389, 54.397793, 50.512142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791302, 54.464752, 50.207230>,  <38.641251, 54.504929, 50.024281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791302, 54.464752, 50.207230>,  <39.041389, 54.397793, 50.512142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791302, 54.464752, 50.207230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780212, 0.110044, -0.615759,
		-0.019194, -0.979728, -0.199410,
		-0.625221, 0.167401, -0.762284,
		38.603737, 54.514973, 49.978546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009567, 53.857990, 49.990311>,  <39.041389, 54.397793, 50.512142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009567, 53.857990, 49.990311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971416, 54.238770, 49.873901>,  <38.948524, 54.467236, 49.804054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971416, 54.238770, 49.873901>,  <39.009567, 53.857990, 49.990311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971416, 54.238770, 49.873901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957868, 0.008201, -0.287090,
		-0.270909, -0.306145, -0.912625,
		-0.095376, 0.951950, -0.291025,
		38.942802, 54.524353, 49.786594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153515, 53.840912, 49.300457>,  <39.009567, 53.857990, 49.990311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153515, 53.840912, 49.300457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248203, 54.190475, 49.470276>,  <39.305016, 54.400215, 49.572166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248203, 54.190475, 49.470276>,  <39.153515, 53.840912, 49.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248203, 54.190475, 49.470276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950839, -0.118586, -0.286081,
		-0.199665, 0.471397, -0.859022,
		0.236725, 0.873912, 0.424545,
		39.319221, 54.452648, 49.597641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508877, 54.248642, 48.800953>,  <39.153515, 53.840912, 49.300457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508877, 54.248642, 48.800953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664425, 54.359787, 49.152309>,  <39.757755, 54.426476, 49.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664425, 54.359787, 49.152309>,  <39.508877, 54.248642, 48.800953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664425, 54.359787, 49.152309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921256, -0.125802, -0.368051,
		0.008235, 0.952347, -0.304906,
		0.388870, 0.277865, 0.878391,
		39.781086, 54.443146, 49.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023540, 54.854832, 48.694328>,  <39.508877, 54.248642, 48.800953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023540, 54.854832, 48.694328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119385, 54.654079, 49.026764>,  <40.176891, 54.533630, 49.226227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119385, 54.654079, 49.026764>,  <40.023540, 54.854832, 48.694328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119385, 54.654079, 49.026764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940975, -0.090740, -0.326086,
		0.239069, 0.860166, 0.450512,
		0.239609, -0.501877, 0.831088,
		40.191269, 54.503517, 49.276089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743141, 54.609554, 48.685146>,  <40.023540, 54.854832, 48.694328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743141, 54.609554, 48.685146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699265, 54.522335, 49.073048>,  <40.672939, 54.470001, 49.305790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699265, 54.522335, 49.073048>,  <40.743141, 54.609554, 48.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699265, 54.522335, 49.073048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987164, -0.137839, 0.080672,
		0.116079, 0.966154, 0.230374,
		-0.109696, -0.218052, 0.969753,
		40.666355, 54.456921, 49.363972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885860, 55.297344, 48.350098>,  <40.743141, 54.609554, 48.685146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885860, 55.297344, 48.350098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593449, 55.381500, 48.090458>,  <40.418003, 55.431995, 47.934673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593449, 55.381500, 48.090458>,  <40.885860, 55.297344, 48.350098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593449, 55.381500, 48.090458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344956, -0.706814, -0.617592,
		-0.588729, -0.675389, 0.444126,
		-0.731029, 0.210390, -0.649101,
		40.374142, 55.444618, 47.895729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367455, 55.322727, 48.861507>,  <40.885860, 55.297344, 48.350098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367455, 55.322727, 48.861507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607624, 55.638901, 48.813000>,  <41.751724, 55.828606, 48.783897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607624, 55.638901, 48.813000>,  <41.367455, 55.322727, 48.861507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607624, 55.638901, 48.813000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378680, 0.414597, 0.827473,
		0.704340, -0.450912, 0.548255,
		0.600422, 0.790435, -0.121266,
		41.787750, 55.876030, 48.776619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690331, 55.448936, 48.180935>,  <41.367455, 55.322727, 48.861507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690331, 55.448936, 48.180935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692253, 55.833378, 48.070473>,  <41.693405, 56.064041, 48.004196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692253, 55.833378, 48.070473>,  <41.690331, 55.448936, 48.180935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692253, 55.833378, 48.070473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978897, 0.051900, 0.197656,
		0.204300, -0.271280, -0.940568,
		0.004805, 0.961100, -0.276159,
		41.693695, 56.121708, 47.987625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349834, 55.661659, 48.374916>,  <41.690331, 55.448936, 48.180935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349834, 55.661659, 48.374916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244926, 55.991863, 48.175018>,  <42.181980, 56.189987, 48.055080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244926, 55.991863, 48.175018>,  <42.349834, 55.661659, 48.374916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244926, 55.991863, 48.175018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758727, 0.496401, 0.421805,
		0.596277, -0.268540, -0.756531,
		-0.262271, 0.825514, -0.499741,
		42.166245, 56.239517, 48.025097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945904, 56.135029, 48.096195>,  <42.349834, 55.661659, 48.374916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945904, 56.135029, 48.096195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637787, 56.384602, 48.148895>,  <42.452915, 56.534344, 48.180515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637787, 56.384602, 48.148895>,  <42.945904, 56.135029, 48.096195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637787, 56.384602, 48.148895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623153, 0.692622, 0.363256,
		0.135392, 0.361915, -0.922327,
		-0.770291, 0.623933, 0.131753,
		42.406700, 56.571781, 48.188419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155525, 55.863735, 48.756165>,  <42.945904, 56.135029, 48.096195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155525, 55.863735, 48.756165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526306, 55.772491, 48.637016>,  <43.748775, 55.717747, 48.565529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526306, 55.772491, 48.637016>,  <43.155525, 55.863735, 48.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526306, 55.772491, 48.637016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372172, -0.659393, -0.653215,
		-0.047412, 0.716358, -0.696120,
		0.926952, -0.228106, -0.297871,
		43.804390, 55.704060, 48.547653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888226, 56.104183, 49.384312>,  <43.155525, 55.863735, 48.756165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888226, 56.104183, 49.384312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102402, 55.793797, 49.517689>,  <43.230907, 55.607567, 49.597713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102402, 55.793797, 49.517689>,  <42.888226, 56.104183, 49.384312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102402, 55.793797, 49.517689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090504, 0.445249, 0.890821,
		-0.839708, -0.446806, 0.308633,
		0.535443, -0.775962, 0.333441,
		43.263035, 55.561008, 49.617722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882137, 56.822987, 49.639805>,  <42.888226, 56.104183, 49.384312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882137, 56.822987, 49.639805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070152, 57.101944, 49.856216>,  <43.182961, 57.269318, 49.986061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070152, 57.101944, 49.856216>,  <42.882137, 56.822987, 49.639805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070152, 57.101944, 49.856216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862042, -0.494380, -0.111676,
		0.189591, 0.518879, -0.833558,
		0.470041, 0.697390, 0.541026,
		43.211166, 57.311161, 50.018524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465694, 56.960968, 49.332546>,  <42.882137, 56.822987, 49.639805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465694, 56.960968, 49.332546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540157, 57.125301, 49.689548>,  <43.584835, 57.223904, 49.903748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540157, 57.125301, 49.689548>,  <43.465694, 56.960968, 49.332546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540157, 57.125301, 49.689548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929084, -0.369096, -0.023882,
		0.319607, 0.833656, -0.450409,
		0.186154, 0.410835, 0.892503,
		43.596004, 57.248550, 49.957298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115105, 57.270145, 49.352695>,  <43.465694, 56.960968, 49.332546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115105, 57.270145, 49.352695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067722, 57.163704, 49.735352>,  <44.039295, 57.099838, 49.964947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067722, 57.163704, 49.735352>,  <44.115105, 57.270145, 49.352695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067722, 57.163704, 49.735352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965550, -0.255671, 0.048437,
		0.231696, 0.929420, 0.287221,
		-0.118452, -0.266104, 0.956639,
		44.032188, 57.083874, 50.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703091, 57.334743, 49.539410>,  <44.115105, 57.270145, 49.352695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703091, 57.334743, 49.539410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552372, 57.133896, 49.850765>,  <44.461941, 57.013386, 50.037579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552372, 57.133896, 49.850765>,  <44.703091, 57.334743, 49.539410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552372, 57.133896, 49.850765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812742, -0.582353, 0.017765,
		0.444380, 0.639327, 0.627525,
		-0.376798, -0.502122, 0.778394,
		44.439331, 56.983261, 50.084282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331440, 57.283466, 50.052597>,  <44.703091, 57.334743, 49.539410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331440, 57.283466, 50.052597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078728, 56.983337, 50.130447>,  <44.927101, 56.803261, 50.177158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078728, 56.983337, 50.130447>,  <45.331440, 57.283466, 50.052597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078728, 56.983337, 50.130447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755641, -0.540179, 0.370423,
		-0.172805, 0.381090, 0.908245,
		-0.631779, -0.750318, 0.194622,
		44.889194, 56.758244, 50.188835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192871, 57.124691, 50.828159>,  <45.331440, 57.283466, 50.052597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192871, 57.124691, 50.828159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184074, 56.812748, 50.577934>,  <45.178795, 56.625580, 50.427799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184074, 56.812748, 50.577934>,  <45.192871, 57.124691, 50.828159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184074, 56.812748, 50.577934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806071, -0.383975, 0.450347,
		-0.591410, -0.494347, 0.637068,
		-0.021991, -0.779862, -0.625565,
		45.177479, 56.578789, 50.390266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448132, 57.803844, 51.004906>,  <45.192871, 57.124691, 50.828159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448132, 57.803844, 51.004906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813232, 57.643341, 50.974258>,  <46.032295, 57.547039, 50.955868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813232, 57.643341, 50.974258>,  <45.448132, 57.803844, 51.004906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813232, 57.643341, 50.974258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357294, 0.693227, 0.625921,
		-0.198038, -0.598690, 0.776113,
		0.912755, -0.401256, -0.076623,
		46.087059, 57.522964, 50.951271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811184, 57.978333, 51.547318>,  <45.448132, 57.803844, 51.004906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811184, 57.978333, 51.547318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149323, 57.935326, 51.338005>,  <46.352207, 57.909523, 51.212418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149323, 57.935326, 51.338005>,  <45.811184, 57.978333, 51.547318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149323, 57.935326, 51.338005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499426, 0.506761, 0.702686,
		0.189630, -0.855356, 0.482086,
		0.845349, -0.107516, -0.523284,
		46.402927, 57.903072, 51.181019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336174, 57.670364, 52.014896>,  <45.811184, 57.978333, 51.547318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336174, 57.670364, 52.014896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522312, 57.832527, 51.700165>,  <46.633995, 57.929825, 51.511326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522312, 57.832527, 51.700165>,  <46.336174, 57.670364, 52.014896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522312, 57.832527, 51.700165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647708, 0.449894, 0.614875,
		0.603265, -0.795763, -0.053231,
		0.465346, 0.405411, -0.786826,
		46.661915, 57.954151, 51.464115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081448, 57.576721, 52.163376>,  <46.336174, 57.670364, 52.014896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081448, 57.576721, 52.163376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004211, 57.872963, 51.905937>,  <46.957870, 58.050709, 51.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004211, 57.872963, 51.905937>,  <47.081448, 57.576721, 52.163376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004211, 57.872963, 51.905937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541200, 0.627523, 0.559747,
		0.818425, -0.240235, -0.521984,
		-0.193087, 0.740609, -0.643596,
		46.946285, 58.095146, 51.712860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679317, 57.902977, 51.974754>,  <47.081448, 57.576721, 52.163376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679317, 57.902977, 51.974754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386219, 58.172333, 51.935524>,  <47.210358, 58.333946, 51.911983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386219, 58.172333, 51.935524>,  <47.679317, 57.902977, 51.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386219, 58.172333, 51.935524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421481, 0.562259, 0.711491,
		0.534258, 0.480007, -0.695817,
		-0.732750, 0.673394, -0.098077,
		47.166393, 58.374352, 51.906101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.251965, 58.383247, 52.103683>,  <47.679317, 57.902977, 51.974754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.251965, 58.383247, 52.103683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.524296, 58.118176, 51.978893>,  <48.687695, 57.959133, 51.904018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.524296, 58.118176, 51.978893>,  <48.251965, 58.383247, 52.103683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.524296, 58.118176, 51.978893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359783, -0.068435, 0.930523,
		-0.637991, -0.745767, 0.191830,
		0.680825, -0.662683, -0.311975,
		48.728542, 57.919373, 51.885300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.191021, 57.790443, 52.616833>,  <48.251965, 58.383247, 52.103683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.191021, 57.790443, 52.616833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542267, 57.777981, 52.425858>,  <48.753014, 57.770504, 52.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.542267, 57.777981, 52.425858>,  <48.191021, 57.790443, 52.616833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.542267, 57.777981, 52.425858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456328, -0.245431, 0.855295,
		-0.143829, -0.968913, -0.201296,
		0.878111, -0.031159, -0.477442,
		48.805698, 57.768635, 52.282623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.517563, 57.342545, 53.020771>,  <48.191021, 57.790443, 52.616833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.517563, 57.342545, 53.020771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.813938, 57.495113, 52.799671>,  <48.991764, 57.586655, 52.667011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.813938, 57.495113, 52.799671>,  <48.517563, 57.342545, 53.020771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.813938, 57.495113, 52.799671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591096, 0.020300, 0.806346,
		0.318776, -0.924180, -0.210414,
		0.740936, 0.381418, -0.552750,
		49.036221, 57.609539, 52.633846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.177364, 56.895760, 53.007435>,  <48.517563, 57.342545, 53.020771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.177364, 56.895760, 53.007435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.233879, 57.288975, 52.960670>,  <49.267788, 57.524906, 52.932613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.233879, 57.288975, 52.960670>,  <49.177364, 56.895760, 53.007435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.233879, 57.288975, 52.960670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645409, -0.001924, 0.763834,
		0.750656, -0.183374, -0.634736,
		0.141289, 0.983041, -0.116907,
		49.276264, 57.583889, 52.925598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.826443, 57.161118, 52.847343>,  <49.177364, 56.895760, 53.007435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.826443, 57.161118, 52.847343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.660458, 57.455318, 53.061573>,  <49.560867, 57.631840, 53.190113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.660458, 57.455318, 53.061573>,  <49.826443, 57.161118, 52.847343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.660458, 57.455318, 53.061573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830395, 0.065604, 0.553300,
		0.371816, 0.674341, -0.637979,
		-0.414967, 0.735500, 0.535577,
		49.535969, 57.675968, 53.222244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.369507, 57.825764, 52.839386>,  <49.826443, 57.161118, 52.847343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.369507, 57.825764, 52.839386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.123852, 57.785152, 53.152443>,  <49.976460, 57.760784, 53.340275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.123852, 57.785152, 53.152443>,  <50.369507, 57.825764, 52.839386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.123852, 57.785152, 53.152443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787166, -0.149921, 0.598242,
		0.056593, 0.983471, 0.171994,
		-0.614139, -0.101532, 0.782639,
		49.939610, 57.754692, 53.387234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.433002, 58.363987, 53.465736>,  <50.369507, 57.825764, 52.839386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.433002, 58.363987, 53.465736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.297985, 58.004143, 53.576569>,  <50.216976, 57.788239, 53.643066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.297985, 58.004143, 53.576569>,  <50.433002, 58.363987, 53.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.297985, 58.004143, 53.576569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738237, -0.070366, 0.670862,
		-0.584015, 0.430994, 0.687874,
		-0.337541, -0.899607, 0.277081,
		50.196724, 57.734261, 53.659695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.457180, 58.296875, 54.149574>,  <50.433002, 58.363987, 53.465736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.457180, 58.296875, 54.149574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.451363, 57.910545, 54.046059>,  <50.447872, 57.678749, 53.983948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.451363, 57.910545, 54.046059>,  <50.457180, 58.296875, 54.149574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.451363, 57.910545, 54.046059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679110, -0.199509, 0.706404,
		-0.733893, -0.165474, 0.658802,
		-0.014545, -0.965823, -0.258793,
		50.446999, 57.620800, 53.968422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.997814, 57.965733, 54.647865>,  <50.457180, 58.296875, 54.149574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.997814, 57.965733, 54.647865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.332943, 57.778152, 54.536053>,  <50.534019, 57.665604, 54.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.332943, 57.778152, 54.536053>,  <49.997814, 57.965733, 54.647865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.332943, 57.778152, 54.536053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405113, 0.190803, 0.894135,
		-0.365966, -0.862371, 0.349836,
		0.837826, -0.468946, -0.279531,
		50.584290, 57.637470, 54.452194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.283138, 58.111504, 55.285675>,  <49.997814, 57.965733, 54.647865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.283138, 58.111504, 55.285675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.511833, 57.918011, 55.020607>,  <50.649048, 57.801914, 54.861568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.511833, 57.918011, 55.020607>,  <50.283138, 58.111504, 55.285675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.511833, 57.918011, 55.020607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814564, 0.238197, 0.528911,
		-0.098005, -0.842180, 0.530214,
		0.571734, -0.483730, -0.662665,
		50.683353, 57.772892, 54.821808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.888672, 57.644234, 55.545898>,  <50.283138, 58.111504, 55.285675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.888672, 57.644234, 55.545898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.009949, 57.723557, 55.173073>,  <51.082714, 57.771152, 54.949379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.009949, 57.723557, 55.173073>,  <50.888672, 57.644234, 55.545898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.009949, 57.723557, 55.173073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908929, 0.233596, 0.345371,
		0.286218, -0.951896, -0.109425,
		0.303196, 0.198311, -0.932065,
		51.100906, 57.783051, 54.893452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.390854, 57.208324, 55.330467>,  <50.888672, 57.644234, 55.545898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.390854, 57.208324, 55.330467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411003, 57.573551, 55.168594>,  <51.423092, 57.792686, 55.071472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411003, 57.573551, 55.168594>,  <51.390854, 57.208324, 55.330467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.411003, 57.573551, 55.168594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927920, 0.107068, 0.357072,
		0.369360, -0.393499, -0.841862,
		0.050371, 0.913069, -0.404683,
		51.426113, 57.847473, 55.047188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.075069, 57.311123, 54.977875>,  <51.390854, 57.208324, 55.330467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.075069, 57.311123, 54.977875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.922192, 57.657524, 55.106850>,  <51.830463, 57.865364, 55.184235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.922192, 57.657524, 55.106850>,  <52.075069, 57.311123, 54.977875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.922192, 57.657524, 55.106850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914132, 0.303262, 0.269061,
		0.135226, 0.397582, -0.907548,
		-0.382199, 0.866003, 0.322433,
		51.807533, 57.917324, 55.203579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.426594, 57.872383, 54.590626>,  <52.075069, 57.311123, 54.977875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.426594, 57.872383, 54.590626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.280037, 57.981964, 54.946312>,  <52.192101, 58.047714, 55.159725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.280037, 57.981964, 54.946312>,  <52.426594, 57.872383, 54.590626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.280037, 57.981964, 54.946312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923929, 0.220149, 0.312874,
		-0.110046, 0.936206, -0.333778,
		-0.366395, 0.273956, 0.889215,
		52.170120, 58.064152, 55.213078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.949299, 58.396877, 54.790222>,  <52.426594, 57.872383, 54.590626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.949299, 58.396877, 54.790222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.717216, 58.301933, 55.101868>,  <52.577965, 58.244968, 55.288857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.717216, 58.301933, 55.101868>,  <52.949299, 58.396877, 54.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.717216, 58.301933, 55.101868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801802, 0.001586, 0.597588,
		-0.143080, 0.971420, 0.189396,
		-0.580209, -0.237361, 0.779113,
		52.543156, 58.230724, 55.335602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.013767, 58.911072, 55.256901>,  <52.949299, 58.396877, 54.790222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.013767, 58.911072, 55.256901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.974159, 58.574150, 55.468834>,  <52.950394, 58.371998, 55.595993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.974159, 58.574150, 55.468834>,  <53.013767, 58.911072, 55.256901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.974159, 58.574150, 55.468834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963446, 0.052042, 0.262800,
		-0.248930, 0.536489, 0.806358,
		-0.099025, -0.842301, 0.529833,
		52.944450, 58.321461, 55.627785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.287373, 59.076237, 55.899662>,  <53.013767, 58.911072, 55.256901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.287373, 59.076237, 55.899662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.299603, 58.686691, 55.809631>,  <53.306942, 58.452965, 55.755611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.299603, 58.686691, 55.809631>,  <53.287373, 59.076237, 55.899662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.299603, 58.686691, 55.809631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893857, -0.074129, 0.442182,
		-0.447308, -0.214707, 0.868226,
		0.030579, -0.973861, -0.225076,
		53.308777, 58.394531, 55.742107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.273979, 58.679047, 56.585091>,  <53.287373, 59.076237, 55.899662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.273979, 58.679047, 56.585091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.492355, 58.507759, 56.297043>,  <53.623383, 58.404987, 56.124214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.492355, 58.507759, 56.297043>,  <53.273979, 58.679047, 56.585091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.492355, 58.507759, 56.297043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818384, 0.088497, 0.567817,
		-0.179423, -0.899329, 0.398765,
		0.545944, -0.428223, -0.720119,
		53.656139, 58.379292, 56.081009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.777260, 58.115982, 56.931168>,  <53.273979, 58.679047, 56.585091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.777260, 58.115982, 56.931168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.921249, 58.224731, 56.574181>,  <54.007645, 58.289982, 56.359989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.921249, 58.224731, 56.574181>,  <53.777260, 58.115982, 56.931168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.921249, 58.224731, 56.574181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932444, -0.072967, 0.353871,
		0.031089, -0.959561, -0.279777,
		0.359975, 0.271878, -0.892469,
		54.029243, 58.306293, 56.306438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.304966, 57.670212, 56.816402>,  <53.777260, 58.115982, 56.931168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.304966, 57.670212, 56.816402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.378555, 57.995441, 56.595474>,  <54.422710, 58.190578, 56.462917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.378555, 57.995441, 56.595474>,  <54.304966, 57.670212, 56.816402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.378555, 57.995441, 56.595474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945453, 0.007305, 0.325676,
		0.268834, -0.582110, -0.767383,
		0.183974, 0.813077, -0.552321,
		54.433746, 58.239365, 56.429779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.962063, 57.654366, 56.306477>,  <54.304966, 57.670212, 56.816402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.962063, 57.654366, 56.306477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.893089, 58.008507, 56.479179>,  <54.851707, 58.220993, 56.582802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.893089, 58.008507, 56.479179>,  <54.962063, 57.654366, 56.306477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.893089, 58.008507, 56.479179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872525, -0.066135, 0.484073,
		0.457131, 0.460187, -0.761091,
		-0.172429, 0.885355, 0.431757,
		54.841362, 58.274113, 56.608707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.642929, 58.107735, 56.175991>,  <54.962063, 57.654366, 56.306477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.642929, 58.107735, 56.175991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.426537, 58.208679, 56.496902>,  <55.296700, 58.269245, 56.689449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.426537, 58.208679, 56.496902>,  <55.642929, 58.107735, 56.175991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.426537, 58.208679, 56.496902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809820, -0.101155, 0.577892,
		0.226995, 0.962330, -0.149647,
		-0.540985, 0.252366, 0.802276,
		55.264240, 58.284389, 56.737587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.769211, 58.757401, 56.390953>,  <55.642929, 58.107735, 56.175991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.769211, 58.757401, 56.390953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.672104, 58.528179, 56.704048>,  <55.613838, 58.390648, 56.891907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.672104, 58.528179, 56.704048>,  <55.769211, 58.757401, 56.390953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.672104, 58.528179, 56.704048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769864, 0.377120, 0.514870,
		-0.590232, 0.727595, 0.349618,
		-0.242769, -0.573050, 0.782737,
		55.599274, 58.356262, 56.938869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.667595, 59.182545, 57.024647>,  <55.769211, 58.757401, 56.390953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.667595, 59.182545, 57.024647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.784859, 58.810814, 57.114456>,  <55.855217, 58.587776, 57.168343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.784859, 58.810814, 57.114456>,  <55.667595, 59.182545, 57.024647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.784859, 58.810814, 57.114456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779483, 0.368310, 0.506708,
		-0.553592, 0.026469, 0.832367,
		0.293157, -0.929326, 0.224526,
		55.872807, 58.532017, 57.181812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.815739, 59.085480, 57.831585>,  <55.667595, 59.182545, 57.024647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.815739, 59.085480, 57.831585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.050407, 58.864132, 57.595078>,  <56.191208, 58.731323, 57.453175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.050407, 58.864132, 57.595078>,  <55.815739, 59.085480, 57.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.050407, 58.864132, 57.595078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809804, 0.405796, 0.423729,
		0.005454, -0.727400, 0.686192,
		0.586675, -0.553370, -0.591265,
		56.226410, 58.698120, 57.417698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.243755, 58.684151, 58.261444>,  <55.815739, 59.085480, 57.831585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.243755, 58.684151, 58.261444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.407112, 58.730728, 57.899307>,  <56.505127, 58.758675, 57.682022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.407112, 58.730728, 57.899307>,  <56.243755, 58.684151, 58.261444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.407112, 58.730728, 57.899307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837436, 0.346846, 0.422373,
		0.363198, -0.930666, 0.044139,
		0.408398, 0.116442, -0.905347,
		56.529633, 58.765663, 57.627705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.894760, 58.891850, 58.404282>,  <56.243755, 58.684151, 58.261444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.894760, 58.891850, 58.404282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.901901, 58.886147, 58.004387>,  <56.906185, 58.882725, 57.764450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.901901, 58.886147, 58.004387>,  <56.894760, 58.891850, 58.404282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.901901, 58.886147, 58.004387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938328, 0.345545, 0.011831,
		0.345286, -0.938294, 0.019547,
		0.017855, -0.014257, -0.999739,
		56.907257, 58.881870, 57.704464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.482502, 58.545322, 58.091270>,  <56.894760, 58.891850, 58.404282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.482502, 58.545322, 58.091270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.335884, 58.815269, 57.835083>,  <57.247913, 58.977238, 57.681370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.335884, 58.815269, 57.835083>,  <57.482502, 58.545322, 58.091270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.335884, 58.815269, 57.835083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836770, 0.540075, 0.090192,
		0.406768, -0.502863, -0.762672,
		-0.366546, 0.674869, -0.640466,
		57.225922, 59.017731, 57.642944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.864246, 58.673149, 57.518394>,  <57.482502, 58.545322, 58.091270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.864246, 58.673149, 57.518394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.694710, 59.008064, 57.656563>,  <57.592987, 59.209011, 57.739464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.694710, 59.008064, 57.656563>,  <57.864246, 58.673149, 57.518394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.694710, 59.008064, 57.656563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903893, 0.415337, 0.102337,
		-0.057780, 0.355596, -0.932852,
		-0.423838, 0.837285, 0.345419,
		57.567558, 59.259251, 57.760189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.348804, 59.217541, 57.393593>,  <57.864246, 58.673149, 57.518394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.348804, 59.217541, 57.393593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.142296, 59.397026, 57.685379>,  <58.018391, 59.504719, 57.860451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.142296, 59.397026, 57.685379>,  <58.348804, 59.217541, 57.393593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.142296, 59.397026, 57.685379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816642, 0.514512, 0.261483,
		-0.257987, 0.730707, -0.632068,
		-0.516274, 0.448714, 0.729464,
		57.987415, 59.531639, 57.904217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.308987, 60.030609, 57.274948>,  <58.348804, 59.217541, 57.393593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.308987, 60.030609, 57.274948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.269913, 59.970024, 57.668396>,  <58.246468, 59.933674, 57.904465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.269913, 59.970024, 57.668396>,  <58.308987, 60.030609, 57.274948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.269913, 59.970024, 57.668396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697640, 0.694439, 0.176220,
		-0.709758, 0.703429, 0.037831,
		-0.097687, -0.151466, 0.983623,
		58.240608, 59.924583, 57.963482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.475006, 60.679859, 57.666527>,  <58.308987, 60.030609, 57.274948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.475006, 60.679859, 57.666527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.493179, 60.375252, 57.925148>,  <58.504086, 60.192490, 58.080318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.493179, 60.375252, 57.925148>,  <58.475006, 60.679859, 57.666527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.493179, 60.375252, 57.925148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915297, 0.291027, 0.278452,
		-0.400209, 0.579134, 0.710237,
		0.045437, -0.761517, 0.646551,
		58.506809, 60.146797, 58.119114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.526272, 60.939545, 58.259834>,  <58.475006, 60.679859, 57.666527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.526272, 60.939545, 58.259834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.693520, 60.576317, 58.269440>,  <58.793869, 60.358379, 58.275204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.693520, 60.576317, 58.269440>,  <58.526272, 60.939545, 58.259834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.693520, 60.576317, 58.269440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831318, 0.393169, 0.392846,
		-0.366174, -0.144295, 0.919291,
		0.418122, -0.908073, 0.024014,
		58.818954, 60.303894, 58.276646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.684570, 60.524696, 58.907749>,  <58.526272, 60.939545, 58.259834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.684570, 60.524696, 58.907749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.953705, 60.470642, 58.616814>,  <59.115185, 60.438210, 58.442253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.953705, 60.470642, 58.616814>,  <58.684570, 60.524696, 58.907749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.953705, 60.470642, 58.616814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709455, 0.396512, 0.582625,
		0.209669, -0.908030, 0.362658,
		0.672839, -0.135131, -0.727342,
		59.155556, 60.430103, 58.398609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.274815, 60.060669, 58.960415>,  <58.684570, 60.524696, 58.907749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.274815, 60.060669, 58.960415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.338951, 60.382973, 58.732368>,  <59.377434, 60.576355, 58.595539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.338951, 60.382973, 58.732368>,  <59.274815, 60.060669, 58.960415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.338951, 60.382973, 58.732368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578400, 0.391336, 0.715758,
		0.799840, -0.444522, -0.403306,
		0.160342, 0.805764, -0.570118,
		59.387054, 60.624702, 58.561333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.017033, 60.134377, 58.965656>,  <59.274815, 60.060669, 58.960415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.017033, 60.134377, 58.965656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.759621, 60.437347, 58.921509>,  <59.605175, 60.619129, 58.895020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.759621, 60.437347, 58.921509>,  <60.017033, 60.134377, 58.965656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.759621, 60.437347, 58.921509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452080, 0.492465, 0.743708,
		0.617655, 0.428702, -0.659331,
		-0.643527, 0.757425, -0.110366,
		59.566563, 60.664574, 58.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.234467, 60.341225, 59.695839>,  <60.017033, 60.134377, 58.965656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.234467, 60.341225, 59.695839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.343903, 60.068260, 59.966972>,  <60.409565, 59.904480, 60.129654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.343903, 60.068260, 59.966972>,  <60.234467, 60.341225, 59.695839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.343903, 60.068260, 59.966972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844444, -0.166985, -0.508949,
		0.460503, 0.711637, 0.530575,
		0.273589, -0.682414, 0.677835,
		60.425980, 59.863537, 60.170322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.933208, 60.437241, 59.884800>,  <60.234467, 60.341225, 59.695839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.933208, 60.437241, 59.884800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.851425, 60.046963, 59.916336>,  <60.802357, 59.812798, 59.935257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.851425, 60.046963, 59.916336>,  <60.933208, 60.437241, 59.884800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.851425, 60.046963, 59.916336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803133, -0.213252, -0.556328,
		0.559619, -0.050427, 0.827214,
		-0.204459, -0.975695, 0.078840,
		60.790089, 59.754253, 59.939987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.475933, 60.033951, 60.047894>,  <60.933208, 60.437241, 59.884800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.475933, 60.033951, 60.047894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.245117, 59.795326, 59.824776>,  <61.106628, 59.652153, 59.690903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.245117, 59.795326, 59.824776>,  <61.475933, 60.033951, 60.047894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.245117, 59.795326, 59.824776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802515, -0.287361, -0.522871,
		0.151635, -0.749359, 0.644568,
		-0.577042, -0.596561, -0.557798,
		61.072006, 59.616360, 59.657436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.775623, 59.400536, 60.060436>,  <61.475933, 60.033951, 60.047894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.775623, 59.400536, 60.060436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.569138, 59.454689, 59.722160>,  <61.445248, 59.487179, 59.519196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.569138, 59.454689, 59.722160>,  <61.775623, 59.400536, 60.060436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.569138, 59.454689, 59.722160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830660, -0.161405, -0.532871,
		-0.208640, -0.977558, -0.029136,
		-0.516210, 0.135380, -0.845695,
		61.414276, 59.495304, 59.468452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.822182, 58.873753, 59.550716>,  <61.775623, 59.400536, 60.060436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.822182, 58.873753, 59.550716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.816597, 59.240562, 59.391281>,  <61.813248, 59.460648, 59.295620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.816597, 59.240562, 59.391281>,  <61.822182, 58.873753, 59.550716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.816597, 59.240562, 59.391281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833041, -0.209806, -0.511883,
		-0.553035, -0.339185, -0.760990,
		-0.013963, 0.917025, -0.398585,
		61.812408, 59.515671, 59.271706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.793945, 58.952991, 58.776432>,  <61.822182, 58.873753, 59.550716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.793945, 58.952991, 58.776432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.008911, 59.246445, 58.942795>,  <62.137890, 59.422516, 59.042610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.008911, 59.246445, 58.942795>,  <61.793945, 58.952991, 58.776432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.008911, 59.246445, 58.942795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733772, -0.163705, -0.659378,
		-0.415653, 0.659537, -0.626293,
		0.537412, 0.733629, 0.415905,
		62.170135, 59.466534, 59.067566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.153080, 59.177280, 58.215084>,  <61.793945, 58.952991, 58.776432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.153080, 59.177280, 58.215084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.360138, 59.260563, 58.547035>,  <62.484375, 59.310532, 58.746204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.360138, 59.260563, 58.547035>,  <62.153080, 59.177280, 58.215084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.360138, 59.260563, 58.547035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814339, -0.417446, -0.403226,
		0.262474, 0.884528, -0.385639,
		0.517648, 0.208204, 0.829874,
		62.515434, 59.323025, 58.795998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.826359, 59.371292, 57.850948>,  <62.153080, 59.177280, 58.215084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.826359, 59.371292, 57.850948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.873787, 59.273048, 58.235786>,  <62.902245, 59.214104, 58.466690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.873787, 59.273048, 58.235786>,  <62.826359, 59.371292, 57.850948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.873787, 59.273048, 58.235786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858081, -0.462205, -0.223748,
		0.499637, 0.852083, 0.155944,
		0.118573, -0.245605, 0.962091,
		62.909359, 59.199368, 58.524414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.407154, 59.608925, 58.208988>,  <62.826359, 59.371292, 57.850948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.407154, 59.608925, 58.208988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.316284, 59.279221, 58.416443>,  <63.261765, 59.081398, 58.540916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.316284, 59.279221, 58.416443>,  <63.407154, 59.608925, 58.208988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.316284, 59.279221, 58.416443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916352, -0.361213, -0.172696,
		0.329685, 0.436023, 0.837372,
		-0.227170, -0.824263, 0.518637,
		63.248135, 59.031940, 58.572033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.917427, 59.468479, 58.726368>,  <63.407154, 59.608925, 58.208988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.917427, 59.468479, 58.726368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.765427, 59.118690, 58.605766>,  <63.674229, 58.908817, 58.533405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.765427, 59.118690, 58.605766>,  <63.917427, 59.468479, 58.726368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.765427, 59.118690, 58.605766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924559, -0.349145, -0.152608,
		0.028183, -0.336748, 0.941173,
		-0.379997, -0.874470, -0.301503,
		63.651428, 58.856350, 58.515316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.262695, 58.943520, 59.072353>,  <63.917427, 59.468479, 58.726368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.262695, 58.943520, 59.072353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.123619, 58.832523, 58.714111>,  <64.040176, 58.765926, 58.499165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.123619, 58.832523, 58.714111>,  <64.262695, 58.943520, 59.072353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.123619, 58.832523, 58.714111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892879, -0.389504, -0.225953,
		-0.286143, -0.878230, 0.383190,
		-0.347693, -0.277487, -0.895606,
		64.019310, 58.749279, 58.445431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.522049, 58.155750, 58.901100>,  <64.262695, 58.943520, 59.072353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.522049, 58.155750, 58.901100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.412521, 58.341885, 58.564415>,  <64.346802, 58.453568, 58.362404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.412521, 58.341885, 58.564415>,  <64.522049, 58.155750, 58.901100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.412521, 58.341885, 58.564415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858541, -0.276206, -0.431993,
		-0.433510, -0.840934, -0.323882,
		-0.273819, 0.465339, -0.841714,
		64.330376, 58.481487, 58.311901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.469376, 57.664402, 58.341587>,  <64.522049, 58.155750, 58.901100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.469376, 57.664402, 58.341587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.598457, 58.030014, 58.243271>,  <64.675911, 58.249382, 58.184280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.598457, 58.030014, 58.243271>,  <64.469376, 57.664402, 58.341587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.598457, 58.030014, 58.243271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884704, -0.383585, -0.264879,
		-0.336389, -0.131977, -0.932429,
		0.322708, 0.914026, -0.245795,
		64.695267, 58.304222, 58.169533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.948799, 57.701847, 57.725327>,  <64.469376, 57.664402, 58.341587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.948799, 57.701847, 57.725327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.057114, 58.013268, 57.951790>,  <65.122101, 58.200119, 58.087669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.057114, 58.013268, 57.951790>,  <64.948799, 57.701847, 57.725327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.057114, 58.013268, 57.951790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962197, -0.201057, -0.183721,
		-0.029206, 0.594505, -0.803561,
		0.270785, 0.778549, 0.566159,
		65.138351, 58.246834, 58.121639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.268143, 58.203041, 57.334789>,  <64.948799, 57.701847, 57.725327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.268143, 58.203041, 57.334789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.380272, 58.177208, 57.717880>,  <65.447548, 58.161709, 57.947735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.380272, 58.177208, 57.717880>,  <65.268143, 58.203041, 57.334789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.380272, 58.177208, 57.717880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932756, -0.217280, -0.287671,
		0.226673, 0.973971, -0.000672,
		0.280330, -0.064580, 0.957729,
		65.464371, 58.157833, 58.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.971146, 58.397270, 57.325829>,  <65.268143, 58.203041, 57.334789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.971146, 58.397270, 57.325829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.923203, 58.224697, 57.683487>,  <65.894440, 58.121155, 57.898083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.923203, 58.224697, 57.683487>,  <65.971146, 58.397270, 57.325829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.923203, 58.224697, 57.683487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862317, -0.491554, -0.121587,
		0.491978, 0.756465, 0.430950,
		-0.119859, -0.431433, 0.894147,
		65.887245, 58.095268, 57.951733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.353577, 58.699951, 57.736988>,  <65.971146, 58.397270, 57.325829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.353577, 58.699951, 57.736988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.298866, 58.319962, 57.849297>,  <66.266037, 58.091969, 57.916683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.298866, 58.319962, 57.849297>,  <66.353577, 58.699951, 57.736988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.298866, 58.319962, 57.849297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981013, -0.169239, -0.094719,
		0.137498, 0.262487, 0.955089,
		-0.136776, -0.949978, 0.280773,
		66.257835, 58.034969, 57.933529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.003769, 58.433720, 58.071087>,  <66.353577, 58.699951, 57.736988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.003769, 58.433720, 58.071087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883957, 58.085606, 57.914680>,  <66.812073, 57.876740, 57.820835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883957, 58.085606, 57.914680>,  <67.003769, 58.433720, 58.071087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.883957, 58.085606, 57.914680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950240, -0.308884, -0.040435,
		-0.085588, -0.383669, 0.919496,
		-0.299531, -0.870281, -0.391015,
		66.794098, 57.824520, 57.797375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.140991, 57.955460, 58.472153>,  <67.003769, 58.433720, 58.071087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.140991, 57.955460, 58.472153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.148590, 57.814350, 58.097946>,  <67.153152, 57.729683, 57.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.148590, 57.814350, 58.097946>,  <67.140991, 57.955460, 58.472153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.148590, 57.814350, 58.097946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951982, -0.279579, 0.124764,
		-0.305564, -0.892964, 0.330525,
		0.019002, -0.352777, -0.935514,
		67.154289, 57.708515, 57.817291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.523727, 57.267033, 58.516045>,  <67.140991, 57.955460, 58.472153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.523727, 57.267033, 58.516045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.596642, 57.483742, 58.187836>,  <67.640388, 57.613766, 57.990910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.596642, 57.483742, 58.187836>,  <67.523727, 57.267033, 58.516045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.596642, 57.483742, 58.187836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976113, 0.000615, 0.217264,
		0.118211, -0.840527, -0.528716,
		0.182291, 0.541769, -0.820522,
		67.651329, 57.646271, 57.941681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.989510, 56.831520, 58.039474>,  <67.523727, 57.267033, 58.516045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.989510, 56.831520, 58.039474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.009384, 57.227943, 57.989937>,  <68.021309, 57.465797, 57.960217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.009384, 57.227943, 57.989937>,  <67.989510, 56.831520, 58.039474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.009384, 57.227943, 57.989937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982275, -0.026044, 0.185627,
		0.180741, -0.130867, -0.974785,
		0.049679, 0.991058, -0.123840,
		68.024284, 57.525261, 57.952785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.616081, 56.858929, 57.774071>,  <67.989510, 56.831520, 58.039474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.616081, 56.858929, 57.774071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.554718, 57.243607, 57.864944>,  <68.517899, 57.474411, 57.919468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.554718, 57.243607, 57.864944>,  <68.616081, 56.858929, 57.774071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.554718, 57.243607, 57.864944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980820, 0.120227, 0.153417,
		0.120227, 0.246361, -0.961692,
		-0.153417, 0.961692, 0.227181,
		68.508690, 57.532116, 57.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.062286, 57.243130, 57.388226>,  <68.616081, 56.858929, 57.774071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.062286, 57.243130, 57.388226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.950546, 57.437443, 57.719521>,  <68.883499, 57.554031, 57.918297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.950546, 57.437443, 57.719521>,  <69.062286, 57.243130, 57.388226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.950546, 57.437443, 57.719521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957711, 0.079047, 0.276662,
		0.068928, 0.870498, -0.487321,
		-0.279355, 0.485782, 0.828237,
		68.866737, 57.583176, 57.967991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.361992, 57.948856, 57.390392>,  <69.062286, 57.243130, 57.388226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.361992, 57.948856, 57.390392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.309906, 57.726845, 57.719025>,  <69.278656, 57.593639, 57.916203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.309906, 57.726845, 57.719025>,  <69.361992, 57.948856, 57.390392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.309906, 57.726845, 57.719025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988663, -0.010195, 0.149802,
		-0.074769, 0.831769, 0.550063,
		-0.130209, -0.555028, 0.821578,
		69.270844, 57.560337, 57.965496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.905098, 58.180920, 57.635609>,  <69.361992, 57.948856, 57.390392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.905098, 58.180920, 57.635609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.793343, 57.881332, 57.875938>,  <69.726288, 57.701580, 58.020138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.793343, 57.881332, 57.875938>,  <69.905098, 58.180920, 57.635609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.793343, 57.881332, 57.875938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876757, 0.056119, 0.477648,
		-0.391462, 0.660223, 0.640987,
		-0.279382, -0.748970, 0.600823,
		69.709526, 57.656643, 58.056187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.649284, 58.298218, 58.429337>,  <69.905098, 58.180920, 57.635609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.649284, 58.298218, 58.429337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.824768, 57.947632, 58.349998>,  <69.930061, 57.737282, 58.302395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.824768, 57.947632, 58.349998>,  <69.649284, 58.298218, 58.429337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.824768, 57.947632, 58.349998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853908, 0.337842, 0.395859,
		-0.279945, -0.343042, 0.896634,
		0.438717, -0.876462, -0.198349,
		69.956383, 57.684692, 58.290493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.922455, 57.909462, 59.012806>,  <69.649284, 58.298218, 58.429337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.922455, 57.909462, 59.012806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.161018, 57.777267, 58.720207>,  <70.304153, 57.697952, 58.544647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.161018, 57.777267, 58.720207>,  <69.922455, 57.909462, 59.012806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.161018, 57.777267, 58.720207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785447, 0.428135, 0.446960,
		0.165465, -0.841118, 0.514918,
		0.596401, -0.330485, -0.731495,
		70.339935, 57.678123, 58.500759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.514107, 57.763863, 59.388710>,  <69.922455, 57.909462, 59.012806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.514107, 57.763863, 59.388710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.627579, 57.780231, 59.005493>,  <70.695663, 57.790051, 58.775562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.627579, 57.780231, 59.005493>,  <70.514107, 57.763863, 59.388710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.627579, 57.780231, 59.005493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914633, 0.288568, 0.283152,
		0.288036, -0.956587, 0.044474,
		0.283693, 0.040881, -0.958044,
		70.712685, 57.792507, 58.718079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.085678, 57.234650, 59.240284>,  <70.514107, 57.763863, 59.388710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.085678, 57.234650, 59.240284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.112808, 57.570068, 59.024048>,  <71.129089, 57.771320, 58.894306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.112808, 57.570068, 59.024048>,  <71.085678, 57.234650, 59.240284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.112808, 57.570068, 59.024048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879902, 0.205134, 0.428594,
		0.470289, -0.504740, -0.723924,
		0.067827, 0.838545, -0.540594,
		71.133156, 57.821632, 58.861870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.725334, 57.338364, 58.773220>,  <71.085678, 57.234650, 59.240284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.725334, 57.338364, 58.773220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.586159, 57.680050, 58.927750>,  <71.502655, 57.885063, 59.020466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.586159, 57.680050, 58.927750>,  <71.725334, 57.338364, 58.773220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.586159, 57.680050, 58.927750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908331, 0.205152, 0.364482,
		0.232091, 0.477731, -0.847294,
		-0.347948, 0.854216, 0.386324,
		71.481773, 57.936314, 59.043648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.250221, 57.769634, 58.472618>,  <71.725334, 57.338364, 58.773220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.250221, 57.769634, 58.472618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.092583, 57.864033, 58.827919>,  <71.998001, 57.920673, 59.041100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.092583, 57.864033, 58.827919>,  <72.250221, 57.769634, 58.472618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.092583, 57.864033, 58.827919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916317, 0.175621, 0.359890,
		-0.071063, 0.955753, -0.285460,
		-0.394099, 0.235996, 0.888252,
		71.974350, 57.934834, 59.094395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.906578, 57.894115, 58.772930>,  <72.250221, 57.769634, 58.472618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.906578, 57.894115, 58.772930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.614334, 57.886688, 59.045944>,  <72.438988, 57.882233, 59.209751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.614334, 57.886688, 59.045944>,  <72.906578, 57.894115, 58.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.614334, 57.886688, 59.045944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680010, -0.109813, 0.724933,
		0.061493, 0.993779, 0.092856,
		-0.730619, -0.018565, 0.682533,
		72.395149, 57.881119, 59.250706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.047127, 58.449448, 59.384331>,  <72.906578, 57.894115, 58.772930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.047127, 58.449448, 59.384331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.890739, 58.102978, 59.508842>,  <72.796906, 57.895096, 59.583549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.890739, 58.102978, 59.508842>,  <73.047127, 58.449448, 59.384331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.890739, 58.102978, 59.508842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723484, -0.080147, 0.685673,
		-0.568962, 0.493280, 0.657995,
		-0.390965, -0.866171, 0.311279,
		72.773453, 57.843128, 59.602226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.749718, 58.426819, 60.122013>,  <73.047127, 58.449448, 59.384331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.749718, 58.426819, 60.122013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.911919, 58.092331, 59.974335>,  <73.009239, 57.891640, 59.885727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.911919, 58.092331, 59.974335>,  <72.749718, 58.426819, 60.122013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.911919, 58.092331, 59.974335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584011, -0.073710, 0.808392,
		-0.703208, -0.543416, 0.458473,
		0.405500, -0.836221, -0.369194,
		73.033569, 57.841465, 59.863575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.868095, 57.975670, 60.701218>,  <72.749718, 58.426819, 60.122013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.868095, 57.975670, 60.701218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.108253, 57.897247, 60.391098>,  <73.252350, 57.850193, 60.205025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.108253, 57.897247, 60.391098>,  <72.868095, 57.975670, 60.701218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.108253, 57.897247, 60.391098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791093, 0.003715, 0.611684,
		-0.117044, -0.980585, 0.157329,
		0.600393, -0.196056, -0.775300,
		73.288368, 57.838432, 60.158508>
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
