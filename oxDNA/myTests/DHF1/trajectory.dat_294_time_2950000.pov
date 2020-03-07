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
	<1.762730, 0.349570, 2.135618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.631615, 0.596695, 2.421516>,  <1.552945, 0.744970, 2.593055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.631615, 0.596695, 2.421516>,  <1.762730, 0.349570, 2.135618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.631615, 0.596695, 2.421516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858209, 0.511038, -0.048149,
		-0.395009, 0.597618, -0.697725,
		-0.327789, 0.617813, 0.714745,
		1.533278, 0.782039, 2.635940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.799317, 1.011860, 1.791091>,  <1.762730, 0.349570, 2.135618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.799317, 1.011860, 1.791091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.872601, 0.991196, 2.183777>,  <1.916571, 0.978797, 2.419389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.872601, 0.991196, 2.183777>,  <1.799317, 1.011860, 1.791091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.872601, 0.991196, 2.183777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926703, 0.342374, -0.154926,
		-0.328111, 0.938142, 0.110600,
		0.183209, -0.051661, 0.981716,
		1.927563, 0.975697, 2.478292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.235697, 1.522874, 1.929504>,  <1.799317, 1.011860, 1.791091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.235697, 1.522874, 1.929504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.295155, 1.261734, 2.226608>,  <2.330829, 1.105050, 2.404871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.295155, 1.261734, 2.226608>,  <2.235697, 1.522874, 1.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.295155, 1.261734, 2.226608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986421, 0.044838, -0.157995,
		0.069843, 0.756160, 0.650649,
		0.148643, -0.652849, 0.742761,
		2.339747, 1.065879, 2.449436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629158, 1.922896, 2.343887>,  <2.235697, 1.522874, 1.929504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629158, 1.922896, 2.343887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.671337, 1.528137, 2.392738>,  <2.696645, 1.291282, 2.422049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.671337, 1.528137, 2.392738>,  <2.629158, 1.922896, 2.343887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.671337, 1.528137, 2.392738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994182, 0.101910, -0.034886,
		0.021983, 0.125097, 0.991901,
		0.105448, -0.986897, 0.122129,
		2.702972, 1.232068, 2.429377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.209007, 1.923972, 2.727364>,  <2.629158, 1.922896, 2.343887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.209007, 1.923972, 2.727364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.133598, 1.568420, 2.560341>,  <3.088353, 1.355090, 2.460127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.133598, 1.568420, 2.560341>,  <3.209007, 1.923972, 2.727364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.133598, 1.568420, 2.560341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978137, -0.131939, -0.160749,
		0.087794, -0.438733, 0.894319,
		-0.188522, -0.888879, -0.417557,
		3.077042, 1.301757, 2.435074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.576802, 1.389462, 3.162597>,  <3.209007, 1.923972, 2.727364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.576802, 1.389462, 3.162597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.523571, 1.231033, 2.799187>,  <3.491633, 1.135976, 2.581141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.523571, 1.231033, 2.799187>,  <3.576802, 1.389462, 3.162597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.523571, 1.231033, 2.799187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979389, -0.193091, -0.059278,
		-0.151950, -0.897687, 0.413605,
		-0.133076, -0.396072, -0.908525,
		3.483648, 1.112212, 2.526629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.868498, 0.697950, 3.144673>,  <3.576802, 1.389462, 3.162597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.868498, 0.697950, 3.144673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.866184, 0.782349, 2.753685>,  <3.864796, 0.832988, 2.519092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.866184, 0.782349, 2.753685>,  <3.868498, 0.697950, 3.144673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.866184, 0.782349, 2.753685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882725, -0.458207, -0.104131,
		-0.469855, -0.863439, -0.183602,
		-0.005783, 0.210997, -0.977470,
		3.864449, 0.845648, 2.460444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.172256, 0.184200, 2.721253>,  <3.868498, 0.697950, 3.144673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.172256, 0.184200, 2.721253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212742, 0.519897, 2.507553>,  <4.237033, 0.721316, 2.379333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.212742, 0.519897, 2.507553>,  <4.172256, 0.184200, 2.721253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.212742, 0.519897, 2.507553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992788, -0.119886, -0.000243,
		-0.064253, -0.530373, -0.845326,
		0.101214, 0.839245, -0.534251,
		4.243106, 0.771671, 2.347278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.923859, 0.586528, 1.965966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.808335, 0.965530, 1.911087>,  <5.739021, 1.192932, 1.878160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.808335, 0.965530, 1.911087>,  <5.923859, 0.586528, 1.965966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.808335, 0.965530, 1.911087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948331, -0.302788, -0.094800,
		-0.131366, 0.102730, 0.985997,
		-0.288809, 0.947506, -0.137198,
		5.721693, 1.249782, 1.869928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.386370, 0.907950, 2.457251>,  <5.923859, 0.586528, 1.965966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.386370, 0.907950, 2.457251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.362556, 1.109543, 2.112587>,  <5.348267, 1.230499, 1.905789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.362556, 1.109543, 2.112587>,  <5.386370, 0.907950, 2.457251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.362556, 1.109543, 2.112587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991186, -0.132182, -0.008827,
		-0.118345, 0.853539, 0.507410,
		-0.059536, 0.503983, -0.861659,
		5.344695, 1.260738, 1.854089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.045254, 1.655038, 2.508813>,  <5.386370, 0.907950, 2.457251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.045254, 1.655038, 2.508813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.002282, 1.448547, 2.168938>,  <4.976499, 1.324653, 1.965013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.002282, 1.448547, 2.168938>,  <5.045254, 1.655038, 2.508813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.002282, 1.448547, 2.168938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968327, -0.139420, 0.207136,
		-0.225392, 0.845028, -0.484897,
		-0.107431, -0.516226, -0.849688,
		4.970053, 1.293679, 1.914031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.575139, 1.953154, 2.058462>,  <5.045254, 1.655038, 2.508813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.575139, 1.953154, 2.058462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.581790, 1.559433, 1.988182>,  <4.585781, 1.323200, 1.946014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.581790, 1.559433, 1.988182>,  <4.575139, 1.953154, 2.058462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.581790, 1.559433, 1.988182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987505, -0.043709, 0.151405,
		-0.156708, 0.170988, -0.972731,
		0.016628, -0.984303, -0.175701,
		4.586779, 1.264142, 1.935472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.123520, 1.745194, 1.483148>,  <4.575139, 1.953154, 2.058462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.123520, 1.745194, 1.483148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.168624, 1.426437, 1.720551>,  <4.195686, 1.235183, 1.862992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.168624, 1.426437, 1.720551>,  <4.123520, 1.745194, 1.483148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.168624, 1.426437, 1.720551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988000, -0.026471, 0.152168,
		-0.105551, -0.603541, -0.790314,
		0.112760, -0.796892, 0.593505,
		4.202452, 1.187370, 1.898602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.632276, 1.107305, 1.230635>,  <4.123520, 1.745194, 1.483148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.632276, 1.107305, 1.230635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719451, 1.008957, 1.608429>,  <3.771756, 0.949948, 1.835105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719451, 1.008957, 1.608429>,  <3.632276, 1.107305, 1.230635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719451, 1.008957, 1.608429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974345, 0.000883, 0.225057,
		-0.056169, -0.969302, -0.239369,
		0.217937, -0.245870, 0.944485,
		3.784832, 0.935196, 1.891774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.301852, 0.500468, 1.376704>,  <3.632276, 1.107305, 1.230635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.301852, 0.500468, 1.376704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.354056, 0.687042, 1.726654>,  <3.385379, 0.798987, 1.936624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.354056, 0.687042, 1.726654>,  <3.301852, 0.500468, 1.376704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.354056, 0.687042, 1.726654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981621, -0.063137, 0.180095,
		0.139239, -0.882300, 0.449622,
		0.130510, 0.466434, 0.874875,
		3.393209, 0.826973, 1.989116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.973662, 0.082654, 1.881899>,  <3.301852, 0.500468, 1.376704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.973662, 0.082654, 1.881899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.001323, 0.449280, 2.039444>,  <3.017919, 0.669255, 2.133971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.001323, 0.449280, 2.039444>,  <2.973662, 0.082654, 1.881899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.001323, 0.449280, 2.039444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996175, 0.084582, -0.021930,
		-0.053414, -0.390839, 0.918908,
		0.069152, 0.916565, 0.393862,
		3.022069, 0.724249, 2.157603>
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
