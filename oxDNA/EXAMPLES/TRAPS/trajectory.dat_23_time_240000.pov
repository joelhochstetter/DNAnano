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
	<36.025600, 53.615620, 49.786850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249172, 53.286919, 49.831238>,  <36.383316, 53.089699, 49.857872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249172, 53.286919, 49.831238>,  <36.025600, 53.615620, 49.786850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249172, 53.286919, 49.831238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825494, 0.564080, 0.019320,
		-0.078473, 0.080807, 0.993636,
		0.558929, -0.821756, 0.110971,
		36.416851, 53.040390, 49.864529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538815, 53.660904, 50.365463>,  <36.025600, 53.615620, 49.786850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538815, 53.660904, 50.365463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685921, 53.355511, 50.153111>,  <36.774185, 53.172272, 50.025700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685921, 53.355511, 50.153111>,  <36.538815, 53.660904, 50.365463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685921, 53.355511, 50.153111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894884, 0.445796, -0.021201,
		0.252853, -0.467282, 0.847180,
		0.367762, -0.763488, -0.530883,
		36.796249, 53.126465, 49.993847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205223, 53.445866, 50.753460>,  <36.538815, 53.660904, 50.365463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205223, 53.445866, 50.753460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216351, 53.337517, 50.368576>,  <37.223026, 53.272507, 50.137646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216351, 53.337517, 50.368576>,  <37.205223, 53.445866, 50.753460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216351, 53.337517, 50.368576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884218, 0.455643, -0.102703,
		0.466245, -0.847949, 0.252186,
		0.027820, -0.270873, -0.962213,
		37.224697, 53.256256, 50.079910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869419, 53.233974, 50.659668>,  <37.205223, 53.445866, 50.753460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869419, 53.233974, 50.659668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691410, 53.358410, 50.323769>,  <37.584606, 53.433071, 50.122227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691410, 53.358410, 50.323769>,  <37.869419, 53.233974, 50.659668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691410, 53.358410, 50.323769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715577, 0.687332, -0.124594,
		0.538429, -0.656355, -0.528481,
		-0.445020, 0.311084, -0.839752,
		37.557903, 53.451736, 50.071842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324512, 53.228905, 50.014816>,  <37.869419, 53.233974, 50.659668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324512, 53.228905, 50.014816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027050, 53.492565, 49.970116>,  <37.848572, 53.650761, 49.943295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027050, 53.492565, 49.970116>,  <38.324512, 53.228905, 50.014816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027050, 53.492565, 49.970116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654546, 0.683791, -0.322491,
		-0.136158, -0.312968, -0.939953,
		-0.743660, 0.659152, -0.111748,
		37.803951, 53.690311, 49.936592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574162, 53.589111, 49.373432>,  <38.324512, 53.228905, 50.014816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574162, 53.589111, 49.373432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338139, 53.799194, 49.618702>,  <38.196526, 53.925243, 49.765865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338139, 53.799194, 49.618702>,  <38.574162, 53.589111, 49.373432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338139, 53.799194, 49.618702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648502, 0.760715, -0.027530,
		-0.480911, 0.381401, -0.789467,
		-0.590059, 0.525211, 0.613175,
		38.161121, 53.956757, 49.802654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452271, 54.305565, 48.987701>,  <38.574162, 53.589111, 49.373432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452271, 54.305565, 48.987701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400406, 54.329567, 49.383598>,  <38.369289, 54.343967, 49.621136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400406, 54.329567, 49.383598>,  <38.452271, 54.305565, 48.987701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400406, 54.329567, 49.383598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705925, 0.706544, 0.049645,
		-0.696318, 0.705121, -0.133964,
		-0.129658, 0.060000, 0.989742,
		38.361507, 54.347569, 49.680519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725311, 54.960217, 49.030289>,  <38.452271, 54.305565, 48.987701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725311, 54.960217, 49.030289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069702, 55.121071, 49.154877>,  <39.276337, 55.217583, 49.229630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069702, 55.121071, 49.154877>,  <38.725311, 54.960217, 49.030289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069702, 55.121071, 49.154877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257283, 0.872528, -0.415331,
		-0.438782, 0.277455, 0.854687,
		0.860974, 0.402136, 0.311465,
		39.327995, 55.241711, 49.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572834, 55.564369, 49.409805>,  <38.725311, 54.960217, 49.030289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572834, 55.564369, 49.409805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935349, 55.570709, 49.240860>,  <39.152859, 55.574512, 49.139492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935349, 55.570709, 49.240860>,  <38.572834, 55.564369, 49.409805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935349, 55.570709, 49.240860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133022, 0.959214, -0.249427,
		0.401182, 0.282236, 0.871433,
		0.906288, 0.015854, -0.422363,
		39.207233, 55.575466, 49.114151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013317, 56.184006, 49.508450>,  <38.572834, 55.564369, 49.409805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013317, 56.184006, 49.508450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136673, 56.049194, 49.152626>,  <39.210686, 55.968307, 48.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136673, 56.049194, 49.152626>,  <39.013317, 56.184006, 49.508450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136673, 56.049194, 49.152626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390784, 0.807699, -0.441488,
		0.867287, 0.483773, 0.117378,
		0.308386, -0.337027, -0.889557,
		39.229187, 55.948086, 48.885757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907742, 56.728729, 50.027473>,  <39.013317, 56.184006, 49.508450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907742, 56.728729, 50.027473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543797, 56.893639, 50.008774>,  <38.325432, 56.992584, 49.997555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543797, 56.893639, 50.008774>,  <38.907742, 56.728729, 50.027473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543797, 56.893639, 50.008774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250402, -0.635452, -0.730411,
		-0.330836, -0.652865, 0.681406,
		-0.909860, 0.412271, -0.046751,
		38.270840, 57.017319, 49.994747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257835, 56.277611, 50.117397>,  <38.907742, 56.728729, 50.027473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257835, 56.277611, 50.117397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487492, 55.954277, 50.065319>,  <38.625286, 55.760277, 50.034073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487492, 55.954277, 50.065319>,  <38.257835, 56.277611, 50.117397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487492, 55.954277, 50.065319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302799, 0.061888, 0.951043,
		-0.760707, -0.585455, 0.280296,
		0.574140, -0.808339, -0.130197,
		38.659733, 55.711777, 50.026260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438534, 56.276962, 50.738285>,  <38.257835, 56.277611, 50.117397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438534, 56.276962, 50.738285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692444, 56.035194, 50.545727>,  <38.844791, 55.890133, 50.430191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692444, 56.035194, 50.545727>,  <38.438534, 56.276962, 50.738285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692444, 56.035194, 50.545727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627080, 0.038946, 0.777981,
		-0.451475, -0.795716, 0.403739,
		0.634776, -0.604416, -0.481395,
		38.882877, 55.853870, 50.401310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717262, 55.857979, 51.209888>,  <38.438534, 56.276962, 50.738285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717262, 55.857979, 51.209888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975739, 55.899502, 50.907455>,  <39.130825, 55.924416, 50.725998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975739, 55.899502, 50.907455>,  <38.717262, 55.857979, 51.209888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975739, 55.899502, 50.907455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751471, 0.086271, 0.654101,
		0.133131, -0.990848, -0.022263,
		0.646195, 0.103811, -0.756079,
		39.169598, 55.930645, 50.680634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309734, 55.410950, 51.273384>,  <38.717262, 55.857979, 51.209888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309734, 55.410950, 51.273384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395058, 55.742645, 51.066750>,  <39.446251, 55.941662, 50.942768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395058, 55.742645, 51.066750>,  <39.309734, 55.410950, 51.273384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395058, 55.742645, 51.066750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668839, 0.261481, 0.695904,
		0.712149, -0.493954, -0.498852,
		0.213305, 0.829239, -0.516589,
		39.459049, 55.991417, 50.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130520, 55.546219, 51.016243>,  <39.309734, 55.410950, 51.273384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130520, 55.546219, 51.016243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962631, 55.906712, 51.059345>,  <39.861900, 56.123009, 51.085205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962631, 55.906712, 51.059345>,  <40.130520, 55.546219, 51.016243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962631, 55.906712, 51.059345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787690, 0.302682, 0.536589,
		0.450977, 0.310095, -0.836935,
		-0.419719, 0.901235, 0.107756,
		39.836716, 56.177082, 51.091671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522282, 56.006630, 50.672550>,  <40.130520, 55.546219, 51.016243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522282, 56.006630, 50.672550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325607, 56.222378, 50.945995>,  <40.207603, 56.351826, 51.110062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325607, 56.222378, 50.945995>,  <40.522282, 56.006630, 50.672550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325607, 56.222378, 50.945995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865382, 0.215453, 0.452430,
		0.096738, 0.814042, -0.572693,
		-0.491686, 0.539365, 0.683615,
		40.178101, 56.384186, 51.151081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776424, 56.677017, 50.622833>,  <40.522282, 56.006630, 50.672550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776424, 56.677017, 50.622833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947006, 56.551662, 50.962227>,  <41.049355, 56.476448, 51.165863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947006, 56.551662, 50.962227>,  <40.776424, 56.677017, 50.622833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947006, 56.551662, 50.962227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904509, 0.149046, -0.399560,
		-0.001244, 0.937855, 0.347026,
		0.426452, -0.313391, 0.848484,
		41.074944, 56.457645, 51.216770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332638, 57.087555, 50.921722>,  <40.776424, 56.677017, 50.622833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332638, 57.087555, 50.921722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451180, 56.738022, 51.075916>,  <41.522305, 56.528301, 51.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451180, 56.738022, 51.075916>,  <41.332638, 57.087555, 50.921722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451180, 56.738022, 51.075916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931568, 0.175466, -0.318421,
		0.210605, 0.453471, 0.866031,
		0.296353, -0.873828, 0.385485,
		41.540085, 56.475872, 51.191563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953888, 57.277504, 51.342827>,  <41.332638, 57.087555, 50.921722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953888, 57.277504, 51.342827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946617, 56.896935, 51.219887>,  <41.942253, 56.668594, 51.146122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946617, 56.896935, 51.219887>,  <41.953888, 57.277504, 51.342827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946617, 56.896935, 51.219887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855188, 0.144469, -0.497778,
		0.517999, -0.271893, 0.811018,
		-0.018176, -0.951422, -0.307354,
		41.941166, 56.611507, 51.127682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507534, 56.789585, 51.376450>,  <41.953888, 57.277504, 51.342827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507534, 56.789585, 51.376450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352543, 56.634090, 51.042088>,  <42.259548, 56.540794, 50.841469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352543, 56.634090, 51.042088>,  <42.507534, 56.789585, 51.376450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352543, 56.634090, 51.042088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902649, 0.024246, -0.429695,
		0.187306, -0.921030, 0.341499,
		-0.387482, -0.388738, -0.835907,
		42.236298, 56.517467, 50.791317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005096, 57.432480, 51.340298>,  <42.507534, 56.789585, 51.376450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005096, 57.432480, 51.340298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010437, 57.254986, 50.981876>,  <43.013641, 57.148487, 50.766823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010437, 57.254986, 50.981876>,  <43.005096, 57.432480, 51.340298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010437, 57.254986, 50.981876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991826, 0.119601, -0.044450,
		0.126894, -0.888140, 0.441708,
		0.013351, -0.443738, -0.896057,
		43.014442, 57.121864, 50.713058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446342, 56.919117, 51.237064>,  <43.005096, 57.432480, 51.340298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446342, 56.919117, 51.237064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492752, 57.068386, 50.868874>,  <43.520599, 57.157948, 50.647957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492752, 57.068386, 50.868874>,  <43.446342, 56.919117, 51.237064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492752, 57.068386, 50.868874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948097, 0.234624, 0.214625,
		0.296058, -0.897605, -0.326581,
		0.116024, 0.373172, -0.920479,
		43.527561, 57.180336, 50.592731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038780, 56.636505, 50.899345>,  <43.446342, 56.919117, 51.237064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038780, 56.636505, 50.899345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990223, 56.957199, 50.665253>,  <43.961086, 57.149616, 50.524799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990223, 56.957199, 50.665253>,  <44.038780, 56.636505, 50.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990223, 56.957199, 50.665253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989744, 0.142496, -0.010093,
		0.075300, -0.580451, -0.810806,
		-0.121395, 0.801731, -0.585228,
		43.953804, 57.197720, 50.489685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491474, 56.565964, 50.387741>,  <44.038780, 56.636505, 50.899345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491474, 56.565964, 50.387741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448093, 56.963493, 50.397072>,  <44.422066, 57.202011, 50.402668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448093, 56.963493, 50.397072>,  <44.491474, 56.565964, 50.387741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448093, 56.963493, 50.397072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989920, 0.110117, -0.089071,
		-0.091089, 0.013428, -0.995752,
		-0.108453, 0.993828, 0.023323,
		44.415558, 57.261642, 50.404068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809135, 56.826916, 49.711639>,  <44.491474, 56.565964, 50.387741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809135, 56.826916, 49.711639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819073, 57.080673, 50.020683>,  <44.825035, 57.232929, 50.206108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819073, 57.080673, 50.020683>,  <44.809135, 56.826916, 49.711639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819073, 57.080673, 50.020683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997844, 0.031224, -0.057730,
		-0.060748, 0.772376, -0.632255,
		0.024848, 0.634398, 0.772607,
		44.826527, 57.270992, 50.252464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462822, 57.198761, 49.627441>,  <44.809135, 56.826916, 49.711639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462822, 57.198761, 49.627441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357727, 57.241695, 50.010994>,  <45.294670, 57.267456, 50.241123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357727, 57.241695, 50.010994>,  <45.462822, 57.198761, 49.627441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357727, 57.241695, 50.010994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950864, -0.139897, 0.276200,
		0.163791, 0.984331, -0.065309,
		-0.262735, 0.107339, 0.958879,
		45.278908, 57.273895, 50.298656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875000, 57.677937, 49.999046>,  <45.462822, 57.198761, 49.627441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875000, 57.677937, 49.999046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727859, 57.358589, 50.189743>,  <45.639576, 57.166981, 50.304161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727859, 57.358589, 50.189743>,  <45.875000, 57.677937, 49.999046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727859, 57.358589, 50.189743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918203, -0.392869, 0.050567,
		0.146928, 0.456351, 0.877585,
		-0.367853, -0.798372, 0.476746,
		45.617504, 57.119076, 50.332767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200672, 57.719700, 50.683327>,  <45.875000, 57.677937, 49.999046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200672, 57.719700, 50.683327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090061, 57.368286, 50.527531>,  <46.023693, 57.157436, 50.434052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090061, 57.368286, 50.527531>,  <46.200672, 57.719700, 50.683327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090061, 57.368286, 50.527531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927291, -0.350344, 0.131874,
		-0.252312, -0.324707, 0.911539,
		-0.276532, -0.878536, -0.389493,
		46.007103, 57.104725, 50.410683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202145, 57.000202, 51.193714>,  <46.200672, 57.719700, 50.683327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202145, 57.000202, 51.193714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276081, 56.935753, 50.805927>,  <46.320442, 56.897083, 50.573254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276081, 56.935753, 50.805927>,  <46.202145, 57.000202, 51.193714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276081, 56.935753, 50.805927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875621, -0.420910, 0.236902,
		-0.446229, -0.892679, 0.063279,
		0.184843, -0.161121, -0.969471,
		46.331535, 56.887417, 50.515087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928604, 57.132618, 50.958015>,  <46.202145, 57.000202, 51.193714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928604, 57.132618, 50.958015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983547, 57.261795, 51.332573>,  <47.016514, 57.339302, 51.557308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983547, 57.261795, 51.332573>,  <46.928604, 57.132618, 50.958015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983547, 57.261795, 51.332573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913072, 0.325179, -0.246086,
		-0.383968, 0.888800, -0.250207,
		0.137359, 0.322946, 0.936396,
		47.024754, 57.358681, 51.613491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.786491, 56.344288, 50.748535>,  <46.928604, 57.132618, 50.958015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.786491, 56.344288, 50.748535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596786, 55.997547, 50.810032>,  <46.482964, 55.789501, 50.846931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596786, 55.997547, 50.810032>,  <46.786491, 56.344288, 50.748535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596786, 55.997547, 50.810032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728987, -0.288758, 0.620642,
		-0.493613, 0.406422, 0.768874,
		-0.474261, -0.866856, 0.153742,
		46.454510, 55.737492, 50.856155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715866, 56.286835, 51.462654>,  <46.786491, 56.344288, 50.748535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715866, 56.286835, 51.462654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731663, 55.924191, 51.294609>,  <46.741142, 55.706604, 51.193783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731663, 55.924191, 51.294609>,  <46.715866, 56.286835, 51.462654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731663, 55.924191, 51.294609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680851, -0.283317, 0.675406,
		-0.731356, -0.312708, 0.606079,
		0.039492, -0.906612, -0.420113,
		46.743511, 55.652206, 51.168575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610260, 55.874477, 51.986603>,  <46.715866, 56.286835, 51.462654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610260, 55.874477, 51.986603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840893, 55.674236, 51.728317>,  <46.979271, 55.554092, 51.573345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840893, 55.674236, 51.728317>,  <46.610260, 55.874477, 51.986603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840893, 55.674236, 51.728317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540384, -0.359115, 0.760935,
		-0.612811, -0.787677, 0.063456,
		0.576583, -0.500600, -0.645718,
		47.013866, 55.524055, 51.534603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863441, 55.156128, 52.079514>,  <46.610260, 55.874477, 51.986603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863441, 55.156128, 52.079514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175789, 55.296997, 51.873131>,  <47.363197, 55.381519, 51.749302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175789, 55.296997, 51.873131>,  <46.863441, 55.156128, 52.079514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.175789, 55.296997, 51.873131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610537, -0.255398, 0.749677,
		0.132243, -0.900413, -0.414449,
		0.780869, 0.352177, -0.515961,
		47.410049, 55.402649, 51.718342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387024, 54.571712, 52.033783>,  <46.863441, 55.156128, 52.079514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387024, 54.571712, 52.033783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553295, 54.935173, 52.049622>,  <47.653057, 55.153248, 52.059124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553295, 54.935173, 52.049622>,  <47.387024, 54.571712, 52.033783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553295, 54.935173, 52.049622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397610, -0.220702, 0.890616,
		0.817996, -0.354467, -0.453029,
		0.415678, 0.908649, 0.039594,
		47.677998, 55.207767, 52.061501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.190395, 54.621872, 51.900925>,  <47.387024, 54.571712, 52.033783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.190395, 54.621872, 51.900925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.010033, 54.858418, 52.168350>,  <47.901814, 55.000343, 52.328804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.010033, 54.858418, 52.168350>,  <48.190395, 54.621872, 51.900925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.010033, 54.858418, 52.168350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365880, -0.560745, 0.742763,
		0.814134, 0.579530, 0.036475,
		-0.450907, 0.591363, 0.668560,
		47.874760, 55.035828, 52.368919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.810642, 54.869057, 52.411362>,  <48.190395, 54.621872, 51.900925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.810642, 54.869057, 52.411362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429825, 54.837780, 52.529686>,  <48.201336, 54.819016, 52.600681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.429825, 54.837780, 52.529686>,  <48.810642, 54.869057, 52.411362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.429825, 54.837780, 52.529686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253287, -0.743777, 0.618580,
		0.171652, 0.663839, 0.727910,
		-0.952041, -0.078190, 0.295813,
		48.144211, 54.814323, 52.618431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.834641, 54.634945, 53.050697>,  <48.810642, 54.869057, 52.411362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.834641, 54.634945, 53.050697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.447411, 54.540092, 53.018196>,  <48.215073, 54.483181, 52.998695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.447411, 54.540092, 53.018196>,  <48.834641, 54.634945, 53.050697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.447411, 54.540092, 53.018196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133919, -0.763275, 0.632042,
		-0.211893, 0.600983, 0.770663,
		-0.968074, -0.237131, -0.081249,
		48.156990, 54.468952, 52.993820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.640427, 54.711159, 53.733418>,  <48.834641, 54.634945, 53.050697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.640427, 54.711159, 53.733418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.414570, 54.457409, 53.522232>,  <48.279057, 54.305157, 53.395519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.414570, 54.457409, 53.522232>,  <48.640427, 54.711159, 53.733418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.414570, 54.457409, 53.522232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066647, -0.672653, 0.736951,
		-0.822642, 0.380925, 0.422086,
		-0.564640, -0.634377, -0.527965,
		48.245178, 54.267097, 53.363842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.380989, 54.672073, 54.444164>,  <48.640427, 54.711159, 53.733418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.380989, 54.672073, 54.444164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.493961, 55.029907, 54.305630>,  <48.561745, 55.244610, 54.222511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.493961, 55.029907, 54.305630>,  <48.380989, 54.672073, 54.444164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.493961, 55.029907, 54.305630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351392, 0.239460, 0.905087,
		0.892613, -0.377322, -0.246720,
		0.282429, 0.894587, -0.346333,
		48.578690, 55.298283, 54.201729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.163891, 54.970177, 54.583164>,  <48.380989, 54.672073, 54.444164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.163891, 54.970177, 54.583164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.973236, 55.318714, 54.536560>,  <48.858845, 55.527836, 54.508598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.973236, 55.318714, 54.536560>,  <49.163891, 54.970177, 54.583164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.973236, 55.318714, 54.536560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531066, 0.391008, 0.751719,
		0.700565, 0.296420, -0.649110,
		-0.476632, 0.871348, -0.116508,
		48.830246, 55.580120, 54.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.608139, 55.480232, 54.617779>,  <49.163891, 54.970177, 54.583164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.608139, 55.480232, 54.617779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.951561, 55.275146, 54.618908>,  <50.157616, 55.152096, 54.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.951561, 55.275146, 54.618908>,  <49.608139, 55.480232, 54.617779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.951561, 55.275146, 54.618908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455476, 0.765214, 0.454962,
		-0.235427, -0.389322, 0.890507,
		0.858554, -0.512715, 0.002825,
		50.209126, 55.121330, 54.619755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.918175, 55.369789, 55.382168>,  <49.608139, 55.480232, 54.617779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.918175, 55.369789, 55.382168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.172733, 55.381958, 55.073860>,  <50.325466, 55.389259, 54.888878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.172733, 55.381958, 55.073860>,  <49.918175, 55.369789, 55.382168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.172733, 55.381958, 55.073860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488896, 0.756984, 0.433540,
		0.596645, -0.652726, 0.466866,
		0.636393, 0.030421, -0.770765,
		50.363651, 55.391083, 54.842632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.600384, 55.209484, 55.603992>,  <49.918175, 55.369789, 55.382168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.600384, 55.209484, 55.603992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.633232, 55.457737, 55.292076>,  <50.652943, 55.606689, 55.104927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.633232, 55.457737, 55.292076>,  <50.600384, 55.209484, 55.603992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.633232, 55.457737, 55.292076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602191, 0.592550, 0.535024,
		0.794117, -0.513521, -0.325076,
		0.082122, 0.620629, -0.779792,
		50.657867, 55.643925, 55.058140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.254333, 55.452698, 55.623264>,  <50.600384, 55.209484, 55.603992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.254333, 55.452698, 55.623264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.077206, 55.752739, 55.426796>,  <50.970928, 55.932766, 55.308914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.077206, 55.752739, 55.426796>,  <51.254333, 55.452698, 55.623264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.077206, 55.752739, 55.426796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568124, 0.658542, 0.493515,
		0.693646, -0.060507, -0.717770,
		-0.442821, 0.750108, -0.491171,
		50.944359, 55.977772, 55.279446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.767128, 55.848988, 55.474304>,  <51.254333, 55.452698, 55.623264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.767128, 55.848988, 55.474304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.428680, 56.057213, 55.520088>,  <51.225613, 56.182148, 55.547558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.428680, 56.057213, 55.520088>,  <51.767128, 55.848988, 55.474304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.428680, 56.057213, 55.520088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521596, 0.764527, 0.378730,
		0.109642, 0.380153, -0.918402,
		-0.846118, 0.520560, 0.114462,
		51.174847, 56.213383, 55.554428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.875072, 56.642487, 55.320042>,  <51.767128, 55.848988, 55.474304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.875072, 56.642487, 55.320042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.552773, 56.715839, 55.545303>,  <51.359394, 56.759850, 55.680462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.552773, 56.715839, 55.545303>,  <51.875072, 56.642487, 55.320042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.552773, 56.715839, 55.545303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389139, 0.880730, 0.269973,
		-0.446478, 0.436675, -0.781008,
		-0.805747, 0.183384, 0.563154,
		51.311047, 56.770855, 55.714249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.014030, 57.438133, 55.076153>,  <51.875072, 56.642487, 55.320042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.014030, 57.438133, 55.076153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.179127, 57.638428, 54.771809>,  <52.278183, 57.758606, 54.589203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.179127, 57.638428, 54.771809>,  <52.014030, 57.438133, 55.076153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.179127, 57.638428, 54.771809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125420, 0.796131, 0.591984,
		0.902174, -0.339760, 0.265790,
		0.412737, 0.500738, -0.760862,
		52.302948, 57.788651, 54.543549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.412354, 57.950336, 55.438698>,  <52.014030, 57.438133, 55.076153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.412354, 57.950336, 55.438698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.436890, 58.097183, 55.067436>,  <52.451611, 58.185291, 54.844681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.436890, 58.097183, 55.067436>,  <52.412354, 57.950336, 55.438698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.436890, 58.097183, 55.067436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321635, 0.873028, 0.366570,
		0.944875, -0.321009, -0.064530,
		0.061336, 0.367118, -0.928150,
		52.455292, 58.207317, 54.788990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.395409, 57.495152, 56.063995>,  <52.412354, 57.950336, 55.438698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.395409, 57.495152, 56.063995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.583000, 57.844711, 56.012833>,  <52.695557, 58.054447, 55.982136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.583000, 57.844711, 56.012833>,  <52.395409, 57.495152, 56.063995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.583000, 57.844711, 56.012833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864606, -0.424695, 0.268498,
		0.180317, -0.236511, -0.954750,
		0.468981, 0.873897, -0.127909,
		52.723694, 58.106880, 55.974461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.069679, 57.362411, 55.855713>,  <52.395409, 57.495152, 56.063995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.069679, 57.362411, 55.855713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.113159, 57.747105, 55.956314>,  <53.139248, 57.977921, 56.016674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.113159, 57.747105, 55.956314>,  <53.069679, 57.362411, 55.855713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.113159, 57.747105, 55.956314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974974, -0.152502, 0.161768,
		0.193932, 0.227623, -0.954242,
		0.108702, 0.961733, 0.251501,
		53.145771, 58.035625, 56.031765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.515991, 57.721657, 55.321911>,  <53.069679, 57.362411, 55.855713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.515991, 57.721657, 55.321911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.521351, 57.835533, 55.705322>,  <53.524567, 57.903858, 55.935368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.521351, 57.835533, 55.705322>,  <53.515991, 57.721657, 55.321911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.521351, 57.835533, 55.705322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962170, -0.264553, 0.065122,
		0.272121, 0.921392, -0.277466,
		0.013401, 0.284690, 0.958526,
		53.525372, 57.920940, 55.992882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.060032, 58.224846, 55.544907>,  <53.515991, 57.721657, 55.321911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.060032, 58.224846, 55.544907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.976418, 57.943993, 55.817177>,  <53.926250, 57.775482, 55.980537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.976418, 57.943993, 55.817177>,  <54.060032, 58.224846, 55.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.976418, 57.943993, 55.817177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977899, -0.153122, 0.142361,
		0.004270, 0.695390, 0.718620,
		-0.209033, -0.702130, 0.680675,
		53.913708, 57.733353, 56.021378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.282589, 58.373390, 56.303131>,  <54.060032, 58.224846, 55.544907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.282589, 58.373390, 56.303131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.283096, 58.001938, 56.154724>,  <54.283401, 57.779068, 56.065681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.283096, 58.001938, 56.154724>,  <54.282589, 58.373390, 56.303131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.283096, 58.001938, 56.154724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999429, -0.011350, 0.031828,
		-0.033767, -0.370843, 0.928081,
		0.001270, -0.928626, -0.371015,
		54.283478, 57.723351, 56.043419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.723862, 57.808311, 56.634079>,  <54.282589, 58.373390, 56.303131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.723862, 57.808311, 56.634079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.706764, 57.635654, 56.273666>,  <54.696507, 57.532063, 56.057419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.706764, 57.635654, 56.273666>,  <54.723862, 57.808311, 56.634079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.706764, 57.635654, 56.273666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948349, -0.301276, 0.099335,
		-0.314336, -0.850247, 0.422224,
		-0.042747, -0.431640, -0.901032,
		54.693939, 57.506161, 56.003357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.926773, 57.144890, 56.739883>,  <54.723862, 57.808311, 56.634079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.926773, 57.144890, 56.739883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.992340, 57.275917, 56.367683>,  <55.031681, 57.354534, 56.144363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.992340, 57.275917, 56.367683>,  <54.926773, 57.144890, 56.739883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.992340, 57.275917, 56.367683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882191, -0.470778, -0.010327,
		-0.441441, -0.819186, -0.366148,
		0.163914, 0.327571, -0.930499,
		55.041515, 57.374187, 56.088535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.335632, 56.584198, 56.511734>,  <54.926773, 57.144890, 56.739883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.335632, 56.584198, 56.511734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.419533, 56.904285, 56.287003>,  <55.469875, 57.096336, 56.152164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.419533, 56.904285, 56.287003>,  <55.335632, 56.584198, 56.511734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.419533, 56.904285, 56.287003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970952, -0.238137, 0.023320,
		-0.115132, -0.550403, -0.826923,
		0.209756, 0.800217, -0.561831,
		55.482460, 57.144352, 56.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.872822, 56.428345, 56.031200>,  <55.335632, 56.584198, 56.511734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.872822, 56.428345, 56.031200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.881615, 56.825592, 56.077209>,  <55.886890, 57.063942, 56.104816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.881615, 56.825592, 56.077209>,  <55.872822, 56.428345, 56.031200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.881615, 56.825592, 56.077209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998272, -0.028078, 0.051615,
		0.054490, 0.113692, -0.992021,
		0.021986, 0.993119, 0.115025,
		55.888210, 57.123528, 56.111717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.435566, 56.622948, 55.525402>,  <55.872822, 56.428345, 56.031200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.435566, 56.622948, 55.525402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.381752, 56.922249, 55.785255>,  <56.349464, 57.101830, 55.941166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.381752, 56.922249, 55.785255>,  <56.435566, 56.622948, 55.525402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.381752, 56.922249, 55.785255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953397, 0.276420, -0.120938,
		-0.270063, 0.603085, -0.750570,
		-0.134537, 0.748252, 0.649630,
		56.341393, 57.146725, 55.980145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.619705, 57.330910, 55.201866>,  <56.435566, 56.622948, 55.525402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.619705, 57.330910, 55.201866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.699165, 57.271370, 55.589348>,  <56.746841, 57.235645, 55.821835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.699165, 57.271370, 55.589348>,  <56.619705, 57.330910, 55.201866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.699165, 57.271370, 55.589348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974299, 0.137103, -0.178729,
		-0.106209, 0.979310, 0.172254,
		0.198648, -0.148845, 0.968702,
		56.758759, 57.226715, 55.879959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.262669, 57.409145, 55.103485>,  <56.619705, 57.330910, 55.201866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.262669, 57.409145, 55.103485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.239044, 57.303764, 55.488632>,  <57.224869, 57.240536, 55.719719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.239044, 57.303764, 55.488632>,  <57.262669, 57.409145, 55.103485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.239044, 57.303764, 55.488632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998021, 0.005279, 0.062663,
		-0.021591, 0.964658, 0.262618,
		-0.059062, -0.263451, 0.962863,
		57.221325, 57.224728, 55.777493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.589855, 57.858135, 55.518719>,  <57.262669, 57.409145, 55.103485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.589855, 57.858135, 55.518719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.582222, 57.547295, 55.770355>,  <57.577641, 57.360790, 55.921337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.582222, 57.547295, 55.770355>,  <57.589855, 57.858135, 55.518719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.582222, 57.547295, 55.770355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996448, -0.066396, -0.051791,
		0.082016, 0.625867, 0.775606,
		-0.019083, -0.777099, 0.629089,
		57.576496, 57.314163, 55.959084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.149578, 58.114597, 55.786877>,  <57.589855, 57.858135, 55.518719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.149578, 58.114597, 55.786877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.079338, 57.731686, 55.878777>,  <58.037193, 57.501938, 55.933918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.079338, 57.731686, 55.878777>,  <58.149578, 58.114597, 55.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.079338, 57.731686, 55.878777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961916, -0.216503, -0.166866,
		0.209478, 0.191697, 0.958838,
		-0.175604, -0.957277, 0.229750,
		58.026657, 57.444504, 55.947701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.647507, 57.734821, 56.211266>,  <58.149578, 58.114597, 55.786877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.647507, 57.734821, 56.211266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.526093, 57.415710, 56.002876>,  <58.453243, 57.224243, 55.877842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.526093, 57.415710, 56.002876>,  <58.647507, 57.734821, 56.211266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.526093, 57.415710, 56.002876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951373, -0.223625, -0.211854,
		0.052509, -0.559947, 0.826863,
		-0.303534, -0.797779, -0.520976,
		58.435032, 57.176376, 55.846584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.029591, 57.258198, 56.487301>,  <58.647507, 57.734821, 56.211266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.029591, 57.258198, 56.487301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.928680, 57.179581, 56.108307>,  <58.868134, 57.132408, 55.880913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.928680, 57.179581, 56.108307>,  <59.029591, 57.258198, 56.487301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.928680, 57.179581, 56.108307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955278, -0.206691, -0.211479,
		-0.154271, -0.958461, 0.239900,
		-0.252280, -0.196546, -0.947483,
		58.852997, 57.120617, 55.824062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.411560, 56.724277, 56.210617>,  <59.029591, 57.258198, 56.487301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.411560, 56.724277, 56.210617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.296661, 56.951084, 55.901817>,  <59.227722, 57.087170, 55.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.296661, 56.951084, 55.901817>,  <59.411560, 56.724277, 56.210617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.296661, 56.951084, 55.901817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931905, -0.020896, -0.362099,
		-0.221448, -0.823440, -0.522405,
		-0.287251, 0.567018, -0.771996,
		59.210487, 57.121189, 55.670219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.255257, 56.459667, 56.900452>,  <59.411560, 56.724277, 56.210617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.255257, 56.459667, 56.900452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.381096, 56.155472, 57.127670>,  <59.456600, 55.972954, 57.264000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.381096, 56.155472, 57.127670>,  <59.255257, 56.459667, 56.900452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.381096, 56.155472, 57.127670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813565, -0.092271, -0.574107,
		0.489018, 0.642758, 0.589681,
		0.314601, -0.760492, 0.568048,
		59.475475, 55.927322, 57.298084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.015648, 56.546272, 56.941978>,  <59.255257, 56.459667, 56.900452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.015648, 56.546272, 56.941978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.891861, 56.171787, 57.008583>,  <59.817589, 55.947094, 57.048546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.891861, 56.171787, 57.008583>,  <60.015648, 56.546272, 56.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.891861, 56.171787, 57.008583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761080, -0.348846, -0.546867,
		0.570074, -0.042508, 0.820493,
		-0.309471, -0.936216, 0.166516,
		59.799019, 55.890923, 57.058537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.623352, 56.281136, 57.080154>,  <60.015648, 56.546272, 56.941978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.623352, 56.281136, 57.080154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.380745, 56.016380, 56.903954>,  <60.235180, 55.857529, 56.798233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.380745, 56.016380, 56.903954>,  <60.623352, 56.281136, 57.080154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.380745, 56.016380, 56.903954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716951, -0.215813, -0.662877,
		0.343682, -0.717867, 0.605434,
		-0.606518, -0.661885, -0.440504,
		60.198788, 55.817814, 56.771801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.880371, 55.521008, 57.057236>,  <60.623352, 56.281136, 57.080154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.880371, 55.521008, 57.057236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.652893, 55.651173, 56.755058>,  <60.516407, 55.729271, 56.573753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.652893, 55.651173, 56.755058>,  <60.880371, 55.521008, 57.057236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.652893, 55.651173, 56.755058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789881, -0.040216, -0.611941,
		-0.229517, -0.944715, -0.234170,
		-0.568692, 0.325417, -0.755442,
		60.482285, 55.748798, 56.528427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.436306, 56.083920, 57.102619>,  <60.880371, 55.521008, 57.057236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.436306, 56.083920, 57.102619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.571487, 56.077404, 57.479027>,  <61.652596, 56.073494, 57.704872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.571487, 56.077404, 57.479027>,  <61.436306, 56.083920, 57.102619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.571487, 56.077404, 57.479027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939727, 0.061038, -0.336432,
		-0.051958, 0.998003, 0.035934,
		0.337954, -0.016288, 0.941022,
		61.672874, 56.072517, 57.761333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.876720, 56.746819, 57.109177>,  <61.436306, 56.083920, 57.102619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.876720, 56.746819, 57.109177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.967621, 56.417503, 57.317238>,  <62.022160, 56.219913, 57.442074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.967621, 56.417503, 57.317238>,  <61.876720, 56.746819, 57.109177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.967621, 56.417503, 57.317238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756800, -0.186841, -0.626374,
		0.612871, 0.535992, 0.580605,
		0.227250, -0.823288, 0.520149,
		62.035797, 56.170517, 57.473282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.639214, 56.623302, 57.309277>,  <61.876720, 56.746819, 57.109177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.639214, 56.623302, 57.309277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.446594, 56.274429, 57.274857>,  <62.331024, 56.065105, 57.254204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.446594, 56.274429, 57.274857>,  <62.639214, 56.623302, 57.309277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.446594, 56.274429, 57.274857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764755, -0.370209, -0.527348,
		0.428089, -0.319748, 0.845281,
		-0.481550, -0.872185, -0.086046,
		62.302128, 56.012775, 57.249043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.747196, 56.324245, 58.017448>,  <62.639214, 56.623302, 57.309277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.747196, 56.324245, 58.017448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.981361, 56.065514, 58.212959>,  <63.121861, 55.910275, 58.330265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.981361, 56.065514, 58.212959>,  <62.747196, 56.324245, 58.017448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.981361, 56.065514, 58.212959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631458, -0.014338, -0.775278,
		0.508477, 0.762504, 0.400049,
		0.585416, -0.646825, 0.488779,
		63.156986, 55.871468, 58.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.491745, 56.583027, 57.866402>,  <62.747196, 56.324245, 58.017448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.491745, 56.583027, 57.866402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.455917, 56.196236, 57.961845>,  <63.434422, 55.964161, 58.019112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.455917, 56.196236, 57.961845>,  <63.491745, 56.583027, 57.866402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.455917, 56.196236, 57.961845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647468, -0.238573, -0.723787,
		0.756810, 0.089659, 0.647456,
		-0.089571, -0.966977, 0.238606,
		63.429047, 55.906143, 58.033428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.491138, 56.480179, 58.599129>,  <63.491745, 56.583027, 57.866402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.491138, 56.480179, 58.599129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.390419, 56.439819, 58.984131>,  <63.329987, 56.415604, 59.215134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.390419, 56.439819, 58.984131>,  <63.491138, 56.480179, 58.599129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.390419, 56.439819, 58.984131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965779, -0.090103, 0.243213,
		0.062184, 0.990808, 0.120139,
		-0.251802, -0.100903, 0.962504,
		63.314877, 56.409550, 59.272881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.735996, 56.971241, 59.112038>,  <63.491138, 56.480179, 58.599129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.735996, 56.971241, 59.112038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.730217, 56.595428, 59.248901>,  <63.726749, 56.369942, 59.331020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.730217, 56.595428, 59.248901>,  <63.735996, 56.971241, 59.112038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.730217, 56.595428, 59.248901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997513, 0.010063, 0.069762,
		-0.068987, 0.342313, 0.937050,
		-0.014451, -0.939532, 0.342156,
		63.725883, 56.313568, 59.351547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.150841, 56.937798, 59.768921>,  <63.735996, 56.971241, 59.112038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.150841, 56.937798, 59.768921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.142357, 56.622200, 59.523308>,  <64.137268, 56.432842, 59.375942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.142357, 56.622200, 59.523308>,  <64.150841, 56.937798, 59.768921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.142357, 56.622200, 59.523308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991164, 0.063841, -0.116271,
		0.130938, -0.611070, 0.780672,
		-0.021210, -0.788998, -0.614029,
		64.135994, 56.385502, 59.339100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.688316, 56.421886, 59.986145>,  <64.150841, 56.937798, 59.768921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.688316, 56.421886, 59.986145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.732109, 56.367397, 59.592300>,  <64.758385, 56.334705, 59.355995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.732109, 56.367397, 59.592300>,  <64.688316, 56.421886, 59.986145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.732109, 56.367397, 59.592300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993965, 0.021779, 0.107513,
		0.006798, -0.990439, 0.137784,
		0.109486, -0.136221, -0.984610,
		64.764954, 56.326530, 59.296917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.306488, 56.052551, 59.908230>,  <64.688316, 56.421886, 59.986145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.306488, 56.052551, 59.908230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.300903, 56.230820, 59.550194>,  <65.297554, 56.337780, 59.335373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.300903, 56.230820, 59.550194>,  <65.306488, 56.052551, 59.908230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.300903, 56.230820, 59.550194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998884, -0.034178, -0.032603,
		-0.045123, -0.894544, -0.444696,
		-0.013966, 0.445670, -0.895088,
		65.296715, 56.364521, 59.281666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.543716, 55.641861, 59.301373>,  <65.306488, 56.052551, 59.908230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.543716, 55.641861, 59.301373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.604118, 56.032112, 59.237694>,  <65.640358, 56.266262, 59.199486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.604118, 56.032112, 59.237694>,  <65.543716, 55.641861, 59.301373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.604118, 56.032112, 59.237694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918058, -0.198133, -0.343384,
		-0.366557, -0.094295, -0.925605,
		0.151014, 0.975629, -0.159195,
		65.649422, 56.324802, 59.189934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.749550, 55.695110, 58.603992>,  <65.543716, 55.641861, 59.301373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.749550, 55.695110, 58.603992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.898857, 56.017838, 58.787170>,  <65.988441, 56.211475, 58.897076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.898857, 56.017838, 58.787170>,  <65.749550, 55.695110, 58.603992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.898857, 56.017838, 58.787170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911920, -0.228385, -0.340943,
		-0.170492, 0.544872, -0.821003,
		0.373275, 0.806818, 0.457942,
		66.010841, 56.259884, 58.924553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.158287, 56.208576, 58.195488>,  <65.749550, 55.695110, 58.603992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.158287, 56.208576, 58.195488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.333191, 56.276207, 58.548805>,  <66.438133, 56.316788, 58.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.333191, 56.276207, 58.548805>,  <66.158287, 56.208576, 58.195488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.333191, 56.276207, 58.548805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896010, 0.002440, -0.444027,
		-0.077231, 0.985599, -0.150429,
		0.437266, 0.169079, 0.883295,
		66.464371, 56.326931, 58.813793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.596138, 56.734432, 57.928223>,  <66.158287, 56.208576, 58.195488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.596138, 56.734432, 57.928223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.710556, 56.609085, 58.290436>,  <66.779205, 56.533875, 58.507763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.710556, 56.609085, 58.290436>,  <66.596138, 56.734432, 57.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.710556, 56.609085, 58.290436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958216, 0.095516, -0.269627,
		-0.001999, 0.944816, 0.327597,
		0.286039, -0.313370, 0.905528,
		66.796364, 56.515076, 58.562096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.056412, 57.201397, 58.181789>,  <66.596138, 56.734432, 57.928223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.056412, 57.201397, 58.181789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.154060, 56.888042, 58.410423>,  <67.212654, 56.700027, 58.547604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.154060, 56.888042, 58.410423>,  <67.056412, 57.201397, 58.181789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.154060, 56.888042, 58.410423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966766, 0.242757, -0.080197,
		-0.075930, 0.572163, 0.816618,
		0.244125, -0.783389, 0.571580,
		67.227295, 56.653027, 58.581898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.381744, 57.826439, 58.443306>,  <67.056412, 57.201397, 58.181789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.381744, 57.826439, 58.443306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.088982, 58.090462, 58.510994>,  <66.913322, 58.248875, 58.551605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.088982, 58.090462, 58.510994>,  <67.381744, 57.826439, 58.443306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.088982, 58.090462, 58.510994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609993, -0.524015, -0.594405,
		-0.303668, -0.538272, 0.786161,
		-0.731912, 0.660055, 0.169216,
		66.869408, 58.288479, 58.561760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.943848, 58.172047, 58.642998>,  <67.381744, 57.826439, 58.443306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.943848, 58.172047, 58.642998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.038544, 57.827370, 58.822525>,  <68.095360, 57.620564, 58.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.038544, 57.827370, 58.822525>,  <67.943848, 58.172047, 58.642998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.038544, 57.827370, 58.822525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572104, -0.249733, -0.781237,
		0.785270, 0.441727, 0.433853,
		0.236746, -0.861691, 0.448821,
		68.109566, 57.568863, 58.957172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.620338, 57.946953, 58.433498>,  <67.943848, 58.172047, 58.642998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.620338, 57.946953, 58.433498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.545731, 57.575226, 58.560989>,  <68.500969, 57.352192, 58.637486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.545731, 57.575226, 58.560989>,  <68.620338, 57.946953, 58.433498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.545731, 57.575226, 58.560989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741139, -0.346058, -0.575289,
		0.644922, 0.128919, 0.753297,
		-0.186518, -0.929314, 0.318727,
		68.489777, 57.296432, 58.656609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.235428, 57.604988, 58.591682>,  <68.620338, 57.946953, 58.433498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.235428, 57.604988, 58.591682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.958458, 57.331760, 58.498749>,  <68.792274, 57.167824, 58.442989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.958458, 57.331760, 58.498749>,  <69.235428, 57.604988, 58.591682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.958458, 57.331760, 58.498749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660942, -0.471373, -0.583920,
		0.289338, -0.557878, 0.777853,
		-0.692416, -0.683066, -0.232339,
		68.750732, 57.126842, 58.429047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.535889, 56.873726, 58.795158>,  <69.235428, 57.604988, 58.591682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.535889, 56.873726, 58.795158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.273483, 56.920002, 58.496826>,  <69.116043, 56.947769, 58.317829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.273483, 56.920002, 58.496826>,  <69.535889, 56.873726, 58.795158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.273483, 56.920002, 58.496826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691763, -0.303029, -0.655467,
		-0.301782, -0.945943, 0.118826,
		-0.656042, 0.115608, -0.745817,
		69.076675, 56.954708, 58.273079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.335121, 57.152927, 59.411346>,  <69.535889, 56.873726, 58.795158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.335121, 57.152927, 59.411346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.086899, 57.377831, 59.629990>,  <68.937965, 57.512772, 59.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.086899, 57.377831, 59.629990>,  <69.335121, 57.152927, 59.411346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.086899, 57.377831, 59.629990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462793, -0.825315, 0.323539,
		0.633038, -0.052196, 0.772359,
		-0.620552, 0.562255, 0.546612,
		68.900734, 57.546509, 59.793972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.948952, 56.594604, 59.650009>,  <69.335121, 57.152927, 59.411346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.948952, 56.594604, 59.650009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.750313, 56.898361, 59.818153>,  <68.631126, 57.080616, 59.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.750313, 56.898361, 59.818153>,  <68.948952, 56.594604, 59.650009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.750313, 56.898361, 59.818153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496984, -0.645827, 0.579581,
		0.711614, 0.078907, 0.698126,
		-0.496602, 0.759395, 0.420364,
		68.601334, 57.126179, 59.944263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.013306, 56.528175, 60.364265>,  <68.948952, 56.594604, 59.650009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.013306, 56.528175, 60.364265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.669518, 56.699547, 60.252716>,  <68.463249, 56.802368, 60.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.669518, 56.699547, 60.252716>,  <69.013306, 56.528175, 60.364265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.669518, 56.699547, 60.252716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510790, -0.741548, 0.434972,
		-0.020444, 0.516289, 0.856170,
		-0.859463, 0.428430, -0.278875,
		68.411682, 56.828075, 60.169052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.620422, 56.836498, 60.776554>,  <69.013306, 56.528175, 60.364265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.620422, 56.836498, 60.776554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.910912, 56.810917, 60.502762>,  <70.085205, 56.795570, 60.338486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.910912, 56.810917, 60.502762>,  <69.620422, 56.836498, 60.776554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.910912, 56.810917, 60.502762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561037, 0.630534, 0.536344,
		0.397285, -0.773522, 0.493788,
		0.726224, -0.063952, -0.684476,
		70.128777, 56.791733, 60.297421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.295372, 56.559696, 61.098961>,  <69.620422, 56.836498, 60.776554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.295372, 56.559696, 61.098961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.322891, 56.800503, 60.780754>,  <70.339401, 56.944984, 60.589828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.322891, 56.800503, 60.780754>,  <70.295372, 56.559696, 61.098961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.322891, 56.800503, 60.780754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754643, 0.490152, 0.436194,
		0.652518, -0.630343, -0.420580,
		0.068803, 0.602012, -0.795517,
		70.343529, 56.981106, 60.542099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.893883, 56.878654, 61.167671>,  <70.295372, 56.559696, 61.098961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.893883, 56.878654, 61.167671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.774529, 57.077152, 60.841553>,  <70.702919, 57.196251, 60.645882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.774529, 57.077152, 60.841553>,  <70.893883, 56.878654, 61.167671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.774529, 57.077152, 60.841553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705551, 0.689957, 0.161733,
		0.642780, -0.526976, -0.555996,
		-0.298384, 0.496242, -0.815298,
		70.685013, 57.226025, 60.596962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.454834, 57.231812, 60.885818>,  <70.893883, 56.878654, 61.167671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.454834, 57.231812, 60.885818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.150101, 57.428558, 60.717216>,  <70.967262, 57.546608, 60.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.150101, 57.428558, 60.717216>,  <71.454834, 57.231812, 60.885818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.150101, 57.428558, 60.717216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535462, 0.844378, 0.017525,
		0.364527, -0.212347, -0.906658,
		-0.761840, 0.491869, -0.421502,
		70.921547, 57.576118, 60.590767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.714417, 57.739452, 60.449104>,  <71.454834, 57.231812, 60.885818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.714417, 57.739452, 60.449104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.354477, 57.824951, 60.601196>,  <71.138512, 57.876251, 60.692451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.354477, 57.824951, 60.601196>,  <71.714417, 57.739452, 60.449104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.354477, 57.824951, 60.601196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310786, 0.925835, 0.215038,
		-0.306064, 0.311672, -0.899547,
		-0.899854, 0.213751, 0.380228,
		71.084518, 57.889076, 60.715263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.940498, 58.359253, 60.487068>,  <71.714417, 57.739452, 60.449104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.940498, 58.359253, 60.487068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.118187, 58.009670, 60.408203>,  <72.224800, 57.799923, 60.360882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.118187, 58.009670, 60.408203>,  <71.940498, 58.359253, 60.487068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.118187, 58.009670, 60.408203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566871, -0.444597, 0.693534,
		-0.693776, -0.196313, -0.692918,
		0.444220, -0.873953, -0.197167,
		72.251450, 57.747486, 60.349052>
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
