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
	<4.026018, -0.152931, 4.318145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.825481, 0.118664, 4.103619>,  <3.705160, 0.281621, 3.974903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.825481, 0.118664, 4.103619>,  <4.026018, -0.152931, 4.318145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.825481, 0.118664, 4.103619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592002, 0.182872, 0.784915,
		0.631024, 0.711010, 0.310280,
		-0.501341, 0.678986, -0.536316,
		3.675079, 0.322360, 3.942724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.872255, 0.291914, 4.811960>,  <4.026018, -0.152931, 4.318145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.872255, 0.291914, 4.811960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.609051, 0.385281, 4.525593>,  <3.451128, 0.441301, 4.353773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.609051, 0.385281, 4.525593>,  <3.872255, 0.291914, 4.811960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.609051, 0.385281, 4.525593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682783, 0.215971, 0.697971,
		0.317536, 0.948089, 0.017262,
		-0.658011, 0.233417, -0.715918,
		3.411648, 0.455306, 4.310817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.515359, 0.978608, 4.892867>,  <3.872255, 0.291914, 4.811960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.515359, 0.978608, 4.892867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.281429, 0.752144, 4.660507>,  <3.141071, 0.616265, 4.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.281429, 0.752144, 4.660507>,  <3.515359, 0.978608, 4.892867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.281429, 0.752144, 4.660507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772223, 0.169382, 0.612357,
		-0.248298, 0.806705, -0.536260,
		-0.584825, -0.566160, -0.580898,
		3.105982, 0.582296, 4.486238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.893633, 1.302930, 4.792340>,  <3.515359, 0.978608, 4.892867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.893633, 1.302930, 4.792340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811253, 0.915707, 4.735142>,  <2.761824, 0.683373, 4.700823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.811253, 0.915707, 4.735142>,  <2.893633, 1.302930, 4.792340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.811253, 0.915707, 4.735142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896883, 0.128288, 0.423253,
		-0.391389, 0.215419, -0.894656,
		-0.205951, -0.968058, -0.142995,
		2.749467, 0.625289, 4.692243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.241884, 1.278781, 4.401033>,  <2.893633, 1.302930, 4.792340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.241884, 1.278781, 4.401033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.279392, 0.914604, 4.562180>,  <2.301898, 0.696098, 4.658867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.279392, 0.914604, 4.562180>,  <2.241884, 1.278781, 4.401033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.279392, 0.914604, 4.562180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953650, 0.034076, 0.298982,
		-0.285934, -0.412229, -0.865048,
		0.093772, -0.910442, 0.402866,
		2.307524, 0.641471, 4.683039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.671173, 0.879855, 4.167941>,  <2.241884, 1.278781, 4.401033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.671173, 0.879855, 4.167941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.798195, 0.712090, 4.508118>,  <1.874408, 0.611430, 4.712224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.798195, 0.712090, 4.508118>,  <1.671173, 0.879855, 4.167941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.798195, 0.712090, 4.508118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940422, -0.024371, 0.339135,
		-0.121512, -0.907468, -0.402166,
		0.317556, -0.419414, 0.850441,
		1.893462, 0.586266, 4.763250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.011344, 0.514752, 4.368951>,  <1.671173, 0.879855, 4.167941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.011344, 0.514752, 4.368951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.239998, 0.507889, 4.697083>,  <1.377190, 0.503771, 4.893961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.239998, 0.507889, 4.697083>,  <1.011344, 0.514752, 4.368951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.239998, 0.507889, 4.697083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818046, -0.089301, 0.568177,
		0.063507, -0.995857, -0.065085,
		0.571635, -0.017159, 0.820328,
		1.411488, 0.502741, 4.943181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.679595, 0.045155, 4.850607>,  <1.011344, 0.514752, 4.368951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.679595, 0.045155, 4.850607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.919411, 0.268322, 5.080139>,  <1.063300, 0.402222, 5.217858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.919411, 0.268322, 5.080139>,  <0.679595, 0.045155, 4.850607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.919411, 0.268322, 5.080139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580826, -0.189969, 0.791551,
		0.550630, -0.807861, 0.210159,
		0.599540, 0.557917, 0.573830,
		1.099273, 0.435697, 5.252288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.034750, 0.705865, 0.057870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.119789, 0.803345, 0.436375>,  <0.170813, 0.861832, 0.663478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.119789, 0.803345, 0.436375>,  <0.034750, 0.705865, 0.057870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.119789, 0.803345, 0.436375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974791, -0.119998, -0.188104,
		0.067709, 0.962399, -0.263067,
		0.212599, 0.243699, 0.946262,
		0.183569, 0.876454, 0.720253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.533544, 1.360343, 0.139493>,  <0.034750, 0.705865, 0.057870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.533544, 1.360343, 0.139493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.553209, 1.113678, 0.453770>,  <0.565008, 0.965679, 0.642336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.553209, 1.113678, 0.453770>,  <0.533544, 1.360343, 0.139493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.553209, 1.113678, 0.453770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998445, 0.009650, -0.054901,
		0.026274, 0.787169, 0.616178,
		0.049163, -0.616662, 0.785691,
		0.567958, 0.928679, 0.689477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.020838, 1.659410, 0.650649>,  <0.533544, 1.360343, 0.139493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.020838, 1.659410, 0.650649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002748, 1.260071, 0.664841>,  <0.991895, 1.020468, 0.673356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002748, 1.260071, 0.664841>,  <1.020838, 1.659410, 0.650649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.002748, 1.260071, 0.664841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994600, -0.048317, -0.091846,
		0.093408, 0.031134, 0.995141,
		-0.045223, -0.998347, 0.035479,
		0.989182, 0.960567, 0.675484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.645202, 1.330583, 0.983442>,  <1.020838, 1.659410, 0.650649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.645202, 1.330583, 0.983442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.530540, 1.023033, 0.754826>,  <1.461744, 0.838503, 0.617656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.530540, 1.023033, 0.754826>,  <1.645202, 1.330583, 0.983442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.530540, 1.023033, 0.754826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951888, -0.296049, -0.079150,
		-0.108348, -0.566732, 0.816747,
		-0.286654, -0.768876, -0.571541,
		1.444544, 0.792370, 0.583363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.050129, 0.694566, 1.099279>,  <1.645202, 1.330583, 0.983442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.050129, 0.694566, 1.099279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.875874, 0.630669, 0.744946>,  <1.771320, 0.592331, 0.532346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.875874, 0.630669, 0.744946>,  <2.050129, 0.694566, 1.099279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.875874, 0.630669, 0.744946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850312, -0.395867, -0.346784,
		-0.295276, -0.904307, 0.308286,
		-0.435639, -0.159743, -0.885833,
		1.745182, 0.582746, 0.479196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.292258, 0.080723, 0.876713>,  <2.050129, 0.694566, 1.099279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.292258, 0.080723, 0.876713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.169039, 0.217056, 0.521423>,  <2.095107, 0.298856, 0.308250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.169039, 0.217056, 0.521423>,  <2.292258, 0.080723, 0.876713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.169039, 0.217056, 0.521423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896539, -0.208378, -0.390891,
		-0.318314, -0.916740, -0.241380,
		-0.308047, 0.340833, -0.888223,
		2.076624, 0.319306, 0.254956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444437, -0.505639, 0.284329>,  <2.292258, 0.080723, 0.876713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444437, -0.505639, 0.284329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.392111, -0.155006, 0.099075>,  <2.360715, 0.055373, -0.012077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.392111, -0.155006, 0.099075>,  <2.444437, -0.505639, 0.284329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.392111, -0.155006, 0.099075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811041, -0.174042, -0.558499,
		-0.570174, -0.448681, -0.688176,
		-0.130816, 0.876581, -0.463133,
		2.352866, 0.107968, -0.039865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.563336, -0.649247, -0.425124>,  <2.444437, -0.505639, 0.284329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.563336, -0.649247, -0.425124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.622625, -0.257713, -0.368675>,  <2.658199, -0.022793, -0.334806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.622625, -0.257713, -0.368675>,  <2.563336, -0.649247, -0.425124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.622625, -0.257713, -0.368675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755791, -0.020086, -0.654505,
		-0.637816, 0.203673, -0.742770,
		0.148224, 0.978833, 0.141123,
		2.667093, 0.035937, -0.326338>
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
