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
	<24.132282, 34.950199, 34.771648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438135, 35.190643, 34.864605>,  <24.621647, 35.334908, 34.920380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438135, 35.190643, 34.864605>,  <24.132282, 34.950199, 34.771648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438135, 35.190643, 34.864605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095534, -0.250887, 0.963291,
		0.637345, -0.758766, -0.134410,
		0.764634, 0.601108, 0.232389,
		24.667526, 35.370975, 34.934322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407274, 34.488308, 35.263664>,  <24.132282, 34.950199, 34.771648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407274, 34.488308, 35.263664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504478, 34.874264, 35.303516>,  <24.562801, 35.105839, 35.327427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504478, 34.874264, 35.303516>,  <24.407274, 34.488308, 35.263664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504478, 34.874264, 35.303516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120753, -0.071817, 0.990081,
		0.962479, -0.252630, 0.099062,
		0.243010, 0.964894, 0.099628,
		24.577381, 35.163731, 35.333405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976187, 34.570564, 35.713120>,  <24.407274, 34.488308, 35.263664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976187, 34.570564, 35.713120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792841, 34.925842, 35.700344>,  <24.682833, 35.139008, 35.692677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792841, 34.925842, 35.700344>,  <24.976187, 34.570564, 35.713120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792841, 34.925842, 35.700344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019876, 0.025685, 0.999472,
		0.888542, 0.458757, 0.005881,
		-0.458364, 0.888190, -0.031941,
		24.655333, 35.192299, 35.690762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391989, 34.027615, 36.056175>,  <24.976187, 34.570564, 35.713120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391989, 34.027615, 36.056175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791702, 34.037113, 36.067928>,  <26.031530, 34.042812, 36.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791702, 34.037113, 36.067928>,  <25.391989, 34.027615, 36.056175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791702, 34.037113, 36.067928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037780, -0.620396, -0.783378,
		-0.000371, 0.783929, -0.620851,
		0.999286, 0.023746, 0.029386,
		26.091488, 34.044239, 36.076744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641882, 34.249737, 35.413601>,  <25.391989, 34.027615, 36.056175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641882, 34.249737, 35.413601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928438, 34.033978, 35.590614>,  <26.100372, 33.904522, 35.696823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928438, 34.033978, 35.590614>,  <25.641882, 34.249737, 35.413601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928438, 34.033978, 35.590614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113899, -0.535354, -0.836913,
		0.688338, 0.649962, -0.322087,
		0.716392, -0.539394, 0.442535,
		26.143356, 33.872158, 35.723373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205397, 34.374760, 34.915562>,  <25.641882, 34.249737, 35.413601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205397, 34.374760, 34.915562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239887, 34.040714, 35.132870>,  <26.260582, 33.840286, 35.263256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239887, 34.040714, 35.132870>,  <26.205397, 34.374760, 34.915562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239887, 34.040714, 35.132870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146757, -0.528710, -0.836019,
		0.985407, 0.151814, 0.076971,
		0.086225, -0.835116, 0.543275,
		26.265755, 33.790180, 35.295853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763985, 34.130138, 34.737072>,  <26.205397, 34.374760, 34.915562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763985, 34.130138, 34.737072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583858, 33.804249, 34.883186>,  <26.475782, 33.608715, 34.970856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583858, 33.804249, 34.883186>,  <26.763985, 34.130138, 34.737072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583858, 33.804249, 34.883186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248696, -0.507379, -0.825056,
		0.857535, -0.280690, 0.431100,
		-0.450316, -0.814727, 0.365289,
		26.448763, 33.559830, 34.992771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315134, 33.584316, 34.608177>,  <26.763985, 34.130138, 34.737072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315134, 33.584316, 34.608177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963074, 33.404976, 34.670551>,  <26.751837, 33.297371, 34.707977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963074, 33.404976, 34.670551>,  <27.315134, 33.584316, 34.608177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963074, 33.404976, 34.670551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154528, -0.581226, -0.798935,
		0.448835, -0.679088, 0.580850,
		-0.880152, -0.448348, 0.155937,
		26.699028, 33.270470, 34.717331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388815, 32.865013, 34.520615>,  <27.315134, 33.584316, 34.608177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388815, 32.865013, 34.520615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994507, 32.914593, 34.475189>,  <26.757923, 32.944340, 34.447933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994507, 32.914593, 34.475189>,  <27.388815, 32.865013, 34.520615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994507, 32.914593, 34.475189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004553, -0.655623, -0.755074,
		-0.168043, -0.744846, 0.645729,
		-0.985769, 0.123945, -0.113565,
		26.698776, 32.951775, 34.441120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074314, 32.186169, 34.570297>,  <27.388815, 32.865013, 34.520615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074314, 32.186169, 34.570297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821819, 32.431767, 34.380753>,  <26.670322, 32.579124, 34.267025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821819, 32.431767, 34.380753>,  <27.074314, 32.186169, 34.570297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821819, 32.431767, 34.380753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107302, -0.674232, -0.730683,
		-0.768132, -0.410386, 0.491483,
		-0.631236, 0.613998, -0.473864,
		26.632448, 32.615967, 34.238594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507446, 31.796045, 34.327198>,  <27.074314, 32.186169, 34.570297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507446, 31.796045, 34.327198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494326, 32.122578, 34.096539>,  <26.486454, 32.318497, 33.958141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494326, 32.122578, 34.096539>,  <26.507446, 31.796045, 34.327198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494326, 32.122578, 34.096539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092567, -0.576964, -0.811507,
		-0.995166, 0.026762, 0.094490,
		-0.032800, 0.816331, -0.576652,
		26.484486, 32.367477, 33.923542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970495, 31.658989, 33.868267>,  <26.507446, 31.796045, 34.327198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970495, 31.658989, 33.868267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162359, 31.957409, 33.683514>,  <26.277477, 32.136459, 33.572662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162359, 31.957409, 33.683514>,  <25.970495, 31.658989, 33.868267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162359, 31.957409, 33.683514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238551, -0.395690, -0.886861,
		-0.844406, 0.535573, -0.011825,
		0.479658, 0.746050, -0.461885,
		26.306257, 32.181225, 33.544949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611393, 31.733088, 33.322845>,  <25.970495, 31.658989, 33.868267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611393, 31.733088, 33.322845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942719, 31.918278, 33.196636>,  <26.141514, 32.029392, 33.120911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942719, 31.918278, 33.196636>,  <25.611393, 31.733088, 33.322845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942719, 31.918278, 33.196636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144119, -0.368146, -0.918531,
		-0.541414, 0.806302, -0.238216,
		0.828312, 0.462974, -0.315523,
		26.191212, 32.057171, 33.101978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446081, 31.982090, 32.545914>,  <25.611393, 31.733088, 33.322845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446081, 31.982090, 32.545914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841471, 31.961517, 32.602871>,  <26.078705, 31.949173, 32.637043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841471, 31.961517, 32.602871>,  <25.446081, 31.982090, 32.545914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841471, 31.961517, 32.602871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098818, -0.493354, -0.864197,
		0.114695, 0.868307, -0.482585,
		0.988474, -0.051431, 0.142390,
		26.138012, 31.946089, 32.645588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754831, 32.181950, 31.919622>,  <25.446081, 31.982090, 32.545914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754831, 32.181950, 31.919622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009123, 31.956406, 32.130489>,  <26.161697, 31.821077, 32.257011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009123, 31.956406, 32.130489>,  <25.754831, 32.181950, 31.919622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009123, 31.956406, 32.130489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222947, -0.519706, -0.824743,
		0.739015, 0.641844, -0.204680,
		0.635729, -0.563864, 0.527168,
		26.199842, 31.787247, 32.288639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198650, 32.003098, 31.466494>,  <25.754831, 32.181950, 31.919622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198650, 32.003098, 31.466494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324286, 31.752781, 31.752075>,  <26.399668, 31.602591, 31.923424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324286, 31.752781, 31.752075>,  <26.198650, 32.003098, 31.466494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324286, 31.752781, 31.752075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419442, -0.583174, -0.695684,
		0.851714, 0.517970, 0.079315,
		0.314089, -0.625792, 0.713956,
		26.418512, 31.565042, 31.966263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889730, 31.848577, 31.193714>,  <26.198650, 32.003098, 31.466494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889730, 31.848577, 31.193714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774904, 31.582521, 31.469446>,  <26.706009, 31.422888, 31.634886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774904, 31.582521, 31.469446>,  <26.889730, 31.848577, 31.193714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774904, 31.582521, 31.469446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380183, -0.739628, -0.555348,
		0.879235, 0.102650, 0.465198,
		-0.287067, -0.665141, 0.689332,
		26.688784, 31.382978, 31.676247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474476, 31.522072, 31.377199>,  <26.889730, 31.848577, 31.193714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474476, 31.522072, 31.377199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168600, 31.270781, 31.434578>,  <26.985075, 31.120007, 31.469006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168600, 31.270781, 31.434578>,  <27.474476, 31.522072, 31.377199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168600, 31.270781, 31.434578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479124, -0.703159, -0.525364,
		0.430914, -0.333013, 0.838699,
		-0.764691, -0.628228, 0.143446,
		26.939192, 31.082312, 31.477612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831673, 30.864998, 31.725410>,  <27.474476, 31.522072, 31.377199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831673, 30.864998, 31.725410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476311, 30.758444, 31.575863>,  <27.263094, 30.694511, 31.486134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476311, 30.758444, 31.575863>,  <27.831673, 30.864998, 31.725410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476311, 30.758444, 31.575863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396265, -0.856167, -0.331591,
		-0.231764, -0.442738, 0.866180,
		-0.888403, -0.266386, -0.373870,
		27.209789, 30.678528, 31.463701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718662, 30.131237, 31.926620>,  <27.831673, 30.864998, 31.725410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718662, 30.131237, 31.926620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446880, 30.176357, 31.636621>,  <27.283812, 30.203430, 31.462622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446880, 30.176357, 31.636621>,  <27.718662, 30.131237, 31.926620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446880, 30.176357, 31.636621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289191, -0.866951, -0.405912,
		-0.674323, -0.485461, 0.556432,
		-0.679454, 0.112801, -0.724995,
		27.243044, 30.210197, 31.419123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357889, 29.443172, 31.752871>,  <27.718662, 30.131237, 31.926620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357889, 29.443172, 31.752871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278999, 29.650442, 31.419981>,  <27.231665, 29.774803, 31.220247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278999, 29.650442, 31.419981>,  <27.357889, 29.443172, 31.752871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278999, 29.650442, 31.419981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217590, -0.804589, -0.552531,
		-0.955906, -0.290058, 0.045937,
		-0.197227, 0.518172, -0.832225,
		27.219831, 29.805893, 31.170313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071930, 29.003239, 31.247547>,  <27.357889, 29.443172, 31.752871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071930, 29.003239, 31.247547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190844, 29.296637, 31.003054>,  <27.262192, 29.472675, 30.856358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190844, 29.296637, 31.003054>,  <27.071930, 29.003239, 31.247547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190844, 29.296637, 31.003054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152082, -0.668381, -0.728106,
		-0.942599, 0.123498, -0.310251,
		0.297285, 0.733495, -0.611234,
		27.280029, 29.516685, 30.819683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829813, 28.873617, 30.587055>,  <27.071930, 29.003239, 31.247547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829813, 28.873617, 30.587055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144434, 29.111422, 30.520250>,  <27.333206, 29.254105, 30.480167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144434, 29.111422, 30.520250>,  <26.829813, 28.873617, 30.587055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144434, 29.111422, 30.520250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370568, -0.670752, -0.642473,
		-0.493982, 0.443448, -0.747888,
		0.786551, 0.594513, -0.167012,
		27.380400, 29.289776, 30.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973265, 28.843655, 29.848213>,  <26.829813, 28.873617, 30.587055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973265, 28.843655, 29.848213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318018, 29.000137, 29.977282>,  <27.524870, 29.094027, 30.054722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318018, 29.000137, 29.977282>,  <26.973265, 28.843655, 29.848213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318018, 29.000137, 29.977282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504444, -0.596280, -0.624490,
		-0.051902, 0.701006, -0.711264,
		0.861883, 0.391205, 0.322670,
		27.576584, 29.117498, 30.074083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411400, 28.797224, 29.219763>,  <26.973265, 28.843655, 29.848213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411400, 28.797224, 29.219763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632561, 28.867931, 29.545475>,  <27.765257, 28.910357, 29.740902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632561, 28.867931, 29.545475>,  <27.411400, 28.797224, 29.219763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632561, 28.867931, 29.545475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699869, -0.628861, -0.338699,
		0.452197, 0.757157, -0.471414,
		0.552903, 0.176769, 0.814280,
		27.798431, 28.920961, 29.789759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102119, 29.127413, 29.080675>,  <27.411400, 28.797224, 29.219763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102119, 29.127413, 29.080675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068340, 28.863405, 29.379271>,  <28.048073, 28.705000, 29.558428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068340, 28.863405, 29.379271>,  <28.102119, 29.127413, 29.080675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068340, 28.863405, 29.379271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735325, -0.546848, -0.400318,
		0.672432, 0.515105, 0.531509,
		-0.084449, -0.660018, 0.746488,
		28.043005, 28.665400, 29.603216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771738, 29.103977, 29.509295>,  <28.102119, 29.127413, 29.080675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771738, 29.103977, 29.509295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557646, 28.770142, 29.457159>,  <28.429190, 28.569839, 29.425879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557646, 28.770142, 29.457159>,  <28.771738, 29.103977, 29.509295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557646, 28.770142, 29.457159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782121, -0.431356, -0.449688,
		0.319083, -0.342627, 0.883625,
		-0.535232, -0.834589, -0.130338,
		28.397076, 28.519764, 29.418058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907848, 28.504835, 29.937803>,  <28.771738, 29.103977, 29.509295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907848, 28.504835, 29.937803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766994, 28.391035, 29.581139>,  <28.682482, 28.322756, 29.367140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766994, 28.391035, 29.581139>,  <28.907848, 28.504835, 29.937803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766994, 28.391035, 29.581139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887497, -0.404048, -0.221571,
		-0.297237, -0.869371, 0.394771,
		-0.352134, -0.284499, -0.891663,
		28.661354, 28.305685, 29.313641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550478, 28.695776, 29.631491>,  <28.907848, 28.504835, 29.937803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550478, 28.695776, 29.631491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795334, 28.896631, 29.387150>,  <29.942247, 29.017145, 29.240545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795334, 28.896631, 29.387150>,  <29.550478, 28.695776, 29.631491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795334, 28.896631, 29.387150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756536, -0.147126, 0.637187,
		0.230084, -0.852180, -0.469948,
		0.612139, 0.502139, -0.610854,
		29.978975, 29.047274, 29.203894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196592, 28.485668, 29.789358>,  <29.550478, 28.695776, 29.631491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196592, 28.485668, 29.789358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273756, 28.836084, 29.612570>,  <30.320053, 29.046335, 29.506496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273756, 28.836084, 29.612570>,  <30.196592, 28.485668, 29.789358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273756, 28.836084, 29.612570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839616, 0.085719, 0.536374,
		0.507771, -0.474556, -0.719003,
		0.192908, 0.876041, -0.441970,
		30.331629, 29.098896, 29.479979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945383, 28.461094, 29.432041>,  <30.196592, 28.485668, 29.789358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945383, 28.461094, 29.432041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809410, 28.818058, 29.550734>,  <30.727825, 29.032236, 29.621948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809410, 28.818058, 29.550734>,  <30.945383, 28.461094, 29.432041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809410, 28.818058, 29.550734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809314, 0.116882, 0.575630,
		0.479016, 0.435823, -0.761972,
		-0.339934, 0.892411, 0.296729,
		30.707430, 29.085781, 29.639751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381281, 29.049131, 29.284895>,  <30.945383, 28.461094, 29.432041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381281, 29.049131, 29.284895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163446, 29.147890, 29.605511>,  <31.032745, 29.207146, 29.797880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163446, 29.147890, 29.605511>,  <31.381281, 29.049131, 29.284895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163446, 29.147890, 29.605511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837145, 0.218288, 0.501536,
		-0.051139, 0.944136, -0.325565,
		-0.544586, 0.246897, 0.801541,
		31.000071, 29.221960, 29.845974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544378, 29.731108, 29.399792>,  <31.381281, 29.049131, 29.284895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544378, 29.731108, 29.399792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421740, 29.531933, 29.724274>,  <31.348156, 29.412428, 29.918962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421740, 29.531933, 29.724274>,  <31.544378, 29.731108, 29.399792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421740, 29.531933, 29.724274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829752, 0.277766, 0.484105,
		-0.466380, 0.821525, 0.328004,
		-0.306596, -0.497939, 0.811207,
		31.329762, 29.382551, 29.967636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755821, 30.175697, 29.840414>,  <31.544378, 29.731108, 29.399792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755821, 30.175697, 29.840414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713377, 29.826710, 30.031219>,  <31.687910, 29.617317, 30.145702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713377, 29.826710, 30.031219>,  <31.755821, 30.175697, 29.840414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713377, 29.826710, 30.031219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846172, 0.172724, 0.504142,
		-0.522239, 0.457131, 0.719930,
		-0.106109, -0.872467, 0.477014,
		31.681543, 29.564970, 30.174324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195414, 30.738628, 29.962124>,  <31.755821, 30.175697, 29.840414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195414, 30.738628, 29.962124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864737, 30.530039, 30.046637>,  <30.666330, 30.404884, 30.097343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864737, 30.530039, 30.046637>,  <31.195414, 30.738628, 29.962124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864737, 30.530039, 30.046637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324711, 0.748845, 0.577749,
		-0.459499, 0.409016, -0.788395,
		-0.826694, -0.521476, 0.211282,
		30.616728, 30.373596, 30.110022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574083, 31.196646, 29.764038>,  <31.195414, 30.738628, 29.962124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574083, 31.196646, 29.764038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456993, 30.912693, 30.020281>,  <30.386740, 30.742321, 30.174026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456993, 30.912693, 30.020281>,  <30.574083, 31.196646, 29.764038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456993, 30.912693, 30.020281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017404, 0.673798, 0.738710,
		-0.956038, 0.205090, -0.209592,
		-0.292725, -0.709883, 0.640608,
		30.369175, 30.699728, 30.212463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157082, 31.557236, 30.152966>,  <30.574083, 31.196646, 29.764038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157082, 31.557236, 30.152966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243944, 31.222269, 30.353596>,  <30.296062, 31.021290, 30.473974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243944, 31.222269, 30.353596>,  <30.157082, 31.557236, 30.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243944, 31.222269, 30.353596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070918, 0.526012, 0.847515,
		-0.973557, -0.148472, 0.173615,
		0.217156, -0.837417, 0.501573,
		30.309092, 30.971045, 30.504068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648478, 31.500870, 30.627800>,  <30.157082, 31.557236, 30.152966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648478, 31.500870, 30.627800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959591, 31.291126, 30.766422>,  <30.146259, 31.165279, 30.849596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959591, 31.291126, 30.766422>,  <29.648478, 31.500870, 30.627800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959591, 31.291126, 30.766422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107617, 0.432133, 0.895366,
		-0.619253, -0.733695, 0.279675,
		0.777782, -0.524360, 0.346558,
		30.192926, 31.133818, 30.870390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467960, 31.346752, 31.373718>,  <29.648478, 31.500870, 30.627800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467960, 31.346752, 31.373718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856096, 31.251139, 31.388159>,  <30.088978, 31.193769, 31.396822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856096, 31.251139, 31.388159>,  <29.467960, 31.346752, 31.373718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856096, 31.251139, 31.388159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048446, 0.338578, 0.939690,
		-0.236842, -0.910070, 0.340116,
		0.970340, -0.239035, 0.036100,
		30.147198, 31.179428, 31.398989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584660, 30.959133, 31.926134>,  <29.467960, 31.346752, 31.373718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584660, 30.959133, 31.926134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941120, 31.123806, 31.849852>,  <30.154997, 31.222610, 31.804083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941120, 31.123806, 31.849852>,  <29.584660, 30.959133, 31.926134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941120, 31.123806, 31.849852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003945, 0.413282, 0.910595,
		0.453697, -0.812226, 0.366671,
		0.891148, 0.411687, -0.190709,
		30.208466, 31.247311, 31.792639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023319, 30.781767, 32.496288>,  <29.584660, 30.959133, 31.926134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023319, 30.781767, 32.496288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252323, 31.070143, 32.340096>,  <30.389725, 31.243168, 32.246380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252323, 31.070143, 32.340096>,  <30.023319, 30.781767, 32.496288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252323, 31.070143, 32.340096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238474, 0.309246, 0.920596,
		0.784450, -0.620170, 0.005121,
		0.572510, 0.720941, -0.390482,
		30.424076, 31.286425, 32.222950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537430, 30.840193, 32.978046>,  <30.023319, 30.781767, 32.496288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537430, 30.840193, 32.978046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540098, 31.179644, 32.766468>,  <30.541698, 31.383314, 32.639523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540098, 31.179644, 32.766468>,  <30.537430, 30.840193, 32.978046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540098, 31.179644, 32.766468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032593, 0.528492, 0.848312,
		0.999446, -0.022898, -0.024134,
		0.006670, 0.848629, -0.528946,
		30.542099, 31.434233, 32.607784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964653, 31.232965, 33.398075>,  <30.537430, 30.840193, 32.978046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964653, 31.232965, 33.398075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753609, 31.484533, 33.169659>,  <30.626982, 31.635475, 33.032608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753609, 31.484533, 33.169659>,  <30.964653, 31.232965, 33.398075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753609, 31.484533, 33.169659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180796, 0.573679, 0.798877,
		0.830023, 0.524738, -0.188974,
		-0.527612, 0.628921, -0.571037,
		30.595325, 31.673210, 32.998348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096775, 31.954453, 33.680996>,  <30.964653, 31.232965, 33.398075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096775, 31.954453, 33.680996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750637, 31.929478, 33.482086>,  <30.542953, 31.914492, 33.362740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750637, 31.929478, 33.482086>,  <31.096775, 31.954453, 33.680996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750637, 31.929478, 33.482086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457255, 0.504548, 0.732358,
		0.205169, 0.861123, -0.465159,
		-0.865346, -0.062439, -0.497271,
		30.491034, 31.910746, 33.332905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870691, 32.615749, 33.710052>,  <31.096775, 31.954453, 33.680996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870691, 32.615749, 33.710052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548256, 32.391575, 33.634018>,  <30.354794, 32.257072, 33.588398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548256, 32.391575, 33.634018>,  <30.870691, 32.615749, 33.710052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548256, 32.391575, 33.634018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478464, 0.428168, 0.766645,
		-0.348268, 0.708933, -0.613289,
		-0.806091, -0.560434, -0.190082,
		30.306429, 32.223446, 33.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399075, 33.118088, 33.553280>,  <30.870691, 32.615749, 33.710052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399075, 33.118088, 33.553280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217569, 32.785095, 33.680447>,  <30.108665, 32.585300, 33.756744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217569, 32.785095, 33.680447>,  <30.399075, 33.118088, 33.553280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217569, 32.785095, 33.680447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506324, 0.534433, 0.676770,
		-0.733304, 0.146126, -0.664013,
		-0.453764, -0.832483, 0.317914,
		30.081440, 32.535351, 33.775822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865547, 33.490421, 33.854225>,  <30.399075, 33.118088, 33.553280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865547, 33.490421, 33.854225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827124, 33.110493, 33.973293>,  <29.804070, 32.882534, 34.044735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827124, 33.110493, 33.973293>,  <29.865547, 33.490421, 33.854225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827124, 33.110493, 33.973293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470640, 0.306850, 0.827249,
		-0.877081, -0.060632, -0.476501,
		-0.096057, -0.949825, 0.297668,
		29.798307, 32.825546, 34.062595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174133, 33.436588, 34.011204>,  <29.865547, 33.490421, 33.854225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174133, 33.436588, 34.011204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355547, 33.141254, 34.210873>,  <29.464396, 32.964054, 34.330673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355547, 33.141254, 34.210873>,  <29.174133, 33.436588, 34.011204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355547, 33.141254, 34.210873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632048, 0.128419, 0.764214,
		-0.628349, -0.662095, -0.408421,
		0.453534, -0.738335, 0.499168,
		29.491608, 32.919754, 34.360622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651154, 32.981548, 34.324482>,  <29.174133, 33.436588, 34.011204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651154, 32.981548, 34.324482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981850, 32.905537, 34.536289>,  <29.180267, 32.859932, 34.663372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981850, 32.905537, 34.536289>,  <28.651154, 32.981548, 34.324482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981850, 32.905537, 34.536289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513718, 0.128681, 0.848254,
		-0.229328, -0.973310, 0.008767,
		0.826742, -0.190025, 0.529517,
		29.229872, 32.848530, 34.695145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423033, 32.587704, 34.899498>,  <28.651154, 32.981548, 34.324482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423033, 32.587704, 34.899498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774176, 32.742046, 35.012970>,  <28.984861, 32.834652, 35.081055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774176, 32.742046, 35.012970>,  <28.423033, 32.587704, 34.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774176, 32.742046, 35.012970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406994, 0.288850, 0.866558,
		0.252419, -0.876176, 0.410609,
		0.877862, 0.385851, 0.283687,
		29.037533, 32.857803, 35.098076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484674, 32.350246, 35.587269>,  <28.423033, 32.587704, 34.899498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484674, 32.350246, 35.587269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750145, 32.648651, 35.565361>,  <28.909428, 32.827694, 35.552216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750145, 32.648651, 35.565361>,  <28.484674, 32.350246, 35.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750145, 32.648651, 35.565361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318157, 0.347790, 0.881940,
		0.676987, -0.567897, 0.468169,
		0.663675, 0.746013, -0.054769,
		28.949247, 32.872456, 35.548931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695047, 32.427322, 36.295074>,  <28.484674, 32.350246, 35.587269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695047, 32.427322, 36.295074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760065, 32.765942, 36.092323>,  <28.799076, 32.969112, 35.970673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760065, 32.765942, 36.092323>,  <28.695047, 32.427322, 36.295074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760065, 32.765942, 36.092323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302423, 0.531732, 0.791076,
		0.939212, 0.024709, 0.342447,
		0.162543, 0.846552, -0.506882,
		28.808828, 33.019909, 35.940258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162937, 32.842018, 36.724678>,  <28.695047, 32.427322, 36.295074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162937, 32.842018, 36.724678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963200, 33.074429, 36.467594>,  <28.843357, 33.213875, 36.313343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963200, 33.074429, 36.467594>,  <29.162937, 32.842018, 36.724678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963200, 33.074429, 36.467594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380058, 0.519734, 0.765135,
		0.778596, 0.626330, -0.038703,
		-0.499343, 0.581022, -0.642705,
		28.813396, 33.248734, 36.274784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177637, 33.440708, 37.003746>,  <29.162937, 32.842018, 36.724678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177637, 33.440708, 37.003746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907623, 33.524609, 36.720810>,  <28.745615, 33.574947, 36.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907623, 33.524609, 36.720810>,  <29.177637, 33.440708, 37.003746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907623, 33.524609, 36.720810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495713, 0.581148, 0.645396,
		0.546441, 0.786304, -0.288321,
		-0.675034, 0.209747, -0.707344,
		28.705112, 33.587532, 36.508606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082987, 34.101460, 37.137691>,  <29.177637, 33.440708, 37.003746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082987, 34.101460, 37.137691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758900, 33.984226, 36.934654>,  <28.564447, 33.913887, 36.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758900, 33.984226, 36.934654>,  <29.082987, 34.101460, 37.137691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758900, 33.984226, 36.934654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581807, 0.507123, 0.635867,
		0.071047, 0.810510, -0.581400,
		-0.810218, -0.293086, -0.507590,
		28.515835, 33.896301, 36.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580984, 34.649044, 36.933735>,  <29.082987, 34.101460, 37.137691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580984, 34.649044, 36.933735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352444, 34.323563, 36.976513>,  <28.215319, 34.128273, 37.002178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352444, 34.323563, 36.976513>,  <28.580984, 34.649044, 36.933735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352444, 34.323563, 36.976513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604612, 0.505443, 0.615607,
		-0.554977, 0.287070, -0.780763,
		-0.571353, -0.813707, 0.106944,
		28.181038, 34.079449, 37.008595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119150, 35.319729, 36.882168>,  <28.580984, 34.649044, 36.933735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119150, 35.319729, 36.882168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030199, 35.564388, 37.185860>,  <28.976828, 35.711185, 37.368076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030199, 35.564388, 37.185860>,  <29.119150, 35.319729, 36.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030199, 35.564388, 37.185860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421232, 0.762573, -0.490965,
		-0.879267, 0.210632, -0.427227,
		-0.222379, 0.611651, 0.759230,
		28.963486, 35.747883, 37.413628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918707, 36.042221, 36.656319>,  <29.119150, 35.319729, 36.882168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918707, 36.042221, 36.656319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092791, 36.063805, 37.015804>,  <29.197241, 36.076756, 37.231495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092791, 36.063805, 37.015804>,  <28.918707, 36.042221, 36.656319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092791, 36.063805, 37.015804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447641, 0.853110, -0.267995,
		-0.781161, 0.518933, 0.347126,
		0.435208, 0.053959, 0.898712,
		29.223352, 36.079994, 37.285419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665579, 35.521141, 36.157009>,  <28.918707, 36.042221, 36.656319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665579, 35.521141, 36.157009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418299, 35.634766, 35.863850>,  <28.269930, 35.702942, 35.687954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418299, 35.634766, 35.863850>,  <28.665579, 35.521141, 36.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418299, 35.634766, 35.863850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184376, 0.958804, 0.216103,
		0.764089, -0.001532, -0.645109,
		-0.618202, 0.284064, -0.732894,
		28.232838, 35.719986, 35.643982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939503, 35.917694, 35.599262>,  <28.665579, 35.521141, 36.157009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939503, 35.917694, 35.599262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560966, 36.016293, 35.682854>,  <28.333845, 36.075451, 35.733009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560966, 36.016293, 35.682854>,  <28.939503, 35.917694, 35.599262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560966, 36.016293, 35.682854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308086, 0.883390, 0.353134,
		-0.097565, 0.398571, -0.911933,
		-0.946342, 0.246501, 0.208982,
		28.277063, 36.090244, 35.745548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451767, 36.441448, 35.211685>,  <28.939503, 35.917694, 35.599262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451767, 36.441448, 35.211685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459555, 36.437527, 35.611591>,  <28.464228, 36.435173, 35.851536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459555, 36.437527, 35.611591>,  <28.451767, 36.441448, 35.211685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459555, 36.437527, 35.611591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035317, 0.999335, 0.009114,
		-0.999187, 0.035131, 0.019800,
		0.019467, -0.009806, 0.999762,
		28.465395, 36.434586, 35.911522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888817, 36.881824, 35.378559>,  <28.451767, 36.441448, 35.211685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888817, 36.881824, 35.378559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164961, 36.882984, 35.667942>,  <28.330647, 36.883678, 35.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164961, 36.882984, 35.667942>,  <27.888817, 36.881824, 35.378559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164961, 36.882984, 35.667942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137043, 0.981363, -0.134703,
		-0.710369, 0.192139, 0.677095,
		0.690358, 0.002897, 0.723462,
		28.372068, 36.883854, 35.884979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703653, 37.344421, 36.033741>,  <27.888817, 36.881824, 35.378559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703653, 37.344421, 36.033741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072062, 37.313679, 35.880997>,  <28.293106, 37.295235, 35.789352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072062, 37.313679, 35.880997>,  <27.703653, 37.344421, 36.033741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072062, 37.313679, 35.880997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060840, 0.939926, -0.335914,
		0.384733, 0.332616, 0.861015,
		0.921021, -0.076853, -0.381857,
		28.348368, 37.290623, 35.766441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278471, 37.732380, 36.341015>,  <27.703653, 37.344421, 36.033741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278471, 37.732380, 36.341015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383886, 37.715981, 35.955505>,  <28.447136, 37.706142, 35.724197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383886, 37.715981, 35.955505>,  <28.278471, 37.732380, 36.341015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383886, 37.715981, 35.955505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176284, 0.980226, -0.089898,
		0.948405, 0.193590, 0.251100,
		0.263538, -0.040995, -0.963778,
		28.462948, 37.703682, 35.666370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525433, 38.148979, 36.783638>,  <28.278471, 37.732380, 36.341015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525433, 38.148979, 36.783638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911734, 38.045197, 36.782940>,  <29.143515, 37.982929, 36.782520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911734, 38.045197, 36.782940>,  <28.525433, 38.148979, 36.783638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911734, 38.045197, 36.782940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157332, 0.580269, 0.799084,
		-0.206315, -0.771992, 0.601217,
		0.965754, -0.259453, -0.001742,
		29.201460, 37.967361, 36.782417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699646, 37.811798, 37.504864>,  <28.525433, 38.148979, 36.783638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699646, 37.811798, 37.504864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044119, 37.949520, 37.355289>,  <29.250803, 38.032154, 37.265545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044119, 37.949520, 37.355289>,  <28.699646, 37.811798, 37.504864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044119, 37.949520, 37.355289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150346, 0.530196, 0.834439,
		0.485550, -0.774824, 0.404832,
		0.861183, 0.344297, -0.373928,
		29.302473, 38.052811, 37.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381748, 37.622662, 38.003963>,  <28.699646, 37.811798, 37.504864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381748, 37.622662, 38.003963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446829, 37.931973, 37.758827>,  <29.485878, 38.117558, 37.611744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446829, 37.931973, 37.758827>,  <29.381748, 37.622662, 38.003963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446829, 37.931973, 37.758827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334296, 0.541180, 0.771603,
		0.928318, -0.330413, -0.170451,
		0.162703, 0.773273, -0.612842,
		29.495640, 38.163956, 37.574974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989819, 37.857586, 38.235695>,  <29.381748, 37.622662, 38.003963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989819, 37.857586, 38.235695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849661, 38.171825, 38.031712>,  <29.765566, 38.360371, 37.909321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849661, 38.171825, 38.031712>,  <29.989819, 37.857586, 38.235695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849661, 38.171825, 38.031712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439647, 0.618720, 0.651073,
		0.827004, 0.003931, -0.562183,
		-0.350393, 0.785602, -0.509955,
		29.744543, 38.407505, 37.878723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531836, 38.301838, 38.242481>,  <29.989819, 37.857586, 38.235695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531836, 38.301838, 38.242481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257261, 38.563828, 38.116112>,  <30.092516, 38.721024, 38.040291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257261, 38.563828, 38.116112>,  <30.531836, 38.301838, 38.242481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257261, 38.563828, 38.116112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420695, 0.712046, 0.562144,
		0.593143, 0.252971, -0.764321,
		-0.686438, 0.654978, -0.315922,
		30.051331, 38.760323, 38.021336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838089, 38.896103, 38.099979>,  <30.531836, 38.301838, 38.242481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838089, 38.896103, 38.099979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461088, 39.013531, 38.163872>,  <30.234888, 39.083988, 38.202206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461088, 39.013531, 38.163872>,  <30.838089, 38.896103, 38.099979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461088, 39.013531, 38.163872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333762, 0.802194, 0.495063,
		0.017201, 0.519908, -0.854049,
		-0.942500, 0.293565, 0.159727,
		30.178339, 39.101601, 38.211788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875937, 39.534245, 38.074455>,  <30.838089, 38.896103, 38.099979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875937, 39.534245, 38.074455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526442, 39.488747, 38.263618>,  <30.316744, 39.461449, 38.377117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526442, 39.488747, 38.263618>,  <30.875937, 39.534245, 38.074455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526442, 39.488747, 38.263618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284721, 0.668689, 0.686870,
		-0.394355, 0.734792, -0.551875,
		-0.873738, -0.113740, 0.472911,
		30.264320, 39.454624, 38.405491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498133, 40.261826, 38.122913>,  <30.875937, 39.534245, 38.074455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498133, 40.261826, 38.122913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374392, 40.006294, 38.404678>,  <30.300148, 39.852974, 38.573738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374392, 40.006294, 38.404678>,  <30.498133, 40.261826, 38.122913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374392, 40.006294, 38.404678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151939, 0.698028, 0.699765,
		-0.938731, 0.323501, -0.118872,
		-0.309351, -0.638831, 0.704413,
		30.281586, 39.814644, 38.616001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214785, 40.694298, 38.599655>,  <30.498133, 40.261826, 38.122913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214785, 40.694298, 38.599655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265549, 40.360004, 38.813362>,  <30.296007, 40.159428, 38.941586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265549, 40.360004, 38.813362>,  <30.214785, 40.694298, 38.599655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265549, 40.360004, 38.813362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426966, 0.532194, 0.731074,
		-0.895318, 0.135332, 0.424372,
		0.126911, -0.835736, 0.534265,
		30.303621, 40.109283, 38.973640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290585, 40.941292, 39.231373>,  <30.214785, 40.694298, 38.599655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290585, 40.941292, 39.231373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437834, 40.573456, 39.286274>,  <30.526184, 40.352753, 39.319214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437834, 40.573456, 39.286274>,  <30.290585, 40.941292, 39.231373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437834, 40.573456, 39.286274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388996, 0.286407, 0.875588,
		-0.844492, -0.268935, 0.463150,
		0.368125, -0.919590, 0.137254,
		30.548271, 40.297581, 39.327450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151276, 40.813221, 40.001797>,  <30.290585, 40.941292, 39.231373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151276, 40.813221, 40.001797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423616, 40.553486, 39.866268>,  <30.587021, 40.397644, 39.784950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423616, 40.553486, 39.866268>,  <30.151276, 40.813221, 40.001797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423616, 40.553486, 39.866268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517730, 0.099461, 0.849743,
		-0.518072, -0.753966, 0.403901,
		0.680850, -0.649340, -0.338824,
		30.627871, 40.358685, 39.764622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064243, 40.316509, 40.427757>,  <30.151276, 40.813221, 40.001797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064243, 40.316509, 40.427757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436815, 40.299484, 40.283192>,  <30.660358, 40.289268, 40.196453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436815, 40.299484, 40.283192>,  <30.064243, 40.316509, 40.427757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436815, 40.299484, 40.283192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362097, 0.009220, 0.932095,
		-0.036347, -0.999051, 0.024003,
		0.931431, -0.042570, -0.361418,
		30.716246, 40.286713, 40.174767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454847, 39.746887, 40.769024>,  <30.064243, 40.316509, 40.427757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454847, 39.746887, 40.769024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768003, 39.963856, 40.647133>,  <30.955896, 40.094036, 40.573997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768003, 39.963856, 40.647133>,  <30.454847, 39.746887, 40.769024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768003, 39.963856, 40.647133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441536, -0.139329, 0.886360,
		0.438325, -0.828471, -0.348579,
		0.782890, 0.542424, -0.304728,
		31.002871, 40.126583, 40.555714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014481, 39.367027, 41.041828>,  <30.454847, 39.746887, 40.769024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014481, 39.367027, 41.041828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117756, 39.742954, 40.952316>,  <31.179722, 39.968510, 40.898609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117756, 39.742954, 40.952316>,  <31.014481, 39.367027, 41.041828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117756, 39.742954, 40.952316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653849, 0.000531, 0.756624,
		0.711210, -0.341669, -0.614364,
		0.258189, 0.939820, -0.223777,
		31.195213, 40.024899, 40.885181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718042, 39.357128, 40.920063>,  <31.014481, 39.367027, 41.041828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718042, 39.357128, 40.920063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634573, 39.735764, 41.018391>,  <31.584492, 39.962944, 41.077389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634573, 39.735764, 41.018391>,  <31.718042, 39.357128, 40.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634573, 39.735764, 41.018391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611831, -0.069739, 0.787909,
		0.762967, 0.314817, -0.564598,
		-0.208673, 0.946587, 0.245823,
		31.571972, 40.019741, 41.092136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322617, 39.720207, 41.084763>,  <31.718042, 39.357128, 40.920063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322617, 39.720207, 41.084763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047348, 39.941086, 41.273018>,  <31.882187, 40.073612, 41.385971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047348, 39.941086, 41.273018>,  <32.322617, 39.720207, 41.084763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047348, 39.941086, 41.273018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508039, -0.096364, 0.855927,
		0.517988, 0.828129, -0.214219,
		-0.688175, 0.552192, 0.470637,
		31.840895, 40.106743, 41.414207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694450, 40.143269, 41.567310>,  <32.322617, 39.720207, 41.084763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694450, 40.143269, 41.567310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326279, 40.131145, 41.723202>,  <32.105373, 40.123871, 41.816738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326279, 40.131145, 41.723202>,  <32.694450, 40.143269, 41.567310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326279, 40.131145, 41.723202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380889, -0.293791, 0.876704,
		0.087925, 0.955389, 0.281960,
		-0.920431, -0.030311, 0.389728,
		32.050148, 40.122051, 41.840118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749809, 40.449905, 42.196934>,  <32.694450, 40.143269, 41.567310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749809, 40.449905, 42.196934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405308, 40.249851, 42.232929>,  <32.198605, 40.129818, 42.254528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405308, 40.249851, 42.232929>,  <32.749809, 40.449905, 42.196934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405308, 40.249851, 42.232929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205856, -0.181473, 0.961609,
		-0.464605, 0.846718, 0.259251,
		-0.861258, -0.500136, 0.089988,
		32.146931, 40.099812, 42.259926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468056, 40.700344, 42.763958>,  <32.749809, 40.449905, 42.196934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468056, 40.700344, 42.763958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290279, 40.344139, 42.725056>,  <32.183613, 40.130417, 42.701714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290279, 40.344139, 42.725056>,  <32.468056, 40.700344, 42.763958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290279, 40.344139, 42.725056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057924, -0.079776, 0.995129,
		-0.893932, 0.447912, -0.016126,
		-0.444444, -0.890511, -0.097259,
		32.156948, 40.076984, 42.695877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176167, 40.761284, 43.379639>,  <32.468056, 40.700344, 42.763958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176167, 40.761284, 43.379639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158573, 40.387478, 43.238361>,  <32.148018, 40.163193, 43.153595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158573, 40.387478, 43.238361>,  <32.176167, 40.761284, 43.379639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158573, 40.387478, 43.238361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058894, -0.355348, 0.932877,
		-0.997295, 0.020234, 0.070669,
		-0.043988, -0.934515, -0.353195,
		32.145378, 40.107124, 43.132404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505392, 40.495232, 43.385769>,  <32.176167, 40.761284, 43.379639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505392, 40.495232, 43.385769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754240, 40.182800, 43.407242>,  <31.903549, 39.995342, 43.420128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754240, 40.182800, 43.407242>,  <31.505392, 40.495232, 43.385769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754240, 40.182800, 43.407242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238333, -0.123622, 0.963283,
		-0.745765, -0.612071, -0.263065,
		0.622119, -0.781080, 0.053684,
		31.940876, 39.948475, 43.423347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101114, 40.050262, 43.681198>,  <31.505392, 40.495232, 43.385769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101114, 40.050262, 43.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445391, 39.853256, 43.732784>,  <31.651957, 39.735050, 43.763737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445391, 39.853256, 43.732784>,  <31.101114, 40.050262, 43.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445391, 39.853256, 43.732784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227340, -0.145131, 0.962940,
		-0.455548, -0.858116, -0.236882,
		0.860693, -0.492519, 0.128970,
		31.703598, 39.705502, 43.771477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957331, 39.416306, 43.990429>,  <31.101114, 40.050262, 43.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957331, 39.416306, 43.990429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337252, 39.490608, 44.091118>,  <31.565205, 39.535191, 44.151531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337252, 39.490608, 44.091118>,  <30.957331, 39.416306, 43.990429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337252, 39.490608, 44.091118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204172, -0.241595, 0.948655,
		0.237036, -0.952431, -0.191542,
		0.949804, 0.185758, 0.251727,
		31.622192, 39.546337, 44.166637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124632, 38.846695, 44.398251>,  <30.957331, 39.416306, 43.990429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124632, 38.846695, 44.398251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374575, 39.148884, 44.477058>,  <31.524540, 39.330196, 44.524342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374575, 39.148884, 44.477058>,  <31.124632, 38.846695, 44.398251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374575, 39.148884, 44.477058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335545, 0.032003, 0.941481,
		0.704958, -0.654397, 0.273493,
		0.624855, 0.755473, 0.197019,
		31.562031, 39.375526, 44.536163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381941, 38.706322, 45.009022>,  <31.124632, 38.846695, 44.398251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381941, 38.706322, 45.009022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480804, 39.093346, 44.988079>,  <31.540123, 39.325562, 44.975513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480804, 39.093346, 44.988079>,  <31.381941, 38.706322, 45.009022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480804, 39.093346, 44.988079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214766, 0.107390, 0.970743,
		0.944875, -0.228682, 0.234341,
		0.247158, 0.967560, -0.052357,
		31.554953, 39.383614, 44.972370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912716, 38.851910, 45.586330>,  <31.381941, 38.706322, 45.009022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912716, 38.851910, 45.586330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719328, 39.187099, 45.485096>,  <31.603294, 39.388214, 45.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719328, 39.187099, 45.485096>,  <31.912716, 38.851910, 45.586330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719328, 39.187099, 45.485096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117778, 0.224221, 0.967395,
		0.867402, 0.497514, -0.009709,
		-0.483469, 0.837977, -0.253085,
		31.574287, 39.438492, 45.409172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213562, 39.443264, 46.032085>,  <31.912716, 38.851910, 45.586330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213562, 39.443264, 46.032085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852432, 39.556858, 45.902924>,  <31.635756, 39.625015, 45.825428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852432, 39.556858, 45.902924>,  <32.213562, 39.443264, 46.032085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852432, 39.556858, 45.902924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157780, 0.479769, 0.863092,
		0.400027, 0.830164, -0.388337,
		-0.902820, 0.283988, -0.322904,
		31.581587, 39.642056, 45.806053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184795, 40.092201, 46.341209>,  <32.213562, 39.443264, 46.032085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184795, 40.092201, 46.341209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827377, 39.952896, 46.227867>,  <31.612926, 39.869312, 46.159863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827377, 39.952896, 46.227867>,  <32.184795, 40.092201, 46.341209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827377, 39.952896, 46.227867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415877, 0.404183, 0.814667,
		-0.169187, 0.845784, -0.505990,
		-0.893544, -0.348261, -0.283360,
		31.559315, 39.848419, 46.142860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815992, 40.610321, 46.388889>,  <32.184795, 40.092201, 46.341209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815992, 40.610321, 46.388889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530069, 40.330921, 46.402409>,  <31.358515, 40.163280, 46.410519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530069, 40.330921, 46.402409>,  <31.815992, 40.610321, 46.388889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530069, 40.330921, 46.402409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344943, 0.394208, 0.851830,
		-0.608327, 0.597239, -0.522727,
		-0.714809, -0.698502, 0.033793,
		31.315626, 40.121372, 46.412548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275570, 40.980114, 46.585438>,  <31.815992, 40.610321, 46.388889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275570, 40.980114, 46.585438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164671, 40.604542, 46.666965>,  <31.098131, 40.379200, 46.715881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164671, 40.604542, 46.666965>,  <31.275570, 40.980114, 46.585438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164671, 40.604542, 46.666965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425831, 0.310245, 0.849951,
		-0.861280, 0.148851, -0.485840,
		-0.277246, -0.938931, 0.203822,
		31.081497, 40.322861, 46.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556522, 41.039406, 46.742233>,  <31.275570, 40.980114, 46.585438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556522, 41.039406, 46.742233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687422, 40.709877, 46.927372>,  <30.765961, 40.512161, 47.038456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687422, 40.709877, 46.927372>,  <30.556522, 41.039406, 46.742233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687422, 40.709877, 46.927372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382588, 0.332364, 0.862068,
		-0.864023, -0.459189, -0.206419,
		0.327246, -0.823820, 0.462850,
		30.785595, 40.462730, 47.066227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948225, 40.775597, 47.165890>,  <30.556522, 41.039406, 46.742233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948225, 40.775597, 47.165890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276602, 40.599770, 47.311676>,  <30.473629, 40.494274, 47.399147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276602, 40.599770, 47.311676>,  <29.948225, 40.775597, 47.165890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276602, 40.599770, 47.311676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275273, 0.254555, 0.927053,
		-0.500278, -0.861384, 0.087974,
		0.820942, -0.439568, 0.364464,
		30.522884, 40.467899, 47.421017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707703, 40.357079, 47.749184>,  <29.948225, 40.775597, 47.165890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707703, 40.357079, 47.749184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100203, 40.389027, 47.819351>,  <30.335703, 40.408195, 47.861450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100203, 40.389027, 47.819351>,  <29.707703, 40.357079, 47.749184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100203, 40.389027, 47.819351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184507, 0.126052, 0.974714,
		0.055739, -0.988803, 0.138426,
		0.981250, 0.079870, 0.175415,
		30.394577, 40.412991, 47.871975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773325, 39.909416, 48.290394>,  <29.707703, 40.357079, 47.749184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773325, 39.909416, 48.290394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092743, 40.150040, 48.281944>,  <30.284393, 40.294415, 48.276875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092743, 40.150040, 48.281944>,  <29.773325, 39.909416, 48.290394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092743, 40.150040, 48.281944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006828, 0.026035, 0.999638,
		0.601894, -0.798402, 0.016683,
		0.798547, 0.601562, -0.021122,
		30.332308, 40.330509, 48.275608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292486, 39.571190, 48.605865>,  <29.773325, 39.909416, 48.290394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292486, 39.571190, 48.605865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389435, 39.955391, 48.660564>,  <30.447603, 40.185909, 48.693382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389435, 39.955391, 48.660564>,  <30.292486, 39.571190, 48.605865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389435, 39.955391, 48.660564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076917, -0.159525, 0.984193,
		0.967130, -0.228020, -0.112542,
		0.242369, 0.960499, 0.136743,
		30.462145, 40.243542, 48.701588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777748, 39.455929, 49.190441>,  <30.292486, 39.571190, 48.605865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777748, 39.455929, 49.190441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707989, 39.849342, 49.171471>,  <30.666134, 40.085388, 49.160088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707989, 39.849342, 49.171471>,  <30.777748, 39.455929, 49.190441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707989, 39.849342, 49.171471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172836, 0.077994, 0.981858,
		0.969388, 0.163038, -0.183592,
		-0.174399, 0.983532, -0.047428,
		30.655668, 40.144402, 49.157242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272402, 39.787159, 49.629742>,  <30.777748, 39.455929, 49.190441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272402, 39.787159, 49.629742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976360, 40.051521, 49.580013>,  <30.798737, 40.210136, 49.550175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976360, 40.051521, 49.580013>,  <31.272402, 39.787159, 49.629742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976360, 40.051521, 49.580013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046315, 0.134336, 0.989853,
		0.670897, 0.738351, -0.068813,
		-0.740103, 0.660902, -0.124322,
		30.754330, 40.249790, 49.542717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482327, 40.415577, 50.055695>,  <31.272402, 39.787159, 49.629742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482327, 40.415577, 50.055695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086983, 40.409031, 49.995201>,  <30.849775, 40.405102, 49.958904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086983, 40.409031, 49.995201>,  <31.482327, 40.415577, 50.055695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086983, 40.409031, 49.995201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151873, 0.049344, 0.987168,
		-0.008695, 0.998648, -0.051255,
		-0.988362, -0.016368, -0.151238,
		30.790474, 40.404121, 49.949829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240358, 40.769054, 50.610203>,  <31.482327, 40.415577, 50.055695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240358, 40.769054, 50.610203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884354, 40.632919, 50.488842>,  <30.670752, 40.551239, 50.416023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884354, 40.632919, 50.488842>,  <31.240358, 40.769054, 50.610203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884354, 40.632919, 50.488842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346313, 0.071773, 0.935369,
		-0.296561, 0.937562, -0.181741,
		-0.890011, -0.340333, -0.303405,
		30.617350, 40.530819, 50.397820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825558, 41.189709, 50.982258>,  <31.240358, 40.769054, 50.610203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825558, 41.189709, 50.982258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618563, 40.861423, 50.885395>,  <30.494366, 40.664452, 50.827278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618563, 40.861423, 50.885395>,  <30.825558, 41.189709, 50.982258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618563, 40.861423, 50.885395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412066, -0.009010, 0.911109,
		-0.749939, 0.571273, -0.333524,
		-0.517487, -0.820710, -0.242160,
		30.463316, 40.615211, 50.812748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107788, 41.355358, 51.143566>,  <30.825558, 41.189709, 50.982258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107788, 41.355358, 51.143566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137241, 40.956566, 51.153419>,  <30.154913, 40.717289, 51.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137241, 40.956566, 51.153419>,  <30.107788, 41.355358, 51.143566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137241, 40.956566, 51.153419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553907, -0.020342, 0.832330,
		-0.829316, -0.074932, -0.553733,
		0.073632, -0.996981, 0.024635,
		30.159330, 40.657471, 51.160809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408232, 41.177544, 51.209187>,  <30.107788, 41.355358, 51.143566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408232, 41.177544, 51.209187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672148, 40.926445, 51.374409>,  <29.830498, 40.775787, 51.473541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672148, 40.926445, 51.374409>,  <29.408232, 41.177544, 51.209187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672148, 40.926445, 51.374409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645528, -0.192106, 0.739181,
		-0.384667, -0.754341, -0.531977,
		0.659791, -0.627745, 0.413052,
		29.870085, 40.738121, 51.498325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537374, 40.703369, 50.595654>,  <29.408232, 41.177544, 51.209187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537374, 40.703369, 50.595654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607908, 40.362099, 50.792019>,  <29.650229, 40.157337, 50.909840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607908, 40.362099, 50.792019>,  <29.537374, 40.703369, 50.595654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607908, 40.362099, 50.792019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548986, 0.328715, 0.768480,
		-0.817019, -0.405015, -0.410417,
		0.176336, -0.853176, 0.490914,
		29.660809, 40.106148, 50.939293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873148, 40.116695, 50.727428>,  <29.537374, 40.703369, 50.595654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873148, 40.116695, 50.727428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156416, 40.134483, 51.009285>,  <29.326376, 40.145157, 51.178398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156416, 40.134483, 51.009285>,  <28.873148, 40.116695, 50.727428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156416, 40.134483, 51.009285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676319, 0.329256, 0.658926,
		-0.202707, -0.943193, 0.263243,
		0.708169, 0.044467, 0.704641,
		29.368866, 40.147823, 51.220676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631704, 39.764935, 51.292732>,  <28.873148, 40.116695, 50.727428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631704, 39.764935, 51.292732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861555, 40.077419, 51.390305>,  <28.999466, 40.264912, 51.448849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861555, 40.077419, 51.390305>,  <28.631704, 39.764935, 51.292732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861555, 40.077419, 51.390305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691778, 0.304374, 0.654828,
		0.437314, -0.545031, 0.715330,
		0.574629, 0.781215, 0.243934,
		29.033943, 40.311783, 51.463486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638899, 39.816971, 52.056175>,  <28.631704, 39.764935, 51.292732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638899, 39.816971, 52.056175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676188, 40.176823, 51.885540>,  <28.698561, 40.392735, 51.783157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676188, 40.176823, 51.885540>,  <28.638899, 39.816971, 52.056175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676188, 40.176823, 51.885540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894853, 0.263551, 0.360249,
		0.436519, 0.348153, 0.829603,
		0.093221, 0.899628, -0.426591,
		28.704153, 40.446712, 51.757565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576925, 40.368412, 52.589340>,  <28.638899, 39.816971, 52.056175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576925, 40.368412, 52.589340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467522, 40.484066, 52.222385>,  <28.401880, 40.553459, 52.002213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467522, 40.484066, 52.222385>,  <28.576925, 40.368412, 52.589340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467522, 40.484066, 52.222385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908466, 0.235728, 0.345142,
		0.316044, 0.927812, 0.198193,
		-0.273508, 0.289132, -0.917386,
		28.385469, 40.570805, 51.947170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268551, 40.074718, 52.798306>,  <28.576925, 40.368412, 52.589340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268551, 40.074718, 52.798306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336067, 39.735657, 52.999500>,  <29.376577, 39.532219, 53.120216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336067, 39.735657, 52.999500>,  <29.268551, 40.074718, 52.798306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336067, 39.735657, 52.999500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475494, -0.376977, -0.794855,
		0.863374, 0.373333, 0.339422,
		0.168792, -0.847650, 0.502990,
		29.386705, 39.481361, 53.150398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053028, 39.839680, 52.861977>,  <29.268551, 40.074718, 52.798306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053028, 39.839680, 52.861977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769432, 39.558090, 52.845200>,  <29.599276, 39.389137, 52.835133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769432, 39.558090, 52.845200>,  <30.053028, 39.839680, 52.861977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769432, 39.558090, 52.845200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503083, -0.463195, -0.729629,
		0.494209, -0.538400, 0.682556,
		-0.708989, -0.703971, -0.041945,
		29.556736, 39.346897, 52.832615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381868, 39.046566, 52.907734>,  <30.053028, 39.839680, 52.861977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381868, 39.046566, 52.907734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021305, 39.050217, 52.734585>,  <29.804966, 39.052406, 52.630695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021305, 39.050217, 52.734585>,  <30.381868, 39.046566, 52.907734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021305, 39.050217, 52.734585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313224, -0.676486, -0.666527,
		-0.298913, -0.736399, 0.606932,
		-0.901411, 0.009128, -0.432869,
		29.750881, 39.052956, 52.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000881, 38.432709, 52.639576>,  <30.381868, 39.046566, 52.907734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000881, 38.432709, 52.639576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908661, 38.717434, 52.374195>,  <29.853329, 38.888268, 52.214966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908661, 38.717434, 52.374195>,  <30.000881, 38.432709, 52.639576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908661, 38.717434, 52.374195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277054, -0.605584, -0.745995,
		-0.932784, -0.355804, -0.057591,
		-0.230551, 0.711808, -0.663457,
		29.839495, 38.930977, 52.175159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566011, 38.134533, 52.044537>,  <30.000881, 38.432709, 52.639576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566011, 38.134533, 52.044537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752981, 38.467213, 51.924679>,  <29.865164, 38.666821, 51.852764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752981, 38.467213, 51.924679>,  <29.566011, 38.134533, 52.044537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752981, 38.467213, 51.924679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458659, -0.517921, -0.722074,
		-0.755742, 0.200080, -0.623556,
		0.467425, 0.831701, -0.299646,
		29.893209, 38.716724, 51.834785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537006, 38.117996, 51.278458>,  <29.566011, 38.134533, 52.044537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537006, 38.117996, 51.278458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818409, 38.384861, 51.376415>,  <29.987249, 38.544979, 51.435188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818409, 38.384861, 51.376415>,  <29.537006, 38.117996, 51.278458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818409, 38.384861, 51.376415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539107, -0.276446, -0.795576,
		-0.463082, 0.691714, -0.554155,
		0.703504, 0.667166, 0.244891,
		30.029461, 38.585011, 51.449883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586842, 38.475468, 50.700336>,  <29.537006, 38.117996, 51.278458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586842, 38.475468, 50.700336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922680, 38.541225, 50.907433>,  <30.124182, 38.580681, 51.031689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922680, 38.541225, 50.907433>,  <29.586842, 38.475468, 50.700336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922680, 38.541225, 50.907433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541405, -0.330948, -0.772887,
		0.044284, 0.929218, -0.366868,
		0.839595, 0.164398, 0.517739,
		30.174559, 38.590546, 51.062756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936180, 38.806702, 50.223335>,  <29.586842, 38.475468, 50.700336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936180, 38.806702, 50.223335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218594, 38.695515, 50.483875>,  <30.388041, 38.628803, 50.640198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218594, 38.695515, 50.483875>,  <29.936180, 38.806702, 50.223335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218594, 38.695515, 50.483875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644289, -0.129658, -0.753711,
		0.293956, 0.951801, 0.087546,
		0.706032, -0.277963, 0.651348,
		30.430403, 38.612125, 50.679279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630274, 39.162239, 50.067562>,  <29.936180, 38.806702, 50.223335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630274, 39.162239, 50.067562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734625, 38.849201, 50.293655>,  <30.797235, 38.661377, 50.429310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734625, 38.849201, 50.293655>,  <30.630274, 39.162239, 50.067562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734625, 38.849201, 50.293655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645780, -0.293744, -0.704757,
		0.717573, 0.548871, 0.428753,
		0.260877, -0.782595, 0.565233,
		30.812887, 38.614422, 50.463226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364220, 39.128021, 50.118248>,  <30.630274, 39.162239, 50.067562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364220, 39.128021, 50.118248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244036, 38.753082, 50.188786>,  <31.171926, 38.528118, 50.231110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244036, 38.753082, 50.188786>,  <31.364220, 39.128021, 50.118248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244036, 38.753082, 50.188786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605804, -0.330352, -0.723788,
		0.736700, -0.110638, 0.667108,
		-0.300459, -0.937351, 0.176345,
		31.153898, 38.471878, 50.241688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901361, 38.746952, 49.927670>,  <31.364220, 39.128021, 50.118248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901361, 38.746952, 49.927670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641459, 38.443989, 49.953415>,  <31.485516, 38.262211, 49.968861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641459, 38.443989, 49.953415>,  <31.901361, 38.746952, 49.927670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641459, 38.443989, 49.953415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611783, -0.571319, -0.547098,
		0.451148, -0.316107, 0.834591,
		-0.649759, -0.757411, 0.064361,
		31.446531, 38.216766, 49.972725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318851, 38.136349, 50.018536>,  <31.901361, 38.746952, 49.927670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318851, 38.136349, 50.018536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960546, 38.029442, 49.876450>,  <31.745564, 37.965298, 49.791199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960546, 38.029442, 49.876450>,  <32.318851, 38.136349, 50.018536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960546, 38.029442, 49.876450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431356, -0.715689, -0.549292,
		-0.107414, -0.645259, 0.756375,
		-0.895765, -0.267265, -0.355212,
		31.691816, 37.949261, 49.769886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388931, 37.424847, 49.773884>,  <32.318851, 38.136349, 50.018536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388931, 37.424847, 49.773884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055401, 37.548668, 49.591053>,  <31.855284, 37.622959, 49.481354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055401, 37.548668, 49.591053>,  <32.388931, 37.424847, 49.773884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055401, 37.548668, 49.591053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264603, -0.502551, -0.823060,
		-0.484472, -0.807234, 0.337137,
		-0.833830, 0.309542, -0.457069,
		31.805254, 37.641533, 49.453930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350460, 36.920948, 49.385582>,  <32.388931, 37.424847, 49.773884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350460, 36.920948, 49.385582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099216, 37.191593, 49.231869>,  <31.948471, 37.353981, 49.139641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099216, 37.191593, 49.231869>,  <32.350460, 36.920948, 49.385582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099216, 37.191593, 49.231869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344344, -0.201178, -0.917036,
		-0.697787, -0.708325, -0.106626,
		-0.628109, 0.676612, -0.384287,
		31.910784, 37.394577, 49.116581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988930, 36.731804, 48.835495>,  <32.350460, 36.920948, 49.385582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988930, 36.731804, 48.835495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929577, 37.118362, 48.751526>,  <31.893965, 37.350296, 48.701145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929577, 37.118362, 48.751526>,  <31.988930, 36.731804, 48.835495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929577, 37.118362, 48.751526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029465, -0.207860, -0.977715,
		-0.988491, -0.151261, 0.002368,
		-0.148383, 0.966393, -0.209925,
		31.885061, 37.408279, 48.688549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530207, 36.817081, 48.257809>,  <31.988930, 36.731804, 48.835495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530207, 36.817081, 48.257809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758425, 37.145573, 48.261166>,  <31.895355, 37.342667, 48.263180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758425, 37.145573, 48.261166>,  <31.530207, 36.817081, 48.257809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758425, 37.145573, 48.261166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001288, 0.011109, -0.999937,
		-0.821266, 0.570497, 0.007396,
		0.570544, 0.821224, 0.008388,
		31.929588, 37.391941, 48.263683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337242, 37.127079, 47.676811>,  <31.530207, 36.817081, 48.257809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337242, 37.127079, 47.676811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682634, 37.308018, 47.766060>,  <31.889870, 37.416580, 47.819607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682634, 37.308018, 47.766060>,  <31.337242, 37.127079, 47.676811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682634, 37.308018, 47.766060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199941, 0.099142, -0.974779,
		-0.463061, 0.886313, -0.004836,
		0.863480, 0.452349, 0.223120,
		31.941679, 37.443722, 47.832996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303841, 37.783905, 47.400444>,  <31.337242, 37.127079, 47.676811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303841, 37.783905, 47.400444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688509, 37.676678, 47.423515>,  <31.919310, 37.612343, 47.437359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688509, 37.676678, 47.423515>,  <31.303841, 37.783905, 47.400444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688509, 37.676678, 47.423515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157518, 0.367905, -0.916425,
		0.224442, 0.890386, 0.396029,
		0.961672, -0.268066, 0.057678,
		31.977011, 37.596256, 47.440819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671223, 38.246624, 46.907944>,  <31.303841, 37.783905, 47.400444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671223, 38.246624, 46.907944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931225, 37.949287, 46.971115>,  <32.087227, 37.770885, 47.009018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931225, 37.949287, 46.971115>,  <31.671223, 38.246624, 46.907944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931225, 37.949287, 46.971115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268297, 0.030042, -0.962868,
		0.710993, 0.668239, 0.218963,
		0.650004, -0.743339, 0.157926,
		32.126225, 37.726284, 47.018494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170750, 38.406399, 46.442238>,  <31.671223, 38.246624, 46.907944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170750, 38.406399, 46.442238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246826, 38.022327, 46.524101>,  <32.292473, 37.791885, 46.573219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246826, 38.022327, 46.524101>,  <32.170750, 38.406399, 46.442238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246826, 38.022327, 46.524101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154833, -0.176517, -0.972043,
		0.969460, 0.216563, 0.115095,
		0.190192, -0.960178, 0.204658,
		32.303883, 37.734276, 46.585499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872883, 38.196323, 46.155636>,  <32.170750, 38.406399, 46.442238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872883, 38.196323, 46.155636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690971, 37.844826, 46.213581>,  <32.581825, 37.633926, 46.248348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690971, 37.844826, 46.213581>,  <32.872883, 38.196323, 46.155636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690971, 37.844826, 46.213581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110692, -0.217165, -0.969839,
		0.883697, -0.425031, 0.196033,
		-0.454783, -0.878742, 0.144860,
		32.554535, 37.581203, 46.257038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303486, 37.741844, 45.791882>,  <32.872883, 38.196323, 46.155636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303486, 37.741844, 45.791882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953079, 37.556553, 45.845570>,  <32.742836, 37.445377, 45.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953079, 37.556553, 45.845570>,  <33.303486, 37.741844, 45.791882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953079, 37.556553, 45.845570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097586, -0.442787, -0.891301,
		0.472308, -0.767695, 0.433093,
		-0.876015, -0.463232, 0.134216,
		32.690273, 37.417583, 45.885834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403080, 37.030491, 45.560780>,  <33.303486, 37.741844, 45.791882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403080, 37.030491, 45.560780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014679, 37.122337, 45.534172>,  <32.781639, 37.177444, 45.518208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014679, 37.122337, 45.534172>,  <33.403080, 37.030491, 45.560780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014679, 37.122337, 45.534172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005760, -0.255721, -0.966733,
		-0.238969, -0.939091, 0.246985,
		-0.971010, 0.229597, -0.066519,
		32.723377, 37.191223, 45.514214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175259, 36.531776, 45.173145>,  <33.403080, 37.030491, 45.560780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175259, 36.531776, 45.173145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881596, 36.802822, 45.155910>,  <32.705399, 36.965450, 45.145569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881596, 36.802822, 45.155910>,  <33.175259, 36.531776, 45.173145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881596, 36.802822, 45.155910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009189, -0.073367, -0.997263,
		-0.678921, -0.731748, 0.060090,
		-0.734153, 0.677615, -0.043086,
		32.661350, 37.006107, 45.142986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621311, 36.174038, 44.963200>,  <33.175259, 36.531776, 45.173145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621311, 36.174038, 44.963200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551376, 36.554497, 44.861420>,  <32.509415, 36.782772, 44.800354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551376, 36.554497, 44.861420>,  <32.621311, 36.174038, 44.963200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551376, 36.554497, 44.861420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200675, -0.287426, -0.936545,
		-0.963930, -0.112683, 0.241126,
		-0.174838, 0.951151, -0.254446,
		32.498924, 36.839844, 44.785088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128906, 36.066238, 44.554298>,  <32.621311, 36.174038, 44.963200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128906, 36.066238, 44.554298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201645, 36.451012, 44.472694>,  <32.245289, 36.681873, 44.423733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201645, 36.451012, 44.472694>,  <32.128906, 36.066238, 44.554298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201645, 36.451012, 44.472694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369109, -0.125520, -0.920871,
		-0.911421, 0.242761, 0.332232,
		0.181850, 0.961931, -0.204007,
		32.256199, 36.739590, 44.411491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497498, 36.323677, 44.306046>,  <32.128906, 36.066238, 44.554298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497498, 36.323677, 44.306046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777187, 36.580421, 44.180122>,  <31.945002, 36.734467, 44.104568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777187, 36.580421, 44.180122>,  <31.497498, 36.323677, 44.306046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777187, 36.580421, 44.180122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337765, -0.091503, -0.936772,
		-0.630081, 0.761344, 0.152816,
		0.699223, 0.641858, -0.314810,
		31.986954, 36.772980, 44.085678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158869, 36.774109, 43.840267>,  <31.497498, 36.323677, 44.306046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158869, 36.774109, 43.840267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553074, 36.808754, 43.781937>,  <31.789597, 36.829540, 43.746937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553074, 36.808754, 43.781937>,  <31.158869, 36.774109, 43.840267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553074, 36.808754, 43.781937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143240, -0.035442, -0.989053,
		-0.090832, 0.995612, -0.022523,
		0.985511, 0.086611, -0.145831,
		31.848726, 36.834736, 43.738186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232615, 37.189064, 43.217178>,  <31.158869, 36.774109, 43.840267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232615, 37.189064, 43.217178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589878, 37.011753, 43.247578>,  <31.804235, 36.905365, 43.265816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589878, 37.011753, 43.247578>,  <31.232615, 37.189064, 43.217178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589878, 37.011753, 43.247578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089041, 0.008656, -0.995990,
		0.440842, 0.896343, 0.047201,
		0.893157, -0.443278, 0.075995,
		31.857824, 36.878769, 43.270374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712566, 37.541214, 42.731762>,  <31.232615, 37.189064, 43.217178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712566, 37.541214, 42.731762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853178, 37.174469, 42.807438>,  <31.937546, 36.954422, 42.852844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853178, 37.174469, 42.807438>,  <31.712566, 37.541214, 42.731762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853178, 37.174469, 42.807438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143621, -0.146879, -0.978672,
		0.925094, 0.371205, 0.080048,
		0.351531, -0.916861, 0.189190,
		31.958637, 36.899410, 42.864193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434174, 37.447731, 42.367188>,  <31.712566, 37.541214, 42.731762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434174, 37.447731, 42.367188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292679, 37.081497, 42.443695>,  <32.207783, 36.861759, 42.489601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292679, 37.081497, 42.443695>,  <32.434174, 37.447731, 42.367188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292679, 37.081497, 42.443695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155593, -0.259240, -0.953197,
		0.922313, -0.307420, 0.234160,
		-0.353736, -0.915581, 0.191268,
		32.186558, 36.806824, 42.501076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856667, 37.016571, 41.992538>,  <32.434174, 37.447731, 42.367188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856667, 37.016571, 41.992538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520988, 36.809742, 42.059937>,  <32.319580, 36.685646, 42.100376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520988, 36.809742, 42.059937>,  <32.856667, 37.016571, 41.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520988, 36.809742, 42.059937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009135, -0.296378, -0.955027,
		0.543754, -0.802993, 0.243995,
		-0.839194, -0.517071, 0.168492,
		32.269230, 36.654621, 42.110485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927643, 36.256989, 41.845089>,  <32.856667, 37.016571, 41.992538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927643, 36.256989, 41.845089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533020, 36.313717, 41.812630>,  <32.296246, 36.347755, 41.793152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533020, 36.313717, 41.812630>,  <32.927643, 36.256989, 41.845089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533020, 36.313717, 41.812630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039743, -0.273463, -0.961061,
		-0.158490, -0.951370, 0.264151,
		-0.986560, 0.141820, -0.081152,
		32.237053, 36.356262, 41.788284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798504, 35.656277, 41.522221>,  <32.927643, 36.256989, 41.845089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798504, 35.656277, 41.522221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489403, 35.902218, 41.459202>,  <32.303944, 36.049782, 41.421391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489403, 35.902218, 41.459202>,  <32.798504, 35.656277, 41.522221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489403, 35.902218, 41.459202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022430, -0.274511, -0.961322,
		-0.634316, -0.739327, 0.225919,
		-0.772749, 0.614850, -0.157543,
		32.257580, 36.086674, 41.411938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442593, 35.148155, 41.137627>,  <32.798504, 35.656277, 41.522221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442593, 35.148155, 41.137627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285561, 35.512142, 41.084213>,  <32.191341, 35.730534, 41.052166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285561, 35.512142, 41.084213>,  <32.442593, 35.148155, 41.137627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285561, 35.512142, 41.084213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046203, -0.125495, -0.991018,
		-0.918555, -0.395227, 0.007224,
		-0.392584, 0.909970, -0.133535,
		32.167786, 35.785133, 41.044151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761105, 35.060474, 40.823238>,  <32.442593, 35.148155, 41.137627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761105, 35.060474, 40.823238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909153, 35.422749, 40.740536>,  <31.997982, 35.640114, 40.690914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909153, 35.422749, 40.740536>,  <31.761105, 35.060474, 40.823238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909153, 35.422749, 40.740536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007231, -0.219750, -0.975529,
		-0.928956, 0.362557, -0.074785,
		0.370119, 0.905683, -0.206760,
		32.020187, 35.694454, 40.678509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411671, 35.267517, 40.247158>,  <31.761105, 35.060474, 40.823238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411671, 35.267517, 40.247158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726463, 35.514267, 40.251648>,  <31.915339, 35.662315, 40.254341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726463, 35.514267, 40.251648>,  <31.411671, 35.267517, 40.247158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726463, 35.514267, 40.251648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036267, -0.028094, -0.998947,
		-0.615908, 0.786561, -0.044482,
		0.786983, 0.616873, 0.011223,
		31.962559, 35.699329, 40.255016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324738, 35.751404, 39.746029>,  <31.411671, 35.267517, 40.247158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324738, 35.751404, 39.746029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718193, 35.773651, 39.814568>,  <31.954268, 35.786999, 39.855690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718193, 35.773651, 39.814568>,  <31.324738, 35.751404, 39.746029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718193, 35.773651, 39.814568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168928, 0.045582, -0.984574,
		-0.062566, 0.997411, 0.035441,
		0.983641, 0.055614, 0.171343,
		32.013287, 35.790337, 39.865971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628937, 36.457817, 39.363937>,  <31.324738, 35.751404, 39.746029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628937, 36.457817, 39.363937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926409, 36.196911, 39.422577>,  <32.104893, 36.040367, 39.457760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926409, 36.196911, 39.422577>,  <31.628937, 36.457817, 39.363937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926409, 36.196911, 39.422577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191161, -0.002653, -0.981555,
		0.640622, 0.757987, 0.122715,
		0.743681, -0.652264, 0.146597,
		32.149513, 36.001232, 39.466557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158989, 36.735157, 38.865612>,  <31.628937, 36.457817, 39.363937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158989, 36.735157, 38.865612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290070, 36.363224, 38.932571>,  <32.368717, 36.140064, 38.972748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290070, 36.363224, 38.932571>,  <32.158989, 36.735157, 38.865612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290070, 36.363224, 38.932571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121200, -0.134346, -0.983494,
		0.936974, 0.342585, 0.068670,
		0.327705, -0.929831, 0.167400,
		32.388382, 36.084274, 38.982792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821228, 36.661182, 38.532845>,  <32.158989, 36.735157, 38.865612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821228, 36.661182, 38.532845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661484, 36.296616, 38.572502>,  <32.565639, 36.077873, 38.596294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661484, 36.296616, 38.572502>,  <32.821228, 36.661182, 38.532845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661484, 36.296616, 38.572502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133564, -0.164824, -0.977238,
		0.907014, -0.377026, 0.187557,
		-0.399358, -0.911419, 0.099140,
		32.541676, 36.023190, 38.602245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188583, 36.256641, 38.062458>,  <32.821228, 36.661182, 38.532845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188583, 36.256641, 38.062458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880787, 36.016727, 38.150219>,  <32.696110, 35.872780, 38.202877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880787, 36.016727, 38.150219>,  <33.188583, 36.256641, 38.062458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880787, 36.016727, 38.150219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023944, -0.316210, -0.948387,
		0.638207, -0.735030, 0.228960,
		-0.769493, -0.599785, 0.219407,
		32.649940, 35.836792, 38.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417133, 35.546272, 37.815067>,  <33.188583, 36.256641, 38.062458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417133, 35.546272, 37.815067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025536, 35.624836, 37.836956>,  <32.790577, 35.671974, 37.850090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025536, 35.624836, 37.836956>,  <33.417133, 35.546272, 37.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025536, 35.624836, 37.836956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072233, -0.083105, -0.993920,
		-0.190671, -0.976993, 0.095546,
		-0.978993, 0.196413, 0.054725,
		32.731838, 35.683758, 37.853374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118355, 35.660191, 37.820320>,  <33.417133, 35.546272, 37.815067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118355, 35.660191, 37.820320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319523, 35.933170, 38.032486>,  <34.440224, 36.096958, 38.159786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319523, 35.933170, 38.032486>,  <34.118355, 35.660191, 37.820320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319523, 35.933170, 38.032486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664664, -0.697649, 0.267409,
		0.552536, 0.218063, -0.804458,
		0.502917, 0.682447, 0.530414,
		34.470398, 36.137905, 38.191608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886478, 35.739101, 37.698551>,  <34.118355, 35.660191, 37.820320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886478, 35.739101, 37.698551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788746, 35.836300, 38.074051>,  <34.730106, 35.894619, 38.299351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788746, 35.836300, 38.074051>,  <34.886478, 35.739101, 37.698551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788746, 35.836300, 38.074051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590499, -0.730613, 0.342806,
		0.769166, 0.638089, 0.035020,
		-0.244327, 0.242996, 0.938753,
		34.715446, 35.909199, 38.355679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494740, 35.325508, 38.024094>,  <34.886478, 35.739101, 37.698551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494740, 35.325508, 38.024094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884289, 35.396965, 38.080173>,  <36.118019, 35.439838, 38.113819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884289, 35.396965, 38.080173>,  <35.494740, 35.325508, 38.024094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884289, 35.396965, 38.080173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075052, -0.329482, 0.941174,
		0.214323, -0.927108, -0.307467,
		0.973875, 0.178639, 0.140197,
		36.176453, 35.450558, 38.122234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704048, 34.789814, 38.350498>,  <35.494740, 35.325508, 38.024094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704048, 34.789814, 38.350498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989616, 35.056084, 38.437393>,  <36.160957, 35.215847, 38.489529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989616, 35.056084, 38.437393>,  <35.704048, 34.789814, 38.350498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989616, 35.056084, 38.437393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066430, -0.373222, 0.925361,
		0.697068, -0.646204, -0.310672,
		0.713921, 0.665677, 0.217233,
		36.203793, 35.255787, 38.502563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376446, 34.415924, 38.598713>,  <35.704048, 34.789814, 38.350498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376446, 34.415924, 38.598713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378693, 34.797573, 38.718456>,  <36.380039, 35.026562, 38.790302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378693, 34.797573, 38.718456>,  <36.376446, 34.415924, 38.598713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378693, 34.797573, 38.718456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007757, -0.299308, 0.954125,
		0.999954, -0.007682, 0.005720,
		0.005618, 0.954126, 0.299354,
		36.380379, 35.083809, 38.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945911, 34.509037, 39.160477>,  <36.376446, 34.415924, 38.598713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945911, 34.509037, 39.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636940, 34.762810, 39.172123>,  <36.451557, 34.915073, 39.179111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636940, 34.762810, 39.172123>,  <36.945911, 34.509037, 39.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636940, 34.762810, 39.172123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147633, -0.223951, 0.963354,
		0.617700, 0.739828, 0.266649,
		-0.772432, 0.634430, 0.029112,
		36.405209, 34.953140, 39.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100380, 34.898148, 39.789898>,  <36.945911, 34.509037, 39.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100380, 34.898148, 39.789898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716988, 34.982468, 39.713078>,  <36.486954, 35.033062, 39.666985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716988, 34.982468, 39.713078>,  <37.100380, 34.898148, 39.789898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716988, 34.982468, 39.713078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226474, -0.153446, 0.961854,
		0.173292, 0.965410, 0.194816,
		-0.958478, 0.210802, -0.192050,
		36.429443, 35.045708, 39.655464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934547, 35.354694, 40.305283>,  <37.100380, 34.898148, 39.789898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934547, 35.354694, 40.305283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577282, 35.216602, 40.189991>,  <36.362923, 35.133747, 40.120815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577282, 35.216602, 40.189991>,  <36.934547, 35.354694, 40.305283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577282, 35.216602, 40.189991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352529, 0.139486, 0.925347,
		-0.279256, 0.928094, -0.246288,
		-0.893163, -0.345232, -0.288227,
		36.309334, 35.113033, 40.103523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537067, 35.940388, 40.435528>,  <36.934547, 35.354694, 40.305283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537067, 35.940388, 40.435528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322216, 35.603355, 40.419762>,  <36.193306, 35.401134, 40.410301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322216, 35.603355, 40.419762>,  <36.537067, 35.940388, 40.435528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322216, 35.603355, 40.419762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377482, 0.198323, 0.904531,
		-0.754322, 0.500727, -0.424583,
		-0.537127, -0.842580, -0.039416,
		36.161079, 35.350582, 40.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852402, 36.116402, 40.679714>,  <36.537067, 35.940388, 40.435528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852402, 36.116402, 40.679714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875359, 35.719463, 40.723450>,  <35.889133, 35.481300, 40.749691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875359, 35.719463, 40.723450>,  <35.852402, 36.116402, 40.679714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875359, 35.719463, 40.723450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430116, 0.074256, 0.899715,
		-0.900947, -0.098666, -0.422562,
		0.057393, -0.992346, 0.109338,
		35.892578, 35.421761, 40.756252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189796, 35.949139, 40.825047>,  <35.852402, 36.116402, 40.679714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189796, 35.949139, 40.825047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397213, 35.630566, 40.949505>,  <35.521664, 35.439423, 41.024181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397213, 35.630566, 40.949505>,  <35.189796, 35.949139, 40.825047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397213, 35.630566, 40.949505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393571, 0.100739, 0.913758,
		-0.759088, -0.596283, -0.261213,
		0.518544, -0.796429, 0.311149,
		35.552776, 35.391636, 41.042850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688351, 35.395496, 41.145927>,  <35.189796, 35.949139, 40.825047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688351, 35.395496, 41.145927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059059, 35.348118, 41.288509>,  <35.281487, 35.319691, 41.374058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059059, 35.348118, 41.288509>,  <34.688351, 35.395496, 41.145927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059059, 35.348118, 41.288509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339076, 0.144504, 0.929595,
		-0.161617, -0.982390, 0.093760,
		0.926773, -0.118446, 0.356459,
		35.337090, 35.312584, 41.395447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612720, 35.061829, 41.770695>,  <34.688351, 35.395496, 41.145927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612720, 35.061829, 41.770695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989548, 35.186600, 41.820023>,  <35.215645, 35.261463, 41.849621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989548, 35.186600, 41.820023>,  <34.612720, 35.061829, 41.770695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989548, 35.186600, 41.820023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143296, 0.041859, 0.988794,
		0.303268, -0.949184, 0.084132,
		0.942069, 0.311926, 0.123319,
		35.272167, 35.280178, 41.857018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875191, 34.553547, 42.149723>,  <34.612720, 35.061829, 41.770695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875191, 34.553547, 42.149723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061287, 34.901752, 42.213913>,  <35.172943, 35.110676, 42.252426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061287, 34.901752, 42.213913>,  <34.875191, 34.553547, 42.149723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061287, 34.901752, 42.213913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145090, -0.103850, 0.983953,
		0.873215, -0.481055, 0.077988,
		0.465236, 0.870518, 0.160479,
		35.200859, 35.162907, 42.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190842, 34.399567, 42.756443>,  <34.875191, 34.553547, 42.149723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190842, 34.399567, 42.756443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214066, 34.798168, 42.732414>,  <35.228001, 35.037331, 42.717999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214066, 34.798168, 42.732414>,  <35.190842, 34.399567, 42.756443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214066, 34.798168, 42.732414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213550, 0.071179, 0.974336,
		0.975205, -0.043742, 0.216936,
		0.058060, 0.996504, -0.060073,
		35.231483, 35.097118, 42.714394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577095, 34.635635, 43.452179>,  <35.190842, 34.399567, 42.756443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577095, 34.635635, 43.452179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399830, 34.964325, 43.308857>,  <35.293472, 35.161537, 43.222866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399830, 34.964325, 43.308857>,  <35.577095, 34.635635, 43.452179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399830, 34.964325, 43.308857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043691, 0.379421, 0.924192,
		0.895375, 0.425224, -0.132244,
		-0.443164, 0.821720, -0.358303,
		35.266880, 35.210842, 43.201366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043518, 35.188568, 43.685467>,  <35.577095, 34.635635, 43.452179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043518, 35.188568, 43.685467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686337, 35.340240, 43.588421>,  <35.472027, 35.431244, 43.530193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686337, 35.340240, 43.588421>,  <36.043518, 35.188568, 43.685467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686337, 35.340240, 43.588421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111648, 0.335567, 0.935377,
		0.436091, 0.862332, -0.257310,
		-0.892950, 0.379181, -0.242616,
		35.418453, 35.453995, 43.515636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065094, 35.923019, 43.883305>,  <36.043518, 35.188568, 43.685467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065094, 35.923019, 43.883305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676186, 35.830223, 43.871479>,  <35.442841, 35.774544, 43.864384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676186, 35.830223, 43.871479>,  <36.065094, 35.923019, 43.883305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676186, 35.830223, 43.871479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108238, 0.334304, 0.936229,
		-0.207317, 0.913466, -0.350144,
		-0.972268, -0.231995, -0.029564,
		35.384506, 35.760624, 43.862610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756069, 36.337132, 44.345936>,  <36.065094, 35.923019, 43.883305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756069, 36.337132, 44.345936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496094, 36.035835, 44.305538>,  <35.340107, 35.855057, 44.281300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496094, 36.035835, 44.305538>,  <35.756069, 36.337132, 44.345936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496094, 36.035835, 44.305538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300248, 0.132416, 0.944625,
		-0.698159, 0.644275, -0.312223,
		-0.649942, -0.753243, -0.100995,
		35.301109, 35.809864, 44.275238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992970, 36.669327, 44.353039>,  <35.756069, 36.337132, 44.345936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992970, 36.669327, 44.353039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048542, 36.296577, 44.487091>,  <35.081886, 36.072929, 44.567520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048542, 36.296577, 44.487091>,  <34.992970, 36.669327, 44.353039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048542, 36.296577, 44.487091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262230, 0.291711, 0.919859,
		-0.954952, -0.215674, -0.203839,
		0.138928, -0.931874, 0.335127,
		35.090221, 36.017014, 44.587627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530727, 36.771111, 44.943977>,  <34.992970, 36.669327, 44.353039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530727, 36.771111, 44.943977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691399, 36.409668, 45.003502>,  <34.787800, 36.192802, 45.039219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691399, 36.409668, 45.003502>,  <34.530727, 36.771111, 44.943977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691399, 36.409668, 45.003502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235823, 0.054961, 0.970241,
		-0.884899, -0.424814, -0.191016,
		0.401673, -0.903611, 0.148816,
		34.811901, 36.138584, 45.048145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997112, 36.323418, 45.174412>,  <34.530727, 36.771111, 44.943977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997112, 36.323418, 45.174412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351952, 36.192753, 45.304859>,  <34.564854, 36.114353, 45.383129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351952, 36.192753, 45.304859>,  <33.997112, 36.323418, 45.174412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351952, 36.192753, 45.304859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326031, 0.056704, 0.943657,
		-0.326746, -0.943440, -0.056199,
		0.887097, -0.326659, 0.326118,
		34.618080, 36.094757, 45.402695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849335, 35.690525, 45.702255>,  <33.997112, 36.323418, 45.174412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849335, 35.690525, 45.702255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228798, 35.801682, 45.762691>,  <34.456474, 35.868378, 45.798954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228798, 35.801682, 45.762691>,  <33.849335, 35.690525, 45.702255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228798, 35.801682, 45.762691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161014, 0.013111, 0.986865,
		0.272263, -0.960522, 0.057183,
		0.948656, 0.277895, 0.151087,
		34.513393, 35.885048, 45.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920494, 35.443748, 46.335491>,  <33.849335, 35.690525, 45.702255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920494, 35.443748, 46.335491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227467, 35.699188, 46.312721>,  <34.411652, 35.852451, 46.299061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227467, 35.699188, 46.312721>,  <33.920494, 35.443748, 46.335491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227467, 35.699188, 46.312721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043876, 0.140894, 0.989052,
		0.639628, -0.756531, 0.136146,
		0.767431, 0.638599, -0.056926,
		34.457695, 35.890770, 46.295643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257217, 35.347759, 47.015270>,  <33.920494, 35.443748, 46.335491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257217, 35.347759, 47.015270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396736, 35.678665, 46.839100>,  <34.480446, 35.877209, 46.733398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396736, 35.678665, 46.839100>,  <34.257217, 35.347759, 47.015270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396736, 35.678665, 46.839100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221724, 0.383763, 0.896417,
		0.910593, -0.410320, -0.049569,
		0.348795, 0.827262, -0.440430,
		34.501373, 35.926846, 46.706970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005291, 35.508476, 47.268105>,  <34.257217, 35.347759, 47.015270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005291, 35.508476, 47.268105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827950, 35.843006, 47.139103>,  <34.721546, 36.043724, 47.061703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827950, 35.843006, 47.139103>,  <35.005291, 35.508476, 47.268105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827950, 35.843006, 47.139103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000019, 0.359784, 0.933035,
		0.896348, 0.413669, -0.159495,
		-0.443351, 0.836321, -0.322500,
		34.694942, 36.093903, 47.042355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274067, 35.970062, 47.829243>,  <35.005291, 35.508476, 47.268105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274067, 35.970062, 47.829243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969818, 36.164471, 47.657085>,  <34.787270, 36.281116, 47.553791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969818, 36.164471, 47.657085>,  <35.274067, 35.970062, 47.829243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969818, 36.164471, 47.657085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046987, 0.620006, 0.783189,
		0.647493, 0.615933, -0.448753,
		-0.760621, 0.486024, -0.430391,
		34.741631, 36.310276, 47.527969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497265, 36.675884, 47.906853>,  <35.274067, 35.970062, 47.829243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497265, 36.675884, 47.906853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098705, 36.648129, 47.887371>,  <34.859570, 36.631477, 47.875683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098705, 36.648129, 47.887371>,  <35.497265, 36.675884, 47.906853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098705, 36.648129, 47.887371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083054, 0.683740, 0.724983,
		-0.017002, 0.726419, -0.687042,
		-0.996400, -0.069388, -0.048707,
		34.799786, 36.627312, 47.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285820, 37.260262, 47.918247>,  <35.497265, 36.675884, 47.906853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285820, 37.260262, 47.918247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978352, 37.042805, 48.053062>,  <34.793869, 36.912331, 48.133949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978352, 37.042805, 48.053062>,  <35.285820, 37.260262, 47.918247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978352, 37.042805, 48.053062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041274, 0.567969, 0.822014,
		-0.638308, 0.617950, -0.459021,
		-0.768674, -0.543644, 0.337034,
		34.747749, 36.879711, 48.154171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848465, 37.747028, 48.152702>,  <35.285820, 37.260262, 47.918247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848465, 37.747028, 48.152702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679089, 37.419559, 48.307869>,  <34.577461, 37.223080, 48.400970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679089, 37.419559, 48.307869>,  <34.848465, 37.747028, 48.152702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679089, 37.419559, 48.307869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054203, 0.450330, 0.891215,
		-0.904301, 0.356351, -0.235062,
		-0.423441, -0.818667, 0.387919,
		34.552055, 37.173958, 48.424244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257591, 37.983635, 48.390335>,  <34.848465, 37.747028, 48.152702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257591, 37.983635, 48.390335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354156, 37.660034, 48.604710>,  <34.412094, 37.465874, 48.733334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354156, 37.660034, 48.604710>,  <34.257591, 37.983635, 48.390335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354156, 37.660034, 48.604710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153744, 0.513414, 0.844257,
		-0.958167, -0.286211, -0.000436,
		0.241411, -0.809006, 0.535939,
		34.426579, 37.417332, 48.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745686, 37.977783, 48.957375>,  <34.257591, 37.983635, 48.390335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745686, 37.977783, 48.957375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056015, 37.755531, 49.076954>,  <34.242214, 37.622181, 49.148701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056015, 37.755531, 49.076954>,  <33.745686, 37.977783, 48.957375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056015, 37.755531, 49.076954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050515, 0.526990, 0.848368,
		-0.628919, -0.643087, 0.436921,
		0.775828, -0.555626, 0.298949,
		34.288765, 37.588844, 49.166637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538277, 37.717888, 49.607849>,  <33.745686, 37.977783, 48.957375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538277, 37.717888, 49.607849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935814, 37.677376, 49.589897>,  <34.174335, 37.653069, 49.579124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935814, 37.677376, 49.589897>,  <33.538277, 37.717888, 49.607849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935814, 37.677376, 49.589897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083026, 0.412744, 0.907055,
		-0.073345, -0.905198, 0.418612,
		0.993845, -0.101283, -0.044883,
		34.233967, 37.646992, 49.576431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747456, 37.452240, 50.202141>,  <33.538277, 37.717888, 49.607849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747456, 37.452240, 50.202141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103336, 37.594616, 50.087780>,  <34.316864, 37.680042, 50.019161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103336, 37.594616, 50.087780>,  <33.747456, 37.452240, 50.202141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103336, 37.594616, 50.087780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154587, 0.354377, 0.922236,
		0.429578, -0.864710, 0.260266,
		0.889700, 0.355939, -0.285905,
		34.370247, 37.701397, 50.002010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205700, 37.349197, 50.786968>,  <33.747456, 37.452240, 50.202141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205700, 37.349197, 50.786968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394760, 37.613815, 50.554089>,  <34.508194, 37.772587, 50.414360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394760, 37.613815, 50.554089>,  <34.205700, 37.349197, 50.786968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394760, 37.613815, 50.554089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383353, 0.440523, 0.811776,
		0.793502, -0.606873, -0.045393,
		0.472647, 0.661547, -0.582202,
		34.536556, 37.812279, 50.379429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987606, 37.364361, 51.007576>,  <34.205700, 37.349197, 50.786968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987606, 37.364361, 51.007576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841747, 37.703941, 50.854572>,  <34.754230, 37.907692, 50.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841747, 37.703941, 50.854572>,  <34.987606, 37.364361, 51.007576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841747, 37.703941, 50.854572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268171, 0.489133, 0.829960,
		0.891693, 0.200065, -0.406025,
		-0.364647, 0.848954, -0.382505,
		34.732353, 37.958626, 50.739822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451683, 37.762585, 51.303776>,  <34.987606, 37.364361, 51.007576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451683, 37.762585, 51.303776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165756, 38.010014, 51.173298>,  <34.994202, 38.158470, 51.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165756, 38.010014, 51.173298>,  <35.451683, 37.762585, 51.303776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165756, 38.010014, 51.173298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175493, 0.610199, 0.772567,
		0.676937, 0.494996, -0.544735,
		-0.714814, 0.618576, -0.326198,
		34.951313, 38.195587, 51.075439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716698, 38.360485, 51.417587>,  <35.451683, 37.762585, 51.303776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716698, 38.360485, 51.417587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331688, 38.467434, 51.399467>,  <35.100681, 38.531605, 51.388596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331688, 38.467434, 51.399467>,  <35.716698, 38.360485, 51.417587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331688, 38.467434, 51.399467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127555, 0.593789, 0.794446,
		0.239312, 0.758898, -0.605643,
		-0.962528, 0.267373, -0.045299,
		35.042931, 38.547646, 51.385880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630207, 38.990879, 51.561985>,  <35.716698, 38.360485, 51.417587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630207, 38.990879, 51.561985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290783, 38.805637, 51.664337>,  <35.087128, 38.694492, 51.725750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290783, 38.805637, 51.664337>,  <35.630207, 38.990879, 51.561985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290783, 38.805637, 51.664337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001734, 0.481181, 0.876620,
		-0.529093, 0.744310, -0.407509,
		-0.848562, -0.463107, 0.255880,
		35.036213, 38.666706, 51.741100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032372, 39.693218, 51.475876>,  <35.630207, 38.990879, 51.561985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032372, 39.693218, 51.475876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242916, 40.033016, 51.490257>,  <36.369244, 40.236897, 51.498886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242916, 40.033016, 51.490257>,  <36.032372, 39.693218, 51.475876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242916, 40.033016, 51.490257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306869, -0.150368, -0.939799,
		-0.792952, 0.505708, -0.339833,
		0.526364, 0.849499, 0.035952,
		36.400826, 40.287865, 51.501041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788677, 40.146870, 50.936584>,  <36.032372, 39.693218, 51.475876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788677, 40.146870, 50.936584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163250, 40.237568, 51.043678>,  <36.387993, 40.291988, 51.107933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163250, 40.237568, 51.043678>,  <35.788677, 40.146870, 50.936584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163250, 40.237568, 51.043678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286186, -0.052213, -0.956750,
		-0.202960, 0.972554, -0.113785,
		0.936432, 0.226746, 0.267735,
		36.444180, 40.305592, 51.123997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067825, 40.370541, 50.404263>,  <35.788677, 40.146870, 50.936584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067825, 40.370541, 50.404263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421665, 40.340565, 50.588379>,  <36.633968, 40.322578, 50.698849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421665, 40.340565, 50.588379>,  <36.067825, 40.370541, 50.404263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421665, 40.340565, 50.588379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435987, -0.217424, -0.873294,
		0.165522, 0.973196, -0.159661,
		0.884601, -0.074939, 0.460289,
		36.687046, 40.318085, 50.726467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481403, 40.781410, 50.017467>,  <36.067825, 40.370541, 50.404263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481403, 40.781410, 50.017467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736732, 40.558750, 50.230141>,  <36.889931, 40.425156, 50.357742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736732, 40.558750, 50.230141>,  <36.481403, 40.781410, 50.017467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736732, 40.558750, 50.230141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519710, -0.197868, -0.831114,
		0.567842, 0.806839, 0.162993,
		0.638324, -0.556650, 0.531680,
		36.928230, 40.391754, 50.389645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211365, 41.029324, 49.887402>,  <36.481403, 40.781410, 50.017467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211365, 41.029324, 49.887402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215305, 40.643360, 49.992359>,  <37.217670, 40.411781, 50.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215305, 40.643360, 49.992359>,  <37.211365, 41.029324, 49.887402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215305, 40.643360, 49.992359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688230, -0.183822, -0.701818,
		0.725425, 0.187500, 0.662270,
		0.009851, -0.964911, 0.262392,
		37.218262, 40.353886, 50.071075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004704, 40.749191, 49.858070>,  <37.211365, 41.029324, 49.887402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004704, 40.749191, 49.858070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732536, 40.463352, 49.793106>,  <37.569237, 40.291847, 49.754128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732536, 40.463352, 49.793106>,  <38.004704, 40.749191, 49.858070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732536, 40.463352, 49.793106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500825, -0.291657, -0.814930,
		0.534983, -0.635830, 0.556339,
		-0.680417, -0.714602, -0.162408,
		37.528412, 40.248970, 49.744385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321247, 40.309250, 49.336613>,  <38.004704, 40.749191, 49.858070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321247, 40.309250, 49.336613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962326, 40.133446, 49.353012>,  <37.746975, 40.027966, 49.362850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962326, 40.133446, 49.353012>,  <38.321247, 40.309250, 49.336613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962326, 40.133446, 49.353012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262213, -0.605429, -0.751465,
		0.355096, -0.663542, 0.658498,
		-0.897302, -0.439509, 0.040996,
		37.693134, 40.001595, 49.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445782, 39.568607, 49.386642>,  <38.321247, 40.309250, 49.336613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445782, 39.568607, 49.386642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068714, 39.605179, 49.258263>,  <37.842472, 39.627121, 49.181232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068714, 39.605179, 49.258263>,  <38.445782, 39.568607, 49.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068714, 39.605179, 49.258263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198172, -0.620438, -0.758805,
		-0.268510, -0.778907, 0.566750,
		-0.942672, 0.091432, -0.320951,
		37.785912, 39.632610, 49.161976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314777, 38.960178, 48.971775>,  <38.445782, 39.568607, 49.386642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314777, 38.960178, 48.971775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988255, 39.170525, 48.876179>,  <37.792343, 39.296730, 48.818821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988255, 39.170525, 48.876179>,  <38.314777, 38.960178, 48.971775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988255, 39.170525, 48.876179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000656, -0.412905, -0.910774,
		-0.577624, -0.743624, 0.336710,
		-0.816302, 0.525864, -0.238992,
		37.743362, 39.328285, 48.804482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721333, 38.488060, 48.716156>,  <38.314777, 38.960178, 48.971775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721333, 38.488060, 48.716156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706398, 38.861877, 48.574604>,  <37.697437, 39.086166, 48.489674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706398, 38.861877, 48.574604>,  <37.721333, 38.488060, 48.716156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706398, 38.861877, 48.574604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089786, -0.349558, -0.932602,
		-0.995261, -0.066595, -0.070858,
		-0.037338, 0.934545, -0.353881,
		37.695198, 39.142242, 48.468441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131840, 38.462044, 48.306061>,  <37.721333, 38.488060, 48.716156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131840, 38.462044, 48.306061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357693, 38.774605, 48.199772>,  <37.493202, 38.962143, 48.135998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357693, 38.774605, 48.199772>,  <37.131840, 38.462044, 48.306061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357693, 38.774605, 48.199772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172413, -0.203179, -0.963842,
		-0.807137, 0.590026, 0.020003,
		0.564628, 0.781401, -0.265721,
		37.527081, 39.009026, 48.120056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728783, 38.905579, 47.983955>,  <37.131840, 38.462044, 48.306061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728783, 38.905579, 47.983955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104572, 38.967636, 47.861759>,  <37.330044, 39.004871, 47.788441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104572, 38.967636, 47.861759>,  <36.728783, 38.905579, 47.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104572, 38.967636, 47.861759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287021, -0.130582, -0.948982,
		-0.187117, 0.979224, -0.078149,
		0.939471, 0.155141, -0.305492,
		37.386414, 39.014179, 47.770111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706879, 39.173885, 47.305817>,  <36.728783, 38.905579, 47.983955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706879, 39.173885, 47.305817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071987, 39.010853, 47.316605>,  <37.291050, 38.913033, 47.323078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071987, 39.010853, 47.316605>,  <36.706879, 39.173885, 47.305817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071987, 39.010853, 47.316605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082116, -0.247781, -0.965330,
		0.400138, 0.878908, -0.259636,
		0.912769, -0.407586, 0.026974,
		37.345818, 38.888577, 47.324696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042095, 39.471066, 46.813538>,  <36.706879, 39.173885, 47.305817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042095, 39.471066, 46.813538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220798, 39.117409, 46.868240>,  <37.328018, 38.905216, 46.901062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220798, 39.117409, 46.868240>,  <37.042095, 39.471066, 46.813538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220798, 39.117409, 46.868240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002090, -0.151833, -0.988404,
		0.894655, 0.441859, -0.065984,
		0.446754, -0.884142, 0.136761,
		37.354824, 38.852165, 46.909267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648998, 39.406040, 46.363293>,  <37.042095, 39.471066, 46.813538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648998, 39.406040, 46.363293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541901, 39.031281, 46.453209>,  <37.477642, 38.806423, 46.507160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541901, 39.031281, 46.453209>,  <37.648998, 39.406040, 46.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541901, 39.031281, 46.453209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034967, -0.242604, -0.969495,
		0.962855, -0.251719, 0.097716,
		-0.267747, -0.936900, 0.224790,
		37.461578, 38.750210, 46.520645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081554, 38.934536, 45.921452>,  <37.648998, 39.406040, 46.363293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081554, 38.934536, 45.921452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762989, 38.724388, 46.041267>,  <37.571850, 38.598301, 46.113155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762989, 38.724388, 46.041267>,  <38.081554, 38.934536, 45.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762989, 38.724388, 46.041267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141764, -0.319315, -0.936985,
		0.587907, -0.788687, 0.179828,
		-0.796409, -0.525367, 0.299536,
		37.524067, 38.566776, 46.131126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233810, 38.376778, 45.609131>,  <38.081554, 38.934536, 45.921452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233810, 38.376778, 45.609131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847866, 38.371647, 45.714115>,  <37.616299, 38.368568, 45.777107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847866, 38.371647, 45.714115>,  <38.233810, 38.376778, 45.609131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847866, 38.371647, 45.714115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253694, -0.214806, -0.943132,
		0.068478, -0.976572, 0.204003,
		-0.964857, -0.012829, 0.262460,
		37.558411, 38.367798, 45.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033985, 37.629776, 45.392433>,  <38.233810, 38.376778, 45.609131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033985, 37.629776, 45.392433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696404, 37.841652, 45.426292>,  <37.493855, 37.968777, 45.446609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696404, 37.841652, 45.426292>,  <38.033985, 37.629776, 45.392433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696404, 37.841652, 45.426292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319255, -0.369191, -0.872797,
		-0.431064, -0.763625, 0.480688,
		-0.843955, 0.529693, 0.084646,
		37.443214, 38.000557, 45.451687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412407, 37.140984, 45.304726>,  <38.033985, 37.629776, 45.392433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412407, 37.140984, 45.304726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305584, 37.519390, 45.231255>,  <37.241489, 37.746433, 45.187172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305584, 37.519390, 45.231255>,  <37.412407, 37.140984, 45.304726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305584, 37.519390, 45.231255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375975, -0.277774, -0.884016,
		-0.887313, -0.167024, 0.429859,
		-0.267056, 0.946015, -0.183676,
		37.225468, 37.803196, 45.176151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752880, 37.132271, 45.094925>,  <37.412407, 37.140984, 45.304726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752880, 37.132271, 45.094925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913536, 37.465706, 44.943230>,  <37.009930, 37.665768, 44.852211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913536, 37.465706, 44.943230>,  <36.752880, 37.132271, 45.094925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913536, 37.465706, 44.943230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233235, -0.307344, -0.922573,
		-0.885602, 0.458990, 0.070981,
		0.401636, 0.833587, -0.379237,
		37.034027, 37.715782, 44.829460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375687, 37.186371, 44.425064>,  <36.752880, 37.132271, 45.094925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375687, 37.186371, 44.425064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640759, 37.482635, 44.380760>,  <36.799801, 37.660397, 44.354179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640759, 37.482635, 44.380760>,  <36.375687, 37.186371, 44.425064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640759, 37.482635, 44.380760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135916, -0.026491, -0.990366,
		-0.736462, 0.671354, 0.083113,
		0.662684, 0.740663, -0.110757,
		36.839565, 37.704834, 44.347534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051556, 37.594658, 43.998955>,  <36.375687, 37.186371, 44.425064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051556, 37.594658, 43.998955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439320, 37.688545, 43.970219>,  <36.671978, 37.744877, 43.952976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439320, 37.688545, 43.970219>,  <36.051556, 37.594658, 43.998955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439320, 37.688545, 43.970219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054489, -0.079591, -0.995337,
		-0.239340, 0.968800, -0.064366,
		0.969406, 0.234716, -0.071838,
		36.730141, 37.758961, 43.948666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027508, 37.883720, 43.418297>,  <36.051556, 37.594658, 43.998955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027508, 37.883720, 43.418297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408825, 37.781590, 43.482853>,  <36.637615, 37.720310, 43.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408825, 37.781590, 43.482853>,  <36.027508, 37.883720, 43.418297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408825, 37.781590, 43.482853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144938, -0.082104, -0.986028,
		0.265012, 0.963362, -0.041262,
		0.953290, -0.255329, 0.161386,
		36.694813, 37.704990, 43.531269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330616, 38.154530, 42.888561>,  <36.027508, 37.883720, 43.418297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330616, 38.154530, 42.888561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632549, 37.923290, 43.012516>,  <36.813709, 37.784546, 43.086887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632549, 37.923290, 43.012516>,  <36.330616, 38.154530, 42.888561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632549, 37.923290, 43.012516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287976, -0.132393, -0.948442,
		0.589322, 0.805153, 0.066545,
		0.754831, -0.578101, 0.309887,
		36.858997, 37.749859, 43.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927135, 38.411449, 42.550594>,  <36.330616, 38.154530, 42.888561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927135, 38.411449, 42.550594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978313, 38.026035, 42.644596>,  <37.009018, 37.794785, 42.700996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978313, 38.026035, 42.644596>,  <36.927135, 38.411449, 42.550594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978313, 38.026035, 42.644596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284494, -0.191335, -0.939390,
		0.950102, 0.187042, 0.249642,
		0.127940, -0.963538, 0.235000,
		37.016697, 37.736973, 42.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600014, 38.114754, 42.173874>,  <36.927135, 38.411449, 42.550594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600014, 38.114754, 42.173874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429649, 37.766304, 42.271645>,  <37.327431, 37.557236, 42.330307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429649, 37.766304, 42.271645>,  <37.600014, 38.114754, 42.173874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429649, 37.766304, 42.271645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388059, -0.419924, -0.820411,
		0.817318, -0.254572, 0.516898,
		-0.425911, -0.871124, 0.244423,
		37.301876, 37.504967, 42.344971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110470, 37.658760, 42.044811>,  <37.600014, 38.114754, 42.173874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110470, 37.658760, 42.044811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768261, 37.453022, 42.021049>,  <37.562935, 37.329578, 42.006794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768261, 37.453022, 42.021049>,  <38.110470, 37.658760, 42.044811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768261, 37.453022, 42.021049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328650, -0.450794, -0.829924,
		0.400092, -0.729541, 0.554704,
		-0.855521, -0.514349, -0.059405,
		37.511604, 37.298717, 42.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341946, 36.966576, 41.981941>,  <38.110470, 37.658760, 42.044811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341946, 36.966576, 41.981941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966824, 36.983795, 41.844147>,  <37.741753, 36.994125, 41.761471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966824, 36.983795, 41.844147>,  <38.341946, 36.966576, 41.981941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966824, 36.983795, 41.844147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279938, -0.493105, -0.823700,
		-0.205327, -0.868904, 0.450385,
		-0.937803, 0.043048, -0.344487,
		37.685482, 36.996708, 41.740799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312508, 36.341721, 41.707695>,  <38.341946, 36.966576, 41.981941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312508, 36.341721, 41.707695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016033, 36.545139, 41.532413>,  <37.838146, 36.667191, 41.427246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016033, 36.545139, 41.532413>,  <38.312508, 36.341721, 41.707695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016033, 36.545139, 41.532413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249605, -0.397195, -0.883138,
		-0.623167, -0.763951, 0.167461,
		-0.741189, 0.508543, -0.438205,
		37.793678, 36.697701, 41.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067696, 35.935989, 41.135895>,  <38.312508, 36.341721, 41.707695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067696, 35.935989, 41.135895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928001, 36.300396, 41.048187>,  <37.844185, 36.519039, 40.995564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928001, 36.300396, 41.048187>,  <38.067696, 35.935989, 41.135895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928001, 36.300396, 41.048187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275489, -0.123839, -0.953294,
		-0.895622, -0.393332, -0.207727,
		-0.349237, 0.911018, -0.219272,
		37.823231, 36.573700, 40.982407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763611, 35.804787, 40.513908>,  <38.067696, 35.935989, 41.135895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763611, 35.804787, 40.513908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808071, 36.202045, 40.528324>,  <37.834747, 36.440403, 40.536972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808071, 36.202045, 40.528324>,  <37.763611, 35.804787, 40.513908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808071, 36.202045, 40.528324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232949, 0.009217, -0.972445,
		-0.966116, 0.116482, -0.230329,
		0.111149, 0.993150, 0.036039,
		37.841415, 36.499992, 40.539135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445629, 36.067993, 39.886765>,  <37.763611, 35.804787, 40.513908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445629, 36.067993, 39.886765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700954, 36.354122, 40.000511>,  <37.854149, 36.525799, 40.068760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700954, 36.354122, 40.000511>,  <37.445629, 36.067993, 39.886765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700954, 36.354122, 40.000511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294420, 0.114453, -0.948798,
		-0.711247, 0.689354, -0.137549,
		0.638314, 0.715327, 0.284364,
		37.892448, 36.568722, 40.085819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273552, 36.571224, 39.537689>,  <37.445629, 36.067993, 39.886765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273552, 36.571224, 39.537689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660046, 36.644371, 39.610310>,  <37.891941, 36.688259, 39.653881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660046, 36.644371, 39.610310>,  <37.273552, 36.571224, 39.537689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660046, 36.644371, 39.610310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162888, 0.112490, -0.980211,
		-0.199666, 0.976682, 0.078905,
		0.966230, 0.182863, 0.181550,
		37.949913, 36.699230, 39.664776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430103, 37.004738, 38.990074>,  <37.273552, 36.571224, 39.537689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430103, 37.004738, 38.990074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794792, 36.931358, 39.137100>,  <38.013607, 36.887329, 39.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794792, 36.931358, 39.137100>,  <37.430103, 37.004738, 38.990074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794792, 36.931358, 39.137100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393002, 0.128973, -0.910448,
		0.119613, 0.974532, 0.189683,
		0.911725, -0.183447, 0.367566,
		38.068310, 36.876324, 39.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746048, 37.575813, 38.979912>,  <37.430103, 37.004738, 38.990074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746048, 37.575813, 38.979912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045593, 37.311451, 38.999577>,  <38.225319, 37.152836, 39.011375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045593, 37.311451, 38.999577>,  <37.746048, 37.575813, 38.979912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045593, 37.311451, 38.999577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364413, 0.348675, -0.863498,
		0.553545, 0.664555, 0.501950,
		0.748860, -0.660902, 0.049165,
		38.270252, 37.113182, 39.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262817, 37.925045, 38.715931>,  <37.746048, 37.575813, 38.979912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262817, 37.925045, 38.715931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371319, 37.542889, 38.669182>,  <38.436420, 37.313595, 38.641132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371319, 37.542889, 38.669182>,  <38.262817, 37.925045, 38.715931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371319, 37.542889, 38.669182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372331, 0.216127, -0.902584,
		0.887577, 0.201311, 0.414345,
		0.271251, -0.955386, -0.116875,
		38.452694, 37.256271, 38.634121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946659, 37.909000, 38.395126>,  <38.262817, 37.925045, 38.715931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946659, 37.909000, 38.395126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784473, 37.550529, 38.323048>,  <38.687164, 37.335445, 38.279800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784473, 37.550529, 38.323048>,  <38.946659, 37.909000, 38.395126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784473, 37.550529, 38.323048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261469, 0.075186, -0.962279,
		0.875920, -0.437280, 0.203838,
		-0.405460, -0.896177, -0.180192,
		38.662834, 37.281677, 38.268990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513302, 37.692692, 37.939171>,  <38.946659, 37.909000, 38.395126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513302, 37.692692, 37.939171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221268, 37.423927, 37.889359>,  <39.046047, 37.262669, 37.859470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221268, 37.423927, 37.889359>,  <39.513302, 37.692692, 37.939171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221268, 37.423927, 37.889359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230289, -0.070342, -0.970577,
		0.643382, -0.737283, 0.206090,
		-0.730086, -0.671912, -0.124531,
		39.002243, 37.222355, 37.851997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790779, 37.101120, 37.628891>,  <39.513302, 37.692692, 37.939171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790779, 37.101120, 37.628891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400352, 37.056767, 37.554058>,  <39.166096, 37.030155, 37.509159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400352, 37.056767, 37.554058>,  <39.790779, 37.101120, 37.628891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400352, 37.056767, 37.554058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207861, -0.222801, -0.952446,
		0.063931, -0.968537, 0.240517,
		-0.976067, -0.110885, -0.187078,
		39.107533, 37.023502, 37.497936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747860, 36.499596, 37.170502>,  <39.790779, 37.101120, 37.628891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747860, 36.499596, 37.170502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391640, 36.660244, 37.085060>,  <39.177906, 36.756634, 37.033794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391640, 36.660244, 37.085060>,  <39.747860, 36.499596, 37.170502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391640, 36.660244, 37.085060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088749, -0.307147, -0.947515,
		-0.446145, -0.862765, 0.237887,
		-0.890549, 0.401617, -0.213602,
		39.124474, 36.780727, 37.020981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081612, 36.678276, 36.415401>,  <39.747860, 36.499596, 37.170502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081612, 36.678276, 36.415401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141201, 37.048512, 36.554592>,  <40.176956, 37.270653, 36.638107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141201, 37.048512, 36.554592>,  <40.081612, 36.678276, 36.415401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141201, 37.048512, 36.554592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033355, 0.356406, -0.933736,
		-0.988279, 0.127494, 0.083968,
		0.148972, 0.925592, 0.347976,
		40.185894, 37.326191, 36.658985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502277, 37.225658, 36.223843>,  <40.081612, 36.678276, 36.415401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502277, 37.225658, 36.223843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877171, 37.364712, 36.234795>,  <40.102108, 37.448143, 36.241364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877171, 37.364712, 36.234795>,  <39.502277, 37.225658, 36.223843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877171, 37.364712, 36.234795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049055, 0.209166, -0.976649,
		-0.345239, 0.914004, 0.213090,
		0.937232, 0.347630, 0.027375,
		40.158340, 37.469002, 36.243008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602402, 37.779968, 35.827229>,  <39.502277, 37.225658, 36.223843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602402, 37.779968, 35.827229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964447, 37.611294, 35.848995>,  <40.181675, 37.510090, 35.862053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964447, 37.611294, 35.848995>,  <39.602402, 37.779968, 35.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964447, 37.611294, 35.848995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092879, 0.071207, -0.993128,
		0.414910, 0.903943, 0.103616,
		0.905109, -0.421682, 0.054413,
		40.235981, 37.484791, 35.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292343, 38.034351, 35.532177>,  <39.602402, 37.779968, 35.827229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292343, 38.034351, 35.532177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332718, 37.637642, 35.500683>,  <40.356941, 37.399616, 35.481785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332718, 37.637642, 35.500683>,  <40.292343, 38.034351, 35.532177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332718, 37.637642, 35.500683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002893, 0.079435, -0.996836,
		0.994889, 0.100390, 0.010887,
		0.100937, -0.991772, -0.078739,
		40.362999, 37.340111, 35.477062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031086, 37.820374, 35.211617>,  <40.292343, 38.034351, 35.532177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031086, 37.820374, 35.211617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709553, 37.604824, 35.110847>,  <40.516632, 37.475494, 35.050385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709553, 37.604824, 35.110847>,  <41.031086, 37.820374, 35.211617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709553, 37.604824, 35.110847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150994, 0.224798, -0.962635,
		0.575369, -0.811839, -0.099334,
		-0.803835, -0.538872, -0.251925,
		40.468403, 37.443161, 35.035271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621281, 37.468639, 35.137272>,  <41.031086, 37.820374, 35.211617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621281, 37.468639, 35.137272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849232, 37.713402, 34.917885>,  <41.986000, 37.860260, 34.786251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849232, 37.713402, 34.917885>,  <41.621281, 37.468639, 35.137272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849232, 37.713402, 34.917885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157238, 0.736320, 0.658110,
		0.806549, -0.288800, 0.515823,
		0.569873, 0.611905, -0.548468,
		42.020195, 37.896973, 34.753345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898788, 36.777592, 34.884270>,  <41.621281, 37.468639, 35.137272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898788, 36.777592, 34.884270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215805, 36.563354, 35.000900>,  <42.406017, 36.434811, 35.070877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215805, 36.563354, 35.000900>,  <41.898788, 36.777592, 34.884270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215805, 36.563354, 35.000900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192292, 0.673234, 0.713989,
		-0.578704, -0.509800, 0.636558,
		0.792544, -0.535593, 0.291572,
		42.453568, 36.402676, 35.088371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815647, 36.692818, 35.759609>,  <41.898788, 36.777592, 34.884270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815647, 36.692818, 35.759609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195408, 36.665890, 35.636902>,  <42.423264, 36.649734, 35.563278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195408, 36.665890, 35.636902>,  <41.815647, 36.692818, 35.759609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195408, 36.665890, 35.636902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284194, 0.599914, 0.747889,
		0.133686, -0.797228, 0.588691,
		0.949401, -0.067320, -0.306767,
		42.480228, 36.645695, 35.544872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169678, 36.624062, 36.318268>,  <41.815647, 36.692818, 35.759609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169678, 36.624062, 36.318268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451225, 36.735424, 36.056870>,  <42.620152, 36.802242, 35.900028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451225, 36.735424, 36.056870>,  <42.169678, 36.624062, 36.318268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451225, 36.735424, 36.056870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246439, 0.767139, 0.592255,
		0.666212, -0.577916, 0.471354,
		0.703868, 0.278407, -0.653498,
		42.662384, 36.818947, 35.860821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878746, 36.616730, 36.667717>,  <42.169678, 36.624062, 36.318268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878746, 36.616730, 36.667717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864098, 36.869675, 36.358192>,  <42.855309, 37.021442, 36.172478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864098, 36.869675, 36.358192>,  <42.878746, 36.616730, 36.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864098, 36.869675, 36.358192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211125, 0.761744, 0.612513,
		0.976773, -0.140942, -0.161400,
		-0.036617, 0.632362, -0.773807,
		42.853111, 37.059383, 36.126049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426678, 37.037514, 36.763027>,  <42.878746, 36.616730, 36.667717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426678, 37.037514, 36.763027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190151, 37.226204, 36.501396>,  <43.048233, 37.339417, 36.344418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190151, 37.226204, 36.501396>,  <43.426678, 37.037514, 36.763027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190151, 37.226204, 36.501396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160623, 0.863714, 0.477701,
		0.790279, 0.177414, -0.586502,
		-0.591321, 0.471722, -0.654078,
		43.012756, 37.367722, 36.305172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799454, 37.636253, 36.688171>,  <43.426678, 37.037514, 36.763027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799454, 37.636253, 36.688171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437237, 37.723953, 36.542889>,  <43.219906, 37.776573, 36.455719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437237, 37.723953, 36.542889>,  <43.799454, 37.636253, 36.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437237, 37.723953, 36.542889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122480, 0.954764, 0.270971,
		0.406185, 0.200891, -0.891435,
		-0.905545, 0.219247, -0.363205,
		43.165573, 37.789726, 36.433926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865944, 38.326759, 36.475704>,  <43.799454, 37.636253, 36.688171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865944, 38.326759, 36.475704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470196, 38.272152, 36.495750>,  <43.232746, 38.239388, 36.507778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.470196, 38.272152, 36.495750>,  <43.865944, 38.326759, 36.475704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470196, 38.272152, 36.495750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093446, 0.860839, 0.500225,
		-0.111435, 0.490223, -0.864444,
		-0.989369, -0.136522, 0.050118,
		43.173386, 38.231194, 36.510784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601288, 38.942772, 36.167927>,  <43.865944, 38.326759, 36.475704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601288, 38.942772, 36.167927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366089, 38.769974, 36.441460>,  <43.224968, 38.666294, 36.605579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366089, 38.769974, 36.441460>,  <43.601288, 38.942772, 36.167927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366089, 38.769974, 36.441460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043905, 0.861233, 0.506311,
		-0.807667, 0.267688, -0.525373,
		-0.588002, -0.431997, 0.683837,
		43.189690, 38.640373, 36.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071754, 39.362854, 36.215107>,  <43.601288, 38.942772, 36.167927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071754, 39.362854, 36.215107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115520, 39.165134, 36.560059>,  <43.141781, 39.046505, 36.767029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115520, 39.165134, 36.560059>,  <43.071754, 39.362854, 36.215107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115520, 39.165134, 36.560059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147242, 0.849957, 0.505858,
		-0.983030, -0.182329, 0.020220,
		0.109419, -0.494296, 0.862380,
		43.148346, 39.016846, 36.818771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861496, 39.812172, 36.630264>,  <43.071754, 39.362854, 36.215107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861496, 39.812172, 36.630264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007015, 39.553627, 36.898552>,  <43.094326, 39.398499, 37.059525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007015, 39.553627, 36.898552>,  <42.861496, 39.812172, 36.630264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007015, 39.553627, 36.898552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076175, 0.697000, 0.713014,
		-0.928356, -0.310487, 0.204332,
		0.363801, -0.646366, 0.670715,
		43.116158, 39.359718, 37.099766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426292, 39.879860, 37.114098>,  <42.861496, 39.812172, 36.630264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426292, 39.879860, 37.114098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752361, 39.716881, 37.278770>,  <42.948002, 39.619095, 37.377575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752361, 39.716881, 37.278770>,  <42.426292, 39.879860, 37.114098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752361, 39.716881, 37.278770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158946, 0.526111, 0.835430,
		-0.556982, -0.746455, 0.364109,
		0.815173, -0.407446, 0.411680,
		42.996914, 39.594646, 37.402275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269146, 39.709763, 37.832973>,  <42.426292, 39.879860, 37.114098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269146, 39.709763, 37.832973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668358, 39.727932, 37.850262>,  <42.907887, 39.738834, 37.860634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668358, 39.727932, 37.850262>,  <42.269146, 39.709763, 37.832973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668358, 39.727932, 37.850262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058238, 0.416104, 0.907450,
		0.023234, -0.908182, 0.417931,
		0.998033, 0.045423, 0.043223,
		42.967766, 39.741558, 37.863228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459831, 39.598278, 38.578503>,  <42.269146, 39.709763, 37.832973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459831, 39.598278, 38.578503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788013, 39.758781, 38.415607>,  <42.984924, 39.855083, 38.317871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788013, 39.758781, 38.415607>,  <42.459831, 39.598278, 38.578503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788013, 39.758781, 38.415607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168581, 0.510842, 0.842983,
		0.546291, -0.760282, 0.351478,
		0.820455, 0.401262, -0.407237,
		43.034149, 39.879158, 38.293438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970406, 39.646576, 39.113144>,  <42.459831, 39.598278, 38.578503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970406, 39.646576, 39.113144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068340, 39.930729, 38.849201>,  <43.127102, 40.101223, 38.690838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068340, 39.930729, 38.849201>,  <42.970406, 39.646576, 39.113144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068340, 39.930729, 38.849201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032024, 0.674272, 0.737788,
		0.969035, -0.201770, 0.142338,
		0.244838, 0.710384, -0.659855,
		43.141792, 40.143845, 38.651245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353378, 40.115021, 39.513695>,  <42.970406, 39.646576, 39.113144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353378, 40.115021, 39.513695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287243, 40.322002, 39.177860>,  <43.247562, 40.446190, 38.976360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287243, 40.322002, 39.177860>,  <43.353378, 40.115021, 39.513695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287243, 40.322002, 39.177860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131781, 0.832079, 0.538776,
		0.977393, 0.199722, -0.069384,
		-0.165339, 0.517452, -0.839587,
		43.237640, 40.477238, 38.925983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858124, 40.745907, 39.511719>,  <43.353378, 40.115021, 39.513695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858124, 40.745907, 39.511719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511513, 40.789745, 39.316936>,  <43.303547, 40.816048, 39.200069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511513, 40.789745, 39.316936>,  <43.858124, 40.745907, 39.511719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511513, 40.789745, 39.316936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247022, 0.753580, 0.609177,
		0.433722, 0.648155, -0.625923,
		-0.866525, 0.109597, -0.486953,
		43.251556, 40.822624, 39.170849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787838, 41.421928, 39.582558>,  <43.858124, 40.745907, 39.511719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787838, 41.421928, 39.582558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424221, 41.308807, 39.460136>,  <43.206051, 41.240932, 39.386684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424221, 41.308807, 39.460136>,  <43.787838, 41.421928, 39.582558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424221, 41.308807, 39.460136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404624, 0.774652, 0.485998,
		0.099646, 0.565629, -0.818618,
		-0.909038, -0.282805, -0.306058,
		43.151508, 41.223965, 39.368320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370235, 42.097294, 39.371624>,  <43.787838, 41.421928, 39.582558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370235, 42.097294, 39.371624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089996, 41.819286, 39.436264>,  <42.921852, 41.652481, 39.475048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089996, 41.819286, 39.436264>,  <43.370235, 42.097294, 39.371624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089996, 41.819286, 39.436264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571680, 0.682244, 0.455768,
		-0.427019, 0.226924, -0.875306,
		-0.700597, -0.695017, 0.161603,
		42.879818, 41.610783, 39.484745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728733, 42.398956, 39.093056>,  <43.370235, 42.097294, 39.371624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728733, 42.398956, 39.093056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652481, 42.125820, 39.375160>,  <42.606731, 41.961941, 39.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652481, 42.125820, 39.375160>,  <42.728733, 42.398956, 39.093056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652481, 42.125820, 39.375160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414623, 0.707213, 0.572658,
		-0.889803, -0.183254, -0.417934,
		-0.190626, -0.682838, 0.705261,
		42.595295, 41.920967, 39.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076473, 42.455379, 39.116295>,  <42.728733, 42.398956, 39.093056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076473, 42.455379, 39.116295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195148, 42.265476, 39.447735>,  <42.266354, 42.151535, 39.646599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195148, 42.265476, 39.447735>,  <42.076473, 42.455379, 39.116295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195148, 42.265476, 39.447735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470202, 0.682583, 0.559455,
		-0.831194, -0.555596, -0.020714,
		0.296692, -0.474755, 0.828602,
		42.284157, 42.123051, 39.696316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567333, 42.422787, 39.601810>,  <42.076473, 42.455379, 39.116295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567333, 42.422787, 39.601810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865341, 42.331913, 39.852676>,  <42.044147, 42.277390, 40.003197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865341, 42.331913, 39.852676>,  <41.567333, 42.422787, 39.601810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865341, 42.331913, 39.852676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371964, 0.638969, 0.673321,
		-0.553704, -0.734920, 0.391541,
		0.745020, -0.227181, 0.627163,
		42.088848, 42.263760, 40.040825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286919, 42.037529, 40.247883>,  <41.567333, 42.422787, 39.601810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286919, 42.037529, 40.247883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614594, 42.261799, 40.296169>,  <41.811199, 42.396362, 40.325142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614594, 42.261799, 40.296169>,  <41.286919, 42.037529, 40.247883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614594, 42.261799, 40.296169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502047, 0.599277, 0.623551,
		0.277268, -0.571412, 0.772406,
		0.819190, 0.560675, 0.120715,
		41.860352, 42.430000, 40.332382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469856, 42.243305, 41.021626>,  <41.286919, 42.037529, 40.247883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469856, 42.243305, 41.021626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538635, 42.495487, 40.718849>,  <41.579903, 42.646797, 40.537182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538635, 42.495487, 40.718849>,  <41.469856, 42.243305, 41.021626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538635, 42.495487, 40.718849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588950, 0.681733, 0.434025,
		0.789665, 0.371171, 0.488530,
		0.171950, 0.630454, -0.756942,
		41.590221, 42.684624, 40.491768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463974, 41.737129, 41.552151>,  <41.469856, 42.243305, 41.021626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463974, 41.737129, 41.552151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757236, 41.685162, 41.819164>,  <41.933193, 41.653980, 41.979374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757236, 41.685162, 41.819164>,  <41.463974, 41.737129, 41.552151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757236, 41.685162, 41.819164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116739, -0.991055, -0.064669,
		0.669967, -0.030516, -0.741763,
		0.733155, -0.129919, 0.667537,
		41.977184, 41.646187, 42.019424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068497, 41.328598, 41.355156>,  <41.463974, 41.737129, 41.552151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068497, 41.328598, 41.355156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045876, 41.268127, 41.749912>,  <42.032303, 41.231846, 41.986767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045876, 41.268127, 41.749912>,  <42.068497, 41.328598, 41.355156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045876, 41.268127, 41.749912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142794, -0.979533, -0.141863,
		0.988135, 0.132899, 0.076983,
		-0.056553, -0.151173, 0.986888,
		42.028908, 41.222775, 42.045979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729763, 41.081989, 41.855583>,  <42.068497, 41.328598, 41.355156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729763, 41.081989, 41.855583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374260, 40.949741, 41.982586>,  <42.160957, 40.870392, 42.058788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374260, 40.949741, 41.982586>,  <42.729763, 41.081989, 41.855583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374260, 40.949741, 41.982586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220315, -0.915509, -0.336608,
		0.401969, -0.229209, 0.886501,
		-0.888753, -0.330616, 0.317507,
		42.107635, 40.850555, 42.077839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797127, 40.489384, 42.381580>,  <42.729763, 41.081989, 41.855583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797127, 40.489384, 42.381580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480247, 40.490345, 42.137474>,  <42.290119, 40.490921, 41.991009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480247, 40.490345, 42.137474>,  <42.797127, 40.489384, 42.381580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480247, 40.490345, 42.137474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326372, -0.843305, -0.426987,
		-0.515666, -0.537430, 0.667277,
		-0.792193, 0.002402, -0.610265,
		42.242588, 40.491066, 41.954395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291893, 39.800587, 42.510117>,  <42.797127, 40.489384, 42.381580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291893, 39.800587, 42.510117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318333, 39.958069, 42.143372>,  <42.334198, 40.052559, 41.923325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318333, 39.958069, 42.143372>,  <42.291893, 39.800587, 42.510117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318333, 39.958069, 42.143372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292303, -0.886198, -0.359462,
		-0.954039, -0.244239, -0.173660,
		0.066103, 0.393702, -0.916858,
		42.338165, 40.076180, 41.868313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766411, 39.438560, 42.126335>,  <42.291893, 39.800587, 42.510117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766411, 39.438560, 42.126335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094444, 39.590469, 41.955112>,  <42.291264, 39.681614, 41.852379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094444, 39.590469, 41.955112>,  <41.766411, 39.438560, 42.126335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094444, 39.590469, 41.955112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338440, -0.925072, -0.172338,
		-0.461435, -0.003542, -0.887167,
		0.820083, 0.379776, -0.428060,
		42.340469, 39.704403, 41.826694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959656, 39.041252, 41.535599>,  <41.766411, 39.438560, 42.126335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959656, 39.041252, 41.535599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313087, 39.204453, 41.627525>,  <42.525146, 39.302372, 41.682682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313087, 39.204453, 41.627525>,  <41.959656, 39.041252, 41.535599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313087, 39.204453, 41.627525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459069, -0.851562, -0.253175,
		0.092407, 0.329203, -0.939727,
		0.883582, 0.408004, 0.229817,
		42.578163, 39.326855, 41.696472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665413, 38.712158, 42.093449>,  <41.959656, 39.041252, 41.535599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665413, 38.712158, 42.093449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618763, 38.327873, 42.194195>,  <41.590775, 38.097301, 42.254642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618763, 38.327873, 42.194195>,  <41.665413, 38.712158, 42.093449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618763, 38.327873, 42.194195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279972, -0.275111, -0.919744,
		0.952898, -0.036751, 0.301056,
		-0.116625, -0.960710, 0.251864,
		41.583775, 38.039661, 42.269753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209286, 38.264645, 41.884140>,  <41.665413, 38.712158, 42.093449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209286, 38.264645, 41.884140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877602, 38.041126, 41.889263>,  <41.678593, 37.907017, 41.892338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877602, 38.041126, 41.889263>,  <42.209286, 38.264645, 41.884140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877602, 38.041126, 41.889263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272927, -0.424783, -0.863174,
		0.487777, -0.712256, 0.504743,
		-0.829207, -0.558794, 0.012806,
		41.628838, 37.873489, 41.893105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287178, 37.465065, 41.875919>,  <42.209286, 38.264645, 41.884140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287178, 37.465065, 41.875919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932190, 37.535725, 41.705654>,  <41.719196, 37.578121, 41.603497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932190, 37.535725, 41.705654>,  <42.287178, 37.465065, 41.875919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932190, 37.535725, 41.705654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277370, -0.532885, -0.799437,
		-0.368045, -0.827545, 0.423926,
		-0.887473, 0.176644, -0.425662,
		41.665947, 37.588718, 41.577957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915073, 36.892307, 41.769123>,  <42.287178, 37.465065, 41.875919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915073, 36.892307, 41.769123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778267, 37.138130, 41.484772>,  <41.696182, 37.285625, 41.314163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778267, 37.138130, 41.484772>,  <41.915073, 36.892307, 41.769123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778267, 37.138130, 41.484772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293149, -0.648963, -0.702076,
		-0.892800, -0.448511, 0.041795,
		-0.342012, 0.614561, -0.710874,
		41.675663, 37.322498, 41.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366779, 36.564407, 41.428116>,  <41.915073, 36.892307, 41.769123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366779, 36.564407, 41.428116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494202, 36.850327, 41.179089>,  <41.570656, 37.021877, 41.029675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494202, 36.850327, 41.179089>,  <41.366779, 36.564407, 41.428116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494202, 36.850327, 41.179089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235245, -0.695851, -0.678566,
		-0.918248, 0.069709, -0.389822,
		0.318560, 0.714796, -0.622565,
		41.589771, 37.064766, 40.992321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158146, 36.296204, 40.724674>,  <41.366779, 36.564407, 41.428116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158146, 36.296204, 40.724674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437862, 36.576694, 40.669144>,  <41.605690, 36.744987, 40.635826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437862, 36.576694, 40.669144>,  <41.158146, 36.296204, 40.724674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437862, 36.576694, 40.669144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403617, -0.547611, -0.732950,
		-0.589990, 0.456511, -0.665966,
		0.699290, 0.701228, -0.138829,
		41.647648, 36.787064, 40.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213406, 36.129349, 40.075619>,  <41.158146, 36.296204, 40.724674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213406, 36.129349, 40.075619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527271, 36.362984, 40.158695>,  <41.715591, 36.503166, 40.208542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527271, 36.362984, 40.158695>,  <41.213406, 36.129349, 40.075619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527271, 36.362984, 40.158695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482587, -0.365244, -0.796057,
		-0.389109, 0.724871, -0.568469,
		0.784668, 0.584089, 0.207693,
		41.762672, 36.538212, 40.221004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493824, 36.479477, 39.374187>,  <41.213406, 36.129349, 40.075619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493824, 36.479477, 39.374187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796204, 36.479164, 39.636040>,  <41.977631, 36.478977, 39.793152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796204, 36.479164, 39.636040>,  <41.493824, 36.479477, 39.374187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796204, 36.479164, 39.636040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621995, -0.310956, -0.718630,
		0.204127, 0.950424, -0.234577,
		0.755946, -0.000786, 0.654633,
		42.022987, 36.478928, 39.832428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950706, 37.029922, 39.139450>,  <41.493824, 36.479477, 39.374187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950706, 37.029922, 39.139450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151855, 36.781452, 39.379871>,  <42.272545, 36.632370, 39.524124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151855, 36.781452, 39.379871>,  <41.950706, 37.029922, 39.139450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151855, 36.781452, 39.379871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668368, -0.161484, -0.726090,
		0.548086, 0.766857, 0.333965,
		0.502877, -0.621172, 0.601050,
		42.302719, 36.595100, 39.560184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700394, 37.201767, 39.057224>,  <41.950706, 37.029922, 39.139450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700394, 37.201767, 39.057224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721130, 36.838230, 39.222786>,  <42.733574, 36.620110, 39.322124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721130, 36.838230, 39.222786>,  <42.700394, 37.201767, 39.057224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721130, 36.838230, 39.222786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720633, -0.252886, -0.645551,
		0.691375, 0.331742, 0.641831,
		0.051846, -0.908843, 0.413904,
		42.736683, 36.565578, 39.346958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364498, 37.056721, 39.160484>,  <42.700394, 37.201767, 39.057224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364498, 37.056721, 39.160484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193363, 36.695446, 39.146595>,  <43.090683, 36.478680, 39.138260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193363, 36.695446, 39.146595>,  <43.364498, 37.056721, 39.160484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193363, 36.695446, 39.146595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651012, -0.281272, -0.705032,
		0.627011, -0.324242, 0.708325,
		-0.427833, -0.903190, -0.034725,
		43.065014, 36.424488, 39.136177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950226, 36.552856, 39.117161>,  <43.364498, 37.056721, 39.160484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950226, 36.552856, 39.117161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611519, 36.384529, 38.986996>,  <43.408295, 36.283531, 38.908897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611519, 36.384529, 38.986996>,  <43.950226, 36.552856, 39.117161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611519, 36.384529, 38.986996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461931, -0.278307, -0.842119,
		0.263817, -0.863398, 0.430051,
		-0.846771, -0.420819, -0.325409,
		43.357487, 36.258282, 38.889374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126270, 35.904457, 38.784359>,  <43.950226, 36.552856, 39.117161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126270, 35.904457, 38.784359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761681, 35.976391, 38.636368>,  <43.542927, 36.019550, 38.547573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761681, 35.976391, 38.636368>,  <44.126270, 35.904457, 38.784359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761681, 35.976391, 38.636368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350238, -0.132483, -0.927244,
		-0.215767, -0.974735, 0.057769,
		-0.911470, 0.179836, -0.369975,
		43.488239, 36.030342, 38.525375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923630, 35.251160, 38.425011>,  <44.126270, 35.904457, 38.784359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923630, 35.251160, 38.425011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719608, 35.548885, 38.252571>,  <43.597195, 35.727520, 38.149109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719608, 35.548885, 38.252571>,  <43.923630, 35.251160, 38.425011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719608, 35.548885, 38.252571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373887, -0.259511, -0.890428,
		-0.774630, -0.615349, -0.145923,
		-0.510056, 0.744311, -0.431096,
		43.566593, 35.772179, 38.123241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752945, 34.985683, 37.779854>,  <43.923630, 35.251160, 38.425011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752945, 34.985683, 37.779854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736790, 35.385258, 37.770866>,  <43.727097, 35.625000, 37.765472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736790, 35.385258, 37.770866>,  <43.752945, 34.985683, 37.779854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736790, 35.385258, 37.770866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573610, 0.004765, -0.819115,
		-0.818132, -0.045971, -0.573189,
		-0.040387, 0.998931, -0.022471,
		43.724674, 35.684937, 37.764126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541214, 35.100845, 37.125248>,  <43.752945, 34.985683, 37.779854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541214, 35.100845, 37.125248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704304, 35.438690, 37.264038>,  <43.802158, 35.641396, 37.347313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704304, 35.438690, 37.264038>,  <43.541214, 35.100845, 37.125248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704304, 35.438690, 37.264038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555103, 0.072432, -0.828622,
		-0.724995, 0.530458, -0.439314,
		0.407729, 0.844611, 0.346972,
		43.826622, 35.692074, 37.368130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618946, 35.591797, 36.541409>,  <43.541214, 35.100845, 37.125248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618946, 35.591797, 36.541409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856445, 35.770390, 36.809177>,  <43.998943, 35.877544, 36.969837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856445, 35.770390, 36.809177>,  <43.618946, 35.591797, 36.541409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856445, 35.770390, 36.809177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606162, 0.298937, -0.737023,
		-0.529178, 0.843383, -0.093144,
		0.593749, 0.446477, 0.669418,
		44.034569, 35.904331, 37.010002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762623, 36.238476, 36.194386>,  <43.618946, 35.591797, 36.541409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762623, 36.238476, 36.194386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056629, 36.179371, 36.459087>,  <44.233032, 36.143906, 36.617908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056629, 36.179371, 36.459087>,  <43.762623, 36.238476, 36.194386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056629, 36.179371, 36.459087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660285, 0.377938, -0.648989,
		-0.154205, 0.913963, 0.375356,
		0.735013, -0.147764, 0.661756,
		44.277134, 36.135040, 36.657616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083759, 36.897480, 36.269348>,  <43.762623, 36.238476, 36.194386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083759, 36.897480, 36.269348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335323, 36.612339, 36.393490>,  <44.486263, 36.441254, 36.467976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335323, 36.612339, 36.393490>,  <44.083759, 36.897480, 36.269348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335323, 36.612339, 36.393490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750513, 0.452408, -0.481722,
		0.202987, 0.535887, 0.819525,
		0.628909, -0.712848, 0.310357,
		44.523994, 36.398483, 36.486599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646488, 37.283215, 36.588081>,  <44.083759, 36.897480, 36.269348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646488, 37.283215, 36.588081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772179, 36.924564, 36.463295>,  <44.847591, 36.709373, 36.388424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772179, 36.924564, 36.463295>,  <44.646488, 37.283215, 36.588081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772179, 36.924564, 36.463295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590733, 0.441915, -0.675089,
		0.743166, 0.027841, 0.668528,
		0.314228, -0.896625, -0.311969,
		44.866447, 36.655579, 36.369705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339222, 37.339573, 36.530239>,  <44.646488, 37.283215, 36.588081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339222, 37.339573, 36.530239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269691, 37.038292, 36.276478>,  <45.227974, 36.857525, 36.124222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269691, 37.038292, 36.276478>,  <45.339222, 37.339573, 36.530239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269691, 37.038292, 36.276478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593418, 0.434000, -0.677864,
		0.785900, -0.494301, 0.371520,
		-0.173829, -0.753200, -0.634407,
		45.217541, 36.812332, 36.086155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877754, 37.380642, 35.916271>,  <45.339222, 37.339573, 36.530239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877754, 37.380642, 35.916271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644192, 37.104694, 35.745094>,  <45.504055, 36.939125, 35.642387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644192, 37.104694, 35.745094>,  <45.877754, 37.380642, 35.916271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644192, 37.104694, 35.745094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506449, 0.102438, -0.856163,
		0.634477, -0.716651, 0.289569,
		-0.583908, -0.689867, -0.427942,
		45.469021, 36.897736, 35.616711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377567, 36.865364, 35.610970>,  <45.877754, 37.380642, 35.916271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377567, 36.865364, 35.610970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016144, 36.855236, 35.439888>,  <45.799290, 36.849159, 35.337238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016144, 36.855236, 35.439888>,  <46.377567, 36.865364, 35.610970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016144, 36.855236, 35.439888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403099, 0.288075, -0.868633,
		0.145207, -0.957273, -0.250087,
		-0.903563, -0.025322, -0.427707,
		45.745075, 36.847641, 35.311577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434196, 36.428337, 35.051945>,  <46.377567, 36.865364, 35.610970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434196, 36.428337, 35.051945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117676, 36.665539, 34.992355>,  <45.927765, 36.807861, 34.956600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117676, 36.665539, 34.992355>,  <46.434196, 36.428337, 35.051945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117676, 36.665539, 34.992355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420601, 0.351087, -0.836560,
		-0.443779, -0.724628, -0.527233,
		-0.791299, 0.593003, -0.148974,
		45.880287, 36.843441, 34.947662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718822, 35.695019, 35.333878>,  <46.434196, 36.428337, 35.051945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718822, 35.695019, 35.333878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886787, 35.344460, 35.428204>,  <46.987568, 35.134125, 35.484798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886787, 35.344460, 35.428204>,  <46.718822, 35.695019, 35.333878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886787, 35.344460, 35.428204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464636, -0.015599, -0.885364,
		0.779606, 0.481343, 0.400653,
		0.419914, -0.876393, 0.235810,
		47.012760, 35.081543, 35.498947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470394, 35.835381, 35.233494>,  <46.718822, 35.695019, 35.333878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470394, 35.835381, 35.233494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336395, 35.461216, 35.188286>,  <47.255997, 35.236717, 35.161160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336395, 35.461216, 35.188286>,  <47.470394, 35.835381, 35.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336395, 35.461216, 35.188286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367857, -0.019409, -0.929680,
		0.867442, -0.353019, 0.350601,
		-0.335000, -0.935415, -0.113024,
		47.235897, 35.180592, 35.154377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.939068, 35.307854, 34.987827>,  <47.470394, 35.835381, 35.233494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.939068, 35.307854, 34.987827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597347, 35.165104, 34.836666>,  <47.392315, 35.079453, 34.745968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597347, 35.165104, 34.836666>,  <47.939068, 35.307854, 34.987827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597347, 35.165104, 34.836666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448899, -0.140050, -0.882539,
		0.262029, -0.923595, 0.279845,
		-0.854301, -0.356873, -0.377904,
		47.341057, 35.058041, 34.723293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.104435, 42.206905, 44.432930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.708908, 42.241703, 44.384480>,  <33.471592, 42.262581, 44.355412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.708908, 42.241703, 44.384480>,  <34.104435, 42.206905, 44.432930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708908, 42.241703, 44.384480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111554, -0.107509, -0.987926,
		-0.098974, -0.990390, 0.096601,
		-0.988817, 0.087003, -0.121123,
		33.412262, 42.267799, 44.348145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979534, 41.720966, 43.822334>,  <34.104435, 42.206905, 44.432930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979534, 41.720966, 43.822334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669884, 41.972271, 43.853374>,  <33.484093, 42.123055, 43.871998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669884, 41.972271, 43.853374>,  <33.979534, 41.720966, 43.822334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669884, 41.972271, 43.853374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031816, 0.083812, -0.995973,
		-0.632237, -0.773473, -0.044892,
		-0.774121, 0.628263, 0.077598,
		33.437649, 42.160751, 43.876656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492092, 41.456402, 43.427048>,  <33.979534, 41.720966, 43.822334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492092, 41.456402, 43.427048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.360626, 41.833462, 43.450367>,  <33.281746, 42.059696, 43.464359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.360626, 41.833462, 43.450367>,  <33.492092, 41.456402, 43.427048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360626, 41.833462, 43.450367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142802, 0.011414, -0.989685,
		-0.933588, -0.333599, 0.130860,
		-0.328665, 0.942646, 0.058295,
		33.262028, 42.116257, 43.467854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733318, 41.407261, 43.160175>,  <33.492092, 41.456402, 43.427048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733318, 41.407261, 43.160175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856472, 41.784718, 43.111591>,  <32.930363, 42.011192, 43.082439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856472, 41.784718, 43.111591>,  <32.733318, 41.407261, 43.160175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856472, 41.784718, 43.111591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467004, 0.038665, -0.883410,
		-0.828924, 0.328710, 0.452587,
		0.307884, 0.943639, -0.121458,
		32.948837, 42.067810, 43.075153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190506, 41.759422, 42.992393>,  <32.733318, 41.407261, 43.160175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190506, 41.759422, 42.992393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.507206, 41.964828, 42.860077>,  <32.697227, 42.088074, 42.780685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.507206, 41.964828, 42.860077>,  <32.190506, 41.759422, 42.992393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507206, 41.964828, 42.860077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392849, 0.013379, -0.919506,
		-0.467759, 0.857973, 0.212329,
		0.791752, 0.513520, -0.330795,
		32.744732, 42.118885, 42.760838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946415, 42.282227, 42.428818>,  <32.190506, 41.759422, 42.992393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946415, 42.282227, 42.428818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.342464, 42.255245, 42.379665>,  <32.580093, 42.239056, 42.350174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.342464, 42.255245, 42.379665>,  <31.946415, 42.282227, 42.428818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342464, 42.255245, 42.379665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137197, -0.286336, -0.948256,
		0.028781, 0.955752, -0.292764,
		0.990125, -0.067458, -0.122886,
		32.639503, 42.235008, 42.342800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936716, 42.594334, 41.738766>,  <31.946415, 42.282227, 42.428818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936716, 42.594334, 41.738766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294441, 42.424587, 41.795506>,  <32.509075, 42.322739, 41.829548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294441, 42.424587, 41.795506>,  <31.936716, 42.594334, 41.738766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294441, 42.424587, 41.795506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098113, -0.123316, -0.987505,
		0.436557, 0.897054, -0.068647,
		0.894311, -0.424367, 0.141847,
		32.562733, 42.297276, 41.838058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498169, 42.901699, 41.373520>,  <31.936716, 42.594334, 41.738766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498169, 42.901699, 41.373520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.640095, 42.530121, 41.415775>,  <32.725250, 42.307175, 41.441128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.640095, 42.530121, 41.415775>,  <32.498169, 42.901699, 41.373520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640095, 42.530121, 41.415775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103131, -0.073411, -0.991955,
		0.929231, 0.362856, 0.069756,
		0.354816, -0.928949, 0.105637,
		32.746540, 42.251434, 41.447468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039433, 42.889915, 40.888443>,  <32.498169, 42.901699, 41.373520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039433, 42.889915, 40.888443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982410, 42.499557, 40.954544>,  <32.948196, 42.265343, 40.994205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982410, 42.499557, 40.954544>,  <33.039433, 42.889915, 40.888443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982410, 42.499557, 40.954544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281679, -0.200054, -0.938422,
		0.948860, -0.087230, 0.303408,
		-0.142556, -0.975894, 0.165252,
		32.939644, 42.206791, 41.004120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586853, 42.602695, 40.585094>,  <33.039433, 42.889915, 40.888443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586853, 42.602695, 40.585094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.316891, 42.309338, 40.617668>,  <33.154911, 42.133324, 40.637215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.316891, 42.309338, 40.617668>,  <33.586853, 42.602695, 40.585094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316891, 42.309338, 40.617668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337945, -0.405318, -0.849418,
		0.655966, -0.545757, 0.521400,
		-0.674909, -0.733393, 0.081439,
		33.114418, 42.089321, 40.642101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991917, 41.912804, 40.646149>,  <33.586853, 42.602695, 40.585094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991917, 41.912804, 40.646149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620995, 41.837570, 40.516705>,  <33.398441, 41.792431, 40.439037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620995, 41.837570, 40.516705>,  <33.991917, 41.912804, 40.646149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620995, 41.837570, 40.516705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363267, -0.243899, -0.899194,
		0.090197, -0.951387, 0.294495,
		-0.927309, -0.188084, -0.323608,
		33.342800, 41.781147, 40.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950218, 41.164165, 40.460373>,  <33.991917, 41.912804, 40.646149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950218, 41.164165, 40.460373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672985, 41.368782, 40.257217>,  <33.506645, 41.491554, 40.135323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.672985, 41.368782, 40.257217>,  <33.950218, 41.164165, 40.460373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672985, 41.368782, 40.257217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295056, -0.441524, -0.847348,
		-0.657703, -0.737141, 0.155079,
		-0.693086, 0.511546, -0.507890,
		33.465057, 41.522247, 40.104851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684990, 40.640774, 40.011028>,  <33.950218, 41.164165, 40.460373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684990, 40.640774, 40.011028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543995, 40.985115, 39.864235>,  <33.459400, 41.191719, 39.776157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543995, 40.985115, 39.864235>,  <33.684990, 40.640774, 40.011028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543995, 40.985115, 39.864235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040556, -0.377737, -0.925024,
		-0.934939, -0.340940, 0.098234,
		-0.352484, 0.860857, -0.366988,
		33.438251, 41.243374, 39.754139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147591, 40.442757, 39.577065>,  <33.684990, 40.640774, 40.011028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147591, 40.442757, 39.577065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234592, 40.812538, 39.451790>,  <33.286793, 41.034405, 39.376625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234592, 40.812538, 39.451790>,  <33.147591, 40.442757, 39.577065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234592, 40.812538, 39.451790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062654, -0.306982, -0.949651,
		-0.974047, 0.226172, -0.008848,
		0.217500, 0.924450, -0.313186,
		33.299843, 41.089874, 39.357834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795948, 40.501293, 38.952709>,  <33.147591, 40.442757, 39.577065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795948, 40.501293, 38.952709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082314, 40.779015, 38.923302>,  <33.254131, 40.945648, 38.905655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082314, 40.779015, 38.923302>,  <32.795948, 40.501293, 38.952709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082314, 40.779015, 38.923302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160809, -0.266447, -0.950340,
		-0.679417, 0.668538, -0.302404,
		0.715914, 0.694307, -0.073521,
		33.297089, 40.987309, 38.901245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617294, 40.942802, 38.421078>,  <32.795948, 40.501293, 38.952709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617294, 40.942802, 38.421078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.010998, 40.926140, 38.489780>,  <33.247219, 40.916142, 38.531002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.010998, 40.926140, 38.489780>,  <32.617294, 40.942802, 38.421078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010998, 40.926140, 38.489780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156976, -0.240432, -0.957889,
		0.081194, 0.969772, -0.230109,
		0.984259, -0.041653, 0.171752,
		33.306274, 40.913643, 38.541306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903004, 40.982903, 37.779938>,  <32.617294, 40.942802, 38.421078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903004, 40.982903, 37.779938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212643, 40.860668, 38.001709>,  <33.398426, 40.787327, 38.134773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212643, 40.860668, 38.001709>,  <32.903004, 40.982903, 37.779938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212643, 40.860668, 38.001709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348214, -0.525871, -0.776020,
		0.528700, 0.793774, -0.300664,
		0.774095, -0.305586, 0.554432,
		33.444870, 40.768993, 38.168037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488819, 41.021191, 37.279087>,  <32.903004, 40.982903, 37.779938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488819, 41.021191, 37.279087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.597881, 40.790775, 37.587330>,  <33.663319, 40.652527, 37.772278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.597881, 40.790775, 37.587330>,  <33.488819, 41.021191, 37.279087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597881, 40.790775, 37.587330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310826, -0.705268, -0.637169,
		0.910520, 0.413254, -0.013248,
		0.272656, -0.576037, 0.770610,
		33.679680, 40.617966, 37.818512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149364, 40.832470, 37.108139>,  <33.488819, 41.021191, 37.279087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149364, 40.832470, 37.108139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043934, 40.558216, 37.379562>,  <33.980675, 40.393665, 37.542416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.043934, 40.558216, 37.379562>,  <34.149364, 40.832470, 37.108139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043934, 40.558216, 37.379562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399780, -0.717817, -0.570013,
		0.877898, 0.121032, 0.463299,
		-0.263574, -0.685631, 0.678557,
		33.964863, 40.352528, 37.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742180, 40.681496, 37.292526>,  <34.149364, 40.832470, 37.108139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742180, 40.681496, 37.292526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.484184, 40.387817, 37.377331>,  <34.329388, 40.211609, 37.428215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.484184, 40.387817, 37.377331>,  <34.742180, 40.681496, 37.292526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484184, 40.387817, 37.377331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567097, -0.645809, -0.511207,
		0.512246, -0.209489, 0.832898,
		-0.644985, -0.734197, 0.212012,
		34.290688, 40.167557, 37.440933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182377, 40.187614, 37.450443>,  <34.742180, 40.681496, 37.292526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182377, 40.187614, 37.450443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846184, 40.009789, 37.326538>,  <34.644466, 39.903095, 37.252193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846184, 40.009789, 37.326538>,  <35.182377, 40.187614, 37.450443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846184, 40.009789, 37.326538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538946, -0.626946, -0.562561,
		0.055889, -0.639768, 0.766533,
		-0.840484, -0.444561, -0.309762,
		34.594040, 39.876419, 37.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195381, 39.426956, 37.691380>,  <35.182377, 40.187614, 37.450443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195381, 39.426956, 37.691380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980545, 39.503403, 37.362743>,  <34.851643, 39.549271, 37.165562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980545, 39.503403, 37.362743>,  <35.195381, 39.426956, 37.691380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980545, 39.503403, 37.362743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707265, -0.428761, -0.562086,
		-0.459691, -0.882971, 0.095110,
		-0.537086, 0.191118, -0.821592,
		34.819420, 39.560738, 37.116264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773502, 39.256115, 37.207390>,  <35.195381, 39.426956, 37.691380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773502, 39.256115, 37.207390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171432, 39.215992, 37.200966>,  <36.410191, 39.191917, 37.197109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171432, 39.215992, 37.200966>,  <35.773502, 39.256115, 37.207390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171432, 39.215992, 37.200966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038349, 0.224423, 0.973737,
		-0.094065, -0.969316, 0.227109,
		0.994827, -0.100304, -0.016062,
		36.469879, 39.185902, 37.196148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952869, 38.793045, 37.698166>,  <35.773502, 39.256115, 37.207390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952869, 38.793045, 37.698166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294697, 38.989941, 37.631935>,  <36.499794, 39.108078, 37.592197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294697, 38.989941, 37.631935>,  <35.952869, 38.793045, 37.698166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294697, 38.989941, 37.631935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040295, 0.255024, 0.966095,
		0.517777, -0.832263, 0.198100,
		0.854566, 0.492240, -0.165582,
		36.551067, 39.137611, 37.582260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324883, 38.547470, 38.134186>,  <35.952869, 38.793045, 37.698166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324883, 38.547470, 38.134186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540627, 38.873409, 38.049225>,  <36.670074, 39.068974, 37.998249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540627, 38.873409, 38.049225>,  <36.324883, 38.547470, 38.134186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540627, 38.873409, 38.049225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137531, 0.163613, 0.976891,
		0.830767, -0.556110, -0.023820,
		0.539362, 0.814845, -0.212407,
		36.702435, 39.117863, 37.985504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964615, 38.521492, 38.442951>,  <36.324883, 38.547470, 38.134186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964615, 38.521492, 38.442951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900211, 38.912369, 38.387569>,  <36.861568, 39.146896, 38.354340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900211, 38.912369, 38.387569>,  <36.964615, 38.521492, 38.442951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900211, 38.912369, 38.387569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061093, 0.149885, 0.986814,
		0.985060, 0.150427, -0.083833,
		-0.161009, 0.977193, -0.138456,
		36.851910, 39.205528, 38.346031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387802, 38.867794, 38.826866>,  <36.964615, 38.521492, 38.442951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387802, 38.867794, 38.826866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117729, 39.152622, 38.749840>,  <36.955685, 39.323521, 38.703625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117729, 39.152622, 38.749840>,  <37.387802, 38.867794, 38.826866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117729, 39.152622, 38.749840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040059, 0.225267, 0.973473,
		0.736561, 0.664988, -0.123572,
		-0.675184, 0.712072, -0.192561,
		36.915173, 39.366245, 38.692070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699661, 39.508163, 38.965744>,  <37.387802, 38.867794, 38.826866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699661, 39.508163, 38.965744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307049, 39.582172, 38.985207>,  <37.071484, 39.626579, 38.996883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307049, 39.582172, 38.985207>,  <37.699661, 39.508163, 38.965744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307049, 39.582172, 38.985207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090035, 0.222315, 0.970809,
		0.168804, 0.957258, -0.234867,
		-0.981529, 0.185023, 0.048659,
		37.012589, 39.637680, 38.999805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619633, 40.069595, 39.299812>,  <37.699661, 39.508163, 38.965744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619633, 40.069595, 39.299812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243382, 39.942192, 39.346756>,  <37.017632, 39.865749, 39.374924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243382, 39.942192, 39.346756>,  <37.619633, 40.069595, 39.299812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243382, 39.942192, 39.346756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008786, 0.368483, 0.929593,
		-0.339329, 0.873369, -0.349404,
		-0.940627, -0.318508, 0.117364,
		36.961193, 39.846642, 39.381966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098557, 40.628204, 39.481472>,  <37.619633, 40.069595, 39.299812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098557, 40.628204, 39.481472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924927, 40.293812, 39.615768>,  <36.820751, 40.093178, 39.696346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924927, 40.293812, 39.615768>,  <37.098557, 40.628204, 39.481472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924927, 40.293812, 39.615768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007899, 0.376197, 0.926506,
		-0.900845, 0.399516, -0.169900,
		-0.434070, -0.835980, 0.335739,
		36.794704, 40.043018, 39.716492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589966, 40.915127, 39.880947>,  <37.098557, 40.628204, 39.481472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589966, 40.915127, 39.880947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625801, 40.533100, 39.993958>,  <36.647301, 40.303883, 40.061764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625801, 40.533100, 39.993958>,  <36.589966, 40.915127, 39.880947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625801, 40.533100, 39.993958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396541, 0.226008, 0.889761,
		-0.913635, -0.191742, -0.358477,
		0.089586, -0.955068, 0.282522,
		36.652676, 40.246578, 40.078712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978405, 40.786270, 40.148705>,  <36.589966, 40.915127, 39.880947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978405, 40.786270, 40.148705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255329, 40.532398, 40.286045>,  <36.421482, 40.380074, 40.368450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255329, 40.532398, 40.286045>,  <35.978405, 40.786270, 40.148705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255329, 40.532398, 40.286045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175820, 0.313109, 0.933301,
		-0.699854, -0.706499, 0.105179,
		0.692309, -0.634682, 0.343347,
		36.463020, 40.341995, 40.389050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651783, 40.517879, 40.720299>,  <35.978405, 40.786270, 40.148705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651783, 40.517879, 40.720299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038525, 40.423363, 40.758995>,  <36.270569, 40.366653, 40.782211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038525, 40.423363, 40.758995>,  <35.651783, 40.517879, 40.720299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038525, 40.423363, 40.758995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052733, 0.185923, 0.981148,
		-0.249829, -0.953728, 0.167300,
		0.966853, -0.236297, 0.096742,
		36.328579, 40.352474, 40.788017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729767, 40.032257, 41.219711>,  <35.651783, 40.517879, 40.720299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729767, 40.032257, 41.219711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082954, 40.219482, 41.205376>,  <36.294868, 40.331818, 41.196774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082954, 40.219482, 41.205376>,  <35.729767, 40.032257, 41.219711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082954, 40.219482, 41.205376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114552, 0.288878, 0.950488,
		0.455241, -0.835145, 0.308688,
		0.882969, 0.468062, -0.035842,
		36.347843, 40.359901, 41.194622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147850, 39.716072, 41.823273>,  <35.729767, 40.032257, 41.219711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147850, 39.716072, 41.823273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280300, 40.075508, 41.708107>,  <36.359772, 40.291168, 41.639008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280300, 40.075508, 41.708107>,  <36.147850, 39.716072, 41.823273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280300, 40.075508, 41.708107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079274, 0.277556, 0.957433,
		0.940250, -0.339856, 0.020672,
		0.331127, 0.898588, -0.287914,
		36.379639, 40.345085, 41.621735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449699, 39.941742, 42.441719>,  <36.147850, 39.716072, 41.823273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449699, 39.941742, 42.441719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447460, 40.288689, 42.242661>,  <36.446117, 40.496857, 42.123226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447460, 40.288689, 42.242661>,  <36.449699, 39.941742, 42.441719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447460, 40.288689, 42.242661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111990, 0.495064, 0.861609,
		0.993694, -0.050907, -0.099907,
		-0.005599, 0.867364, -0.497643,
		36.445782, 40.548897, 42.093369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091297, 40.359680, 42.623646>,  <36.449699, 39.941742, 42.441719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091297, 40.359680, 42.623646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824631, 40.631752, 42.501717>,  <36.664631, 40.794994, 42.428558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824631, 40.631752, 42.501717>,  <37.091297, 40.359680, 42.623646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824631, 40.631752, 42.501717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025234, 0.388136, 0.921257,
		0.744931, 0.621860, -0.241593,
		-0.666664, 0.680177, -0.304826,
		36.624630, 40.835804, 42.410267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277020, 41.029202, 43.007084>,  <37.091297, 40.359680, 42.623646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277020, 41.029202, 43.007084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906765, 41.097099, 42.871799>,  <36.684612, 41.137840, 42.790627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906765, 41.097099, 42.871799>,  <37.277020, 41.029202, 43.007084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906765, 41.097099, 42.871799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227084, 0.465782, 0.855266,
		0.302713, 0.868466, -0.392596,
		-0.925633, 0.169748, -0.338214,
		36.629074, 41.148026, 42.770336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128468, 41.853764, 43.080059>,  <37.277020, 41.029202, 43.007084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128468, 41.853764, 43.080059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800331, 41.625172, 43.088528>,  <36.603451, 41.488014, 43.093609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800331, 41.625172, 43.088528>,  <37.128468, 41.853764, 43.080059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800331, 41.625172, 43.088528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317353, 0.485718, 0.814472,
		-0.475739, 0.661427, -0.579816,
		-0.820341, -0.571482, 0.021169,
		36.554230, 41.453728, 43.094879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629269, 42.275692, 43.103882>,  <37.128468, 41.853764, 43.080059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629269, 42.275692, 43.103882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481667, 41.935455, 43.253727>,  <36.393105, 41.731316, 43.343636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481667, 41.935455, 43.253727>,  <36.629269, 42.275692, 43.103882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481667, 41.935455, 43.253727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207110, 0.468176, 0.859021,
		-0.906059, 0.239395, -0.348924,
		-0.369003, -0.850589, 0.374614,
		36.370964, 41.680279, 43.366112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.841934, 42.423668, 43.454578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960712, 42.068604, 43.595364>,  <36.031979, 41.855564, 43.679836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960712, 42.068604, 43.595364>,  <35.841934, 42.423668, 43.454578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960712, 42.068604, 43.595364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179238, 0.310227, 0.933613,
		-0.937923, -0.340314, -0.066984,
		0.296941, -0.887663, 0.351966,
		36.049793, 41.802303, 43.700954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295883, 42.224777, 43.787067>,  <35.841934, 42.423668, 43.454578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295883, 42.224777, 43.787067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590828, 41.994652, 43.928665>,  <35.767796, 41.856575, 44.013622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.590828, 41.994652, 43.928665>,  <35.295883, 42.224777, 43.787067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590828, 41.994652, 43.928665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299918, 0.190733, 0.934703,
		-0.605265, -0.795384, -0.031907,
		0.737362, -0.575313, 0.353994,
		35.812038, 41.822060, 44.034863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036285, 41.769474, 44.332458>,  <35.295883, 42.224777, 43.787067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036285, 41.769474, 44.332458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430862, 41.801212, 44.389927>,  <35.667606, 41.820255, 44.424408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430862, 41.801212, 44.389927>,  <35.036285, 41.769474, 44.332458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430862, 41.801212, 44.389927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151796, 0.108221, 0.982469,
		0.062410, -0.990955, 0.118798,
		0.986440, 0.079349, 0.143669,
		35.726795, 41.825016, 44.433029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917233, 41.487221, 44.935703>,  <35.036285, 41.769474, 44.332458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917233, 41.487221, 44.935703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278534, 41.658680, 44.943676>,  <35.495316, 41.761555, 44.948460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278534, 41.658680, 44.943676>,  <34.917233, 41.487221, 44.935703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278534, 41.658680, 44.943676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100444, 0.166047, 0.980989,
		0.417187, -0.888083, 0.193038,
		0.903253, 0.428646, 0.019929,
		35.549511, 41.787273, 44.949654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377201, 41.150753, 45.487694>,  <34.917233, 41.487221, 44.935703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377201, 41.150753, 45.487694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527695, 41.515900, 45.424286>,  <35.617992, 41.734985, 45.386242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527695, 41.515900, 45.424286>,  <35.377201, 41.150753, 45.487694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527695, 41.515900, 45.424286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085855, 0.204702, 0.975052,
		0.922537, -0.353240, 0.155391,
		0.376236, 0.912863, -0.158518,
		35.640564, 41.789757, 45.376732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813389, 41.207203, 46.030056>,  <35.377201, 41.150753, 45.487694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813389, 41.207203, 46.030056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766811, 41.578838, 45.889641>,  <35.738865, 41.801819, 45.805389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766811, 41.578838, 45.889641>,  <35.813389, 41.207203, 46.030056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766811, 41.578838, 45.889641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130638, 0.336046, 0.932742,
		0.984568, 0.154473, 0.082243,
		-0.116446, 0.929091, -0.351040,
		35.731876, 41.857567, 45.784328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287567, 41.656223, 46.320499>,  <35.813389, 41.207203, 46.030056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287567, 41.656223, 46.320499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011917, 41.927818, 46.219242>,  <35.846527, 42.090775, 46.158489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.011917, 41.927818, 46.219242>,  <36.287567, 41.656223, 46.320499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011917, 41.927818, 46.219242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081273, 0.274714, 0.958085,
		0.720068, 0.680817, -0.134130,
		-0.689128, 0.678985, -0.253145,
		35.805180, 42.131516, 46.143299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366829, 42.301216, 46.594189>,  <36.287567, 41.656223, 46.320499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366829, 42.301216, 46.594189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976250, 42.318741, 46.509689>,  <35.741901, 42.329254, 46.458988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976250, 42.318741, 46.509689>,  <36.366829, 42.301216, 46.594189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976250, 42.318741, 46.509689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173994, 0.419013, 0.891153,
		0.127559, 0.906923, -0.401522,
		-0.976450, 0.043812, -0.211248,
		35.683315, 42.331886, 46.446316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113274, 42.891495, 46.854595>,  <36.366829, 42.301216, 46.594189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113274, 42.891495, 46.854595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785110, 42.667603, 46.807907>,  <35.588211, 42.533268, 46.779892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785110, 42.667603, 46.807907>,  <36.113274, 42.891495, 46.854595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785110, 42.667603, 46.807907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279895, 0.215140, 0.935614,
		-0.498580, 0.800260, -0.333170,
		-0.820413, -0.559731, -0.116724,
		35.538986, 42.499683, 46.772888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589298, 43.328613, 47.096111>,  <36.113274, 42.891495, 46.854595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589298, 43.328613, 47.096111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464973, 42.948849, 47.114075>,  <35.390377, 42.720989, 47.124851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464973, 42.948849, 47.114075>,  <35.589298, 43.328613, 47.096111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464973, 42.948849, 47.114075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237551, 0.123344, 0.963512,
		-0.920307, 0.288804, -0.263870,
		-0.310813, -0.949410, 0.044908,
		35.371731, 42.664024, 47.127548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330814, 43.370834, 47.625542>,  <35.589298, 43.328613, 47.096111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330814, 43.370834, 47.625542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247498, 42.981369, 47.588463>,  <35.197506, 42.747688, 47.566216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247498, 42.981369, 47.588463>,  <35.330814, 43.370834, 47.625542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247498, 42.981369, 47.588463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246443, -0.039475, 0.968353,
		-0.946509, 0.224550, -0.231730,
		-0.208296, -0.973663, -0.092702,
		35.185009, 42.689270, 47.560654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622688, 43.280109, 47.916454>,  <35.330814, 43.370834, 47.625542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622688, 43.280109, 47.916454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828243, 42.937180, 47.928524>,  <34.951576, 42.731422, 47.935764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828243, 42.937180, 47.928524>,  <34.622688, 43.280109, 47.916454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828243, 42.937180, 47.928524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294413, -0.143221, 0.944886,
		-0.805757, -0.494444, -0.326008,
		0.513883, -0.857329, 0.030170,
		34.982407, 42.679981, 47.937576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161510, 42.772240, 48.336376>,  <34.622688, 43.280109, 47.916454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161510, 42.772240, 48.336376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518421, 42.593239, 48.360321>,  <34.732567, 42.485836, 48.374687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.518421, 42.593239, 48.360321>,  <34.161510, 42.772240, 48.336376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518421, 42.593239, 48.360321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193957, -0.260193, 0.945876,
		-0.407709, -0.855592, -0.318960,
		0.892274, -0.447507, 0.059865,
		34.786102, 42.458988, 48.378281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026123, 42.148621, 48.577160>,  <34.161510, 42.772240, 48.336376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026123, 42.148621, 48.577160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413727, 42.200008, 48.661556>,  <34.646290, 42.230843, 48.712193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413727, 42.200008, 48.661556>,  <34.026123, 42.148621, 48.577160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413727, 42.200008, 48.661556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164045, -0.303936, 0.938462,
		0.184692, -0.943991, -0.273442,
		0.969009, 0.128470, 0.210992,
		34.704430, 42.238548, 48.724854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235386, 41.487648, 48.902653>,  <34.026123, 42.148621, 48.577160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235386, 41.487648, 48.902653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480083, 41.785259, 49.010128>,  <34.626904, 41.963825, 49.074612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480083, 41.785259, 49.010128>,  <34.235386, 41.487648, 48.902653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480083, 41.785259, 49.010128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097271, -0.266329, 0.958961,
		0.785052, -0.612775, -0.090553,
		0.611744, 0.744027, 0.268687,
		34.663609, 42.008469, 49.090733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588223, 41.142750, 49.418087>,  <34.235386, 41.487648, 48.902653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588223, 41.142750, 49.418087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678959, 41.531685, 49.440388>,  <34.733398, 41.765045, 49.453766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.678959, 41.531685, 49.440388>,  <34.588223, 41.142750, 49.418087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678959, 41.531685, 49.440388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018755, -0.052868, 0.998425,
		0.973752, -0.227525, 0.006244,
		0.226836, 0.972336, 0.055747,
		34.747009, 41.823387, 49.457111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031727, 41.288544, 49.930141>,  <34.588223, 41.142750, 49.418087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031727, 41.288544, 49.930141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902672, 41.666824, 49.914406>,  <34.825237, 41.893795, 49.904964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902672, 41.666824, 49.914406>,  <35.031727, 41.288544, 49.930141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902672, 41.666824, 49.914406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028487, 0.051245, 0.998280,
		0.946092, 0.320966, -0.043474,
		-0.322642, 0.945703, -0.039339,
		34.805878, 41.950535, 49.902603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466095, 41.665718, 50.396496>,  <35.031727, 41.288544, 49.930141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466095, 41.665718, 50.396496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147911, 41.903931, 50.351608>,  <34.957001, 42.046856, 50.324677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147911, 41.903931, 50.351608>,  <35.466095, 41.665718, 50.396496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147911, 41.903931, 50.351608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048888, 0.121512, 0.991385,
		0.604035, 0.794091, -0.067543,
		-0.795457, 0.595529, -0.112219,
		34.909275, 42.082588, 50.317944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674889, 42.329884, 50.732121>,  <35.466095, 41.665718, 50.396496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674889, 42.329884, 50.732121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277027, 42.314804, 50.693672>,  <35.038311, 42.305756, 50.670605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277027, 42.314804, 50.693672>,  <35.674889, 42.329884, 50.732121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277027, 42.314804, 50.693672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102163, 0.224767, 0.969042,
		-0.014926, 0.973683, -0.227417,
		-0.994656, -0.037697, -0.096120,
		34.978630, 42.303493, 50.664837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497929, 42.917068, 50.845963>,  <35.674889, 42.329884, 50.732121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497929, 42.917068, 50.845963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169991, 42.711895, 50.947742>,  <34.973228, 42.588791, 51.008812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169991, 42.711895, 50.947742>,  <35.497929, 42.917068, 50.845963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169991, 42.711895, 50.947742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049695, 0.378969, 0.924074,
		-0.570421, 0.770245, -0.285206,
		-0.819848, -0.512938, 0.254449,
		34.924038, 42.558014, 51.024078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118511, 43.274506, 51.265373>,  <35.497929, 42.917068, 50.845963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118511, 43.274506, 51.265373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932858, 42.927376, 51.336315>,  <34.821465, 42.719097, 51.378880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932858, 42.927376, 51.336315>,  <35.118511, 43.274506, 51.265373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932858, 42.927376, 51.336315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025746, 0.213362, 0.976634,
		-0.885391, 0.448723, -0.121372,
		-0.464134, -0.867828, 0.177356,
		34.793617, 42.667027, 51.389523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488724, 43.405834, 51.660706>,  <35.118511, 43.274506, 51.265373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488724, 43.405834, 51.660706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605629, 43.029488, 51.729225>,  <34.675774, 42.803680, 51.770336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605629, 43.029488, 51.729225>,  <34.488724, 43.405834, 51.660706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605629, 43.029488, 51.729225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068981, 0.157914, 0.985041,
		-0.953846, -0.299710, -0.018749,
		0.292266, -0.940871, 0.171300,
		34.693310, 42.747227, 51.780617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071220, 42.921864, 52.132954>,  <34.488724, 43.405834, 51.660706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071220, 42.921864, 52.132954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467312, 42.881207, 52.171131>,  <34.704967, 42.856812, 52.194038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467312, 42.881207, 52.171131>,  <34.071220, 42.921864, 52.132954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467312, 42.881207, 52.171131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054110, 0.350748, 0.934905,
		-0.128502, -0.930938, 0.341822,
		0.990232, -0.101642, 0.095445,
		34.764381, 42.850716, 52.199764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391434, 43.240040, 52.128292>,  <34.071220, 42.921864, 52.132954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391434, 43.240040, 52.128292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102585, 43.001709, 52.268883>,  <32.929276, 42.858711, 52.353237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102585, 43.001709, 52.268883>,  <33.391434, 43.240040, 52.128292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102585, 43.001709, 52.268883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310334, -0.175066, -0.934369,
		0.618255, -0.783799, -0.058488,
		-0.722118, -0.595828, 0.351474,
		32.885948, 42.822960, 52.374325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410076, 42.585781, 51.764885>,  <33.391434, 43.240040, 52.128292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410076, 42.585781, 51.764885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046307, 42.673439, 51.906261>,  <32.828045, 42.726032, 51.991085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046307, 42.673439, 51.906261>,  <33.410076, 42.585781, 51.764885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046307, 42.673439, 51.906261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400675, -0.234157, -0.885794,
		-0.111353, -0.947179, 0.300753,
		-0.909428, 0.219140, 0.353437,
		32.773479, 42.739182, 52.012291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038963, 42.027424, 51.629307>,  <33.410076, 42.585781, 51.764885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038963, 42.027424, 51.629307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765026, 42.314342, 51.680634>,  <32.600662, 42.486496, 51.711430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765026, 42.314342, 51.680634>,  <33.038963, 42.027424, 51.629307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765026, 42.314342, 51.680634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546429, -0.389023, -0.741672,
		-0.482082, -0.578049, 0.658375,
		-0.684845, 0.717301, 0.128321,
		32.559574, 42.529533, 51.719131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488205, 41.667442, 51.542725>,  <33.038963, 42.027424, 51.629307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488205, 41.667442, 51.542725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371696, 42.048264, 51.505306>,  <32.301792, 42.276756, 51.482857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371696, 42.048264, 51.505306>,  <32.488205, 41.667442, 51.542725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371696, 42.048264, 51.505306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565545, -0.250232, -0.785839,
		-0.771570, -0.175990, 0.611316,
		-0.291271, 0.952056, -0.093542,
		32.284317, 42.333881, 51.477245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727289, 41.681263, 51.256912>,  <32.488205, 41.667442, 51.542725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727289, 41.681263, 51.256912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894754, 42.035889, 51.178188>,  <31.995234, 42.248665, 51.130955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894754, 42.035889, 51.178188>,  <31.727289, 41.681263, 51.256912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894754, 42.035889, 51.178188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191823, -0.125492, -0.973374,
		-0.887652, 0.445266, 0.117524,
		0.418662, 0.886561, -0.196805,
		32.020351, 42.301857, 51.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252705, 41.930920, 50.834358>,  <31.727289, 41.681263, 51.256912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252705, 41.930920, 50.834358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582865, 42.150337, 50.780964>,  <31.780960, 42.281986, 50.748928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582865, 42.150337, 50.780964>,  <31.252705, 41.930920, 50.834358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582865, 42.150337, 50.780964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196397, 0.057322, -0.978847,
		-0.529288, 0.834155, 0.155045,
		0.825398, 0.548543, -0.133486,
		31.830484, 42.314899, 50.740917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007238, 42.476933, 50.351456>,  <31.252705, 41.930920, 50.834358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007238, 42.476933, 50.351456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406559, 42.471149, 50.328880>,  <31.646151, 42.467682, 50.315334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406559, 42.471149, 50.328880>,  <31.007238, 42.476933, 50.351456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406559, 42.471149, 50.328880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056800, -0.026159, -0.998043,
		0.012951, 0.999553, -0.026936,
		0.998302, -0.014456, -0.056436,
		31.706049, 42.466812, 50.311951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259542, 43.058395, 49.872650>,  <31.007238, 42.476933, 50.351456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259542, 43.058395, 49.872650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546059, 42.779736, 49.888687>,  <31.717968, 42.612541, 49.898308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546059, 42.779736, 49.888687>,  <31.259542, 43.058395, 49.872650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546059, 42.779736, 49.888687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153660, 0.101431, -0.982904,
		0.680671, 0.710207, 0.179701,
		0.716293, -0.696647, 0.040089,
		31.760946, 42.570740, 49.900715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805195, 43.323833, 49.461285>,  <31.259542, 43.058395, 49.872650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805195, 43.323833, 49.461285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908506, 42.937637, 49.474731>,  <31.970493, 42.705921, 49.482800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.908506, 42.937637, 49.474731>,  <31.805195, 43.323833, 49.461285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908506, 42.937637, 49.474731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302935, 0.047901, -0.951807,
		0.917345, 0.256014, 0.304851,
		0.258278, -0.965486, 0.033614,
		31.985991, 42.647991, 49.484818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563896, 43.256180, 49.198009>,  <31.805195, 43.323833, 49.461285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563896, 43.256180, 49.198009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.381535, 42.904217, 49.144478>,  <32.272118, 42.693039, 49.112358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.381535, 42.904217, 49.144478>,  <32.563896, 43.256180, 49.198009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381535, 42.904217, 49.144478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419099, -0.079583, -0.904446,
		0.785182, -0.468426, 0.405052,
		-0.455901, -0.879911, -0.133830,
		32.244762, 42.640244, 49.104328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031513, 42.908127, 48.855911>,  <32.563896, 43.256180, 49.198009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031513, 42.908127, 48.855911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706722, 42.692497, 48.766396>,  <32.511848, 42.563118, 48.712685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706722, 42.692497, 48.766396>,  <33.031513, 42.908127, 48.855911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706722, 42.692497, 48.766396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385702, -0.207786, -0.898921,
		0.438087, -0.816224, 0.376641,
		-0.811981, -0.539077, -0.223791,
		32.463127, 42.530773, 48.699257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345474, 42.330513, 48.450836>,  <33.031513, 42.908127, 48.855911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345474, 42.330513, 48.450836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956024, 42.323349, 48.359848>,  <32.722355, 42.319050, 48.305256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956024, 42.323349, 48.359848>,  <33.345474, 42.330513, 48.450836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956024, 42.323349, 48.359848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222316, -0.298860, -0.928040,
		-0.051357, -0.954129, 0.294959,
		-0.973621, -0.017912, -0.227467,
		32.663937, 42.317974, 48.291607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212090, 41.730869, 48.093174>,  <33.345474, 42.330513, 48.450836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212090, 41.730869, 48.093174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950306, 42.018776, 48.000553>,  <32.793236, 42.191521, 47.944981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950306, 42.018776, 48.000553>,  <33.212090, 41.730869, 48.093174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950306, 42.018776, 48.000553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254003, -0.079151, -0.963959,
		-0.712154, -0.689688, -0.131021,
		-0.654461, 0.719768, -0.231550,
		32.753967, 42.234707, 47.931087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990246, 41.518986, 47.442474>,  <33.212090, 41.730869, 48.093174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990246, 41.518986, 47.442474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798225, 41.869400, 47.424084>,  <32.683014, 42.079647, 47.413048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798225, 41.869400, 47.424084>,  <32.990246, 41.518986, 47.442474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798225, 41.869400, 47.424084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017825, -0.042659, -0.998931,
		-0.877061, -0.480354, 0.004863,
		-0.480047, 0.876037, -0.045977,
		32.654213, 42.132210, 47.410290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648327, 41.508266, 46.863388>,  <32.990246, 41.518986, 47.442474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648327, 41.508266, 46.863388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.643066, 41.898949, 46.949059>,  <32.639912, 42.133358, 47.000462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.643066, 41.898949, 46.949059>,  <32.648327, 41.508266, 46.863388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643066, 41.898949, 46.949059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045506, 0.214553, -0.975652,
		-0.998877, -0.003081, -0.047267,
		-0.013147, 0.976707, 0.214172,
		32.639122, 42.191959, 47.013309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246716, 41.818581, 46.362453>,  <32.648327, 41.508266, 46.863388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246716, 41.818581, 46.362453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507664, 42.094894, 46.487179>,  <32.664234, 42.260681, 46.562016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507664, 42.094894, 46.487179>,  <32.246716, 41.818581, 46.362453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507664, 42.094894, 46.487179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197858, 0.241930, -0.949906,
		-0.731619, 0.681385, 0.021150,
		0.652369, 0.690785, 0.311818,
		32.703373, 42.302132, 46.580723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980389, 42.474693, 46.026505>,  <32.246716, 41.818581, 46.362453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980389, 42.474693, 46.026505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356213, 42.515808, 46.157143>,  <32.581707, 42.540478, 46.235523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356213, 42.515808, 46.157143>,  <31.980389, 42.474693, 46.026505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356213, 42.515808, 46.157143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275442, 0.339658, -0.899313,
		-0.203368, 0.934916, 0.290817,
		0.939560, 0.102788, 0.326591,
		32.638081, 42.546646, 46.255119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206207, 43.225803, 45.806179>,  <31.980389, 42.474693, 46.026505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206207, 43.225803, 45.806179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541374, 43.015518, 45.864868>,  <32.742474, 42.889347, 45.900082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.541374, 43.015518, 45.864868>,  <32.206207, 43.225803, 45.806179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541374, 43.015518, 45.864868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334189, 0.281616, -0.899450,
		0.431532, 0.802694, 0.411657,
		0.837913, -0.525713, 0.146725,
		32.792747, 42.857803, 45.908886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811695, 43.576183, 45.499565>,  <32.206207, 43.225803, 45.806179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811695, 43.576183, 45.499565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934006, 43.196159, 45.524517>,  <33.007393, 42.968147, 45.539486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934006, 43.196159, 45.524517>,  <32.811695, 43.576183, 45.499565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934006, 43.196159, 45.524517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217856, 0.006040, -0.975962,
		0.926843, 0.312018, 0.208823,
		0.305779, -0.950057, 0.062377,
		33.025738, 42.911140, 45.543232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437672, 43.511692, 45.128201>,  <32.811695, 43.576183, 45.499565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437672, 43.511692, 45.128201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291058, 43.139744, 45.140770>,  <33.203091, 42.916573, 45.148312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291058, 43.139744, 45.140770>,  <33.437672, 43.511692, 45.128201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291058, 43.139744, 45.140770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168887, -0.099712, -0.980579,
		0.914948, -0.354109, 0.193592,
		-0.366535, -0.929873, 0.031427,
		33.181099, 42.860783, 45.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884098, 43.064117, 44.753334>,  <33.437672, 43.511692, 45.128201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884098, 43.064117, 44.753334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545670, 42.851730, 44.772213>,  <33.342613, 42.724297, 44.783539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.545670, 42.851730, 44.772213>,  <33.884098, 43.064117, 44.753334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545670, 42.851730, 44.772213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059707, -0.182375, -0.981414,
		0.529709, -0.827533, 0.186005,
		-0.846076, -0.530970, 0.047196,
		33.291847, 42.692440, 44.786373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.036377, 42.721958, 40.849537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678783, 42.648815, 40.685902>,  <42.464226, 42.604931, 40.587719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678783, 42.648815, 40.685902>,  <43.036377, 42.721958, 40.849537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678783, 42.648815, 40.685902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373404, -0.808683, -0.454535,
		-0.247710, -0.559103, 0.791229,
		-0.893985, -0.182855, -0.409090,
		42.410587, 42.593960, 40.563175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075359, 42.049747, 40.853081>,  <43.036377, 42.721958, 40.849537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075359, 42.049747, 40.853081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.754635, 42.111889, 40.622269>,  <42.562199, 42.149174, 40.483784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.754635, 42.111889, 40.622269>,  <43.075359, 42.049747, 40.853081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754635, 42.111889, 40.622269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114578, -0.907733, -0.403599,
		-0.586484, -0.389726, 0.710035,
		-0.801815, 0.155350, -0.577026,
		42.514091, 42.158493, 40.449162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721802, 41.479885, 40.821674>,  <43.075359, 42.049747, 40.853081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721802, 41.479885, 40.821674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600353, 41.663975, 40.487965>,  <42.527485, 41.774429, 40.287739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600353, 41.663975, 40.487965>,  <42.721802, 41.479885, 40.821674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600353, 41.663975, 40.487965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109796, -0.852874, -0.510441,
		-0.946446, -0.246579, 0.208418,
		-0.303619, 0.460222, -0.834273,
		42.509266, 41.802040, 40.237682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396988, 40.984703, 40.426968>,  <42.721802, 41.479885, 40.821674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396988, 40.984703, 40.426968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446823, 41.277962, 40.159542>,  <42.476723, 41.453915, 39.999088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446823, 41.277962, 40.159542>,  <42.396988, 40.984703, 40.426968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446823, 41.277962, 40.159542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207855, -0.678148, -0.704920,
		-0.970193, -0.051141, -0.236876,
		0.124586, 0.733144, -0.668564,
		42.484200, 41.497906, 39.958973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981434, 40.750053, 39.816483>,  <42.396988, 40.984703, 40.426968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981434, 40.750053, 39.816483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247219, 41.020397, 39.688919>,  <42.406689, 41.182602, 39.612381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247219, 41.020397, 39.688919>,  <41.981434, 40.750053, 39.816483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247219, 41.020397, 39.688919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351759, -0.659361, -0.664461,
		-0.659361, 0.329328, -0.675859,
		0.664461, 0.675859, -0.318913,
		42.446556, 41.223156, 39.593246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042358, 40.725376, 38.967903>,  <41.981434, 40.750053, 39.816483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042358, 40.725376, 38.967903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.385822, 40.907970, 39.061138>,  <42.591900, 41.017525, 39.117081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.385822, 40.907970, 39.061138>,  <42.042358, 40.725376, 38.967903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385822, 40.907970, 39.061138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458352, -0.480340, -0.747789,
		-0.229392, 0.748930, -0.621677,
		0.858658, 0.456484, 0.233087,
		42.643421, 41.044914, 39.131065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210716, 41.045528, 38.388596>,  <42.042358, 40.725376, 38.967903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210716, 41.045528, 38.388596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.542656, 40.989956, 38.604763>,  <42.741821, 40.956612, 38.734463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.542656, 40.989956, 38.604763>,  <42.210716, 41.045528, 38.388596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542656, 40.989956, 38.604763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456422, -0.388121, -0.800650,
		0.320982, 0.911076, -0.258670,
		0.829849, -0.138932, 0.540415,
		42.791611, 40.948277, 38.766888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824409, 41.186344, 37.888756>,  <42.210716, 41.045528, 38.388596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824409, 41.186344, 37.888756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949276, 40.963139, 38.196308>,  <43.024197, 40.829216, 38.380840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949276, 40.963139, 38.196308>,  <42.824409, 41.186344, 37.888756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949276, 40.963139, 38.196308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593839, -0.517120, -0.616395,
		0.741560, 0.649005, 0.169945,
		0.312162, -0.558014, 0.768879,
		43.042923, 40.795734, 38.426971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493492, 41.108257, 37.812954>,  <42.824409, 41.186344, 37.888756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493492, 41.108257, 37.812954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375156, 40.796169, 38.033405>,  <43.304153, 40.608917, 38.165676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.375156, 40.796169, 38.033405>,  <43.493492, 41.108257, 37.812954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375156, 40.796169, 38.033405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432449, -0.623835, -0.651012,
		0.851743, 0.045738, 0.521960,
		-0.295841, -0.780216, 0.551127,
		43.286404, 40.562103, 38.198742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019249, 40.451721, 37.703045>,  <43.493492, 41.108257, 37.812954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019249, 40.451721, 37.703045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696613, 40.292389, 37.877743>,  <43.503033, 40.196789, 37.982559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696613, 40.292389, 37.877743>,  <44.019249, 40.451721, 37.703045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696613, 40.292389, 37.877743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079083, -0.804928, -0.588078,
		0.585796, -0.439800, 0.680749,
		-0.806591, -0.398330, 0.436743,
		43.454636, 40.172890, 38.008766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218761, 39.768463, 38.089653>,  <44.019249, 40.451721, 37.703045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218761, 39.768463, 38.089653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835644, 39.771091, 37.974697>,  <43.605774, 39.772667, 37.905724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835644, 39.771091, 37.974697>,  <44.218761, 39.768463, 38.089653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835644, 39.771091, 37.974697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145603, -0.850929, -0.504698,
		-0.247862, -0.525240, 0.814056,
		-0.957792, 0.006567, -0.287390,
		43.548306, 39.773060, 37.888481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044243, 39.096790, 38.012905>,  <44.218761, 39.768463, 38.089653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044243, 39.096790, 38.012905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708103, 39.236904, 37.847446>,  <43.506420, 39.320972, 37.748169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708103, 39.236904, 37.847446>,  <44.044243, 39.096790, 38.012905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708103, 39.236904, 37.847446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007143, -0.770228, -0.637729,
		-0.541993, -0.532963, 0.649765,
		-0.840353, 0.350286, -0.413651,
		43.455997, 39.341991, 37.723351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649067, 38.553787, 37.942444>,  <44.044243, 39.096790, 38.012905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649067, 38.553787, 37.942444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480541, 38.814899, 37.690613>,  <43.379425, 38.971569, 37.539513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.480541, 38.814899, 37.690613>,  <43.649067, 38.553787, 37.942444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480541, 38.814899, 37.690613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151886, -0.735181, -0.660636,
		-0.894104, -0.182713, 0.408892,
		-0.421317, 0.652783, -0.629577,
		43.354145, 39.010735, 37.501740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065315, 38.302147, 37.900261>,  <43.649067, 38.553787, 37.942444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065315, 38.302147, 37.900261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078922, 38.526733, 37.569542>,  <43.087086, 38.661484, 37.371109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078922, 38.526733, 37.569542>,  <43.065315, 38.302147, 37.900261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078922, 38.526733, 37.569542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222278, -0.802307, -0.553982,
		-0.974390, 0.202625, 0.097507,
		0.034020, 0.561468, -0.826799,
		43.089127, 38.695175, 37.321503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424324, 38.154190, 37.531158>,  <43.065315, 38.302147, 37.900261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424324, 38.154190, 37.531158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665478, 38.306702, 37.250828>,  <42.810169, 38.398209, 37.082630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665478, 38.306702, 37.250828>,  <42.424324, 38.154190, 37.531158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665478, 38.306702, 37.250828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226630, -0.760388, -0.608645,
		-0.764964, 0.525770, -0.372016,
		0.602884, 0.381281, -0.700825,
		42.846344, 38.421085, 37.040581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064865, 38.010822, 36.972424>,  <42.424324, 38.154190, 37.531158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064865, 38.010822, 36.972424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414253, 38.106792, 36.802959>,  <42.623886, 38.164375, 36.701279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414253, 38.106792, 36.802959>,  <42.064865, 38.010822, 36.972424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414253, 38.106792, 36.802959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159701, -0.680832, -0.714817,
		-0.459948, 0.692028, -0.556368,
		0.873466, 0.239926, -0.423665,
		42.676292, 38.178772, 36.675861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928207, 38.100338, 36.183498>,  <42.064865, 38.010822, 36.972424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928207, 38.100338, 36.183498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312809, 38.011337, 36.248001>,  <42.543571, 37.957935, 36.286705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312809, 38.011337, 36.248001>,  <41.928207, 38.100338, 36.183498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312809, 38.011337, 36.248001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043060, -0.701584, -0.711285,
		0.271400, 0.676958, -0.684156,
		0.961503, -0.222503, 0.161260,
		42.601261, 37.944588, 36.296379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299549, 38.045643, 35.507534>,  <41.928207, 38.100338, 36.183498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299549, 38.045643, 35.507534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513195, 37.830410, 35.768360>,  <42.641380, 37.701271, 35.924858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.513195, 37.830410, 35.768360>,  <42.299549, 38.045643, 35.507534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513195, 37.830410, 35.768360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140982, -0.703812, -0.696256,
		0.833576, 0.463808, -0.300055,
		0.534112, -0.538080, 0.652070,
		42.673428, 37.668987, 35.963982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867802, 37.834965, 35.122242>,  <42.299549, 38.045643, 35.507534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867802, 37.834965, 35.122242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.884525, 37.611435, 35.453537>,  <42.894558, 37.477318, 35.652313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.884525, 37.611435, 35.453537>,  <42.867802, 37.834965, 35.122242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884525, 37.611435, 35.453537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206290, -0.806269, -0.554414,
		0.977597, 0.194037, 0.081569,
		0.041811, -0.558820, 0.828234,
		42.897068, 37.443790, 35.702007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446926, 37.470184, 35.019253>,  <42.867802, 37.834965, 35.122242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446926, 37.470184, 35.019253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222446, 37.260479, 35.275444>,  <43.087757, 37.134655, 35.429157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222446, 37.260479, 35.275444>,  <43.446926, 37.470184, 35.019253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222446, 37.260479, 35.275444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037546, -0.789146, -0.613057,
		0.826829, -0.319999, 0.462551,
		-0.561198, -0.524261, 0.640474,
		43.054089, 37.103199, 35.467587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718540, 36.793186, 34.991886>,  <43.446926, 37.470184, 35.019253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718540, 36.793186, 34.991886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360275, 36.748432, 35.164062>,  <43.145317, 36.721581, 35.267368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360275, 36.748432, 35.164062>,  <43.718540, 36.793186, 34.991886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360275, 36.748432, 35.164062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197588, -0.766972, -0.610502,
		0.398438, -0.631851, 0.664840,
		-0.895660, -0.111883, 0.430437,
		43.091576, 36.714867, 35.293194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545708, 36.784588, 34.811787>,  <43.718540, 36.793186, 34.991886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545708, 36.784588, 34.811787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918903, 36.810814, 34.953342>,  <45.142818, 36.826550, 35.038277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918903, 36.810814, 34.953342>,  <44.545708, 36.784588, 34.811787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918903, 36.810814, 34.953342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299995, -0.401556, 0.865307,
		0.198841, -0.913485, -0.354976,
		0.932987, 0.065568, 0.353887,
		45.198799, 36.830482, 35.059509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706993, 36.104366, 34.953701>,  <44.545708, 36.784588, 34.811787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706993, 36.104366, 34.953701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935318, 36.336258, 35.186283>,  <45.072311, 36.475391, 35.325832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935318, 36.336258, 35.186283>,  <44.706993, 36.104366, 34.953701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935318, 36.336258, 35.186283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273303, -0.533626, 0.800343,
		0.774261, -0.615757, -0.146158,
		0.570811, 0.579729, 0.581455,
		45.106560, 36.510178, 35.360718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157936, 35.710018, 35.412212>,  <44.706993, 36.104366, 34.953701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157936, 35.710018, 35.412212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180119, 36.058258, 35.607754>,  <45.193428, 36.267200, 35.725079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180119, 36.058258, 35.607754>,  <45.157936, 35.710018, 35.412212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180119, 36.058258, 35.607754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345411, -0.442653, 0.827496,
		0.936812, -0.214743, 0.276169,
		0.055452, 0.870600, 0.488857,
		45.196754, 36.319439, 35.754410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412586, 35.533257, 36.103928>,  <45.157936, 35.710018, 35.412212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412586, 35.533257, 36.103928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.239735, 35.888397, 36.167156>,  <45.136024, 36.101482, 36.205093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.239735, 35.888397, 36.167156>,  <45.412586, 35.533257, 36.103928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239735, 35.888397, 36.167156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428882, -0.356517, 0.830034,
		0.793300, 0.290889, 0.534844,
		-0.432129, 0.887851, 0.158068,
		45.110096, 36.154751, 36.214577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512638, 35.657196, 36.762325>,  <45.412586, 35.533257, 36.103928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512638, 35.657196, 36.762325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197205, 35.888618, 36.678989>,  <45.007946, 36.027473, 36.628986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197205, 35.888618, 36.678989>,  <45.512638, 35.657196, 36.762325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197205, 35.888618, 36.678989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471135, -0.350718, 0.809338,
		0.395181, 0.736387, 0.549150,
		-0.788583, 0.578559, -0.208341,
		44.960629, 36.062187, 36.616486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275269, 35.855225, 37.477024>,  <45.512638, 35.657196, 36.762325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275269, 35.855225, 37.477024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971096, 35.932461, 37.229004>,  <44.788593, 35.978802, 37.080193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971096, 35.932461, 37.229004>,  <45.275269, 35.855225, 37.477024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971096, 35.932461, 37.229004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642303, -0.082658, 0.761980,
		0.095880, 0.977693, 0.186878,
		-0.760430, 0.193091, -0.620050,
		44.742966, 35.990387, 37.042988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925491, 36.416225, 37.807789>,  <45.275269, 35.855225, 37.477024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925491, 36.416225, 37.807789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655903, 36.246517, 37.565876>,  <44.494148, 36.144691, 37.420727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655903, 36.246517, 37.565876>,  <44.925491, 36.416225, 37.807789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655903, 36.246517, 37.565876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703204, 0.117523, 0.701208,
		-0.226424, 0.897878, -0.377554,
		-0.673970, -0.424268, -0.604782,
		44.453712, 36.119236, 37.384441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301105, 36.831341, 37.788086>,  <44.925491, 36.416225, 37.807789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301105, 36.831341, 37.788086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173538, 36.471840, 37.667732>,  <44.096996, 36.256138, 37.595520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.173538, 36.471840, 37.667732>,  <44.301105, 36.831341, 37.788086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173538, 36.471840, 37.667732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766523, 0.057870, 0.639604,
		-0.557433, 0.434622, -0.707370,
		-0.318921, -0.898752, -0.300889,
		44.077862, 36.202213, 37.577465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555031, 36.950951, 37.513268>,  <44.301105, 36.831341, 37.788086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555031, 36.950951, 37.513268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613091, 36.565590, 37.603409>,  <43.647926, 36.334373, 37.657494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.613091, 36.565590, 37.603409>,  <43.555031, 36.950951, 37.513268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613091, 36.565590, 37.603409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790537, 0.024037, 0.611943,
		-0.594965, -0.266974, -0.758117,
		0.145150, -0.963404, 0.225354,
		43.656635, 36.276569, 37.671017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933239, 36.782413, 37.637756>,  <43.555031, 36.950951, 37.513268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933239, 36.782413, 37.637756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136997, 36.477070, 37.796650>,  <43.259251, 36.293861, 37.891987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136997, 36.477070, 37.796650>,  <42.933239, 36.782413, 37.637756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136997, 36.477070, 37.796650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638767, -0.026104, 0.768957,
		-0.576623, -0.645443, -0.500908,
		0.509394, -0.763362, 0.397235,
		43.289814, 36.248062, 37.915821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385708, 36.325191, 37.945183>,  <42.933239, 36.782413, 37.637756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385708, 36.325191, 37.945183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735966, 36.243397, 38.120193>,  <42.946121, 36.194321, 38.225201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735966, 36.243397, 38.120193>,  <42.385708, 36.325191, 37.945183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735966, 36.243397, 38.120193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458038, -0.064402, 0.886597,
		-0.153114, -0.976750, -0.150054,
		0.875647, -0.204481, 0.437528,
		42.998661, 36.182053, 38.251453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297878, 35.694469, 38.366798>,  <42.385708, 36.325191, 37.945183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297878, 35.694469, 38.366798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616135, 35.878716, 38.524174>,  <42.807087, 35.989262, 38.618599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616135, 35.878716, 38.524174>,  <42.297878, 35.694469, 38.366798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616135, 35.878716, 38.524174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493799, 0.116940, 0.861677,
		0.350892, -0.879863, 0.320493,
		0.795636, 0.460615, 0.393442,
		42.854824, 36.016899, 38.642208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426533, 35.311550, 39.031406>,  <42.297878, 35.694469, 38.366798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426533, 35.311550, 39.031406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618549, 35.660873, 39.064598>,  <42.733761, 35.870468, 39.084511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618549, 35.660873, 39.064598>,  <42.426533, 35.311550, 39.031406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618549, 35.660873, 39.064598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422074, 0.147010, 0.894562,
		0.769034, -0.464450, 0.439173,
		0.480042, 0.873312, 0.082977,
		42.762562, 35.922867, 39.089493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556782, 35.335411, 39.744987>,  <42.426533, 35.311550, 39.031406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556782, 35.335411, 39.744987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639214, 35.708961, 39.628094>,  <42.688671, 35.933094, 39.557957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639214, 35.708961, 39.628094>,  <42.556782, 35.335411, 39.744987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639214, 35.708961, 39.628094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547259, 0.357565, 0.756739,
		0.811196, 0.003980, 0.584761,
		0.206078, 0.933880, -0.292234,
		42.701038, 35.989124, 39.540424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785805, 35.730427, 40.412212>,  <42.556782, 35.335411, 39.744987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785805, 35.730427, 40.412212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644680, 35.995502, 40.147980>,  <42.560005, 36.154549, 39.989441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644680, 35.995502, 40.147980>,  <42.785805, 35.730427, 40.412212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644680, 35.995502, 40.147980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436558, 0.507851, 0.742633,
		0.827613, 0.550389, 0.110129,
		-0.352808, 0.662690, -0.660581,
		42.538837, 36.194309, 39.949806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086906, 36.417545, 40.542435>,  <42.785805, 35.730427, 40.412212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086906, 36.417545, 40.542435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.744549, 36.468193, 40.341869>,  <42.539135, 36.498581, 40.221531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.744549, 36.468193, 40.341869>,  <43.086906, 36.417545, 40.542435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744549, 36.468193, 40.341869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390307, 0.477923, 0.786924,
		0.339276, 0.869228, -0.359631,
		-0.855893, 0.126618, -0.501414,
		42.487782, 36.506180, 40.191444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851559, 37.150101, 40.617058>,  <43.086906, 36.417545, 40.542435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851559, 37.150101, 40.617058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.519421, 36.972633, 40.482189>,  <42.320137, 36.866154, 40.401268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.519421, 36.972633, 40.482189>,  <42.851559, 37.150101, 40.617058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519421, 36.972633, 40.482189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549089, 0.548286, 0.630780,
		-0.094993, 0.708902, -0.698881,
		-0.830348, -0.443667, -0.337168,
		42.270317, 36.839535, 40.381039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455044, 37.746040, 40.377556>,  <42.851559, 37.150101, 40.617058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455044, 37.746040, 40.377556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205910, 37.438206, 40.433849>,  <42.056427, 37.253506, 40.467625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205910, 37.438206, 40.433849>,  <42.455044, 37.746040, 40.377556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205910, 37.438206, 40.433849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543767, 0.555167, 0.629370,
		-0.562487, 0.315469, -0.764256,
		-0.622837, -0.769590, 0.140733,
		42.019058, 37.207329, 40.476070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837753, 38.039749, 40.227116>,  <42.455044, 37.746040, 40.377556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837753, 38.039749, 40.227116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729198, 37.731167, 40.457317>,  <41.664066, 37.546017, 40.595440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729198, 37.731167, 40.457317>,  <41.837753, 38.039749, 40.227116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729198, 37.731167, 40.457317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554059, 0.614159, 0.561985,
		-0.786998, -0.166348, -0.594107,
		-0.271391, -0.771451, 0.575508,
		41.647781, 37.499733, 40.629971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151283, 38.222042, 40.470814>,  <41.837753, 38.039749, 40.227116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151283, 38.222042, 40.470814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.313705, 37.951855, 40.717022>,  <41.411160, 37.789742, 40.864746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.313705, 37.951855, 40.717022>,  <41.151283, 38.222042, 40.470814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313705, 37.951855, 40.717022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404994, 0.470784, 0.783800,
		-0.819207, -0.567548, -0.082395,
		0.406054, -0.675464, 0.615524,
		41.435520, 37.749214, 40.901680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633495, 38.053276, 40.896782>,  <41.151283, 38.222042, 40.470814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633495, 38.053276, 40.896782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953266, 37.924637, 41.099754>,  <41.145130, 37.847454, 41.221539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953266, 37.924637, 41.099754>,  <40.633495, 38.053276, 40.896782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953266, 37.924637, 41.099754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312706, 0.498448, 0.808557,
		-0.512959, -0.805061, 0.297909,
		0.799430, -0.321598, 0.507431,
		41.193096, 37.828156, 41.251984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.481052, 40.879894, 41.094620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117981, 40.715572, 41.128933>,  <36.900139, 40.616978, 41.149521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117981, 40.715572, 41.128933>,  <37.481052, 40.879894, 41.094620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117981, 40.715572, 41.128933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237526, -0.671396, -0.702003,
		0.345979, -0.616818, 0.706989,
		-0.907678, -0.410806, 0.085779,
		36.845676, 40.592331, 41.154667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612324, 40.139355, 40.967354>,  <37.481052, 40.879894, 41.094620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612324, 40.139355, 40.967354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220806, 40.204044, 40.917065>,  <36.985897, 40.242859, 40.886890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220806, 40.204044, 40.917065>,  <37.612324, 40.139355, 40.967354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220806, 40.204044, 40.917065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024756, -0.702646, -0.711109,
		-0.203344, -0.692917, 0.691749,
		-0.978794, 0.161725, -0.125725,
		36.927166, 40.252563, 40.879349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342129, 39.461582, 40.851238>,  <37.612324, 40.139355, 40.967354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342129, 39.461582, 40.851238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057247, 39.707581, 40.715866>,  <36.886318, 39.855179, 40.634644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057247, 39.707581, 40.715866>,  <37.342129, 39.461582, 40.851238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057247, 39.707581, 40.715866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081689, -0.551457, -0.830194,
		-0.697201, -0.563623, 0.442990,
		-0.712207, 0.614999, -0.338435,
		36.843586, 39.892078, 40.614334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829029, 38.974079, 40.471077>,  <37.342129, 39.461582, 40.851238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829029, 38.974079, 40.471077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757214, 39.353519, 40.366837>,  <36.714123, 39.581184, 40.304291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757214, 39.353519, 40.366837>,  <36.829029, 38.974079, 40.471077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757214, 39.353519, 40.366837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178612, -0.291936, -0.939612,
		-0.967400, -0.122153, 0.221847,
		-0.179542, 0.948605, -0.260601,
		36.703350, 39.638100, 40.288658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164062, 38.928127, 40.102684>,  <36.829029, 38.974079, 40.471077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164062, 38.928127, 40.102684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379936, 39.244213, 39.986546>,  <36.509460, 39.433865, 39.916862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379936, 39.244213, 39.986546>,  <36.164062, 38.928127, 40.102684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379936, 39.244213, 39.986546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250741, -0.178350, -0.951483,
		-0.803662, 0.586298, 0.101888,
		0.539681, 0.790219, -0.290342,
		36.541840, 39.481277, 39.899445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773632, 39.352306, 39.632084>,  <36.164062, 38.928127, 40.102684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773632, 39.352306, 39.632084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144920, 39.480328, 39.556221>,  <36.367695, 39.557140, 39.510704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144920, 39.480328, 39.556221>,  <35.773632, 39.352306, 39.632084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144920, 39.480328, 39.556221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151685, -0.139907, -0.978477,
		-0.339700, 0.937012, -0.081317,
		0.928222, 0.320055, -0.189657,
		36.423386, 39.576344, 39.499325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739914, 39.765881, 39.048363>,  <35.773632, 39.352306, 39.632084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739914, 39.765881, 39.048363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127037, 39.665829, 39.037163>,  <36.359310, 39.605797, 39.030441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127037, 39.665829, 39.037163>,  <35.739914, 39.765881, 39.048363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127037, 39.665829, 39.037163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036848, -0.030760, -0.998847,
		0.248977, 0.967725, -0.038986,
		0.967808, -0.250126, -0.028001,
		36.417381, 39.590790, 39.028763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997337, 40.270782, 38.482513>,  <35.739914, 39.765881, 39.048363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997337, 40.270782, 38.482513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265232, 39.979748, 38.541927>,  <36.425968, 39.805126, 38.577576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265232, 39.979748, 38.541927>,  <35.997337, 40.270782, 38.482513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265232, 39.979748, 38.541927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084096, -0.124428, -0.988658,
		0.737818, 0.674636, -0.022147,
		0.669740, -0.727588, 0.148540,
		36.466156, 39.761471, 38.586491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568241, 40.378536, 37.943451>,  <35.997337, 40.270782, 38.482513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568241, 40.378536, 37.943451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660282, 40.018253, 38.090839>,  <36.715508, 39.802082, 38.179272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660282, 40.018253, 38.090839>,  <36.568241, 40.378536, 37.943451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660282, 40.018253, 38.090839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543960, -0.194920, -0.816158,
		0.806945, 0.388235, 0.445099,
		0.230102, -0.900710, 0.368475,
		36.729313, 39.748039, 38.201382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290649, 40.216522, 37.683601>,  <36.568241, 40.378536, 37.943451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290649, 40.216522, 37.683601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115871, 39.869057, 37.776989>,  <37.011005, 39.660580, 37.833023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115871, 39.869057, 37.776989>,  <37.290649, 40.216522, 37.683601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115871, 39.869057, 37.776989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371795, -0.410767, -0.832489,
		0.819053, -0.276949, 0.502446,
		-0.436945, -0.868660, 0.233471,
		36.984787, 39.608459, 37.847031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660442, 39.728615, 37.370796>,  <37.290649, 40.216522, 37.683601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660442, 39.728615, 37.370796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305088, 39.557514, 37.437489>,  <37.091877, 39.454853, 37.477505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305088, 39.557514, 37.437489>,  <37.660442, 39.728615, 37.370796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305088, 39.557514, 37.437489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086977, -0.513406, -0.853727,
		0.450782, -0.743938, 0.493307,
		-0.888386, -0.427751, 0.166728,
		37.038570, 39.429188, 37.487507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746136, 39.116756, 37.102406>,  <37.660442, 39.728615, 37.370796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746136, 39.116756, 37.102406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348579, 39.147587, 37.134014>,  <37.110046, 39.166084, 37.152977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348579, 39.147587, 37.134014>,  <37.746136, 39.116756, 37.102406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348579, 39.147587, 37.134014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108078, -0.534033, -0.838527,
		-0.022429, -0.841943, 0.539100,
		-0.993890, 0.077073, 0.079018,
		37.050411, 39.170708, 37.157719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447765, 38.361588, 37.037910>,  <37.746136, 39.116756, 37.102406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447765, 38.361588, 37.037910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174187, 38.631786, 36.927700>,  <37.010040, 38.793907, 36.861572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174187, 38.631786, 36.927700>,  <37.447765, 38.361588, 37.037910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174187, 38.631786, 36.927700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114968, -0.472758, -0.873660,
		-0.720414, -0.565862, 0.401003,
		-0.683949, 0.675500, -0.275525,
		36.969002, 38.834435, 36.845043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279800, 37.696095, 36.725853>,  <37.447765, 38.361588, 37.037910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279800, 37.696095, 36.725853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079742, 37.555161, 37.042263>,  <36.959709, 37.470600, 37.232109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079742, 37.555161, 37.042263>,  <37.279800, 37.696095, 36.725853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079742, 37.555161, 37.042263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023719, 0.918712, 0.394215,
		-0.865617, 0.178402, -0.467847,
		-0.500145, -0.352336, 0.791021,
		36.929699, 37.449459, 37.279568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106316, 37.526363, 36.830772>,  <37.279800, 37.696095, 36.725853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106316, 37.526363, 36.830772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400059, 37.260670, 36.886654>,  <38.576305, 37.101254, 36.920185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400059, 37.260670, 36.886654>,  <38.106316, 37.526363, 36.830772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400059, 37.260670, 36.886654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212333, -0.029308, 0.976758,
		-0.644701, -0.746950, -0.162561,
		0.734354, -0.664234, 0.139707,
		38.620365, 37.061401, 36.928566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844090, 37.005764, 37.210690>,  <38.106316, 37.526363, 36.830772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844090, 37.005764, 37.210690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234192, 36.987164, 37.297138>,  <38.468254, 36.976002, 37.349007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234192, 36.987164, 37.297138>,  <37.844090, 37.005764, 37.210690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234192, 36.987164, 37.297138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214405, 0.039318, 0.975953,
		-0.053886, -0.998144, 0.028374,
		0.975257, -0.046507, 0.216125,
		38.526768, 36.973213, 37.361977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921391, 36.510929, 37.699039>,  <37.844090, 37.005764, 37.210690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921391, 36.510929, 37.699039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272732, 36.698647, 37.735397>,  <38.483536, 36.811275, 37.757210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272732, 36.698647, 37.735397>,  <37.921391, 36.510929, 37.699039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272732, 36.698647, 37.735397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015599, -0.161901, 0.986684,
		0.477756, -0.868075, -0.134886,
		0.878354, 0.469290, 0.090891,
		38.536240, 36.839432, 37.762665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221878, 36.071293, 38.046829>,  <37.921391, 36.510929, 37.699039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221878, 36.071293, 38.046829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366680, 36.439602, 38.104973>,  <38.453560, 36.660587, 38.139858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366680, 36.439602, 38.104973>,  <38.221878, 36.071293, 38.046829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366680, 36.439602, 38.104973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068896, -0.129085, 0.989237,
		0.929628, -0.368119, 0.016709,
		0.362000, 0.920774, 0.145363,
		38.475281, 36.715836, 38.148582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714703, 35.992725, 38.629883>,  <38.221878, 36.071293, 38.046829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714703, 35.992725, 38.629883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649803, 36.386070, 38.597225>,  <38.610863, 36.622078, 38.577633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649803, 36.386070, 38.597225>,  <38.714703, 35.992725, 38.629883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649803, 36.386070, 38.597225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056475, 0.091857, 0.994169,
		0.985132, 0.156693, -0.070439,
		-0.162250, 0.983366, -0.081642,
		38.601128, 36.681080, 38.572731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178047, 36.204380, 39.231579>,  <38.714703, 35.992725, 38.629883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178047, 36.204380, 39.231579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904400, 36.477127, 39.128010>,  <38.740211, 36.640774, 39.065868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904400, 36.477127, 39.128010>,  <39.178047, 36.204380, 39.231579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904400, 36.477127, 39.128010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224152, 0.141261, 0.964262,
		0.694071, 0.717710, 0.056202,
		-0.684121, 0.681864, -0.258921,
		38.699165, 36.681686, 39.050335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208584, 36.636681, 39.729221>,  <39.178047, 36.204380, 39.231579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208584, 36.636681, 39.729221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857307, 36.737026, 39.566319>,  <38.646542, 36.797234, 39.468578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857307, 36.737026, 39.566319>,  <39.208584, 36.636681, 39.729221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857307, 36.737026, 39.566319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412097, 0.035434, 0.910451,
		0.242828, 0.967374, 0.072261,
		-0.878186, 0.250861, -0.407256,
		38.593853, 36.812286, 39.444141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046967, 37.325951, 39.845688>,  <39.208584, 36.636681, 39.729221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046967, 37.325951, 39.845688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712738, 37.107960, 39.817913>,  <38.512199, 36.977165, 39.801247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712738, 37.107960, 39.817913>,  <39.046967, 37.325951, 39.845688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712738, 37.107960, 39.817913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147768, 0.101203, 0.983831,
		-0.529137, 0.832321, -0.165092,
		-0.835571, -0.544976, -0.069440,
		38.462067, 36.944466, 39.797081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773705, 37.408115, 40.492710>,  <39.046967, 37.325951, 39.845688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773705, 37.408115, 40.492710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498329, 37.154171, 40.352425>,  <38.333103, 37.001804, 40.268253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498329, 37.154171, 40.352425>,  <38.773705, 37.408115, 40.492710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498329, 37.154171, 40.352425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538446, 0.123392, 0.833577,
		-0.485933, 0.762706, -0.426788,
		-0.688437, -0.634865, -0.350716,
		38.291798, 36.963711, 40.247211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190197, 37.776554, 40.581100>,  <38.773705, 37.408115, 40.492710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190197, 37.776554, 40.581100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110504, 37.384609, 40.586441>,  <38.062687, 37.149441, 40.589645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110504, 37.384609, 40.586441>,  <38.190197, 37.776554, 40.581100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110504, 37.384609, 40.586441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452935, 0.104163, 0.885438,
		-0.868997, 0.170361, -0.464566,
		-0.199235, -0.979861, 0.013355,
		38.050735, 37.090652, 40.590446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566528, 37.832695, 40.700527>,  <38.190197, 37.776554, 40.581100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566528, 37.832695, 40.700527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641335, 37.451958, 40.797699>,  <37.686218, 37.223515, 40.856003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641335, 37.451958, 40.797699>,  <37.566528, 37.832695, 40.700527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641335, 37.451958, 40.797699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444334, 0.138590, 0.885076,
		-0.876125, -0.273461, -0.397020,
		0.187011, -0.951847, 0.242930,
		37.697437, 37.166405, 40.870579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882046, 37.419727, 40.769756>,  <37.566528, 37.832695, 40.700527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882046, 37.419727, 40.769756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153595, 37.218040, 40.983257>,  <37.316525, 37.097027, 41.111359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153595, 37.218040, 40.983257>,  <36.882046, 37.419727, 40.769756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153595, 37.218040, 40.983257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542135, 0.146038, 0.827503,
		-0.495192, -0.851137, -0.174214,
		0.678877, -0.504221, 0.533749,
		37.357258, 37.066776, 41.143383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514248, 37.053452, 41.217625>,  <36.882046, 37.419727, 40.769756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514248, 37.053452, 41.217625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877522, 37.025055, 41.382626>,  <37.095486, 37.008018, 41.481625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877522, 37.025055, 41.382626>,  <36.514248, 37.053452, 41.217625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877522, 37.025055, 41.382626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384697, 0.246785, 0.889441,
		-0.164941, -0.966466, 0.196817,
		0.908186, -0.070990, 0.412502,
		37.149979, 37.003757, 41.506374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412121, 36.603188, 41.816303>,  <36.514248, 37.053452, 41.217625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412121, 36.603188, 41.816303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753345, 36.800076, 41.885597>,  <36.958080, 36.918209, 41.927174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753345, 36.800076, 41.885597>,  <36.412121, 36.603188, 41.816303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753345, 36.800076, 41.885597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276186, 0.144234, 0.950220,
		0.442731, -0.858438, 0.258985,
		0.853059, 0.492220, 0.173232,
		37.009262, 36.947742, 41.937569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430408, 35.815865, 41.958366>,  <36.412121, 36.603188, 41.816303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430408, 35.815865, 41.958366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066242, 35.651344, 41.940556>,  <35.847744, 35.552631, 41.929871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066242, 35.651344, 41.940556>,  <36.430408, 35.815865, 41.958366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066242, 35.651344, 41.940556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246404, -0.452648, -0.856969,
		0.332315, -0.791166, 0.513442,
		-0.910413, -0.411298, -0.044525,
		35.793118, 35.527954, 41.927197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558132, 35.108433, 41.853966>,  <36.430408, 35.815865, 41.958366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558132, 35.108433, 41.853966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178009, 35.151672, 41.737190>,  <35.949936, 35.177616, 41.667126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178009, 35.151672, 41.737190>,  <36.558132, 35.108433, 41.853966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178009, 35.151672, 41.737190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219309, -0.433105, -0.874256,
		-0.220943, -0.894838, 0.387878,
		-0.950309, 0.108095, -0.291938,
		35.892918, 35.184101, 41.649609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249172, 34.404713, 41.572937>,  <36.558132, 35.108433, 41.853966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249172, 34.404713, 41.572937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066013, 34.717766, 41.404266>,  <35.956120, 34.905598, 41.303062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066013, 34.717766, 41.404266>,  <36.249172, 34.404713, 41.572937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066013, 34.717766, 41.404266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047543, -0.452088, -0.890705,
		-0.887734, -0.427897, 0.169800,
		-0.457894, 0.782637, -0.421677,
		35.928646, 34.952557, 41.277763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853661, 34.136524, 40.933842>,  <36.249172, 34.404713, 41.572937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853661, 34.136524, 40.933842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860897, 34.531116, 40.868698>,  <35.865238, 34.767872, 40.829613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860897, 34.531116, 40.868698>,  <35.853661, 34.136524, 40.933842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860897, 34.531116, 40.868698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033354, -0.163393, -0.985997,
		-0.999280, 0.012410, -0.035860,
		0.018095, 0.986483, -0.162861,
		35.866325, 34.827061, 40.819839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331791, 34.293819, 40.312092>,  <35.853661, 34.136524, 40.933842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331791, 34.293819, 40.312092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577385, 34.608585, 40.336697>,  <35.724743, 34.797447, 40.351460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577385, 34.608585, 40.336697>,  <35.331791, 34.293819, 40.312092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577385, 34.608585, 40.336697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045870, 0.042225, -0.998055,
		-0.787983, 0.615613, -0.010170,
		0.613986, 0.786917, 0.061511,
		35.761581, 34.844662, 40.355148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077911, 34.790283, 39.855713>,  <35.331791, 34.293819, 40.312092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077911, 34.790283, 39.855713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464039, 34.882191, 39.905300>,  <35.695717, 34.937336, 39.935055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464039, 34.882191, 39.905300>,  <35.077911, 34.790283, 39.855713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464039, 34.882191, 39.905300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083377, 0.178670, -0.980370,
		-0.247408, 0.956704, 0.153316,
		0.965317, 0.229769, 0.123972,
		35.753635, 34.951122, 39.942493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159477, 35.328056, 39.351768>,  <35.077911, 34.790283, 39.855713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159477, 35.328056, 39.351768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536915, 35.245102, 39.455006>,  <35.763378, 35.195328, 39.516949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536915, 35.245102, 39.455006>,  <35.159477, 35.328056, 39.351768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536915, 35.245102, 39.455006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308227, 0.265552, -0.913498,
		0.120913, 0.941526, 0.314497,
		0.943597, -0.207391, 0.258095,
		35.819996, 35.182884, 39.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544605, 35.979515, 39.232124>,  <35.159477, 35.328056, 39.351768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544605, 35.979515, 39.232124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775764, 35.655537, 39.192062>,  <35.914459, 35.461151, 39.168026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775764, 35.655537, 39.192062>,  <35.544605, 35.979515, 39.232124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775764, 35.655537, 39.192062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479988, 0.436569, -0.760933,
		0.660038, 0.391664, 0.641053,
		0.577894, -0.809943, -0.100158,
		35.949131, 35.412556, 39.162014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261806, 36.267242, 39.334778>,  <35.544605, 35.979515, 39.232124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261806, 36.267242, 39.334778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316986, 35.919060, 39.145775>,  <36.350094, 35.710148, 39.032372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316986, 35.919060, 39.145775>,  <36.261806, 36.267242, 39.334778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316986, 35.919060, 39.145775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505127, 0.472198, -0.722410,
		0.851948, -0.139019, 0.504835,
		0.137953, -0.870461, -0.472510,
		36.358372, 35.657921, 39.004021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895550, 36.347805, 38.912357>,  <36.261806, 36.267242, 39.334778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895550, 36.347805, 38.912357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702839, 36.019146, 38.790516>,  <36.587212, 35.821949, 38.717411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702839, 36.019146, 38.790516>,  <36.895550, 36.347805, 38.912357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702839, 36.019146, 38.790516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305824, 0.168097, -0.937131,
		0.821196, -0.544644, 0.170295,
		-0.481777, -0.821649, -0.304605,
		36.558304, 35.772652, 38.699135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289936, 35.801266, 38.407433>,  <36.895550, 36.347805, 38.912357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289936, 35.801266, 38.407433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899216, 35.780975, 38.324215>,  <36.664783, 35.768803, 38.274284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899216, 35.780975, 38.324215>,  <37.289936, 35.801266, 38.407433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899216, 35.780975, 38.324215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200888, 0.119341, -0.972318,
		0.074147, -0.991557, -0.106383,
		-0.976804, -0.050723, -0.208040,
		36.606174, 35.765759, 38.261803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199986, 35.412266, 37.939529>,  <37.289936, 35.801266, 38.407433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199986, 35.412266, 37.939529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867043, 35.627865, 37.887897>,  <36.667274, 35.757225, 37.856918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867043, 35.627865, 37.887897>,  <37.199986, 35.412266, 37.939529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867043, 35.627865, 37.887897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209580, 0.090489, -0.973595,
		-0.513081, -0.837436, -0.188282,
		-0.832361, 0.538993, -0.129082,
		36.617332, 35.789562, 37.849174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.730618, 35.516838, 45.681534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373524, 35.678944, 45.602753>,  <35.159267, 35.776207, 45.555485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373524, 35.678944, 45.602753>,  <35.730618, 35.516838, 45.681534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373524, 35.678944, 45.602753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100779, -0.246435, -0.963905,
		-0.439173, -0.880358, 0.179158,
		-0.892732, 0.405266, -0.196949,
		35.105705, 35.800522, 45.543667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407387, 34.998703, 45.255806>,  <35.730618, 35.516838, 45.681534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407387, 34.998703, 45.255806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224487, 35.346657, 45.181805>,  <35.114746, 35.555428, 45.137405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224487, 35.346657, 45.181805>,  <35.407387, 34.998703, 45.255806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224487, 35.346657, 45.181805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004032, -0.210044, -0.977684,
		-0.889330, -0.446298, 0.099550,
		-0.457248, 0.869885, -0.184999,
		35.087315, 35.607624, 45.126305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870438, 34.765614, 44.900864>,  <35.407387, 34.998703, 45.255806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870438, 34.765614, 44.900864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919788, 35.149384, 44.799454>,  <34.949398, 35.379646, 44.738609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919788, 35.149384, 44.799454>,  <34.870438, 34.765614, 44.900864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919788, 35.149384, 44.799454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077408, -0.245392, -0.966329,
		-0.989336, 0.138851, 0.043991,
		0.123380, 0.959429, -0.253523,
		34.956802, 35.437214, 44.723396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419006, 34.894516, 44.353447>,  <34.870438, 34.765614, 44.900864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419006, 34.894516, 44.353447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.659111, 35.212311, 44.316616>,  <34.803173, 35.402988, 44.294518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.659111, 35.212311, 44.316616>,  <34.419006, 34.894516, 44.353447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659111, 35.212311, 44.316616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038019, -0.086649, -0.995513,
		-0.798900, 0.601068, -0.021807,
		0.600261, 0.794487, -0.092076,
		34.839188, 35.450657, 44.288994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147461, 35.443104, 43.830029>,  <34.419006, 34.894516, 44.353447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147461, 35.443104, 43.830029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.538509, 35.526497, 43.841324>,  <34.773136, 35.576534, 43.848099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.538509, 35.526497, 43.841324>,  <34.147461, 35.443104, 43.830029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538509, 35.526497, 43.841324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020563, 0.038884, -0.999032,
		-0.209378, 0.977253, 0.033727,
		0.977619, 0.208481, 0.028236,
		34.831795, 35.589043, 43.849796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270496, 35.982430, 43.357552>,  <34.147461, 35.443104, 43.830029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270496, 35.982430, 43.357552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628967, 35.809223, 43.396255>,  <34.844051, 35.705299, 43.419476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628967, 35.809223, 43.396255>,  <34.270496, 35.982430, 43.357552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628967, 35.809223, 43.396255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067603, -0.082264, -0.994315,
		0.438510, 0.897626, -0.044450,
		0.896180, -0.433012, 0.096756,
		34.897820, 35.679321, 43.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570896, 36.176773, 42.737232>,  <34.270496, 35.982430, 43.357552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570896, 36.176773, 42.737232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816002, 35.891132, 42.872627>,  <34.963066, 35.719749, 42.953865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816002, 35.891132, 42.872627>,  <34.570896, 36.176773, 42.737232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816002, 35.891132, 42.872627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302509, -0.183744, -0.935268,
		0.730071, 0.675498, 0.103430,
		0.612768, -0.714101, 0.338490,
		34.999832, 35.676903, 42.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325390, 36.396069, 42.675041>,  <34.570896, 36.176773, 42.737232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325390, 36.396069, 42.675041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.291767, 35.997639, 42.686131>,  <35.271595, 35.758579, 42.692783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.291767, 35.997639, 42.686131>,  <35.325390, 36.396069, 42.675041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291767, 35.997639, 42.686131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270477, -0.049588, -0.961449,
		0.959050, -0.073314, 0.273583,
		-0.084054, -0.996076, 0.027728,
		35.266552, 35.698814, 42.694450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979576, 36.167332, 42.499771>,  <35.325390, 36.396069, 42.675041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979576, 36.167332, 42.499771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726665, 35.867577, 42.421143>,  <35.574917, 35.687725, 42.373966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726665, 35.867577, 42.421143>,  <35.979576, 36.167332, 42.499771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726665, 35.867577, 42.421143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379336, -0.078218, -0.921947,
		0.675519, -0.657497, 0.333725,
		-0.632280, -0.749386, -0.196575,
		35.536980, 35.642761, 42.362171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753147, 36.365765, 42.515621>,  <35.979576, 36.167332, 42.499771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753147, 36.365765, 42.515621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920078, 36.727783, 42.482826>,  <37.020237, 36.944996, 42.463150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920078, 36.727783, 42.482826>,  <36.753147, 36.365765, 42.515621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920078, 36.727783, 42.482826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083469, 0.128013, 0.988254,
		0.904914, -0.405583, 0.128967,
		0.417328, 0.905050, -0.081987,
		37.045277, 36.999298, 42.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147377, 36.460800, 43.096806>,  <36.753147, 36.365765, 42.515621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147377, 36.460800, 43.096806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115559, 36.840004, 42.973549>,  <37.096466, 37.067528, 42.899593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115559, 36.840004, 42.973549>,  <37.147377, 36.460800, 43.096806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115559, 36.840004, 42.973549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011501, 0.309977, 0.950675,
		0.996765, 0.072079, -0.035561,
		-0.079547, 0.948008, -0.308145,
		37.091694, 37.124405, 42.881104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557602, 36.762733, 43.430344>,  <37.147377, 36.460800, 43.096806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557602, 36.762733, 43.430344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.322762, 37.070644, 43.330132>,  <37.181858, 37.255390, 43.270004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.322762, 37.070644, 43.330132>,  <37.557602, 36.762733, 43.430344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322762, 37.070644, 43.330132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112375, 0.383984, 0.916476,
		0.801678, 0.509908, -0.311940,
		-0.587098, 0.769773, -0.250531,
		37.146633, 37.301575, 43.254971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901173, 37.328846, 43.635670>,  <37.557602, 36.762733, 43.430344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901173, 37.328846, 43.635670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518219, 37.443733, 43.623516>,  <37.288448, 37.512665, 43.616222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.518219, 37.443733, 43.623516>,  <37.901173, 37.328846, 43.635670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518219, 37.443733, 43.623516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080050, 0.364967, 0.927573,
		0.277505, 0.885610, -0.372405,
		-0.957383, 0.287217, -0.030387,
		37.231003, 37.529900, 43.614399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971985, 37.972454, 43.849831>,  <37.901173, 37.328846, 43.635670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971985, 37.972454, 43.849831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.576237, 37.926758, 43.885818>,  <37.338787, 37.899342, 43.907410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.576237, 37.926758, 43.885818>,  <37.971985, 37.972454, 43.849831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576237, 37.926758, 43.885818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003406, 0.636730, 0.771079,
		-0.145373, 0.762577, -0.630352,
		-0.989371, -0.114241, 0.089966,
		37.279427, 37.892487, 43.912807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738590, 38.643044, 44.199085>,  <37.971985, 37.972454, 43.849831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738590, 38.643044, 44.199085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455135, 38.366383, 44.254864>,  <37.285061, 38.200386, 44.288330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455135, 38.366383, 44.254864>,  <37.738590, 38.643044, 44.199085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455135, 38.366383, 44.254864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254995, 0.435333, 0.863402,
		-0.657880, 0.576283, -0.484862,
		-0.708640, -0.691653, 0.139448,
		37.242542, 38.158886, 44.296700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179249, 38.976860, 44.368145>,  <37.738590, 38.643044, 44.199085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179249, 38.976860, 44.368145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147644, 38.610455, 44.525459>,  <37.128681, 38.390610, 44.619850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147644, 38.610455, 44.525459>,  <37.179249, 38.976860, 44.368145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147644, 38.610455, 44.525459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182347, 0.401145, 0.897682,
		-0.980054, -0.000790, -0.198727,
		-0.079009, -0.916014, 0.393288,
		37.123940, 38.335651, 44.643444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683071, 38.949123, 44.896976>,  <37.179249, 38.976860, 44.368145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683071, 38.949123, 44.896976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846256, 38.599743, 45.003292>,  <36.944168, 38.390114, 45.067081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846256, 38.599743, 45.003292>,  <36.683071, 38.949123, 44.896976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846256, 38.599743, 45.003292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136687, 0.346268, 0.928124,
		-0.902707, -0.342314, 0.260655,
		0.407966, -0.873453, 0.265789,
		36.968647, 38.337708, 45.083027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473488, 38.925694, 45.578163>,  <36.683071, 38.949123, 44.896976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473488, 38.925694, 45.578163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750336, 38.638084, 45.552937>,  <36.916443, 38.465519, 45.537800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750336, 38.638084, 45.552937>,  <36.473488, 38.925694, 45.578163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750336, 38.638084, 45.552937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322649, 0.230046, 0.918137,
		-0.645658, -0.655804, 0.391212,
		0.692115, -0.719027, -0.063063,
		36.957970, 38.422375, 45.534019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309448, 38.208767, 46.030132>,  <36.473488, 38.925694, 45.578163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309448, 38.208767, 46.030132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702549, 38.258636, 45.975494>,  <36.938408, 38.288559, 45.942711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.702549, 38.258636, 45.975494>,  <36.309448, 38.208767, 46.030132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702549, 38.258636, 45.975494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130787, 0.053695, 0.989955,
		0.130755, -0.990744, 0.036463,
		0.982750, 0.124672, -0.136598,
		36.997375, 38.296036, 45.934517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547794, 37.837135, 46.572166>,  <36.309448, 38.208767, 46.030132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547794, 37.837135, 46.572166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853249, 38.054882, 46.433300>,  <37.036522, 38.185532, 46.349979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853249, 38.054882, 46.433300>,  <36.547794, 37.837135, 46.572166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853249, 38.054882, 46.433300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374709, 0.064226, 0.924915,
		0.525794, -0.836383, -0.154935,
		0.763632, 0.544370, -0.347170,
		37.082336, 38.218193, 46.329147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186184, 37.612377, 46.925205>,  <36.547794, 37.837135, 46.572166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186184, 37.612377, 46.925205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295082, 37.963917, 46.768482>,  <37.360420, 38.174839, 46.674450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.295082, 37.963917, 46.768482>,  <37.186184, 37.612377, 46.925205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295082, 37.963917, 46.768482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331136, 0.296742, 0.895708,
		0.903455, -0.373595, -0.210230,
		0.272248, 0.878846, -0.391804,
		37.376755, 38.227570, 46.650940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003242, 37.759502, 47.124069>,  <37.186184, 37.612377, 46.925205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003242, 37.759502, 47.124069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796524, 38.099102, 47.080032>,  <37.672493, 38.302860, 47.053612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796524, 38.099102, 47.080032>,  <38.003242, 37.759502, 47.124069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796524, 38.099102, 47.080032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420615, 0.363806, 0.831101,
		0.745656, 0.383205, -0.545116,
		-0.516799, 0.848999, -0.110092,
		37.641483, 38.353802, 47.047005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470699, 38.309990, 47.416809>,  <38.003242, 37.759502, 47.124069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470699, 38.309990, 47.416809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108036, 38.478420, 47.406483>,  <37.890438, 38.579479, 47.400288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108036, 38.478420, 47.406483>,  <38.470699, 38.309990, 47.416809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108036, 38.478420, 47.406483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137605, 0.353027, 0.925438,
		0.398789, 0.835506, -0.378017,
		-0.906660, 0.421072, -0.025814,
		37.836037, 38.604740, 47.398739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.518929, 40.220383, 45.377739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850655, 40.030727, 45.496017>,  <31.049690, 39.916935, 45.566982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.850655, 40.030727, 45.496017>,  <30.518929, 40.220383, 45.377739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850655, 40.030727, 45.496017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250444, -0.157657, -0.955208,
		0.499516, 0.866221, -0.012003,
		0.829314, -0.474136, 0.295692,
		31.099449, 39.888485, 45.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075310, 40.623173, 45.156822>,  <30.518929, 40.220383, 45.377739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075310, 40.623173, 45.156822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225933, 40.260059, 45.230717>,  <31.316307, 40.042191, 45.275055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225933, 40.260059, 45.230717>,  <31.075310, 40.623173, 45.156822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225933, 40.260059, 45.230717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321007, -0.059198, -0.945225,
		0.868997, 0.415236, 0.269114,
		0.376561, -0.907785, 0.184736,
		31.338902, 39.987724, 45.286137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791727, 40.620102, 44.799885>,  <31.075310, 40.623173, 45.156822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791727, 40.620102, 44.799885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.715656, 40.233009, 44.866009>,  <31.670013, 40.000755, 44.905682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.715656, 40.233009, 44.866009>,  <31.791727, 40.620102, 44.799885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715656, 40.233009, 44.866009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356757, -0.224993, -0.906699,
		0.914635, -0.113456, 0.388034,
		-0.190175, -0.967732, 0.165311,
		31.658604, 39.942688, 44.915604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409115, 40.338676, 44.839096>,  <31.791727, 40.620102, 44.799885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409115, 40.338676, 44.839096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.152229, 40.048973, 44.738678>,  <31.998098, 39.875153, 44.678429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.152229, 40.048973, 44.738678>,  <32.409115, 40.338676, 44.839096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152229, 40.048973, 44.738678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521366, -0.172639, -0.835688,
		0.561911, -0.667571, 0.488472,
		-0.642210, -0.724254, -0.251041,
		31.959566, 39.831696, 44.663364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841766, 39.813835, 44.486256>,  <32.409115, 40.338676, 44.839096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841766, 39.813835, 44.486256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463749, 39.723560, 44.391636>,  <32.236938, 39.669395, 44.334866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463749, 39.723560, 44.391636>,  <32.841766, 39.813835, 44.486256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463749, 39.723560, 44.391636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287531, -0.229366, -0.929902,
		0.155607, -0.946815, 0.281653,
		-0.945046, -0.225682, -0.236547,
		32.180237, 39.655857, 44.320671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873466, 39.201839, 43.991066>,  <32.841766, 39.813835, 44.486256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873466, 39.201839, 43.991066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513084, 39.364998, 43.931873>,  <32.296856, 39.462894, 43.896358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.513084, 39.364998, 43.931873>,  <32.873466, 39.201839, 43.991066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513084, 39.364998, 43.931873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095320, -0.146650, -0.984585,
		-0.423312, -0.901173, 0.093244,
		-0.900956, 0.407899, -0.147979,
		32.242798, 39.487366, 43.887478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706062, 38.894508, 43.395206>,  <32.873466, 39.201839, 43.991066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706062, 38.894508, 43.395206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.451599, 39.203133, 43.396080>,  <32.298923, 39.388306, 43.396603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.451599, 39.203133, 43.396080>,  <32.706062, 38.894508, 43.395206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451599, 39.203133, 43.396080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055902, -0.043267, -0.997498,
		-0.769533, -0.634686, 0.070656,
		-0.636155, 0.771558, 0.002184,
		32.260754, 39.434601, 43.396736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273849, 38.816322, 42.744850>,  <32.706062, 38.894508, 43.395206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273849, 38.816322, 42.744850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195786, 39.190044, 42.864170>,  <32.148949, 39.414276, 42.935764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195786, 39.190044, 42.864170>,  <32.273849, 38.816322, 42.744850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195786, 39.190044, 42.864170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238609, 0.249783, -0.938442,
		-0.951304, -0.254322, 0.174187,
		-0.195157, 0.934307, 0.298303,
		32.137238, 39.470337, 42.953663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575087, 38.928307, 42.548180>,  <32.273849, 38.816322, 42.744850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575087, 38.928307, 42.548180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.744051, 39.286793, 42.602394>,  <31.845430, 39.501884, 42.634922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.744051, 39.286793, 42.602394>,  <31.575087, 38.928307, 42.548180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744051, 39.286793, 42.602394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341088, 0.295712, -0.892308,
		-0.839779, 0.330690, 0.430600,
		0.422411, 0.896214, 0.135538,
		31.870773, 39.555656, 42.643055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009739, 39.369488, 42.354027>,  <31.575087, 38.928307, 42.548180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009739, 39.369488, 42.354027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354113, 39.570698, 42.323673>,  <31.560738, 39.691422, 42.305462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.354113, 39.570698, 42.323673>,  <31.009739, 39.369488, 42.354027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354113, 39.570698, 42.323673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347936, 0.473423, -0.809204,
		-0.371121, 0.723076, 0.582606,
		0.860935, 0.503022, -0.075888,
		31.612392, 39.721603, 42.300907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850636, 40.116486, 42.202660>,  <31.009739, 39.369488, 42.354027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850636, 40.116486, 42.202660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234493, 40.147141, 42.094433>,  <31.464808, 40.165535, 42.029495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234493, 40.147141, 42.094433>,  <30.850636, 40.116486, 42.202660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234493, 40.147141, 42.094433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271142, 0.507308, -0.817998,
		0.074571, 0.858351, 0.507615,
		0.959646, 0.076636, -0.270565,
		31.522387, 40.170132, 42.013264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948618, 40.778244, 42.048248>,  <30.850636, 40.116486, 42.202660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948618, 40.778244, 42.048248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203396, 40.544785, 41.846790>,  <31.356262, 40.404709, 41.725914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203396, 40.544785, 41.846790>,  <30.948618, 40.778244, 42.048248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203396, 40.544785, 41.846790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240021, 0.470700, -0.849018,
		0.732592, 0.661663, 0.159722,
		0.636945, -0.583647, -0.503644,
		31.394480, 40.369690, 41.695698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120466, 41.207951, 41.448002>,  <30.948618, 40.778244, 42.048248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120466, 41.207951, 41.448002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248665, 40.842293, 41.348713>,  <31.325584, 40.622898, 41.289139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248665, 40.842293, 41.348713>,  <31.120466, 41.207951, 41.448002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248665, 40.842293, 41.348713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260108, 0.167041, -0.951021,
		0.910838, 0.369364, -0.184241,
		0.320497, -0.914149, -0.248222,
		31.344814, 40.568047, 41.274246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434715, 41.372501, 40.860718>,  <31.120466, 41.207951, 41.448002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434715, 41.372501, 40.860718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374237, 40.977142, 40.866596>,  <31.337950, 40.739929, 40.870125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374237, 40.977142, 40.866596>,  <31.434715, 41.372501, 40.860718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374237, 40.977142, 40.866596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285947, 0.029502, -0.957791,
		0.946242, -0.149017, -0.287089,
		-0.151197, -0.988394, 0.014695,
		31.328878, 40.680622, 40.871006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215412, 41.048450, 40.624680>,  <31.434715, 41.372501, 40.860718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215412, 41.048450, 40.624680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500233, 41.328514, 40.645699>,  <32.671127, 41.496552, 40.658310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500233, 41.328514, 40.645699>,  <32.215412, 41.048450, 40.624680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500233, 41.328514, 40.645699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212350, 0.143414, 0.966613,
		0.669245, -0.699437, 0.250797,
		0.712053, 0.700157, 0.052546,
		32.713848, 41.538563, 40.661461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755836, 40.932125, 41.111813>,  <32.215412, 41.048450, 40.624680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755836, 40.932125, 41.111813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784756, 41.330608, 41.092472>,  <32.802109, 41.569698, 41.080868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784756, 41.330608, 41.092472>,  <32.755836, 40.932125, 41.111813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784756, 41.330608, 41.092472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085844, 0.042080, 0.995420,
		0.993682, -0.076116, -0.082476,
		0.072297, 0.996211, -0.048349,
		32.806446, 41.629471, 41.077969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302532, 41.135597, 41.693069>,  <32.755836, 40.932125, 41.111813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302532, 41.135597, 41.693069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121086, 41.482521, 41.611080>,  <33.012218, 41.690674, 41.561886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.121086, 41.482521, 41.611080>,  <33.302532, 41.135597, 41.693069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121086, 41.482521, 41.611080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222189, 0.332790, 0.916451,
		0.863058, 0.370170, -0.343664,
		-0.453611, 0.867309, -0.204969,
		32.985004, 41.742714, 41.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697205, 41.695976, 41.836914>,  <33.302532, 41.135597, 41.693069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697205, 41.695976, 41.836914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.339291, 41.874546, 41.840267>,  <33.124542, 41.981689, 41.842281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.339291, 41.874546, 41.840267>,  <33.697205, 41.695976, 41.836914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339291, 41.874546, 41.840267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222308, 0.429137, 0.875455,
		0.387226, 0.785205, -0.483227,
		-0.894782, 0.446424, 0.008385,
		33.070854, 42.008472, 41.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928810, 42.299980, 42.035179>,  <33.697205, 41.695976, 41.836914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928810, 42.299980, 42.035179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541790, 42.262032, 42.128864>,  <33.309578, 42.239262, 42.185074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541790, 42.262032, 42.128864>,  <33.928810, 42.299980, 42.035179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541790, 42.262032, 42.128864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186591, 0.356816, 0.915350,
		-0.170407, 0.929345, -0.327535,
		-0.967546, -0.094867, 0.234211,
		33.251526, 42.233570, 42.199127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787136, 42.815868, 42.414780>,  <33.928810, 42.299980, 42.035179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787136, 42.815868, 42.414780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458363, 42.612812, 42.518097>,  <33.261097, 42.490978, 42.580090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458363, 42.612812, 42.518097>,  <33.787136, 42.815868, 42.414780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458363, 42.612812, 42.518097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126177, 0.279934, 0.951691,
		-0.555427, 0.814821, -0.166035,
		-0.821937, -0.507645, 0.258295,
		33.211781, 42.460518, 42.595585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401688, 43.304619, 42.951790>,  <33.787136, 42.815868, 42.414780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401688, 43.304619, 42.951790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269527, 42.930618, 43.003334>,  <33.190231, 42.706219, 43.034260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269527, 42.930618, 43.003334>,  <33.401688, 43.304619, 42.951790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269527, 42.930618, 43.003334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011225, 0.140410, 0.990030,
		-0.943774, 0.325659, -0.056887,
		-0.330400, -0.935003, 0.128860,
		33.170406, 42.650116, 43.041992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813416, 43.306881, 43.435623>,  <33.401688, 43.304619, 42.951790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813416, 43.306881, 43.435623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950771, 42.931435, 43.448780>,  <33.033184, 42.706165, 43.456673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950771, 42.931435, 43.448780>,  <32.813416, 43.306881, 43.435623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950771, 42.931435, 43.448780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077530, 0.006569, 0.996968,
		-0.935987, -0.344899, -0.070516,
		0.343390, -0.938617, 0.032889,
		33.053787, 42.649849, 43.458645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386642, 42.955944, 43.942295>,  <32.813416, 43.306881, 43.435623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386642, 42.955944, 43.942295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685692, 42.690861, 43.925007>,  <32.865124, 42.531811, 43.914635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685692, 42.690861, 43.925007>,  <32.386642, 42.955944, 43.942295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685692, 42.690861, 43.925007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198572, -0.285171, 0.937681,
		-0.633738, -0.692452, -0.344797,
		0.747626, -0.662712, -0.043222,
		32.909981, 42.492046, 43.912041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116653, 42.355343, 44.282223>,  <32.386642, 42.955944, 43.942295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116653, 42.355343, 44.282223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516003, 42.349979, 44.304359>,  <32.755611, 42.346760, 44.317642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516003, 42.349979, 44.304359>,  <32.116653, 42.355343, 44.282223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516003, 42.349979, 44.304359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056928, -0.215441, 0.974856,
		-0.001151, -0.976425, -0.215855,
		0.998377, -0.013410, 0.055338,
		32.815517, 42.345955, 44.320961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287075, 41.925545, 44.842392>,  <32.116653, 42.355343, 44.282223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287075, 41.925545, 44.842392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630287, 42.126972, 44.801987>,  <32.836216, 42.247829, 44.777744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630287, 42.126972, 44.801987>,  <32.287075, 41.925545, 44.842392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630287, 42.126972, 44.801987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094375, 0.038749, 0.994782,
		0.504855, -0.863086, -0.014276,
		0.858029, 0.503568, -0.101017,
		32.887695, 42.278042, 44.771683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889874, 41.591301, 45.137684>,  <32.287075, 41.925545, 44.842392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889874, 41.591301, 45.137684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965416, 41.983974, 45.147709>,  <33.010742, 42.219578, 45.153725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.965416, 41.983974, 45.147709>,  <32.889874, 41.591301, 45.137684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965416, 41.983974, 45.147709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176557, -0.059052, 0.982517,
		0.966002, -0.181131, -0.184475,
		0.188858, 0.981685, 0.025064,
		33.022072, 42.278481, 45.155228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377819, 41.679356, 45.709129>,  <32.889874, 41.591301, 45.137684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377819, 41.679356, 45.709129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249626, 42.053688, 45.650471>,  <33.172710, 42.278290, 45.615276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.249626, 42.053688, 45.650471>,  <33.377819, 41.679356, 45.709129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249626, 42.053688, 45.650471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097571, 0.186600, 0.977579,
		0.942216, 0.298988, -0.151112,
		-0.320482, 0.935835, -0.146645,
		33.153481, 42.334438, 45.606476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748215, 42.115929, 46.154221>,  <33.377819, 41.679356, 45.709129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748215, 42.115929, 46.154221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416466, 42.320530, 46.064316>,  <33.217419, 42.443291, 46.010372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416466, 42.320530, 46.064316>,  <33.748215, 42.115929, 46.154221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416466, 42.320530, 46.064316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068119, 0.306711, 0.949362,
		0.554534, 0.802681, -0.219534,
		-0.829369, 0.511499, -0.224759,
		33.167656, 42.473980, 45.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464417, 42.506313, 46.052265>,  <33.748215, 42.115929, 46.154221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464417, 42.506313, 46.052265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.842644, 42.460411, 46.174068>,  <35.069580, 42.432869, 46.247150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.842644, 42.460411, 46.174068>,  <34.464417, 42.506313, 46.052265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842644, 42.460411, 46.174068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265521, -0.268917, -0.925841,
		0.188136, 0.956302, -0.223809,
		0.945570, -0.114758, 0.304511,
		35.126316, 42.425983, 46.265423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962173, 42.917831, 45.675335>,  <34.464417, 42.506313, 46.052265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962173, 42.917831, 45.675335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217953, 42.659061, 45.841511>,  <35.371422, 42.503799, 45.941216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217953, 42.659061, 45.841511>,  <34.962173, 42.917831, 45.675335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217953, 42.659061, 45.841511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376242, -0.207914, -0.902892,
		0.670479, 0.733661, 0.110449,
		0.639453, -0.646926, 0.415436,
		35.409790, 42.464985, 45.966141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633030, 43.095867, 45.428242>,  <34.962173, 42.917831, 45.675335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633030, 43.095867, 45.428242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648628, 42.714264, 45.547134>,  <35.657986, 42.485302, 45.618469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648628, 42.714264, 45.547134>,  <35.633030, 43.095867, 45.428242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648628, 42.714264, 45.547134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412058, -0.255634, -0.874562,
		0.910323, 0.156576, 0.383140,
		0.038992, -0.954010, 0.297228,
		35.660324, 42.428062, 45.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260937, 42.919212, 45.296379>,  <35.633030, 43.095867, 45.428242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260937, 42.919212, 45.296379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051075, 42.578926, 45.309093>,  <35.925156, 42.374752, 45.316723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051075, 42.578926, 45.309093>,  <36.260937, 42.919212, 45.296379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051075, 42.578926, 45.309093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450513, -0.309138, -0.837539,
		0.722340, -0.425098, 0.545451,
		-0.524656, -0.850720, 0.031791,
		35.893677, 42.323711, 45.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658272, 42.404026, 45.068264>,  <36.260937, 42.919212, 45.296379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658272, 42.404026, 45.068264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.308437, 42.212563, 45.037327>,  <36.098537, 42.097683, 45.018764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.308437, 42.212563, 45.037327>,  <36.658272, 42.404026, 45.068264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308437, 42.212563, 45.037327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320056, -0.450082, -0.833661,
		0.364231, -0.753863, 0.546834,
		-0.874586, -0.478662, -0.077344,
		36.046062, 42.068962, 45.014122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927189, 41.660660, 44.783821>,  <36.658272, 42.404026, 45.068264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927189, 41.660660, 44.783821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543377, 41.699741, 44.678169>,  <36.313091, 41.723190, 44.614780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543377, 41.699741, 44.678169>,  <36.927189, 41.660660, 44.783821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543377, 41.699741, 44.678169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214382, -0.354755, -0.910049,
		-0.182618, -0.929840, 0.319450,
		-0.959527, 0.097707, -0.264125,
		36.255520, 41.729053, 44.598930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678963, 41.083126, 44.641178>,  <36.927189, 41.660660, 44.783821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678963, 41.083126, 44.641178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.426342, 41.314728, 44.434921>,  <36.274769, 41.453690, 44.311165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.426342, 41.314728, 44.434921>,  <36.678963, 41.083126, 44.641178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426342, 41.314728, 44.434921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271856, -0.457471, -0.846649,
		-0.726110, -0.674885, 0.131510,
		-0.631553, 0.579008, -0.515646,
		36.236877, 41.488430, 44.280228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389118, 40.626984, 44.137894>,  <36.678963, 41.083126, 44.641178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389118, 40.626984, 44.137894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285530, 40.987473, 43.998905>,  <36.223377, 41.203766, 43.915512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285530, 40.987473, 43.998905>,  <36.389118, 40.626984, 44.137894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285530, 40.987473, 43.998905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025028, -0.353360, -0.935153,
		-0.965561, -0.250874, 0.068954,
		-0.258971, 0.901221, -0.347469,
		36.207840, 41.257839, 43.894665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771408, 40.503796, 43.686321>,  <36.389118, 40.626984, 44.137894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771408, 40.503796, 43.686321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937969, 40.853798, 43.587555>,  <36.037907, 41.063801, 43.528294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.937969, 40.853798, 43.587555>,  <35.771408, 40.503796, 43.686321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937969, 40.853798, 43.587555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033892, -0.286332, -0.957531,
		-0.908550, 0.390347, -0.148884,
		0.416399, 0.875010, -0.246917,
		36.062889, 41.116302, 43.513481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436016, 40.800423, 43.096745>,  <35.771408, 40.503796, 43.686321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436016, 40.800423, 43.096745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774563, 41.013451, 43.098957>,  <35.977692, 41.141266, 43.100285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.774563, 41.013451, 43.098957>,  <35.436016, 40.800423, 43.096745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774563, 41.013451, 43.098957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136729, -0.207235, -0.968689,
		-0.514749, 0.820624, -0.248215,
		0.846368, 0.532570, 0.005529,
		36.028473, 41.173222, 43.100616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416931, 40.998138, 42.442181>,  <35.436016, 40.800423, 43.096745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416931, 40.998138, 42.442181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784912, 41.124447, 42.535118>,  <36.005699, 41.200230, 42.590881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784912, 41.124447, 42.535118>,  <35.416931, 40.998138, 42.442181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784912, 41.124447, 42.535118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237127, 0.023772, -0.971188,
		-0.312192, 0.948539, -0.053007,
		0.919950, 0.315766, 0.232345,
		36.060898, 41.219177, 42.604820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654282, 41.556480, 42.006599>,  <35.416931, 40.998138, 42.442181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654282, 41.556480, 42.006599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971436, 41.339123, 42.116909>,  <36.161728, 41.208706, 42.183094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971436, 41.339123, 42.116909>,  <35.654282, 41.556480, 42.006599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971436, 41.339123, 42.116909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157079, -0.255005, -0.954096,
		0.588775, 0.799809, -0.116834,
		0.792887, -0.543396, 0.275774,
		36.209301, 41.176105, 42.199642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266487, 41.704292, 41.534317>,  <35.654282, 41.556480, 42.006599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266487, 41.704292, 41.534317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350033, 41.344730, 41.688381>,  <36.400162, 41.128994, 41.780819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350033, 41.344730, 41.688381>,  <36.266487, 41.704292, 41.534317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350033, 41.344730, 41.688381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324551, -0.307808, -0.894383,
		0.922519, 0.311810, 0.227449,
		0.208867, -0.898904, 0.385157,
		36.412693, 41.075058, 41.803928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940102, 41.430424, 41.187725>,  <36.266487, 41.704292, 41.534317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940102, 41.430424, 41.187725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745560, 41.103420, 41.311104>,  <36.628834, 40.907219, 41.385132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745560, 41.103420, 41.311104>,  <36.940102, 41.430424, 41.187725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745560, 41.103420, 41.311104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267391, -0.475329, -0.838191,
		0.831842, -0.325182, 0.449773,
		-0.486355, -0.817507, 0.308448,
		36.599651, 40.858170, 41.403637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.750515, 28.872002, 30.629501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475616, 28.957565, 30.351814>,  <28.310678, 29.008904, 30.185202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475616, 28.957565, 30.351814>,  <28.750515, 28.872002, 30.629501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475616, 28.957565, 30.351814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442317, 0.634856, 0.633493,
		0.576238, 0.742429, -0.341685,
		-0.687244, 0.213910, -0.694217,
		28.269444, 29.021738, 30.143549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666321, 29.542858, 30.547386>,  <28.750515, 28.872002, 30.629501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666321, 29.542858, 30.547386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316565, 29.418123, 30.398685>,  <28.106710, 29.343283, 30.309465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316565, 29.418123, 30.398685>,  <28.666321, 29.542858, 30.547386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316565, 29.418123, 30.398685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450328, 0.806821, 0.382420,
		0.180685, 0.501795, -0.845905,
		-0.874390, -0.311837, -0.371752,
		28.054247, 29.324572, 30.287159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269981, 30.172647, 30.414881>,  <28.666321, 29.542858, 30.547386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269981, 30.172647, 30.414881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979013, 29.899057, 30.392832>,  <27.804434, 29.734903, 30.379602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.979013, 29.899057, 30.392832>,  <28.269981, 30.172647, 30.414881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979013, 29.899057, 30.392832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606935, 0.603840, 0.516727,
		-0.320144, 0.409332, -0.854374,
		-0.727418, -0.683977, -0.055122,
		27.760788, 29.693865, 30.376295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693893, 30.467543, 30.016996>,  <28.269981, 30.172647, 30.414881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693893, 30.467543, 30.016996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585377, 30.176888, 30.269472>,  <27.520267, 30.002495, 30.420958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585377, 30.176888, 30.269472>,  <27.693893, 30.467543, 30.016996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585377, 30.176888, 30.269472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599705, 0.640542, 0.479645,
		-0.752831, -0.248405, -0.609541,
		-0.271291, -0.726636, 0.631190,
		27.503990, 29.958897, 30.458830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067125, 30.510811, 30.085598>,  <27.693893, 30.467543, 30.016996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067125, 30.510811, 30.085598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148003, 30.313543, 30.424042>,  <27.196529, 30.195183, 30.627108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148003, 30.313543, 30.424042>,  <27.067125, 30.510811, 30.085598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148003, 30.313543, 30.424042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528630, 0.672324, 0.518200,
		-0.824420, -0.552056, -0.124764,
		0.202193, -0.493168, 0.846110,
		27.208660, 30.165592, 30.677876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360006, 30.522356, 30.421824>,  <27.067125, 30.510811, 30.085598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360006, 30.522356, 30.421824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631586, 30.447334, 30.705753>,  <26.794535, 30.402321, 30.876110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631586, 30.447334, 30.705753>,  <26.360006, 30.522356, 30.421824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631586, 30.447334, 30.705753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524499, 0.552614, 0.647702,
		-0.513738, -0.812060, 0.276826,
		0.678951, -0.187554, 0.709823,
		26.835272, 30.391068, 30.918701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972780, 30.352995, 31.026573>,  <26.360006, 30.522356, 30.421824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972780, 30.352995, 31.026573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338978, 30.444317, 31.159086>,  <26.558697, 30.499109, 31.238594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338978, 30.444317, 31.159086>,  <25.972780, 30.352995, 31.026573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338978, 30.444317, 31.159086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400317, 0.599162, 0.693362,
		-0.040195, -0.767387, 0.639922,
		0.915495, 0.228302, 0.331282,
		26.613626, 30.512808, 31.258471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906843, 30.393007, 31.687723>,  <25.972780, 30.352995, 31.026573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906843, 30.393007, 31.687723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.253414, 30.586731, 31.639151>,  <26.461357, 30.702965, 31.610008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.253414, 30.586731, 31.639151>,  <25.906843, 30.393007, 31.687723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253414, 30.586731, 31.639151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210443, 0.574761, 0.790799,
		0.452783, -0.659618, 0.599909,
		0.866430, 0.484307, -0.121430,
		26.513344, 30.732023, 31.602722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255222, 30.349056, 32.362606>,  <25.906843, 30.393007, 31.687723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255222, 30.349056, 32.362606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386404, 30.668835, 32.161278>,  <26.465113, 30.860701, 32.040482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386404, 30.668835, 32.161278>,  <26.255222, 30.349056, 32.362606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386404, 30.668835, 32.161278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105730, 0.560502, 0.821375,
		0.938758, -0.216158, 0.268346,
		0.327956, 0.799445, -0.503322,
		26.484791, 30.908669, 32.010281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559141, 30.634987, 32.873714>,  <26.255222, 30.349056, 32.362606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559141, 30.634987, 32.873714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538759, 30.919889, 32.593689>,  <26.526529, 31.090832, 32.425674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.538759, 30.919889, 32.593689>,  <26.559141, 30.634987, 32.873714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538759, 30.919889, 32.593689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037742, 0.701849, 0.711326,
		0.997988, 0.009825, -0.062646,
		-0.050957, 0.712259, -0.700065,
		26.523472, 31.133568, 32.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099068, 31.163637, 32.978855>,  <26.559141, 30.634987, 32.873714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099068, 31.163637, 32.978855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825996, 31.338282, 32.744480>,  <26.662153, 31.443068, 32.603855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825996, 31.338282, 32.744480>,  <27.099068, 31.163637, 32.978855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825996, 31.338282, 32.744480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031468, 0.818686, 0.573379,
		0.730042, 0.372995, -0.572638,
		-0.682678, 0.436610, -0.585937,
		26.621193, 31.469265, 32.568699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470827, 31.896740, 32.864899>,  <27.099068, 31.163637, 32.978855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470827, 31.896740, 32.864899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077066, 31.912985, 32.796429>,  <26.840809, 31.922731, 32.755344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077066, 31.912985, 32.796429>,  <27.470827, 31.896740, 32.864899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077066, 31.912985, 32.796429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084367, 0.744844, 0.661883,
		0.154380, 0.666001, -0.729801,
		-0.984403, 0.040610, -0.171178,
		26.781746, 31.925167, 32.745075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338423, 32.545959, 32.738792>,  <27.470827, 31.896740, 32.864899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338423, 32.545959, 32.738792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984383, 32.402290, 32.857174>,  <26.771957, 32.316090, 32.928204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984383, 32.402290, 32.857174>,  <27.338423, 32.545959, 32.738792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984383, 32.402290, 32.857174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142048, 0.814059, 0.563143,
		-0.443188, 0.456400, -0.771546,
		-0.885103, -0.359175, 0.295951,
		26.718851, 32.294537, 32.945961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841843, 33.126812, 32.871391>,  <27.338423, 32.545959, 32.738792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841843, 33.126812, 32.871391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683874, 32.828564, 33.086090>,  <26.589094, 32.649616, 33.214909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683874, 32.828564, 33.086090>,  <26.841843, 33.126812, 32.871391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683874, 32.828564, 33.086090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223425, 0.644638, 0.731111,
		-0.891134, 0.168808, -0.421170,
		-0.394920, -0.745618, 0.536743,
		26.565399, 32.604877, 33.247112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343315, 33.464577, 33.173035>,  <26.841843, 33.126812, 32.871391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343315, 33.464577, 33.173035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429934, 33.140793, 33.391354>,  <26.481905, 32.946522, 33.522343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429934, 33.140793, 33.391354>,  <26.343315, 33.464577, 33.173035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429934, 33.140793, 33.391354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013652, 0.556493, 0.830741,
		-0.976177, -0.187344, 0.109455,
		0.216545, -0.809456, 0.545793,
		26.494898, 32.897957, 33.555092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851456, 33.610752, 33.723686>,  <26.343315, 33.464577, 33.173035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851456, 33.610752, 33.723686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062981, 33.298298, 33.856464>,  <26.189896, 33.110825, 33.936131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062981, 33.298298, 33.856464>,  <25.851456, 33.610752, 33.723686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062981, 33.298298, 33.856464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106429, 0.326987, 0.939017,
		-0.842040, -0.531891, 0.089779,
		0.528811, -0.781135, 0.331944,
		26.221624, 33.063957, 33.956047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499941, 33.224323, 34.199734>,  <25.851456, 33.610752, 33.723686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499941, 33.224323, 34.199734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878935, 33.132915, 34.289219>,  <26.106331, 33.078072, 34.342911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878935, 33.132915, 34.289219>,  <25.499941, 33.224323, 34.199734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878935, 33.132915, 34.289219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160175, 0.266374, 0.950468,
		-0.276791, -0.936389, 0.215784,
		0.947487, -0.228518, 0.223716,
		26.163181, 33.064362, 34.356335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439508, 32.834057, 34.786572>,  <25.499941, 33.224323, 34.199734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439508, 32.834057, 34.786572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.816698, 32.967049, 34.780109>,  <26.043011, 33.046844, 34.776234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.816698, 32.967049, 34.780109>,  <25.439508, 32.834057, 34.786572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816698, 32.967049, 34.780109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082197, 0.279597, 0.956593,
		0.322565, -0.900712, 0.290981,
		0.942972, 0.332481, -0.016153,
		26.099590, 33.066792, 34.775265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796564, 32.509834, 35.430008>,  <25.439508, 32.834057, 34.786572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796564, 32.509834, 35.430008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985346, 32.839542, 35.304890>,  <26.098614, 33.037369, 35.229820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985346, 32.839542, 35.304890>,  <25.796564, 32.509834, 35.430008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985346, 32.839542, 35.304890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011952, 0.360742, 0.932589,
		0.881543, -0.436400, 0.180105,
		0.471953, 0.824269, -0.312794,
		26.126932, 33.086823, 35.211052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371613, 32.690395, 35.962738>,  <25.796564, 32.509834, 35.430008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371613, 32.690395, 35.962738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.346376, 33.030945, 35.754440>,  <26.331234, 33.235275, 35.629463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.346376, 33.030945, 35.754440>,  <26.371613, 32.690395, 35.962738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346376, 33.030945, 35.754440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020495, 0.520570, 0.853573,
		0.997797, 0.064526, -0.015395,
		-0.063092, 0.851377, -0.520746,
		26.327450, 33.286358, 35.598217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918915, 33.053913, 36.283173>,  <26.371613, 32.690395, 35.962738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918915, 33.053913, 36.283173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644621, 33.302452, 36.131542>,  <26.480045, 33.451576, 36.040565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644621, 33.302452, 36.131542>,  <26.918915, 33.053913, 36.283173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644621, 33.302452, 36.131542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027073, 0.542225, 0.839797,
		0.727350, 0.565614, -0.388643,
		-0.685733, 0.621348, -0.379074,
		26.438902, 33.488857, 36.017818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451410, 33.253201, 36.751659>,  <26.918915, 33.053913, 36.283173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451410, 33.253201, 36.751659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628382, 33.611488, 36.734024>,  <27.734564, 33.826462, 36.723442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628382, 33.611488, 36.734024>,  <27.451410, 33.253201, 36.751659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628382, 33.611488, 36.734024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578538, -0.322630, -0.749135,
		-0.685238, 0.305934, -0.660949,
		0.442428, 0.895720, -0.044084,
		27.761110, 33.880203, 36.720798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427650, 33.582111, 36.079586>,  <27.451410, 33.253201, 36.751659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427650, 33.582111, 36.079586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762522, 33.686859, 36.271652>,  <27.963444, 33.749710, 36.386890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.762522, 33.686859, 36.271652>,  <27.427650, 33.582111, 36.079586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762522, 33.686859, 36.271652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546899, -0.391200, -0.740179,
		-0.005993, 0.882262, -0.470721,
		0.837177, 0.261873, 0.480164,
		28.013676, 33.765423, 36.415703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807983, 33.941792, 35.650799>,  <27.427650, 33.582111, 36.079586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807983, 33.941792, 35.650799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083841, 33.830830, 35.918362>,  <28.249355, 33.764252, 36.078899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.083841, 33.830830, 35.918362>,  <27.807983, 33.941792, 35.650799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083841, 33.830830, 35.918362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572281, -0.357223, -0.738164,
		0.443718, 0.891874, -0.087604,
		0.689644, -0.277403, 0.668909,
		28.290735, 33.747608, 36.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372400, 34.104580, 35.331314>,  <27.807983, 33.941792, 35.650799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372400, 34.104580, 35.331314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480577, 33.828018, 35.599289>,  <28.545483, 33.662079, 35.760075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480577, 33.828018, 35.599289>,  <28.372400, 34.104580, 35.331314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480577, 33.828018, 35.599289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614012, -0.412100, -0.673174,
		0.741519, 0.593404, 0.313084,
		0.270442, -0.691409, 0.669937,
		28.561710, 33.620594, 35.800270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090715, 34.186108, 35.533684>,  <28.372400, 34.104580, 35.331314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090715, 34.186108, 35.533684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993238, 33.809719, 35.627651>,  <28.934752, 33.583885, 35.684032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993238, 33.809719, 35.627651>,  <29.090715, 34.186108, 35.533684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993238, 33.809719, 35.627651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742822, -0.336824, -0.578589,
		0.623561, 0.033502, 0.781056,
		-0.243694, -0.940971, 0.234917,
		28.920130, 33.527428, 35.698128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723429, 33.922916, 35.671814>,  <29.090715, 34.186108, 35.533684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723429, 33.922916, 35.671814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486956, 33.608517, 35.599480>,  <29.345072, 33.419876, 35.556080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.486956, 33.608517, 35.599480>,  <29.723429, 33.922916, 35.671814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486956, 33.608517, 35.599480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671575, -0.355559, -0.650051,
		0.446643, -0.505745, 0.738060,
		-0.591183, -0.786003, -0.180837,
		29.309601, 33.372715, 35.545227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124527, 33.386127, 35.465057>,  <29.723429, 33.922916, 35.671814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124527, 33.386127, 35.465057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780336, 33.217392, 35.350777>,  <29.573822, 33.116150, 35.282207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780336, 33.217392, 35.350777>,  <30.124527, 33.386127, 35.465057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780336, 33.217392, 35.350777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460178, -0.402829, -0.791180,
		0.218665, -0.812267, 0.540748,
		-0.860478, -0.421843, -0.285703,
		29.522194, 33.090839, 35.265064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312948, 32.584423, 35.329079>,  <30.124527, 33.386127, 35.465057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312948, 32.584423, 35.329079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968828, 32.654530, 35.137592>,  <29.762356, 32.696594, 35.022701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968828, 32.654530, 35.137592>,  <30.312948, 32.584423, 35.329079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968828, 32.654530, 35.137592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400249, -0.349360, -0.847200,
		-0.315721, -0.920452, 0.230408,
		-0.860302, 0.175259, -0.478711,
		29.710737, 32.707108, 34.993980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216034, 31.965818, 34.971851>,  <30.312948, 32.584423, 35.329079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216034, 31.965818, 34.971851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006180, 32.262665, 34.804989>,  <29.880266, 32.440773, 34.704872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006180, 32.262665, 34.804989>,  <30.216034, 31.965818, 34.971851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006180, 32.262665, 34.804989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292316, -0.303185, -0.906990,
		-0.799567, -0.597782, -0.057870,
		-0.524637, 0.742115, -0.417158,
		29.848789, 32.485298, 34.679840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776937, 31.594095, 34.530354>,  <30.216034, 31.965818, 34.971851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776937, 31.594095, 34.530354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761168, 31.963526, 34.377800>,  <29.751705, 32.185184, 34.286266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761168, 31.963526, 34.377800>,  <29.776937, 31.594095, 34.530354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761168, 31.963526, 34.377800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263783, -0.358525, -0.895476,
		-0.963776, -0.135906, -0.229489,
		-0.039423, 0.923574, -0.381388,
		29.749340, 32.240597, 34.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310328, 31.579481, 34.062511>,  <29.776937, 31.594095, 34.530354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310328, 31.579481, 34.062511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566359, 31.873327, 33.972492>,  <29.719976, 32.049633, 33.918480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566359, 31.873327, 33.972492>,  <29.310328, 31.579481, 34.062511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566359, 31.873327, 33.972492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052964, -0.334400, -0.940942,
		-0.766484, 0.590355, -0.252949,
		0.640076, 0.734614, -0.225044,
		29.758381, 32.093712, 33.904980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299494, 31.438820, 33.390675>,  <29.310328, 31.579481, 34.062511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299494, 31.438820, 33.390675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588533, 31.713545, 33.422020>,  <29.761957, 31.878380, 33.440826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.588533, 31.713545, 33.422020>,  <29.299494, 31.438820, 33.390675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588533, 31.713545, 33.422020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357559, -0.274343, -0.892686,
		-0.591610, 0.673072, -0.443815,
		0.722599, 0.686812, 0.078359,
		29.805313, 31.919588, 33.445526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307245, 31.924549, 32.739872>,  <29.299494, 31.438820, 33.390675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307245, 31.924549, 32.739872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661049, 31.922089, 32.926464>,  <29.873331, 31.920612, 33.038418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661049, 31.922089, 32.926464>,  <29.307245, 31.924549, 32.739872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661049, 31.922089, 32.926464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466520, 0.009769, -0.884457,
		0.000883, 0.999933, 0.011510,
		0.884510, -0.006151, 0.466480,
		29.926401, 31.920244, 33.066406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716993, 32.237026, 32.300377>,  <29.307245, 31.924549, 32.739872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716993, 32.237026, 32.300377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007671, 32.076996, 32.523750>,  <30.182077, 31.980976, 32.657776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007671, 32.076996, 32.523750>,  <29.716993, 32.237026, 32.300377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007671, 32.076996, 32.523750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512282, -0.226001, -0.828547,
		0.457691, 0.888178, 0.040720,
		0.726695, -0.400079, 0.558437,
		30.225679, 31.956972, 32.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381027, 32.517082, 31.860285>,  <29.716993, 32.237026, 32.300377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381027, 32.517082, 31.860285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.450750, 32.196938, 32.089729>,  <30.492584, 32.004848, 32.227398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.450750, 32.196938, 32.089729>,  <30.381027, 32.517082, 31.860285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450750, 32.196938, 32.089729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418186, -0.467219, -0.778991,
		0.891480, 0.375662, 0.253261,
		0.174309, -0.800365, 0.573613,
		30.503042, 31.956827, 32.261814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038578, 32.240780, 31.637903>,  <30.381027, 32.517082, 31.860285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038578, 32.240780, 31.637903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853643, 31.943800, 31.831816>,  <30.742682, 31.765612, 31.948162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853643, 31.943800, 31.831816>,  <31.038578, 32.240780, 31.637903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853643, 31.943800, 31.831816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269067, -0.638414, -0.721131,
		0.844894, -0.202968, 0.494932,
		-0.462338, -0.742450, 0.484780,
		30.714941, 31.721066, 31.977249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390776, 31.675562, 31.665146>,  <31.038578, 32.240780, 31.637903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390776, 31.675562, 31.665146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018099, 31.532419, 31.690098>,  <30.794493, 31.446533, 31.705069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018099, 31.532419, 31.690098>,  <31.390776, 31.675562, 31.665146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018099, 31.532419, 31.690098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185188, -0.615649, -0.765951,
		0.312506, -0.702078, 0.639865,
		-0.931690, -0.357859, 0.062378,
		30.738592, 31.425062, 31.708811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406425, 30.920664, 31.531431>,  <31.390776, 31.675562, 31.665146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406425, 30.920664, 31.531431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018335, 30.998997, 31.474426>,  <30.785480, 31.045996, 31.440224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018335, 30.998997, 31.474426>,  <31.406425, 30.920664, 31.531431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018335, 30.998997, 31.474426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011599, -0.625304, -0.780295,
		-0.241920, -0.755410, 0.608958,
		-0.970226, 0.195832, -0.142512,
		30.727268, 31.057747, 31.431673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155436, 30.392107, 31.261410>,  <31.406425, 30.920664, 31.531431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155436, 30.392107, 31.261410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.839418, 30.614897, 31.158947>,  <30.649809, 30.748569, 31.097469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.839418, 30.614897, 31.158947>,  <31.155436, 30.392107, 31.261410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839418, 30.614897, 31.158947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131583, -0.562159, -0.816494,
		-0.598771, -0.611355, 0.517416,
		-0.790038, 0.556976, -0.256161,
		30.602406, 30.781988, 31.082100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589281, 29.918402, 31.193037>,  <31.155436, 30.392107, 31.261410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589281, 29.918402, 31.193037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500641, 30.247208, 30.983206>,  <30.447456, 30.444492, 30.857307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500641, 30.247208, 30.983206>,  <30.589281, 29.918402, 31.193037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500641, 30.247208, 30.983206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378543, -0.568282, -0.730589,
		-0.898665, 0.036678, 0.437099,
		-0.221599, 0.822016, -0.524580,
		30.434160, 30.493813, 30.825832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894053, 29.907955, 31.140486>,  <30.589281, 29.918402, 31.193037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894053, 29.907955, 31.140486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052715, 30.107458, 30.832226>,  <30.147913, 30.227160, 30.647270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052715, 30.107458, 30.832226>,  <29.894053, 29.907955, 31.140486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052715, 30.107458, 30.832226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521555, -0.568406, -0.636314,
		-0.755410, 0.654335, 0.034669,
		0.396656, 0.498760, -0.770651,
		30.171713, 30.257086, 30.601030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.497402, 39.578014, 47.568481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144432, 39.396690, 47.618805>,  <37.932648, 39.287895, 47.648998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.144432, 39.396690, 47.618805>,  <38.497402, 39.578014, 47.568481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144432, 39.396690, 47.618805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054059, 0.363351, 0.930082,
		-0.467330, 0.813930, -0.345137,
		-0.882428, -0.453313, 0.125805,
		37.879704, 39.260696, 47.656548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088387, 40.076580, 47.633194>,  <38.497402, 39.578014, 47.568481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088387, 40.076580, 47.633194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937119, 39.748898, 47.805653>,  <37.846359, 39.552288, 47.909126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937119, 39.748898, 47.805653>,  <38.088387, 40.076580, 47.633194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937119, 39.748898, 47.805653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119668, 0.505087, 0.854732,
		-0.917969, 0.271639, -0.289041,
		-0.378170, -0.819207, 0.431148,
		37.823669, 39.503136, 47.934998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456257, 40.268742, 47.889629>,  <38.088387, 40.076580, 47.633194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456257, 40.268742, 47.889629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541286, 39.929138, 48.083122>,  <37.592304, 39.725376, 48.199219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541286, 39.929138, 48.083122>,  <37.456257, 40.268742, 47.889629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541286, 39.929138, 48.083122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365155, 0.390164, 0.845242,
		-0.906352, -0.356315, -0.227080,
		0.212574, -0.849007, 0.483736,
		37.605057, 39.674435, 48.228245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960968, 40.190086, 48.358807>,  <37.456257, 40.268742, 47.889629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960968, 40.190086, 48.358807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212357, 39.912663, 48.499660>,  <37.363190, 39.746208, 48.584171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.212357, 39.912663, 48.499660>,  <36.960968, 40.190086, 48.358807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212357, 39.912663, 48.499660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311618, 0.190289, 0.930959,
		-0.712683, -0.694812, -0.096534,
		0.628472, -0.693560, 0.352132,
		37.400898, 39.704594, 48.605301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589710, 39.658997, 48.775448>,  <36.960968, 40.190086, 48.358807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589710, 39.658997, 48.775448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963528, 39.648750, 48.917423>,  <37.187817, 39.642605, 49.002609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963528, 39.648750, 48.917423>,  <36.589710, 39.658997, 48.775448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963528, 39.648750, 48.917423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345974, 0.168087, 0.923065,
		-0.083305, -0.985439, 0.148221,
		0.934538, -0.025615, 0.354938,
		37.243889, 39.641068, 49.023903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515972, 39.518902, 49.527935>,  <36.589710, 39.658997, 48.775448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515972, 39.518902, 49.527935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882973, 39.668594, 49.474049>,  <37.103172, 39.758408, 49.441715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882973, 39.668594, 49.474049>,  <36.515972, 39.518902, 49.527935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882973, 39.668594, 49.474049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008916, 0.357979, 0.933687,
		0.397638, -0.855456, 0.331782,
		0.917499, 0.374228, -0.134719,
		37.158222, 39.780861, 49.433632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129139, 39.115234, 49.855537>,  <36.515972, 39.518902, 49.527935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129139, 39.115234, 49.855537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180325, 39.511642, 49.840057>,  <37.211037, 39.749489, 49.830769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180325, 39.511642, 49.840057>,  <37.129139, 39.115234, 49.855537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180325, 39.511642, 49.840057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124635, 0.022641, 0.991944,
		0.983916, -0.131760, -0.120618,
		0.127967, 0.991023, -0.038699,
		37.218716, 39.808949, 49.828449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403446, 39.134518, 50.507591>,  <37.129139, 39.115234, 49.855537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403446, 39.134518, 50.507591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350285, 39.502098, 50.359074>,  <37.318386, 39.722645, 50.269962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350285, 39.502098, 50.359074>,  <37.403446, 39.134518, 50.507591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350285, 39.502098, 50.359074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055252, 0.367170, 0.928511,
		0.989587, 0.143920, 0.001974,
		-0.132907, 0.918952, -0.371299,
		37.310413, 39.777782, 50.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765450, 39.601475, 50.984295>,  <37.403446, 39.134518, 50.507591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765450, 39.601475, 50.984295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495640, 39.834846, 50.803349>,  <37.333755, 39.974869, 50.694782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495640, 39.834846, 50.803349>,  <37.765450, 39.601475, 50.984295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495640, 39.834846, 50.803349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215693, 0.430272, 0.876552,
		0.706045, 0.688824, -0.164386,
		-0.674520, 0.583428, -0.452365,
		37.293285, 40.009876, 50.667641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815575, 40.188099, 51.366131>,  <37.765450, 39.601475, 50.984295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815575, 40.188099, 51.366131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477455, 40.238491, 51.158440>,  <37.274582, 40.268726, 51.033825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477455, 40.238491, 51.158440>,  <37.815575, 40.188099, 51.366131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477455, 40.238491, 51.158440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402990, 0.487739, 0.774409,
		0.350809, 0.863851, -0.361517,
		-0.845300, 0.125982, -0.519227,
		37.223866, 40.276287, 51.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550308, 40.924400, 51.475483>,  <37.815575, 40.188099, 51.366131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550308, 40.924400, 51.475483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226208, 40.717960, 51.364395>,  <37.031746, 40.594097, 51.297741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226208, 40.717960, 51.364395>,  <37.550308, 40.924400, 51.475483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226208, 40.717960, 51.364395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449681, 0.243547, 0.859344,
		-0.375873, 0.821171, -0.429417,
		-0.810251, -0.516105, -0.277722,
		36.983131, 40.563129, 51.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974049, 41.472343, 51.464504>,  <37.550308, 40.924400, 51.475483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974049, 41.472343, 51.464504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836720, 41.098534, 51.501999>,  <36.754322, 40.874249, 51.524494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836720, 41.098534, 51.501999>,  <36.974049, 41.472343, 51.464504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836720, 41.098534, 51.501999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570374, 0.286743, 0.769709,
		-0.746192, 0.210797, -0.631477,
		-0.343324, -0.934528, 0.093732,
		36.733723, 40.818176, 51.530117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255810, 41.427181, 51.332039>,  <36.974049, 41.472343, 51.464504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255810, 41.427181, 51.332039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394173, 41.136620, 51.569588>,  <36.477192, 40.962280, 51.712116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394173, 41.136620, 51.569588>,  <36.255810, 41.427181, 51.332039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394173, 41.136620, 51.569588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587328, 0.325962, 0.740807,
		-0.731706, -0.605047, -0.313886,
		0.345908, -0.726407, 0.593869,
		36.497944, 40.918697, 51.747749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613014, 41.219364, 51.629593>,  <36.255810, 41.427181, 51.332039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613014, 41.219364, 51.629593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919281, 41.093838, 51.854187>,  <36.103043, 41.018524, 51.988945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919281, 41.093838, 51.854187>,  <35.613014, 41.219364, 51.629593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919281, 41.093838, 51.854187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571814, 0.067693, 0.817586,
		-0.294577, -0.947069, -0.127612,
		0.765671, -0.313812, 0.561488,
		36.148983, 40.999695, 52.022633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048801, 41.502121, 52.033985>,  <35.613014, 41.219364, 51.629593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048801, 41.502121, 52.033985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909615, 41.867821, 51.950974>,  <34.826103, 42.087242, 51.901165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909615, 41.867821, 51.950974>,  <35.048801, 41.502121, 52.033985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909615, 41.867821, 51.950974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233464, -0.298892, -0.925288,
		-0.907973, -0.273516, 0.317448,
		-0.347964, 0.914250, -0.207530,
		34.805225, 42.142097, 51.888714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367054, 41.482918, 51.621975>,  <35.048801, 41.502121, 52.033985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367054, 41.482918, 51.621975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475101, 41.862244, 51.555359>,  <34.539932, 42.089840, 51.515388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475101, 41.862244, 51.555359>,  <34.367054, 41.482918, 51.621975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475101, 41.862244, 51.555359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240041, -0.101181, -0.965475,
		-0.932424, 0.300773, 0.200303,
		0.270122, 0.948313, -0.166542,
		34.556137, 42.146736, 51.505398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860550, 41.763119, 51.172398>,  <34.367054, 41.482918, 51.621975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860550, 41.763119, 51.172398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170322, 42.008053, 51.108780>,  <34.356186, 42.155014, 51.070610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170322, 42.008053, 51.108780>,  <33.860550, 41.763119, 51.172398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170322, 42.008053, 51.108780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155370, -0.059608, -0.986056,
		-0.613281, 0.788345, 0.048977,
		0.774433, 0.612339, -0.159041,
		34.402653, 42.191753, 51.061066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669895, 42.263756, 50.740036>,  <33.860550, 41.763119, 51.172398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669895, 42.263756, 50.740036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069103, 42.272270, 50.716385>,  <34.308628, 42.277378, 50.702194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.069103, 42.272270, 50.716385>,  <33.669895, 42.263756, 50.740036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069103, 42.272270, 50.716385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058651, -0.022581, -0.998023,
		-0.022581, 0.999518, -0.021288,
		0.998023, 0.021288, -0.059132,
		34.368511, 42.278656, 50.698647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820309, 42.784019, 50.247223>,  <33.669895, 42.263756, 50.740036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820309, 42.784019, 50.247223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160091, 42.573406, 50.260933>,  <34.363960, 42.447037, 50.269161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160091, 42.573406, 50.260933>,  <33.820309, 42.784019, 50.247223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160091, 42.573406, 50.260933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097144, 0.092207, -0.990990,
		0.518632, 0.845137, 0.129476,
		0.849461, -0.526537, 0.034278,
		34.414928, 42.415443, 50.271217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360130, 43.228622, 49.984669>,  <33.820309, 42.784019, 50.247223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360130, 43.228622, 49.984669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.488808, 42.851559, 49.949093>,  <34.566013, 42.625320, 49.927746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.488808, 42.851559, 49.949093>,  <34.360130, 43.228622, 49.984669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488808, 42.851559, 49.949093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230398, 0.169046, -0.958301,
		0.918383, 0.287790, 0.271567,
		0.321697, -0.942656, -0.088943,
		34.585316, 42.568764, 49.922409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986347, 43.200512, 49.638344>,  <34.360130, 43.228622, 49.984669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986347, 43.200512, 49.638344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899757, 42.813297, 49.587692>,  <34.847801, 42.580967, 49.557301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899757, 42.813297, 49.587692>,  <34.986347, 43.200512, 49.638344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899757, 42.813297, 49.587692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460737, 0.013049, -0.887441,
		0.860731, -0.250452, 0.443188,
		-0.216478, -0.968041, -0.126625,
		34.834812, 42.522884, 49.549706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516712, 42.872837, 49.457813>,  <34.986347, 43.200512, 49.638344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516712, 42.872837, 49.457813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239891, 42.610271, 49.337692>,  <35.073799, 42.452732, 49.265617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239891, 42.610271, 49.337692>,  <35.516712, 42.872837, 49.457813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239891, 42.610271, 49.337692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390563, 0.009371, -0.920529,
		0.607066, -0.754339, 0.249887,
		-0.692049, -0.656418, -0.300306,
		35.032276, 42.413345, 49.247601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910370, 42.307602, 49.076424>,  <35.516712, 42.872837, 49.457813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910370, 42.307602, 49.076424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526840, 42.314224, 48.963017>,  <35.296722, 42.318199, 48.894970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526840, 42.314224, 48.963017>,  <35.910370, 42.307602, 49.076424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526840, 42.314224, 48.963017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283818, 0.091918, -0.954463,
		0.010257, -0.995629, -0.092832,
		-0.958823, 0.016557, -0.283520,
		35.239193, 42.319191, 48.877960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006866, 42.014107, 48.384312>,  <35.910370, 42.307602, 49.076424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006866, 42.014107, 48.384312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621502, 42.120750, 48.373257>,  <35.390285, 42.184738, 48.366623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621502, 42.120750, 48.373257>,  <36.006866, 42.014107, 48.384312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621502, 42.120750, 48.373257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044905, 0.058897, -0.997254,
		-0.264249, -0.962004, -0.068714,
		-0.963408, 0.266609, -0.027636,
		35.332478, 42.200733, 48.364967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652161, 41.525723, 47.900196>,  <36.006866, 42.014107, 48.384312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652161, 41.525723, 47.900196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437946, 41.862846, 47.921654>,  <35.309418, 42.065121, 47.934528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437946, 41.862846, 47.921654>,  <35.652161, 41.525723, 47.900196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437946, 41.862846, 47.921654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043932, 0.091241, -0.994859,
		-0.843371, -0.530424, -0.085889,
		-0.535534, 0.842808, 0.053648,
		35.277287, 42.115688, 47.937748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100449, 41.385956, 47.480515>,  <35.652161, 41.525723, 47.900196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100449, 41.385956, 47.480515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112659, 41.785324, 47.499409>,  <35.119984, 42.024944, 47.510746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112659, 41.785324, 47.499409>,  <35.100449, 41.385956, 47.480515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112659, 41.785324, 47.499409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152214, 0.051352, -0.987013,
		-0.987876, 0.022937, 0.153541,
		0.030523, 0.998417, 0.047238,
		35.121815, 42.084850, 47.513580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611801, 41.617935, 47.007763>,  <35.100449, 41.385956, 47.480515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611801, 41.617935, 47.007763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850143, 41.935356, 47.057133>,  <34.993149, 42.125809, 47.086754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850143, 41.935356, 47.057133>,  <34.611801, 41.617935, 47.007763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850143, 41.935356, 47.057133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002310, 0.151988, -0.988380,
		-0.803087, 0.589219, 0.088730,
		0.595858, 0.793550, 0.123421,
		35.028900, 42.173420, 47.094158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305386, 42.124199, 46.665688>,  <34.611801, 41.617935, 47.007763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305386, 42.124199, 46.665688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.688805, 42.236515, 46.685074>,  <34.918854, 42.303905, 46.696705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.688805, 42.236515, 46.685074>,  <34.305386, 42.124199, 46.665688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688805, 42.236515, 46.685074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037831, 0.043173, -0.998351,
		-0.282422, 0.958797, 0.030761,
		0.958544, 0.280793, 0.048465,
		34.976368, 42.320751, 46.699612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882103, 42.768394, 46.624573>,  <34.305386, 42.124199, 46.665688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882103, 42.768394, 46.624573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505520, 42.720680, 46.498440>,  <33.279572, 42.692051, 46.422760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505520, 42.720680, 46.498440>,  <33.882103, 42.768394, 46.624573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505520, 42.720680, 46.498440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316137, -0.012630, 0.948630,
		-0.117143, 0.992780, -0.025821,
		-0.941454, -0.119288, -0.315333,
		33.223083, 42.684895, 46.403839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459869, 43.273499, 46.998161>,  <33.882103, 42.768394, 46.624573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459869, 43.273499, 46.998161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232849, 42.970261, 46.869675>,  <33.096638, 42.788319, 46.792583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232849, 42.970261, 46.869675>,  <33.459869, 43.273499, 46.998161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232849, 42.970261, 46.869675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501434, 0.008821, 0.865151,
		-0.653029, 0.652090, -0.385139,
		-0.567554, -0.758090, -0.321220,
		33.062584, 42.742832, 46.773308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830688, 43.488819, 47.132183>,  <33.459869, 43.273499, 46.998161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830688, 43.488819, 47.132183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775719, 43.093189, 47.110878>,  <32.742737, 42.855812, 47.098095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775719, 43.093189, 47.110878>,  <32.830688, 43.488819, 47.132183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775719, 43.093189, 47.110878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440277, 0.012830, 0.897770,
		-0.887282, 0.146830, -0.437232,
		-0.137429, -0.989079, -0.053262,
		32.734489, 42.796467, 47.094898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205360, 43.344677, 47.450790>,  <32.830688, 43.488819, 47.132183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205360, 43.344677, 47.450790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364742, 42.977821, 47.454559>,  <32.460373, 42.757710, 47.456821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364742, 42.977821, 47.454559>,  <32.205360, 43.344677, 47.450790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364742, 42.977821, 47.454559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409193, -0.168560, 0.896743,
		-0.820850, -0.361167, -0.442451,
		0.398454, -0.917140, 0.009424,
		32.484280, 42.702679, 47.457386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649950, 42.901440, 47.664425>,  <32.205360, 43.344677, 47.450790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649950, 42.901440, 47.664425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.990797, 42.710926, 47.751186>,  <32.195305, 42.596619, 47.803242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.990797, 42.710926, 47.751186>,  <31.649950, 42.901440, 47.664425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990797, 42.710926, 47.751186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336517, -0.181233, 0.924073,
		-0.400816, -0.860409, -0.314710,
		0.852117, -0.476288, 0.216901,
		32.246433, 42.568039, 47.816257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405210, 42.291718, 47.926464>,  <31.649950, 42.901440, 47.664425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405210, 42.291718, 47.926464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784481, 42.345467, 48.041637>,  <32.012043, 42.377716, 48.110741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784481, 42.345467, 48.041637>,  <31.405210, 42.291718, 47.926464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784481, 42.345467, 48.041637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262274, -0.180557, 0.947951,
		0.179363, -0.974343, -0.135958,
		0.948178, 0.134369, 0.287931,
		32.068935, 42.385777, 48.128017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484438, 41.783173, 48.421463>,  <31.405210, 42.291718, 47.926464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484438, 41.783173, 48.421463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774189, 42.040016, 48.521839>,  <31.948040, 42.194122, 48.582066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774189, 42.040016, 48.521839>,  <31.484438, 41.783173, 48.421463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774189, 42.040016, 48.521839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185839, -0.168651, 0.967998,
		0.663884, -0.747831, -0.002838,
		0.724377, 0.642111, 0.250941,
		31.991503, 42.232651, 48.597122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310350, 41.166603, 48.258598>,  <31.484438, 41.783173, 48.421463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310350, 41.166603, 48.258598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029251, 40.882179, 48.267811>,  <30.860592, 40.711525, 48.273338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029251, 40.882179, 48.267811>,  <31.310350, 41.166603, 48.258598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029251, 40.882179, 48.267811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192661, -0.221372, -0.955969,
		0.684854, -0.667370, 0.292564,
		-0.702750, -0.711064, 0.023031,
		30.818426, 40.668861, 48.274719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651695, 40.549198, 48.179115>,  <31.310350, 41.166603, 48.258598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651695, 40.549198, 48.179115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272884, 40.502293, 48.059521>,  <31.045599, 40.474148, 47.987766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272884, 40.502293, 48.059521>,  <31.651695, 40.549198, 48.179115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272884, 40.502293, 48.059521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321106, -0.329363, -0.887925,
		0.005648, -0.936893, 0.349570,
		-0.947026, -0.117264, -0.298982,
		30.988777, 40.467113, 47.969826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538654, 39.886944, 47.935982>,  <31.651695, 40.549198, 48.179115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538654, 39.886944, 47.935982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229088, 40.082909, 47.775459>,  <31.043348, 40.200485, 47.679146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229088, 40.082909, 47.775459>,  <31.538654, 39.886944, 47.935982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229088, 40.082909, 47.775459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177493, -0.440485, -0.880039,
		-0.607908, -0.752304, 0.253942,
		-0.773914, 0.489910, -0.401303,
		30.996914, 40.229881, 47.655067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066429, 39.396809, 47.723080>,  <31.538654, 39.886944, 47.935982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066429, 39.396809, 47.723080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990337, 39.725685, 47.508484>,  <30.944683, 39.923012, 47.379726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990337, 39.725685, 47.508484>,  <31.066429, 39.396809, 47.723080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990337, 39.725685, 47.508484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327622, -0.461973, -0.824164,
		-0.925461, -0.332543, -0.181488,
		-0.190227, 0.822190, -0.536486,
		30.933270, 39.972343, 47.347538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769815, 39.156578, 47.079491>,  <31.066429, 39.396809, 47.723080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769815, 39.156578, 47.079491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871363, 39.523083, 46.955551>,  <30.932291, 39.742985, 46.881187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871363, 39.523083, 46.955551>,  <30.769815, 39.156578, 47.079491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871363, 39.523083, 46.955551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219622, -0.366586, -0.904091,
		-0.941975, 0.161470, -0.294296,
		0.253868, 0.916265, -0.309853,
		30.947523, 39.797962, 46.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499849, 39.115734, 46.389305>,  <30.769815, 39.156578, 47.079491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499849, 39.115734, 46.389305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731949, 39.441334, 46.378574>,  <30.871208, 39.636692, 46.372135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.731949, 39.441334, 46.378574>,  <30.499849, 39.115734, 46.389305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731949, 39.441334, 46.378574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203762, -0.176977, -0.962892,
		-0.788540, 0.553249, -0.268552,
		0.580247, 0.813999, -0.026822,
		30.906023, 39.685532, 46.370529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279593, 39.534668, 45.830692>,  <30.499849, 39.115734, 46.389305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279593, 39.534668, 45.830692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657501, 39.643181, 45.904247>,  <30.884247, 39.708290, 45.948380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657501, 39.643181, 45.904247>,  <30.279593, 39.534668, 45.830692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657501, 39.643181, 45.904247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202009, -0.040221, -0.978557,
		-0.258071, 0.961659, -0.092801,
		0.944771, 0.271284, 0.183884,
		30.940933, 39.724567, 45.959412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.962486, 38.408638, 52.027519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248989, 38.625690, 51.852005>,  <34.420891, 38.755920, 51.746696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.248989, 38.625690, 51.852005>,  <33.962486, 38.408638, 52.027519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248989, 38.625690, 51.852005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084324, -0.556874, -0.826305,
		-0.692725, 0.628846, -0.353107,
		0.716255, 0.542627, -0.438788,
		34.463867, 38.788479, 51.720367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803596, 38.803043, 51.296223>,  <33.962486, 38.408638, 52.027519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803596, 38.803043, 51.296223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.197521, 38.737549, 51.319351>,  <34.433876, 38.698254, 51.333229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.197521, 38.737549, 51.319351>,  <33.803596, 38.803043, 51.296223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197521, 38.737549, 51.319351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036319, -0.519868, -0.853474,
		0.169804, 0.838408, -0.517917,
		0.984808, -0.163734, 0.057825,
		34.492962, 38.688427, 51.336700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973557, 38.899670, 50.655186>,  <33.803596, 38.803043, 51.296223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973557, 38.899670, 50.655186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292747, 38.700710, 50.791317>,  <34.484261, 38.581333, 50.872997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292747, 38.700710, 50.791317>,  <33.973557, 38.899670, 50.655186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292747, 38.700710, 50.791317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046484, -0.512213, -0.857600,
		0.600891, 0.700166, -0.385614,
		0.797978, -0.497399, 0.340331,
		34.532143, 38.551491, 50.893417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467556, 39.112858, 50.235615>,  <33.973557, 38.899670, 50.655186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467556, 39.112858, 50.235615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568192, 38.747898, 50.364754>,  <34.628574, 38.528923, 50.442238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568192, 38.747898, 50.364754>,  <34.467556, 39.112858, 50.235615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568192, 38.747898, 50.364754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010258, -0.336067, -0.941782,
		0.967780, 0.233629, -0.093910,
		0.251588, -0.912401, 0.322843,
		34.643669, 38.474178, 50.461605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956230, 38.889805, 49.779396>,  <34.467556, 39.112858, 50.235615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956230, 38.889805, 49.779396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813263, 38.558109, 49.951260>,  <34.727482, 38.359093, 50.054379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813263, 38.558109, 49.951260>,  <34.956230, 38.889805, 49.779396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813263, 38.558109, 49.951260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020928, -0.467046, -0.883985,
		0.933710, -0.306961, 0.184286,
		-0.357419, -0.829242, 0.429661,
		34.706036, 38.309338, 50.080158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403950, 38.348274, 49.547386>,  <34.956230, 38.889805, 49.779396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403950, 38.348274, 49.547386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.089615, 38.148941, 49.693878>,  <34.901016, 38.029339, 49.781773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.089615, 38.148941, 49.693878>,  <35.403950, 38.348274, 49.547386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089615, 38.148941, 49.693878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112141, -0.697192, -0.708059,
		0.608185, -0.515347, 0.603761,
		-0.785834, -0.498337, 0.366231,
		34.853867, 37.999439, 49.803749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497795, 37.580772, 49.586975>,  <35.403950, 38.348274, 49.547386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497795, 37.580772, 49.586975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.097939, 37.586803, 49.578091>,  <34.858025, 37.590424, 49.572762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.097939, 37.586803, 49.578091>,  <35.497795, 37.580772, 49.586975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097939, 37.586803, 49.578091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001244, -0.852428, -0.522843,
		-0.026816, -0.522626, 0.852140,
		-0.999640, 0.015081, -0.022209,
		34.798046, 37.591328, 49.571426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244961, 36.842167, 49.652588>,  <35.497795, 37.580772, 49.586975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244961, 36.842167, 49.652588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.941204, 37.055027, 49.502846>,  <34.758949, 37.182743, 49.413002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.941204, 37.055027, 49.502846>,  <35.244961, 36.842167, 49.652588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941204, 37.055027, 49.502846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197407, -0.736690, -0.646776,
		-0.619967, -0.417255, 0.664485,
		-0.759389, 0.532153, -0.374354,
		34.713387, 37.214672, 49.390541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640530, 36.346676, 49.410587>,  <35.244961, 36.842167, 49.652588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640530, 36.346676, 49.410587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569027, 36.684418, 49.208553>,  <34.526127, 36.887062, 49.087334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569027, 36.684418, 49.208553>,  <34.640530, 36.346676, 49.410587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569027, 36.684418, 49.208553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176845, -0.532569, -0.827705,
		-0.967870, -0.058634, 0.244519,
		-0.178755, 0.844353, -0.505089,
		34.515400, 36.937725, 49.057026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104881, 36.123295, 49.036312>,  <34.640530, 36.346676, 49.410587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104881, 36.123295, 49.036312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241280, 36.442257, 48.837166>,  <34.323120, 36.633633, 48.717678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241280, 36.442257, 48.837166>,  <34.104881, 36.123295, 49.036312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241280, 36.442257, 48.837166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162388, -0.471680, -0.866688,
		-0.925931, 0.376388, -0.031354,
		0.341000, 0.797402, -0.497865,
		34.343578, 36.681477, 48.687805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567425, 36.364132, 48.535568>,  <34.104881, 36.123295, 49.036312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567425, 36.364132, 48.535568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.925915, 36.480553, 48.401665>,  <34.141010, 36.550407, 48.321323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.925915, 36.480553, 48.401665>,  <33.567425, 36.364132, 48.535568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925915, 36.480553, 48.401665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194623, -0.420149, -0.886339,
		-0.398622, 0.859513, -0.319903,
		0.896227, 0.291054, -0.334762,
		34.194782, 36.567867, 48.301235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444817, 36.610069, 47.767994>,  <33.567425, 36.364132, 48.535568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444817, 36.610069, 47.767994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843906, 36.624611, 47.790733>,  <34.083359, 36.633335, 47.804375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843906, 36.624611, 47.790733>,  <33.444817, 36.610069, 47.767994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843906, 36.624611, 47.790733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063475, -0.219944, -0.973445,
		-0.022882, 0.974835, -0.221750,
		0.997721, 0.036350, 0.056844,
		34.143223, 36.635517, 47.807785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262684, 37.350529, 47.593227>,  <33.444817, 36.610069, 47.767994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262684, 37.350529, 47.593227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874592, 37.432049, 47.540894>,  <32.641735, 37.480961, 47.509491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874592, 37.432049, 47.540894>,  <33.262684, 37.350529, 47.593227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874592, 37.432049, 47.540894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102753, 0.142802, 0.984403,
		0.219303, 0.968542, -0.117610,
		-0.970231, 0.203798, -0.130838,
		32.583523, 37.493187, 47.501640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067493, 38.092323, 47.919514>,  <33.262684, 37.350529, 47.593227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067493, 38.092323, 47.919514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727642, 37.883015, 47.893223>,  <32.523731, 37.757427, 47.877449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727642, 37.883015, 47.893223>,  <33.067493, 38.092323, 47.919514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727642, 37.883015, 47.893223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117012, 0.065517, 0.990967,
		-0.514242, 0.849642, -0.116894,
		-0.849625, -0.523275, -0.065726,
		32.472755, 37.726032, 47.873505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636436, 38.435280, 48.304070>,  <33.067493, 38.092323, 47.919514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636436, 38.435280, 48.304070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.390598, 38.119835, 48.296524>,  <32.243095, 37.930569, 48.291996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.390598, 38.119835, 48.296524>,  <32.636436, 38.435280, 48.304070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390598, 38.119835, 48.296524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424604, 0.310567, 0.850447,
		-0.664817, 0.530692, -0.525723,
		-0.614597, -0.788616, -0.018864,
		32.206219, 37.883251, 48.290863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037258, 38.682278, 48.691406>,  <32.636436, 38.435280, 48.304070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037258, 38.682278, 48.691406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949697, 38.292797, 48.666142>,  <31.897160, 38.059109, 48.650982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949697, 38.292797, 48.666142>,  <32.037258, 38.682278, 48.691406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949697, 38.292797, 48.666142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539371, 0.066810, 0.839413,
		-0.813117, 0.217820, -0.539811,
		-0.218906, -0.973699, -0.063162,
		31.884026, 38.000687, 48.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338804, 38.551651, 48.925262>,  <32.037258, 38.682278, 48.691406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338804, 38.551651, 48.925262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466276, 38.172508, 48.925751>,  <31.542759, 37.945023, 48.926044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466276, 38.172508, 48.925751>,  <31.338804, 38.551651, 48.925262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466276, 38.172508, 48.925751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666290, -0.223099, 0.711537,
		-0.674167, -0.227563, -0.702648,
		0.318680, -0.947862, 0.001217,
		31.561880, 37.888149, 48.926117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711626, 38.215698, 48.873302>,  <31.338804, 38.551651, 48.925262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711626, 38.215698, 48.873302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028839, 38.035728, 49.037579>,  <31.219168, 37.927746, 49.136143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028839, 38.035728, 49.037579>,  <30.711626, 38.215698, 48.873302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028839, 38.035728, 49.037579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528299, -0.172275, 0.831397,
		-0.303316, -0.876292, -0.374316,
		0.793032, -0.449927, 0.410691,
		31.266748, 37.900749, 49.160786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508165, 37.667240, 49.283203>,  <30.711626, 38.215698, 48.873302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508165, 37.667240, 49.283203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.875980, 37.723194, 49.430107>,  <31.096670, 37.756767, 49.518250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.875980, 37.723194, 49.430107>,  <30.508165, 37.667240, 49.283203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875980, 37.723194, 49.430107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388937, 0.189892, 0.901482,
		0.056361, -0.971789, 0.229019,
		0.919539, 0.139882, 0.367262,
		31.151842, 37.765160, 49.540287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541143, 37.336987, 49.888718>,  <30.508165, 37.667240, 49.283203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541143, 37.336987, 49.888718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833796, 37.607639, 49.921925>,  <31.009386, 37.770031, 49.941849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833796, 37.607639, 49.921925>,  <30.541143, 37.336987, 49.888718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833796, 37.607639, 49.921925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337268, 0.253440, 0.906652,
		0.592425, -0.691334, 0.413630,
		0.731630, 0.676628, 0.083020,
		31.053286, 37.810627, 49.946831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695200, 37.258739, 50.529984>,  <30.541143, 37.336987, 49.888718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695200, 37.258739, 50.529984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846281, 37.618656, 50.442604>,  <30.936930, 37.834606, 50.390175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.846281, 37.618656, 50.442604>,  <30.695200, 37.258739, 50.529984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846281, 37.618656, 50.442604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413652, 0.375045, 0.829598,
		0.828392, -0.222979, 0.513855,
		0.377702, 0.899790, -0.218448,
		30.959591, 37.888592, 50.377071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965719, 37.484383, 51.113792>,  <30.695200, 37.258739, 50.529984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965719, 37.484383, 51.113792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892757, 37.821960, 50.912006>,  <30.848980, 38.024509, 50.790936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892757, 37.821960, 50.912006>,  <30.965719, 37.484383, 51.113792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892757, 37.821960, 50.912006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388206, 0.409569, 0.825560,
		0.903341, 0.346420, 0.252919,
		-0.182403, 0.843946, -0.504463,
		30.838036, 38.075146, 50.760666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194750, 38.112461, 51.627270>,  <30.965719, 37.484383, 51.113792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194750, 38.112461, 51.627270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.976023, 38.271080, 51.332314>,  <30.844786, 38.366249, 51.155342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.976023, 38.271080, 51.332314>,  <31.194750, 38.112461, 51.627270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976023, 38.271080, 51.332314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430629, 0.622093, 0.653880,
		0.718017, 0.675094, -0.169409,
		-0.546819, 0.396544, -0.737389,
		30.811977, 38.390041, 51.111095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250246, 38.846840, 51.757610>,  <31.194750, 38.112461, 51.627270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250246, 38.846840, 51.757610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926504, 38.800251, 51.527348>,  <30.732260, 38.772297, 51.389191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926504, 38.800251, 51.527348>,  <31.250246, 38.846840, 51.757610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926504, 38.800251, 51.527348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514501, 0.613309, 0.599283,
		0.283255, 0.781208, -0.556309,
		-0.809354, -0.116472, -0.575656,
		30.683699, 38.765308, 51.354652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923193, 39.539528, 51.705097>,  <31.250246, 38.846840, 51.757610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923193, 39.539528, 51.705097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.639887, 39.274799, 51.606834>,  <30.469904, 39.115963, 51.547878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.639887, 39.274799, 51.606834>,  <30.923193, 39.539528, 51.705097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639887, 39.274799, 51.606834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645054, 0.465345, 0.606102,
		-0.286818, 0.587743, -0.756501,
		-0.708266, -0.661825, -0.245657,
		30.427406, 39.076252, 51.533138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365896, 39.882282, 51.548542>,  <30.923193, 39.539528, 51.705097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365896, 39.882282, 51.548542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.220768, 39.522575, 51.646263>,  <30.133692, 39.306751, 51.704895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.220768, 39.522575, 51.646263>,  <30.365896, 39.882282, 51.548542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220768, 39.522575, 51.646263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522683, 0.413428, 0.745574,
		-0.771469, 0.142818, -0.620031,
		-0.362819, -0.899267, 0.244298,
		30.111921, 39.252796, 51.719551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015812, 39.388172, 51.147587>,  <30.365896, 39.882282, 51.548542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015812, 39.388172, 51.147587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.064451, 39.785183, 51.143539>,  <30.093636, 40.023388, 51.141113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.064451, 39.785183, 51.143539>,  <30.015812, 39.388172, 51.147587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064451, 39.785183, 51.143539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195712, -0.033965, -0.980073,
		-0.973093, 0.117198, -0.198380,
		0.121600, 0.992528, -0.010114,
		30.100931, 40.082943, 51.140507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769262, 39.538776, 50.576260>,  <30.015812, 39.388172, 51.147587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769262, 39.538776, 50.576260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.982111, 39.867390, 50.658169>,  <30.109819, 40.064556, 50.707314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.982111, 39.867390, 50.658169>,  <29.769262, 39.538776, 50.576260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982111, 39.867390, 50.658169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067420, 0.199973, -0.977479,
		-0.843980, 0.533943, 0.051022,
		0.532121, 0.821533, 0.204772,
		30.141747, 40.113850, 50.719601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480434, 40.015182, 50.135098>,  <29.769262, 39.538776, 50.576260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480434, 40.015182, 50.135098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.835632, 40.185894, 50.203598>,  <30.048750, 40.288322, 50.244698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.835632, 40.185894, 50.203598>,  <29.480434, 40.015182, 50.135098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835632, 40.185894, 50.203598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116765, 0.150935, -0.981623,
		-0.444785, 0.891671, 0.084196,
		0.887993, 0.426781, 0.171250,
		30.102030, 40.313927, 50.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495108, 40.574703, 49.665260>,  <29.480434, 40.015182, 50.135098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495108, 40.574703, 49.665260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.879755, 40.559631, 49.773979>,  <30.110542, 40.550587, 49.839211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.879755, 40.559631, 49.773979>,  <29.495108, 40.574703, 49.665260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879755, 40.559631, 49.773979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274104, 0.177530, -0.945172,
		-0.012633, 0.983394, 0.181045,
		0.961617, -0.037684, 0.271795,
		30.168240, 40.548325, 49.855518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768642, 41.046772, 49.265499>,  <29.495108, 40.574703, 49.665260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768642, 41.046772, 49.265499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081486, 40.817593, 49.363510>,  <30.269192, 40.680084, 49.422318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081486, 40.817593, 49.363510>,  <29.768642, 41.046772, 49.265499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081486, 40.817593, 49.363510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307613, 0.013020, -0.951422,
		0.541925, 0.819489, 0.186430,
		0.782107, -0.572948, 0.245030,
		30.316118, 40.645710, 49.437019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272995, 41.409119, 49.020008>,  <29.768642, 41.046772, 49.265499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272995, 41.409119, 49.020008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364008, 41.021416, 49.057461>,  <30.418615, 40.788795, 49.079933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364008, 41.021416, 49.057461>,  <30.272995, 41.409119, 49.020008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364008, 41.021416, 49.057461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273777, -0.028602, -0.961368,
		0.934491, 0.244379, 0.258853,
		0.227534, -0.969258, 0.093634,
		30.432268, 40.730637, 49.085552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944441, 41.412685, 48.817364>,  <30.272995, 41.409119, 49.020008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944441, 41.412685, 48.817364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804461, 41.039619, 48.782333>,  <30.720472, 40.815781, 48.761314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804461, 41.039619, 48.782333>,  <30.944441, 41.412685, 48.817364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804461, 41.039619, 48.782333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374517, -0.053608, -0.925669,
		0.858646, -0.356735, 0.368059,
		-0.349949, -0.932666, -0.087573,
		30.699476, 40.759819, 48.756062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690125, 41.511417, 49.048264>,  <30.944441, 41.412685, 48.817364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690125, 41.511417, 49.048264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878456, 41.864208, 49.056641>,  <31.991455, 42.075882, 49.061668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878456, 41.864208, 49.056641>,  <31.690125, 41.511417, 49.048264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878456, 41.864208, 49.056641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159750, 0.061886, 0.985216,
		0.867641, -0.467212, 0.170034,
		0.470828, 0.881976, 0.020942,
		32.019703, 42.128799, 49.062923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267738, 41.390617, 49.533367>,  <31.690125, 41.511417, 49.048264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267738, 41.390617, 49.533367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179764, 41.780327, 49.513683>,  <32.126980, 42.014153, 49.501873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179764, 41.780327, 49.513683>,  <32.267738, 41.390617, 49.533367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179764, 41.780327, 49.513683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025833, 0.056243, 0.998083,
		0.975172, 0.218245, -0.037539,
		-0.219938, 0.974272, -0.049208,
		32.113781, 42.072609, 49.498920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744068, 41.755695, 49.921486>,  <32.267738, 41.390617, 49.533367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744068, 41.755695, 49.921486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.448925, 42.025208, 49.905567>,  <32.271839, 42.186916, 49.896015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.448925, 42.025208, 49.905567>,  <32.744068, 41.755695, 49.921486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448925, 42.025208, 49.905567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190556, 0.264516, 0.945367,
		0.647495, 0.689966, -0.323569,
		-0.737861, 0.673779, -0.039796,
		32.227566, 42.227341, 49.893627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992538, 42.413273, 50.083698>,  <32.744068, 41.755695, 49.921486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992538, 42.413273, 50.083698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.605804, 42.375069, 50.178448>,  <32.373764, 42.352146, 50.235298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.605804, 42.375069, 50.178448>,  <32.992538, 42.413273, 50.083698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605804, 42.375069, 50.178448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201082, 0.287171, 0.936535,
		-0.157473, 0.953106, -0.258441,
		-0.966834, -0.095511, 0.236874,
		32.315754, 42.346416, 50.249512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818230, 43.116657, 50.435562>,  <32.992538, 42.413273, 50.083698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818230, 43.116657, 50.435562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535667, 42.853973, 50.541176>,  <32.366131, 42.696362, 50.604542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.535667, 42.853973, 50.541176>,  <32.818230, 43.116657, 50.435562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535667, 42.853973, 50.541176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132216, 0.244030, 0.960712,
		-0.695344, 0.713566, -0.085557,
		-0.706410, -0.656714, 0.264030,
		32.323746, 42.656960, 50.620384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475243, 43.546227, 50.890713>,  <32.818230, 43.116657, 50.435562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475243, 43.546227, 50.890713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.342075, 43.175869, 50.962147>,  <32.262177, 42.953655, 51.005005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.342075, 43.175869, 50.962147>,  <32.475243, 43.546227, 50.890713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342075, 43.175869, 50.962147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187073, 0.120768, 0.974894,
		-0.924212, 0.357969, 0.133003,
		-0.332919, -0.925891, 0.178581,
		32.242199, 42.898102, 51.015720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016628, 43.580723, 51.320057>,  <32.475243, 43.546227, 50.890713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016628, 43.580723, 51.320057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.120907, 43.198673, 51.376293>,  <32.183475, 42.969444, 51.410034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.120907, 43.198673, 51.376293>,  <32.016628, 43.580723, 51.320057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120907, 43.198673, 51.376293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083254, 0.167330, 0.982379,
		-0.961824, -0.244397, 0.123140,
		0.260696, -0.955128, 0.140595,
		32.199116, 42.912136, 51.418472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587360, 43.354469, 51.907330>,  <32.016628, 43.580723, 51.320057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587360, 43.354469, 51.907330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.879471, 43.084007, 51.868317>,  <32.054737, 42.921730, 51.844910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.879471, 43.084007, 51.868317>,  <31.587360, 43.354469, 51.907330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879471, 43.084007, 51.868317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267807, 0.152005, 0.951406,
		-0.628469, -0.720911, 0.292084,
		0.730278, -0.676152, -0.097535,
		32.098553, 42.881161, 51.839058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632284, 42.938313, 52.567230>,  <31.587360, 43.354469, 51.907330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632284, 42.938313, 52.567230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979675, 42.907871, 52.371288>,  <32.188110, 42.889606, 52.253723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979675, 42.907871, 52.371288>,  <31.632284, 42.938313, 52.567230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979675, 42.907871, 52.371288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493287, 0.230607, 0.838742,
		0.049132, -0.970066, 0.237818,
		0.868478, -0.076103, -0.489851,
		32.240219, 42.885040, 52.224335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.793087, 39.614269, 36.577099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062584, 39.449162, 36.822273>,  <34.224281, 39.350098, 36.969376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062584, 39.449162, 36.822273>,  <33.793087, 39.614269, 36.577099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062584, 39.449162, 36.822273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399412, 0.494435, 0.772013,
		-0.621721, -0.764953, 0.168257,
		0.673745, -0.412773, 0.612932,
		34.264706, 39.325329, 37.006153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470165, 39.238674, 37.087151>,  <33.793087, 39.614269, 36.577099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470165, 39.238674, 37.087151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823547, 39.395729, 37.189407>,  <34.035576, 39.489960, 37.250759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823547, 39.395729, 37.189407>,  <33.470165, 39.238674, 37.087151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823547, 39.395729, 37.189407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413324, 0.396207, 0.819868,
		0.220621, -0.829976, 0.512315,
		0.883453, 0.392632, 0.255637,
		34.088585, 39.513519, 37.266098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583351, 39.107792, 37.812756>,  <33.470165, 39.238674, 37.087151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583351, 39.107792, 37.812756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803707, 39.420891, 37.696945>,  <33.935921, 39.608749, 37.627460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803707, 39.420891, 37.696945>,  <33.583351, 39.107792, 37.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803707, 39.420891, 37.696945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304511, 0.511516, 0.803507,
		0.777039, -0.354483, 0.520146,
		0.550893, 0.782747, -0.289524,
		33.968975, 39.655716, 37.610088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574017, 39.473236, 38.461803>,  <33.583351, 39.107792, 37.812756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574017, 39.473236, 38.461803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725517, 39.747616, 38.213284>,  <33.816418, 39.912243, 38.064171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725517, 39.747616, 38.213284>,  <33.574017, 39.473236, 38.461803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725517, 39.747616, 38.213284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292400, 0.725621, 0.622877,
		0.878093, -0.054249, 0.475405,
		0.378754, 0.685952, -0.621301,
		33.839142, 39.953400, 38.026894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053242, 39.874722, 38.891994>,  <33.574017, 39.473236, 38.461803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053242, 39.874722, 38.891994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955688, 40.094063, 38.572037>,  <33.897156, 40.225666, 38.380062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955688, 40.094063, 38.572037>,  <34.053242, 39.874722, 38.891994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955688, 40.094063, 38.572037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191593, 0.781302, 0.594019,
		0.950690, 0.298127, -0.085488,
		-0.243886, 0.548349, -0.799895,
		33.882523, 40.258568, 38.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479427, 40.426586, 38.842007>,  <34.053242, 39.874722, 38.891994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479427, 40.426586, 38.842007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163303, 40.547001, 38.628548>,  <33.973629, 40.619251, 38.500473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163303, 40.547001, 38.628548>,  <34.479427, 40.426586, 38.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163303, 40.547001, 38.628548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202813, 0.693339, 0.691482,
		0.578163, 0.654718, -0.486900,
		-0.790313, 0.301040, -0.533648,
		33.926208, 40.637314, 38.468452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551857, 41.214214, 38.808533>,  <34.479427, 40.426586, 38.842007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551857, 41.214214, 38.808533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174377, 41.104351, 38.734787>,  <33.947887, 41.038433, 38.690540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174377, 41.104351, 38.734787>,  <34.551857, 41.214214, 38.808533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174377, 41.104351, 38.734787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325180, 0.667998, 0.669356,
		-0.060692, 0.691623, -0.719705,
		-0.943702, -0.274658, -0.184360,
		33.891266, 41.021954, 38.679478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186565, 41.891605, 38.792294>,  <34.551857, 41.214214, 38.808533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186565, 41.891605, 38.792294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910442, 41.606579, 38.842445>,  <33.744766, 41.435562, 38.872536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910442, 41.606579, 38.842445>,  <34.186565, 41.891605, 38.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910442, 41.606579, 38.842445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397172, 0.518064, 0.757538,
		-0.604753, 0.473137, -0.640637,
		-0.690310, -0.712566, 0.125384,
		33.703350, 41.392811, 38.880062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647644, 42.298416, 38.909805>,  <34.186565, 41.891605, 38.792294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647644, 42.298416, 38.909805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562576, 41.930927, 39.042904>,  <33.511536, 41.710434, 39.122765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562576, 41.930927, 39.042904>,  <33.647644, 42.298416, 38.909805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562576, 41.930927, 39.042904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190637, 0.373005, 0.908034,
		-0.958347, 0.129677, -0.254469,
		-0.212669, -0.918723, 0.332747,
		33.498775, 41.655312, 39.142727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001755, 42.386833, 39.248859>,  <33.647644, 42.298416, 38.909805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001755, 42.386833, 39.248859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138348, 42.035492, 39.382656>,  <33.220303, 41.824688, 39.462936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138348, 42.035492, 39.382656>,  <33.001755, 42.386833, 39.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138348, 42.035492, 39.382656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410314, 0.180866, 0.893829,
		-0.845594, -0.442478, -0.298637,
		0.341486, -0.878351, 0.334494,
		33.240795, 41.771988, 39.483006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439289, 42.077812, 39.501167>,  <33.001755, 42.386833, 39.248859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439289, 42.077812, 39.501167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753490, 41.906246, 39.679611>,  <32.942009, 41.803307, 39.786678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753490, 41.906246, 39.679611>,  <32.439289, 42.077812, 39.501167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753490, 41.906246, 39.679611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428739, 0.142678, 0.892090,
		-0.446286, -0.892004, -0.071821,
		0.785501, -0.428920, 0.446112,
		32.989140, 41.777569, 39.813446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154190, 41.500988, 39.978714>,  <32.439289, 42.077812, 39.501167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154190, 41.500988, 39.978714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523434, 41.558998, 40.121170>,  <32.744980, 41.593803, 40.206642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523434, 41.558998, 40.121170>,  <32.154190, 41.500988, 39.978714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523434, 41.558998, 40.121170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375758, 0.143487, 0.915542,
		0.081670, -0.978969, 0.186947,
		0.923112, 0.145020, 0.356137,
		32.800365, 41.602505, 40.228012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947254, 40.765842, 39.949787>,  <32.154190, 41.500988, 39.978714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947254, 40.765842, 39.949787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655407, 40.560379, 40.130371>,  <31.480299, 40.437103, 40.238720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655407, 40.560379, 40.130371>,  <31.947254, 40.765842, 39.949787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655407, 40.560379, 40.130371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397315, -0.218913, -0.891189,
		0.556594, -0.829600, -0.044360,
		-0.729619, -0.513656, 0.451458,
		31.436522, 40.406281, 40.265808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872458, 40.193939, 39.601696>,  <31.947254, 40.765842, 39.949787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872458, 40.193939, 39.601696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518738, 40.197384, 39.788429>,  <31.306505, 40.199451, 39.900471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518738, 40.197384, 39.788429>,  <31.872458, 40.193939, 39.601696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518738, 40.197384, 39.788429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445510, -0.314828, -0.838095,
		0.139757, -0.949110, 0.282239,
		-0.884301, 0.008611, 0.466838,
		31.253447, 40.199966, 39.928482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522158, 39.533882, 39.368568>,  <31.872458, 40.193939, 39.601696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522158, 39.533882, 39.368568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234814, 39.775452, 39.506687>,  <31.062407, 39.920395, 39.589558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234814, 39.775452, 39.506687>,  <31.522158, 39.533882, 39.368568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234814, 39.775452, 39.506687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593153, -0.272377, -0.757615,
		-0.363494, -0.749054, 0.553886,
		-0.718361, 0.603928, 0.345296,
		31.019304, 39.956631, 39.610275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988949, 39.106319, 39.577820>,  <31.522158, 39.533882, 39.368568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988949, 39.106319, 39.577820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839552, 39.467926, 39.494629>,  <30.749914, 39.684891, 39.444714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.839552, 39.467926, 39.494629>,  <30.988949, 39.106319, 39.577820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839552, 39.467926, 39.494629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617701, -0.409641, -0.671298,
		-0.692062, -0.122255, 0.711410,
		-0.373492, 0.904018, -0.207980,
		30.727505, 39.739132, 39.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376181, 39.005997, 39.656178>,  <30.988949, 39.106319, 39.577820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376181, 39.005997, 39.656178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355652, 39.342270, 39.440544>,  <30.343334, 39.544033, 39.311165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355652, 39.342270, 39.440544>,  <30.376181, 39.005997, 39.656178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355652, 39.342270, 39.440544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693516, -0.418419, -0.586482,
		-0.718611, 0.343767, 0.604503,
		-0.051323, 0.840684, -0.539088,
		30.340256, 39.594475, 39.278816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604895, 39.219971, 39.588432>,  <30.376181, 39.005997, 39.656178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604895, 39.219971, 39.588432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822004, 39.378498, 39.292236>,  <29.952271, 39.473614, 39.114517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822004, 39.378498, 39.292236>,  <29.604895, 39.219971, 39.588432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822004, 39.378498, 39.292236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630940, -0.389534, -0.670953,
		-0.554358, 0.831382, 0.038623,
		0.542773, 0.396317, -0.740493,
		29.984837, 39.497395, 39.070087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121510, 39.337597, 39.022358>,  <29.604895, 39.219971, 39.588432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121510, 39.337597, 39.022358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479486, 39.354851, 38.844723>,  <29.694273, 39.365204, 38.738140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479486, 39.354851, 38.844723>,  <29.121510, 39.337597, 39.022358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479486, 39.354851, 38.844723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379799, -0.448702, -0.808962,
		-0.234158, 0.892640, -0.385180,
		0.894943, 0.043134, -0.444091,
		29.747969, 39.367790, 38.711494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953726, 39.366508, 38.413479>,  <29.121510, 39.337597, 39.022358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953726, 39.366508, 38.413479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342094, 39.286228, 38.361275>,  <29.575115, 39.238060, 38.329952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342094, 39.286228, 38.361275>,  <28.953726, 39.366508, 38.413479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342094, 39.286228, 38.361275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211403, -0.462964, -0.860798,
		0.112339, 0.863357, -0.491929,
		0.970922, -0.200697, -0.130508,
		29.633371, 39.226021, 38.322121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955406, 39.323696, 37.706230>,  <28.953726, 39.366508, 38.413479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955406, 39.323696, 37.706230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315536, 39.175045, 37.796833>,  <29.531614, 39.085854, 37.851192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315536, 39.175045, 37.796833>,  <28.955406, 39.323696, 37.706230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315536, 39.175045, 37.796833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014879, -0.493855, -0.869417,
		0.434959, 0.786130, -0.439102,
		0.900327, -0.371627, 0.226504,
		29.585634, 39.063557, 37.864784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415392, 39.415012, 37.139164>,  <28.955406, 39.323696, 37.706230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415392, 39.415012, 37.139164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531187, 39.114265, 37.376106>,  <29.600664, 38.933815, 37.518272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531187, 39.114265, 37.376106>,  <29.415392, 39.415012, 37.139164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531187, 39.114265, 37.376106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077277, -0.598477, -0.797404,
		0.954057, 0.276614, -0.115149,
		0.289487, -0.751871, 0.592357,
		29.618032, 38.888702, 37.553814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960985, 39.099464, 36.821201>,  <29.415392, 39.415012, 37.139164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960985, 39.099464, 36.821201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832897, 38.802662, 37.056786>,  <29.756044, 38.624580, 37.198135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832897, 38.802662, 37.056786>,  <29.960985, 39.099464, 36.821201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832897, 38.802662, 37.056786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059961, -0.636330, -0.769083,
		0.945444, -0.210961, 0.248257,
		-0.320220, -0.742010, 0.588965,
		29.736832, 38.580059, 37.233475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397930, 38.502499, 36.748543>,  <29.960985, 39.099464, 36.821201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397930, 38.502499, 36.748543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052517, 38.360622, 36.891933>,  <29.845270, 38.275497, 36.977966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052517, 38.360622, 36.891933>,  <30.397930, 38.502499, 36.748543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052517, 38.360622, 36.891933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015863, -0.691391, -0.722307,
		0.504045, -0.629421, 0.591411,
		-0.863531, -0.354694, 0.358477,
		29.793457, 38.254215, 36.999477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506811, 37.797737, 36.850090>,  <30.397930, 38.502499, 36.748543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506811, 37.797737, 36.850090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106981, 37.807835, 36.844242>,  <29.867083, 37.813892, 36.840733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106981, 37.807835, 36.844242>,  <30.506811, 37.797737, 36.850090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106981, 37.807835, 36.844242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008827, -0.739392, -0.673217,
		-0.027810, -0.672802, 0.739300,
		-0.999575, 0.025247, -0.014624,
		29.807110, 37.815411, 36.839855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013838, 37.273144, 36.609238>,  <30.506811, 37.797737, 36.850090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013838, 37.273144, 36.609238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998199, 37.326218, 37.005394>,  <30.988817, 37.358063, 37.243088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998199, 37.326218, 37.005394>,  <31.013838, 37.273144, 36.609238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998199, 37.326218, 37.005394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813085, -0.580352, 0.045654,
		0.580831, -0.803484, 0.130574,
		-0.039097, 0.132685, 0.990387,
		30.986471, 37.366024, 37.302509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959860, 36.661411, 36.878548>,  <31.013838, 37.273144, 36.609238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959860, 36.661411, 36.878548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821667, 36.926735, 37.144077>,  <30.738750, 37.085930, 37.303394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821667, 36.926735, 37.144077>,  <30.959860, 36.661411, 36.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821667, 36.926735, 37.144077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900075, -0.434374, -0.034400,
		0.265529, -0.609375, 0.747099,
		-0.345483, 0.663311, 0.663822,
		30.718021, 37.125729, 37.343224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598087, 36.805737, 37.168301>,  <30.959860, 36.661411, 36.878548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598087, 36.805737, 37.168301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949982, 36.962727, 37.275658>,  <32.161118, 37.056919, 37.340073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949982, 36.962727, 37.275658>,  <31.598087, 36.805737, 37.168301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949982, 36.962727, 37.275658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343942, 0.915045, -0.210707,
		-0.328286, 0.093055, 0.939983,
		0.879734, 0.392472, 0.268391,
		32.213902, 37.080467, 37.356174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600761, 36.362896, 37.793587>,  <31.598087, 36.805737, 37.168301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600761, 36.362896, 37.793587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848804, 36.064133, 37.697590>,  <31.997631, 35.884876, 37.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848804, 36.064133, 37.697590>,  <31.600761, 36.362896, 37.793587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848804, 36.064133, 37.697590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127248, -0.206100, 0.970222,
		-0.774127, -0.632182, -0.032762,
		0.620109, -0.746906, -0.239991,
		32.034836, 35.840061, 37.625591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442034, 35.743702, 38.108143>,  <31.600761, 36.362896, 37.793587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442034, 35.743702, 38.108143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832474, 35.709118, 38.028385>,  <32.066738, 35.688366, 37.980530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832474, 35.709118, 38.028385>,  <31.442034, 35.743702, 38.108143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832474, 35.709118, 38.028385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196549, -0.040342, 0.979664,
		-0.092747, -0.995438, -0.022384,
		0.976098, -0.086462, -0.199394,
		32.125301, 35.683182, 37.968567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598490, 35.104305, 38.483273>,  <31.442034, 35.743702, 38.108143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598490, 35.104305, 38.483273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925283, 35.325764, 38.418766>,  <32.121361, 35.458641, 38.380062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925283, 35.325764, 38.418766>,  <31.598490, 35.104305, 38.483273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925283, 35.325764, 38.418766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267674, -0.116388, 0.956454,
		0.510770, -0.824576, -0.243285,
		0.816985, 0.553649, -0.161270,
		32.170380, 35.491859, 38.370384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030960, 34.868111, 39.012661>,  <31.598490, 35.104305, 38.483273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030960, 34.868111, 39.012661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209961, 35.192226, 38.861309>,  <32.317364, 35.386696, 38.770496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209961, 35.192226, 38.861309>,  <32.030960, 34.868111, 39.012661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209961, 35.192226, 38.861309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407544, 0.191838, 0.892808,
		0.796019, -0.553745, -0.244378,
		0.447507, 0.810287, -0.378382,
		32.344212, 35.435314, 38.747795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827614, 34.854706, 39.173386>,  <32.030960, 34.868111, 39.012661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827614, 34.854706, 39.173386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687794, 35.227470, 39.134716>,  <32.603901, 35.451130, 39.111515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687794, 35.227470, 39.134716>,  <32.827614, 34.854706, 39.173386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687794, 35.227470, 39.134716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325300, 0.217486, 0.920261,
		0.878632, 0.290229, -0.379174,
		-0.349551, 0.931916, -0.096678,
		32.582928, 35.507046, 39.105713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193447, 35.283722, 39.692772>,  <32.827614, 34.854706, 39.173386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193447, 35.283722, 39.692772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865841, 35.499161, 39.613655>,  <32.669277, 35.628422, 39.566185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865841, 35.499161, 39.613655>,  <33.193447, 35.283722, 39.692772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865841, 35.499161, 39.613655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060152, 0.423432, 0.903929,
		0.570605, 0.728437, -0.379196,
		-0.819019, 0.538595, -0.197796,
		32.620136, 35.660740, 39.554317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318550, 35.932301, 40.031940>,  <33.193447, 35.283722, 39.692772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318550, 35.932301, 40.031940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927872, 35.871223, 39.971607>,  <32.693466, 35.834576, 39.935406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927872, 35.871223, 39.971607>,  <33.318550, 35.932301, 40.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927872, 35.871223, 39.971607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189353, 0.282160, 0.940495,
		-0.101048, 0.947138, -0.304498,
		-0.976696, -0.152693, -0.150832,
		32.634865, 35.825417, 39.926357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958988, 36.584412, 40.279469>,  <33.318550, 35.932301, 40.031940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958988, 36.584412, 40.279469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653664, 36.326057, 40.273945>,  <32.470470, 36.171047, 40.270630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653664, 36.326057, 40.273945>,  <32.958988, 36.584412, 40.279469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653664, 36.326057, 40.273945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322628, 0.362587, 0.874324,
		-0.559703, 0.671837, -0.485147,
		-0.763311, -0.645884, -0.013813,
		32.424671, 36.132294, 40.269802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419319, 36.938839, 40.513176>,  <32.958988, 36.584412, 40.279469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419319, 36.938839, 40.513176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304321, 36.558418, 40.558502>,  <32.235321, 36.330166, 40.585697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304321, 36.558418, 40.558502>,  <32.419319, 36.938839, 40.513176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304321, 36.558418, 40.558502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390819, 0.224501, 0.892670,
		-0.874418, 0.212352, -0.436233,
		-0.287495, -0.951055, 0.113317,
		32.218071, 36.273102, 40.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642345, 36.971142, 40.753986>,  <32.419319, 36.938839, 40.513176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642345, 36.971142, 40.753986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785988, 36.605988, 40.831631>,  <31.872173, 36.386894, 40.878216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785988, 36.605988, 40.831631>,  <31.642345, 36.971142, 40.753986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785988, 36.605988, 40.831631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272718, 0.096266, 0.957266,
		-0.892563, -0.396697, -0.214391,
		0.359106, -0.912888, 0.194109,
		31.893721, 36.332123, 40.889862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150642, 36.735458, 41.199173>,  <31.642345, 36.971142, 40.753986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150642, 36.735458, 41.199173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486919, 36.526695, 41.256935>,  <31.688684, 36.401440, 41.291592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486919, 36.526695, 41.256935>,  <31.150642, 36.735458, 41.199173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486919, 36.526695, 41.256935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009698, 0.252112, 0.967650,
		-0.541428, -0.814895, 0.206886,
		0.840691, -0.521906, 0.144403,
		31.739126, 36.370125, 41.300255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961430, 36.446560, 41.867687>,  <31.150642, 36.735458, 41.199173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961430, 36.446560, 41.867687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357512, 36.413090, 41.822979>,  <31.595161, 36.393009, 41.796154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357512, 36.413090, 41.822979>,  <30.961430, 36.446560, 41.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357512, 36.413090, 41.822979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102725, -0.105577, 0.989091,
		-0.094547, -0.990886, -0.095949,
		0.990206, -0.083660, -0.111771,
		31.654573, 36.387989, 41.789448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297136, 35.866917, 42.238800>,  <30.961430, 36.446560, 41.867687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297136, 35.866917, 42.238800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584148, 36.143669, 42.206696>,  <31.756355, 36.309723, 42.187435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584148, 36.143669, 42.206696>,  <31.297136, 35.866917, 42.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584148, 36.143669, 42.206696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019137, 0.095602, 0.995236,
		0.696262, -0.715650, 0.055357,
		0.717532, 0.691886, -0.080259,
		31.799408, 36.351234, 42.182617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795788, 35.626118, 42.752075>,  <31.297136, 35.866917, 42.238800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795788, 35.626118, 42.752075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889933, 36.006477, 42.671684>,  <31.946419, 36.234695, 42.623447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889933, 36.006477, 42.671684>,  <31.795788, 35.626118, 42.752075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889933, 36.006477, 42.671684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233983, 0.145268, 0.961326,
		0.943322, -0.273285, -0.188305,
		0.235361, 0.950901, -0.200979,
		31.960541, 36.291748, 42.611389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460346, 35.740154, 43.059483>,  <31.795788, 35.626118, 42.752075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460346, 35.740154, 43.059483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280235, 36.093376, 43.006622>,  <32.172169, 36.305309, 42.974907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280235, 36.093376, 43.006622>,  <32.460346, 35.740154, 43.059483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280235, 36.093376, 43.006622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174200, 0.232036, 0.956981,
		0.875733, 0.407884, -0.258309,
		-0.450274, 0.883057, -0.132148,
		32.145153, 36.358292, 42.966976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955585, 36.145760, 43.375576>,  <32.460346, 35.740154, 43.059483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955585, 36.145760, 43.375576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621067, 36.362720, 43.343544>,  <32.420357, 36.492897, 43.324326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621067, 36.362720, 43.343544>,  <32.955585, 36.145760, 43.375576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621067, 36.362720, 43.343544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183083, 0.413940, 0.891703,
		0.516808, 0.731065, -0.445481,
		-0.836296, 0.542399, -0.080082,
		32.370178, 36.525440, 43.319519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180199, 36.814583, 43.532742>,  <32.955585, 36.145760, 43.375576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180199, 36.814583, 43.532742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783096, 36.822838, 43.580097>,  <32.544834, 36.827793, 43.608509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783096, 36.822838, 43.580097>,  <33.180199, 36.814583, 43.532742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783096, 36.822838, 43.580097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116576, 0.404657, 0.907008,
		-0.029185, 0.914235, -0.404131,
		-0.992753, 0.020641, 0.118388,
		32.485271, 36.829029, 43.615612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031815, 37.522911, 43.657402>,  <33.180199, 36.814583, 43.532742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031815, 37.522911, 43.657402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744686, 37.279579, 43.792847>,  <32.572407, 37.133579, 43.874115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744686, 37.279579, 43.792847>,  <33.031815, 37.522911, 43.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744686, 37.279579, 43.792847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033186, 0.515700, 0.856126,
		-0.695432, 0.603312, -0.390371,
		-0.717826, -0.608332, 0.338613,
		32.529339, 37.097080, 43.894432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583103, 37.953671, 44.006405>,  <33.031815, 37.522911, 43.657402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583103, 37.953671, 44.006405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477757, 37.597530, 44.154949>,  <32.414547, 37.383846, 44.244076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477757, 37.597530, 44.154949>,  <32.583103, 37.953671, 44.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477757, 37.597530, 44.154949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091898, 0.406355, 0.909082,
		-0.960309, 0.205294, -0.188841,
		-0.263366, -0.890354, 0.371360,
		32.398746, 37.330425, 44.266357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017265, 37.995525, 44.468330>,  <32.583103, 37.953671, 44.006405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017265, 37.995525, 44.468330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200115, 37.660736, 44.588669>,  <32.309826, 37.459862, 44.660873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200115, 37.660736, 44.588669>,  <32.017265, 37.995525, 44.468330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200115, 37.660736, 44.588669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235131, 0.212494, 0.948451,
		-0.857759, -0.504299, -0.099663,
		0.457125, -0.836976, 0.300845,
		32.337254, 37.409645, 44.678921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717478, 37.870853, 45.082451>,  <32.017265, 37.995525, 44.468330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717478, 37.870853, 45.082451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002419, 37.590878, 45.103020>,  <32.173382, 37.422894, 45.115360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002419, 37.590878, 45.103020>,  <31.717478, 37.870853, 45.082451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002419, 37.590878, 45.103020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199589, -0.131794, 0.970976,
		-0.672845, -0.701940, -0.233583,
		0.712352, -0.699937, 0.051423,
		32.216125, 37.380898, 45.118446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442596, 37.448090, 45.605984>,  <31.717478, 37.870853, 45.082451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442596, 37.448090, 45.605984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832155, 37.365887, 45.567436>,  <32.065891, 37.316563, 45.544308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832155, 37.365887, 45.567436>,  <31.442596, 37.448090, 45.605984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832155, 37.365887, 45.567436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056790, -0.190450, 0.980053,
		-0.219763, -0.959945, -0.173808,
		0.973899, -0.205509, -0.096369,
		32.124325, 37.304234, 45.538525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569260, 36.734608, 45.916367>,  <31.442596, 37.448090, 45.605984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569260, 36.734608, 45.916367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902344, 36.956089, 45.917519>,  <32.102196, 37.088978, 45.918209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902344, 36.956089, 45.917519>,  <31.569260, 36.734608, 45.916367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902344, 36.956089, 45.917519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057009, 0.080556, 0.995118,
		0.550766, -0.828810, 0.098645,
		0.832711, 0.553701, 0.002882,
		32.152157, 37.122200, 45.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878052, 36.523079, 46.480766>,  <31.569260, 36.734608, 45.916367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878052, 36.523079, 46.480766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070347, 36.865150, 46.403244>,  <32.185722, 37.070393, 46.356731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070347, 36.865150, 46.403244>,  <31.878052, 36.523079, 46.480766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070347, 36.865150, 46.403244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085636, 0.174177, 0.980983,
		0.872674, -0.488190, 0.010499,
		0.480735, 0.855180, -0.193807,
		32.214569, 37.121704, 46.345100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403282, 36.433365, 46.920071>,  <31.878052, 36.523079, 46.480766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403282, 36.433365, 46.920071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354595, 36.816212, 46.814919>,  <32.325382, 37.045921, 46.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354595, 36.816212, 46.814919>,  <32.403282, 36.433365, 46.920071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354595, 36.816212, 46.814919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145116, 0.279163, 0.949215,
		0.981900, 0.077386, -0.172872,
		-0.121715, 0.957120, -0.262880,
		32.318081, 37.103348, 46.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906876, 36.709126, 47.202694>,  <32.403282, 36.433365, 46.920071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906876, 36.709126, 47.202694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653503, 37.012280, 47.140244>,  <32.501480, 37.194172, 47.102776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653503, 37.012280, 47.140244>,  <32.906876, 36.709126, 47.202694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653503, 37.012280, 47.140244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026992, 0.223280, 0.974381,
		0.773327, 0.612990, -0.161889,
		-0.633432, 0.757885, -0.156123,
		32.463474, 37.239647, 47.093407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598446, 36.900341, 47.123386>,  <32.906876, 36.709126, 47.202694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598446, 36.900341, 47.123386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947903, 36.731995, 47.221054>,  <34.157578, 36.630985, 47.279655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947903, 36.731995, 47.221054>,  <33.598446, 36.900341, 47.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947903, 36.731995, 47.221054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227659, -0.089936, -0.969579,
		0.430023, 0.902653, 0.017242,
		0.873643, -0.420866, 0.244172,
		34.209995, 36.605736, 47.294304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169586, 37.218700, 46.786518>,  <33.598446, 36.900341, 47.123386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169586, 37.218700, 46.786518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341160, 36.871063, 46.885059>,  <34.444103, 36.662479, 46.944183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341160, 36.871063, 46.885059>,  <34.169586, 37.218700, 46.786518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341160, 36.871063, 46.885059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173181, -0.188545, -0.966674,
		0.886580, 0.457303, 0.069638,
		0.428934, -0.869094, 0.246356,
		34.469841, 36.610336, 46.958965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781849, 37.145279, 46.381107>,  <34.169586, 37.218700, 46.786518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781849, 37.145279, 46.381107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717373, 36.761711, 46.474480>,  <34.678688, 36.531570, 46.530502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717373, 36.761711, 46.474480>,  <34.781849, 37.145279, 46.381107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717373, 36.761711, 46.474480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086290, -0.249316, -0.964570,
		0.983144, -0.135334, 0.122932,
		-0.161188, -0.958919, 0.233435,
		34.669018, 36.474037, 46.544510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443970, 36.724022, 46.179264>,  <34.781849, 37.145279, 46.381107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443970, 36.724022, 46.179264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148602, 36.458096, 46.224457>,  <34.971382, 36.298542, 46.251572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148602, 36.458096, 46.224457>,  <35.443970, 36.724022, 46.179264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148602, 36.458096, 46.224457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201938, -0.377849, -0.903577,
		0.643399, -0.644402, 0.413261,
		-0.738417, -0.664813, 0.112978,
		34.927078, 36.258652, 46.258350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739037, 36.188789, 45.960358>,  <35.443970, 36.724022, 46.179264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739037, 36.188789, 45.960358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350178, 36.097172, 45.940456>,  <35.116863, 36.042202, 45.928516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350178, 36.097172, 45.940456>,  <35.739037, 36.188789, 45.960358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350178, 36.097172, 45.940456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124539, -0.324950, -0.937495,
		0.198566, -0.917575, 0.344424,
		-0.972143, -0.229049, -0.049750,
		35.058537, 36.028458, 45.925529>
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
