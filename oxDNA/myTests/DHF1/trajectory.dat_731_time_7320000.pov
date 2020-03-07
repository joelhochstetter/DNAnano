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
	<0.659685, 0.438208, 3.885410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.936749, 0.713001, 3.973299>,  <1.102987, 0.877877, 4.026032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.936749, 0.713001, 3.973299>,  <0.659685, 0.438208, 3.885410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.936749, 0.713001, 3.973299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194235, 0.115716, -0.974106,
		-0.694620, 0.717401, -0.053285,
		0.692659, 0.686983, 0.219723,
		1.144546, 0.919096, 4.039216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.590888, 1.064377, 3.516350>,  <0.659685, 0.438208, 3.885410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.590888, 1.064377, 3.516350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.972103, 1.000462, 3.619256>,  <1.200832, 0.962112, 3.681000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.972103, 1.000462, 3.619256>,  <0.590888, 1.064377, 3.516350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.972103, 1.000462, 3.619256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261241, 0.004026, -0.965265,
		0.153203, 0.987143, 0.045580,
		0.953038, -0.159789, 0.257265,
		1.258015, 0.952525, 3.696435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.021212, 1.642938, 3.447387>,  <0.590888, 1.064377, 3.516350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.021212, 1.642938, 3.447387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.211384, 1.295227, 3.393242>,  <1.325487, 1.086600, 3.360754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.211384, 1.295227, 3.393242>,  <1.021212, 1.642938, 3.447387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.211384, 1.295227, 3.393242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147034, 0.230214, -0.961968,
		0.867380, 0.437445, 0.237264,
		0.475429, -0.869278, -0.135364,
		1.354013, 1.034444, 3.352633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.726991, 1.746107, 3.244483>,  <1.021212, 1.642938, 3.447387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.726991, 1.746107, 3.244483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603619, 1.392914, 3.102942>,  <1.529595, 1.180998, 3.018017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603619, 1.392914, 3.102942>,  <1.726991, 1.746107, 3.244483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.603619, 1.392914, 3.102942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282527, 0.270171, -0.920427,
		0.908323, -0.383860, 0.166138,
		-0.308430, -0.882983, -0.353854,
		1.511090, 1.128019, 2.996785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330813, 1.507048, 2.956939>,  <1.726991, 1.746107, 3.244483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330813, 1.507048, 2.956939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.003387, 1.337849, 2.801492>,  <1.806932, 1.236329, 2.708223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.003387, 1.337849, 2.801492>,  <2.330813, 1.507048, 2.956939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.003387, 1.337849, 2.801492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362554, 0.144295, -0.920724,
		0.445540, -0.894568, 0.035244,
		-0.818565, -0.422998, -0.388619,
		1.757818, 1.210949, 2.684906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.560785, 1.044302, 2.380183>,  <2.330813, 1.507048, 2.956939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.560785, 1.044302, 2.380183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.179924, 1.134693, 2.297877>,  <1.951407, 1.188928, 2.248494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.179924, 1.134693, 2.297877>,  <2.560785, 1.044302, 2.380183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.179924, 1.134693, 2.297877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239293, 0.132417, -0.961876,
		-0.190117, -0.965090, -0.180156,
		-0.952153, 0.225979, -0.205765,
		1.894278, 1.202487, 2.236148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.518022, 0.842269, 1.737409>,  <2.560785, 1.044302, 2.380183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.518022, 0.842269, 1.737409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.189171, 1.068184, 1.766032>,  <1.991860, 1.203733, 1.783206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.189171, 1.068184, 1.766032>,  <2.518022, 0.842269, 1.737409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.189171, 1.068184, 1.766032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025084, 0.089634, -0.995659,
		-0.568750, -0.820354, -0.059524,
		-0.822128, 0.564788, 0.071557,
		1.942532, 1.237620, 1.787499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.236101, 0.664955, 1.139021>,  <2.518022, 0.842269, 1.737409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.236101, 0.664955, 1.139021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.083237, 1.008106, 1.276424>,  <1.991518, 1.213997, 1.358867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.083237, 1.008106, 1.276424>,  <2.236101, 0.664955, 1.139021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.083237, 1.008106, 1.276424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044985, 0.388555, -0.920327,
		-0.923000, -0.336260, -0.187082,
		-0.382161, 0.857878, 0.343510,
		1.968588, 1.265470, 1.379477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.524703, 1.663111, 0.302023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.243675, 1.945282, 0.339483>,  <2.075059, 2.114584, 0.361959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.243675, 1.945282, 0.339483>,  <2.524703, 1.663111, 0.302023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.243675, 1.945282, 0.339483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124482, -0.251404, 0.959844,
		0.700643, 0.662699, 0.264441,
		-0.702569, 0.705426, 0.093651,
		2.032905, 2.156910, 0.367579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.625568, 2.047030, 0.925102>,  <2.524703, 1.663111, 0.302023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.625568, 2.047030, 0.925102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.234978, 2.048756, 0.838867>,  <2.000624, 2.049791, 0.787126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.234978, 2.048756, 0.838867>,  <2.625568, 2.047030, 0.925102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.234978, 2.048756, 0.838867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204603, -0.334148, 0.920045,
		-0.068069, 0.942511, 0.327169,
		-0.976475, 0.004313, -0.215586,
		1.942035, 2.050050, 0.774191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.226365, 2.334544, 1.601668>,  <2.625568, 2.047030, 0.925102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.226365, 2.334544, 1.601668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.992683, 2.105350, 1.371748>,  <1.852474, 1.967835, 1.233796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.992683, 2.105350, 1.371748>,  <2.226365, 2.334544, 1.601668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.992683, 2.105350, 1.371748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205679, -0.580585, 0.787793,
		-0.785112, 0.578457, 0.221330,
		-0.584204, -0.572983, -0.574801,
		1.817422, 1.933456, 1.199308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.501519, 2.402604, 1.844162>,  <2.226365, 2.334544, 1.601668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.501519, 2.402604, 1.844162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.618866, 2.056099, 1.682409>,  <1.689274, 1.848196, 1.585358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.618866, 2.056099, 1.682409>,  <1.501519, 2.402604, 1.844162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.618866, 2.056099, 1.682409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440520, -0.497901, 0.747018,
		-0.848457, -0.041012, -0.527674,
		0.293366, -0.866264, -0.404381,
		1.706876, 1.796220, 1.561095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.894423, 1.963228, 1.960187>,  <1.501519, 2.402604, 1.844162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.894423, 1.963228, 1.960187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.206947, 1.720592, 1.901392>,  <1.394462, 1.575011, 1.866115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.206947, 1.720592, 1.901392>,  <0.894423, 1.963228, 1.960187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.206947, 1.720592, 1.901392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381155, -0.650203, 0.657235,
		-0.494242, -0.457480, -0.739214,
		0.781311, -0.606588, -0.146987,
		1.441340, 1.538616, 1.857296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.618473, 1.361596, 2.031155>,  <0.894423, 1.963228, 1.960187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.618473, 1.361596, 2.031155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.008659, 1.291100, 2.083923>,  <1.242772, 1.248802, 2.115584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.008659, 1.291100, 2.083923>,  <0.618473, 1.361596, 2.031155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.008659, 1.291100, 2.083923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207778, -0.539034, 0.816254,
		-0.072748, -0.823639, -0.562429,
		0.975467, -0.176241, 0.131921,
		1.301299, 1.238227, 2.123500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.631438, 0.676876, 2.213982>,  <0.618473, 1.361596, 2.031155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.631438, 0.676876, 2.213982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980919, 0.828682, 2.335711>,  <1.190607, 0.919766, 2.408748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980919, 0.828682, 2.335711>,  <0.631438, 0.676876, 2.213982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980919, 0.828682, 2.335711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098768, -0.474161, 0.874881,
		0.476329, -0.794442, -0.376792,
		0.873702, 0.379516, 0.304322,
		1.243030, 0.942537, 2.427007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.020864, 0.077764, 2.441831>,  <0.631438, 0.676875, 2.213982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.020864, 0.077764, 2.441831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.135002, 0.417084, 2.620253>,  <1.203485, 0.620676, 2.727306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.135002, 0.417084, 2.620253>,  <1.020864, 0.077764, 2.441831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.135002, 0.417084, 2.620253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093718, -0.438478, 0.893842,
		0.953831, -0.296858, -0.045617,
		0.285346, 0.848300, 0.446055,
		1.220606, 0.671574, 2.754069>
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
