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
	<4.910713, 3.193694, 1.494094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.636318, 3.073616, 1.759214>,  <4.471681, 3.001569, 1.918286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.636318, 3.073616, 1.759214>,  <4.910713, 3.193694, 1.494094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.636318, 3.073616, 1.759214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717838, 0.130414, -0.683886,
		0.118852, -0.944924, -0.304946,
		-0.685990, -0.300183, 0.662803,
		4.430522, 2.983557, 1.958054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.431197, 2.511233, 1.282521>,  <4.910713, 3.193694, 1.494094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.431197, 2.511233, 1.282521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259239, 2.798271, 1.501701>,  <4.156065, 2.970494, 1.633209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.259239, 2.798271, 1.501701>,  <4.431197, 2.511233, 1.282521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.259239, 2.798271, 1.501701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645987, 0.179540, -0.741934,
		-0.630787, -0.672921, 0.386374,
		-0.429894, 0.717595, 0.547950,
		4.130271, 3.013550, 1.666086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.632404, 2.324389, 1.394912>,  <4.431197, 2.511233, 1.282521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.632404, 2.324389, 1.394912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756134, 2.704742, 1.399581>,  <3.830372, 2.932955, 1.402383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.756134, 2.704742, 1.399581>,  <3.632404, 2.324389, 1.394912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.756134, 2.704742, 1.399581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695693, 0.234646, -0.678935,
		-0.648327, 0.201891, 0.734106,
		0.309326, 0.950884, 0.011673,
		3.848932, 2.990008, 1.403083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.047908, 2.873632, 1.516451>,  <3.632404, 2.324389, 1.394912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.047908, 2.873632, 1.516451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704514, 3.043983, 1.630734>,  <2.498477, 3.146194, 1.699304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.704514, 3.043983, 1.630734>,  <3.047908, 2.873632, 1.516451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.704514, 3.043983, 1.630734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266588, 0.846521, -0.460795,
		-0.438100, -0.319420, -0.840261,
		-0.858487, 0.425878, 0.285707,
		2.446968, 3.171747, 1.716446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.883601, 3.302242, 1.010728>,  <3.047908, 2.873632, 1.516451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.883601, 3.302242, 1.010728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.688004, 3.456001, 1.323936>,  <2.570645, 3.548257, 1.511862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.688004, 3.456001, 1.323936>,  <2.883601, 3.302242, 1.010728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.688004, 3.456001, 1.323936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151268, 0.921433, -0.357882,
		-0.859071, -0.056556, -0.508722,
		-0.488994, 0.384400, 0.783021,
		2.541306, 3.571321, 1.558843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.523397, 4.002621, 0.781294>,  <2.883601, 3.302242, 1.010728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.523397, 4.002621, 0.781294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536430, 4.072693, 1.174893>,  <2.544250, 4.114736, 1.411053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.536430, 4.072693, 1.174893>,  <2.523397, 4.002621, 0.781294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.536430, 4.072693, 1.174893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029878, 0.983909, -0.176152,
		-0.999022, 0.035139, 0.026824,
		0.032582, 0.175179, 0.983997,
		2.546205, 4.125247, 1.470093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.040093, 4.530260, 0.968831>,  <2.523397, 4.002621, 0.781294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.040093, 4.530260, 0.968831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.314358, 4.532089, 1.259994>,  <2.478917, 4.533187, 1.434691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.314358, 4.532089, 1.259994>,  <2.040093, 4.530260, 0.968831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.314358, 4.532089, 1.259994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050799, 0.997242, -0.054117,
		-0.726145, 0.074082, 0.683539,
		0.685662, 0.004574, 0.727905,
		2.520056, 4.533462, 1.478365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.707771, 4.968549, 1.520236>,  <2.040093, 4.530260, 0.968831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.707771, 4.968549, 1.520236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.105434, 4.939354, 1.552042>,  <2.344032, 4.921837, 1.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.105434, 4.939354, 1.552042>,  <1.707771, 4.968549, 1.520236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.105434, 4.939354, 1.552042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089161, 0.970524, -0.223906,
		-0.060828, 0.229687, 0.971362,
		0.994158, -0.072988, 0.079514,
		2.403682, 4.917458, 1.575896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.028693, 6.200025, 0.702760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.166229, 6.107353, 1.066759>,  <3.248751, 6.051750, 1.285159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.166229, 6.107353, 1.066759>,  <3.028693, 6.200025, 0.702760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.166229, 6.107353, 1.066759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259909, -0.954706, -0.144856,
		0.902342, -0.186710, -0.388482,
		0.343840, -0.231679, 0.909999,
		3.269382, 6.037849, 1.339759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.154348, 5.391289, 0.644844>,  <3.028693, 6.200025, 0.702760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.154348, 5.391289, 0.644844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.163902, 5.474655, 1.035943>,  <3.169635, 5.524675, 1.270603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.163902, 5.474655, 1.035943>,  <3.154348, 5.391289, 0.644844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.163902, 5.474655, 1.035943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184504, -0.960308, 0.209205,
		0.982542, -0.185395, 0.015515,
		0.023886, 0.208415, 0.977749,
		3.171068, 5.537179, 1.329268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.664438, 5.064497, 1.058353>,  <3.154348, 5.391289, 0.644844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.664438, 5.064497, 1.058353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.378700, 5.156029, 1.322882>,  <3.207257, 5.210948, 1.481600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.378700, 5.156029, 1.322882>,  <3.664438, 5.064497, 1.058353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.378700, 5.156029, 1.322882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006160, -0.947046, 0.321038,
		0.699766, 0.225258, 0.677928,
		-0.714345, 0.228828, 0.661323,
		3.164397, 5.224677, 1.521279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.761182, 4.697749, 1.720187>,  <3.664438, 5.064497, 1.058353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.761182, 4.697749, 1.720187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.372482, 4.786530, 1.688086>,  <3.139262, 4.839798, 1.668826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.372482, 4.786530, 1.688086>,  <3.761182, 4.697749, 1.720187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.372482, 4.786530, 1.688086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233454, -0.953882, 0.188701,
		-0.034668, 0.202106, 0.978750,
		-0.971750, 0.221951, -0.080251,
		3.080957, 4.853115, 1.664011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.396606, 4.503832, 2.391320>,  <3.761182, 4.697749, 1.720187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.396606, 4.503832, 2.391320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114220, 4.502777, 2.108023>,  <2.944788, 4.502144, 1.938046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.114220, 4.502777, 2.108023>,  <3.396606, 4.503832, 2.391320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.114220, 4.502777, 2.108023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391841, -0.831551, 0.393681,
		-0.589976, 0.555443, 0.586013,
		-0.705967, -0.002639, -0.708240,
		2.902430, 4.501986, 1.895551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.698679, 4.261178, 2.724642>,  <3.396606, 4.503832, 2.391320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.698679, 4.261178, 2.724642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.652466, 4.211372, 2.330454>,  <2.624738, 4.181489, 2.093942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.652466, 4.211372, 2.330454>,  <2.698679, 4.261178, 2.724642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.652466, 4.211372, 2.330454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616736, -0.768720, 0.169432,
		-0.778645, 0.627349, 0.012022,
		-0.115534, -0.124513, -0.985469,
		2.617805, 4.174018, 2.034814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.053312, 4.302742, 2.623938>,  <2.698679, 4.261178, 2.724642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.053312, 4.302742, 2.623938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.208839, 4.057175, 2.349150>,  <2.302156, 3.909834, 2.184278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.208839, 4.057175, 2.349150>,  <2.053312, 4.302742, 2.623938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.208839, 4.057175, 2.349150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796197, -0.599075, 0.084730,
		-0.463563, 0.514017, -0.721731,
		0.388818, -0.613918, -0.686968,
		2.325485, 3.872999, 2.143060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.627656, 4.159621, 1.961654>,  <2.053312, 4.302742, 2.623938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.627656, 4.159621, 1.961654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.835289, 3.836594, 2.073646>,  <1.959869, 3.642777, 2.140841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.835289, 3.836594, 2.073646>,  <1.627656, 4.159621, 1.961654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835289, 3.836594, 2.073646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854574, -0.484201, 0.187758,
		-0.016061, -0.336726, -0.941466,
		0.519081, -0.807568, 0.279980,
		1.991013, 3.594323, 2.157640>
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
