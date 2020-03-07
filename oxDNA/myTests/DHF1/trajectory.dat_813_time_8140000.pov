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
	<2.863049, 1.977724, 1.910276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.957718, 2.365356, 1.938181>,  <3.014519, 2.597936, 1.954924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.957718, 2.365356, 1.938181>,  <2.863049, 1.977724, 1.910276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.957718, 2.365356, 1.938181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834023, 0.165805, 0.526226,
		0.498389, -0.182726, 0.847478,
		0.236671, 0.969082, 0.069762,
		3.028719, 2.656081, 1.959110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.022597, 2.212667, 2.585860>,  <2.863049, 1.977724, 1.910276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.022597, 2.212667, 2.585860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.856693, 2.501167, 2.363951>,  <2.757151, 2.674267, 2.230805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.856693, 2.501167, 2.363951>,  <3.022597, 2.212667, 2.585860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.856693, 2.501167, 2.363951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836825, -0.062905, 0.543844,
		0.357349, 0.689813, 0.629650,
		-0.414759, 0.721249, -0.554774,
		2.732265, 2.717542, 2.197518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.782386, 2.847555, 2.934568>,  <3.022597, 2.212667, 2.585860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.782386, 2.847555, 2.934568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.532795, 2.808228, 2.624475>,  <2.383040, 2.784631, 2.438420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.532795, 2.808228, 2.624475>,  <2.782386, 2.847555, 2.934568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.532795, 2.808228, 2.624475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778087, -0.013662, 0.628008,
		-0.072337, 0.995061, -0.067976,
		-0.623978, -0.098320, -0.775232,
		2.345602, 2.778732, 2.391906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.169316, 3.352164, 3.031859>,  <2.782386, 2.847555, 2.934568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.169316, 3.352164, 3.031859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.063145, 3.037651, 2.808680>,  <1.999442, 2.848943, 2.674772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.063145, 3.037651, 2.808680>,  <2.169316, 3.352164, 3.031859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.063145, 3.037651, 2.808680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925236, 0.045018, 0.376712,
		-0.271084, 0.616225, -0.739446,
		-0.265428, -0.786283, -0.557949,
		1.983516, 2.801766, 2.641295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.597995, 3.528239, 2.534408>,  <2.169316, 3.352164, 3.031859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.597995, 3.528239, 2.534408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.584553, 3.136559, 2.614443>,  <1.576488, 2.901550, 2.662464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.584553, 3.136559, 2.614443>,  <1.597995, 3.528239, 2.534408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.584553, 3.136559, 2.614443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935886, 0.101081, 0.337491,
		-0.350697, -0.175918, -0.919818,
		-0.033605, -0.979202, 0.200087,
		1.574471, 2.842798, 2.674469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.027223, 3.252221, 2.199019>,  <1.597995, 3.528239, 2.534408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.027223, 3.252221, 2.199019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.118370, 2.993141, 2.489828>,  <1.173058, 2.837693, 2.664314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.118370, 2.993141, 2.489828>,  <1.027223, 3.252221, 2.199019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.118370, 2.993141, 2.489828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956189, -0.007914, 0.292643,
		-0.183791, -0.761855, -0.621127,
		0.227867, -0.647700, 0.727023,
		1.186730, 2.798831, 2.707935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.547868, 2.775819, 2.077349>,  <1.027223, 3.252221, 2.199019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.547868, 2.775819, 2.077349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.679638, 2.702827, 2.447901>,  <0.758700, 2.659032, 2.670232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.679638, 2.702827, 2.447901>,  <0.547868, 2.775819, 2.077349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.679638, 2.702827, 2.447901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919417, -0.285235, 0.270763,
		0.214827, -0.940926, -0.261738,
		0.329425, -0.182479, 0.926380,
		0.778466, 2.648084, 2.725815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.224514, 2.187836, 2.250618>,  <0.547868, 2.775819, 2.077349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.224514, 2.187836, 2.250618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.336475, 2.349068, 2.599142>,  <0.403652, 2.445807, 2.808257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.336475, 2.349068, 2.599142>,  <0.224514, 2.187836, 2.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.336475, 2.349068, 2.599142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868560, -0.280307, 0.408694,
		0.408970, -0.871181, 0.271639,
		0.279904, 0.403078, 0.871311,
		0.420447, 2.469991, 2.860535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.824936, 3.224656, 2.743756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.709877, 3.065056, 3.092022>,  <-0.640841, 2.969296, 3.300982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.709877, 3.065056, 3.092022>,  <-0.824936, 3.224656, 2.743756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.709877, 3.065056, 3.092022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842731, -0.326480, -0.428036,
		0.455041, 0.856861, 0.242338,
		0.287648, -0.398999, 0.870665,
		-0.623583, 2.945356, 3.353221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.153965, 3.527572, 2.975449>,  <-0.824936, 3.224656, 2.743756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.153965, 3.527572, 2.975449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.200882, 3.163879, 3.135220>,  <-0.229032, 2.945664, 3.231082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.200882, 3.163879, 3.135220>,  <-0.153965, 3.527572, 2.975449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.200882, 3.163879, 3.135220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962751, -0.202774, -0.178867,
		0.243625, 0.363568, 0.899147,
		-0.117293, -0.909231, 0.399426,
		-0.236070, 2.891110, 3.255047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.314436, 3.418989, 3.465353>,  <-0.153965, 3.527572, 2.975449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.314436, 3.418989, 3.465353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.249451, 3.035011, 3.374039>,  <0.210459, 2.804625, 3.319250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.249451, 3.035011, 3.374039>,  <0.314436, 3.418989, 3.465353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.249451, 3.035011, 3.374039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979964, -0.129959, -0.150931,
		0.115218, -0.248231, 0.961824,
		-0.162464, -0.959944, -0.228284,
		0.200712, 2.747028, 3.305553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.836681, 3.179313, 3.793582>,  <0.314436, 3.418989, 3.465353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.836681, 3.179313, 3.793582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.717422, 2.900925, 3.532284>,  <0.645867, 2.733891, 3.375504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.717422, 2.900925, 3.532284>,  <0.836681, 3.179313, 3.793582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.717422, 2.900925, 3.532284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951170, -0.159339, -0.264360,
		0.079900, -0.700167, 0.709494,
		-0.298147, -0.695972, -0.653247,
		0.627979, 2.692133, 3.336310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.296826, 2.599751, 3.904492>,  <0.836681, 3.179313, 3.793582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.296826, 2.599751, 3.904492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.122414, 2.588081, 3.544708>,  <1.017766, 2.581079, 3.328838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.122414, 2.588081, 3.544708>,  <1.296826, 2.599751, 3.904492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.122414, 2.588081, 3.544708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877923, -0.233478, -0.418018,
		-0.197808, -0.971925, 0.127417,
		-0.436031, -0.029175, -0.899459,
		0.991604, 2.579329, 3.274871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.468541, 1.906565, 3.623622>,  <1.296826, 2.599751, 3.904492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.468541, 1.906565, 3.623622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.375076, 2.175232, 3.342405>,  <1.318998, 2.336432, 3.173675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.375076, 2.175232, 3.342405>,  <1.468541, 1.906565, 3.623622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.375076, 2.175232, 3.342405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808365, -0.267614, -0.524337,
		-0.540323, -0.690831, -0.480421,
		-0.233661, 0.671666, -0.703041,
		1.304978, 2.376732, 3.131493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.633819, 1.563158, 2.998530>,  <1.468541, 1.906565, 3.623622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.633819, 1.563158, 2.998530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.608002, 1.951149, 2.904739>,  <1.592511, 2.183944, 2.848465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.608002, 1.951149, 2.904739>,  <1.633819, 1.563158, 2.998530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.608002, 1.951149, 2.904739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834386, -0.076430, -0.545856,
		-0.547389, -0.230875, -0.804402,
		-0.064544, 0.969977, -0.234476,
		1.588639, 2.242142, 2.834397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.732707, 1.524466, 2.283358>,  <1.633819, 1.563158, 2.998530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.732707, 1.524466, 2.283358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.820488, 1.890007, 2.420012>,  <1.873157, 2.109332, 2.502004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.820488, 1.890007, 2.420012>,  <1.732707, 1.524466, 2.283358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.820488, 1.890007, 2.420012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920126, -0.077447, -0.383888,
		-0.324358, 0.398591, -0.857856,
		0.219452, 0.913853, 0.341634,
		1.886324, 2.164163, 2.522502>
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
