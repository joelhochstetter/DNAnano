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
	<24.153450, 34.963383, 34.859512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445290, 34.828995, 35.097778>,  <24.620394, 34.748360, 35.240738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445290, 34.828995, 35.097778>,  <24.153450, 34.963383, 34.859512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.445290, 34.828995, 35.097778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607993, -0.080113, -0.789890,
		0.313101, 0.938459, 0.145818,
		0.729597, -0.335971, 0.595660,
		24.664169, 34.728203, 35.276478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364031, 35.486439, 35.324219>,  <24.153450, 34.963383, 34.859512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364031, 35.486439, 35.324219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561247, 35.776844, 35.515976>,  <24.679577, 35.951088, 35.631031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561247, 35.776844, 35.515976>,  <24.364031, 35.486439, 35.324219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561247, 35.776844, 35.515976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657368, -0.671819, 0.341359,
		0.569894, 0.146832, -0.808493,
		0.493039, 0.726016, 0.479389,
		24.709158, 35.994648, 35.659794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011936, 35.601295, 35.021400>,  <24.364031, 35.486439, 35.324219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011936, 35.601295, 35.021400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057739, 35.782013, 35.375298>,  <25.085220, 35.890442, 35.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057739, 35.782013, 35.375298>,  <25.011936, 35.601295, 35.021400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057739, 35.782013, 35.375298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921845, -0.380259, 0.074868,
		0.370257, 0.807024, -0.460024,
		0.114508, 0.451791, 0.884744,
		25.092093, 35.917549, 35.640720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659893, 36.020267, 35.070370>,  <25.011936, 35.601295, 35.021400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659893, 36.020267, 35.070370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552126, 35.932255, 35.445389>,  <25.487465, 35.879448, 35.670403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552126, 35.932255, 35.445389>,  <25.659893, 36.020267, 35.070370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552126, 35.932255, 35.445389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935163, -0.292253, 0.200144,
		0.229963, 0.930684, 0.284506,
		-0.269419, -0.220034, 0.937549,
		25.471300, 35.866245, 35.726654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308567, 36.106373, 35.368458>,  <25.659893, 36.020267, 35.070370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308567, 36.106373, 35.368458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096085, 35.897102, 35.635021>,  <25.968596, 35.771542, 35.794960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096085, 35.897102, 35.635021>,  <26.308567, 36.106373, 35.368458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096085, 35.897102, 35.635021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845143, -0.382532, 0.373365,
		0.059588, 0.761549, 0.645363,
		-0.531208, -0.523176, 0.666412,
		25.936722, 35.740150, 35.834946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459227, 36.232582, 36.218761>,  <26.308567, 36.106373, 35.368458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459227, 36.232582, 36.218761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344501, 35.872971, 36.086411>,  <26.275665, 35.657204, 36.007000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344501, 35.872971, 36.086411>,  <26.459227, 36.232582, 36.218761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344501, 35.872971, 36.086411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808266, -0.412499, 0.420180,
		-0.514241, -0.146920, 0.844968,
		-0.286815, -0.899032, -0.330874,
		26.258457, 35.603260, 35.987148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621159, 35.921776, 36.812168>,  <26.459227, 36.232582, 36.218761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621159, 35.921776, 36.812168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626593, 35.654160, 36.514927>,  <26.629852, 35.493591, 36.336582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626593, 35.654160, 36.514927>,  <26.621159, 35.921776, 36.812168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626593, 35.654160, 36.514927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907782, -0.303331, 0.289693,
		-0.419222, -0.678512, 0.603220,
		0.013584, -0.669038, -0.743104,
		26.630669, 35.453449, 36.291996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792801, 35.281620, 37.076790>,  <26.621159, 35.921776, 36.812168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792801, 35.281620, 37.076790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894821, 35.286282, 36.690048>,  <26.956034, 35.289078, 36.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894821, 35.286282, 36.690048>,  <26.792801, 35.281620, 37.076790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894821, 35.286282, 36.690048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920026, -0.310571, 0.238951,
		-0.297493, -0.950479, -0.089934,
		0.255049, 0.011655, -0.966858,
		26.971336, 35.289780, 36.399990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077597, 34.599995, 36.812252>,  <26.792801, 35.281620, 37.076790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077597, 34.599995, 36.812252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234558, 34.907021, 36.609528>,  <27.328735, 35.091236, 36.487892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234558, 34.907021, 36.609528>,  <27.077597, 34.599995, 36.812252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234558, 34.907021, 36.609528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919694, -0.335504, 0.203960,
		-0.013485, -0.546148, -0.837580,
		0.392404, 0.767567, -0.506814,
		27.352280, 35.137291, 36.457485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675303, 34.372536, 36.531940>,  <27.077597, 34.599995, 36.812252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675303, 34.372536, 36.531940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739824, 34.761940, 36.467125>,  <27.778538, 34.995583, 36.428234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739824, 34.761940, 36.467125>,  <27.675303, 34.372536, 36.531940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739824, 34.761940, 36.467125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926086, -0.092559, 0.365785,
		0.341097, -0.209067, -0.916484,
		0.161302, 0.973511, -0.162043,
		27.788216, 35.053993, 36.418510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246376, 34.427696, 36.057045>,  <27.675303, 34.372536, 36.531940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246376, 34.427696, 36.057045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223293, 34.790226, 36.224495>,  <28.209444, 35.007744, 36.324966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223293, 34.790226, 36.224495>,  <28.246376, 34.427696, 36.057045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223293, 34.790226, 36.224495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993794, 0.012203, 0.110568,
		0.095102, 0.422410, -0.901402,
		-0.057705, 0.906323, 0.418628,
		28.205982, 35.062122, 36.350082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822674, 34.823597, 35.758656>,  <28.246376, 34.427696, 36.057045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822674, 34.823597, 35.758656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706745, 34.981129, 36.107574>,  <28.637188, 35.075645, 36.316925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706745, 34.981129, 36.107574>,  <28.822674, 34.823597, 35.758656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706745, 34.981129, 36.107574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955672, 0.168522, 0.241436,
		-0.051918, 0.903604, -0.425211,
		-0.289820, 0.393827, 0.872298,
		28.619799, 35.099277, 36.369263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444555, 34.514759, 36.086063>,  <28.822674, 34.823597, 35.758656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444555, 34.514759, 36.086063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578144, 34.821423, 36.305408>,  <29.658298, 35.005421, 36.437016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578144, 34.821423, 36.305408>,  <29.444555, 34.514759, 36.086063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578144, 34.821423, 36.305408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901316, 0.430001, -0.052243,
		-0.275848, -0.476797, 0.834609,
		0.333973, 0.766658, 0.548359,
		29.678335, 35.051418, 36.469917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919338, 34.630371, 36.522659>,  <29.444555, 34.514759, 36.086063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919338, 34.630371, 36.522659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111195, 34.980988, 36.538795>,  <29.226309, 35.191357, 36.548477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111195, 34.980988, 36.538795>,  <28.919338, 34.630371, 36.522659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111195, 34.980988, 36.538795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874725, 0.481269, -0.056894,
		-0.069286, -0.008001, 0.997565,
		0.479641, 0.876536, 0.040344,
		29.255087, 35.243950, 36.550900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674833, 35.084080, 37.066994>,  <28.919338, 34.630371, 36.522659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674833, 35.084080, 37.066994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810524, 35.303947, 36.761631>,  <28.891937, 35.435867, 36.578411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810524, 35.303947, 36.761631>,  <28.674833, 35.084080, 37.066994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810524, 35.303947, 36.761631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864796, 0.501591, -0.023123,
		0.370210, 0.668038, 0.645500,
		0.339224, 0.549665, -0.763410,
		28.912291, 35.468845, 36.532608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398506, 35.733047, 37.197269>,  <28.674833, 35.084080, 37.066994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398506, 35.733047, 37.197269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494961, 35.653763, 36.817257>,  <28.552834, 35.606194, 36.589249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494961, 35.653763, 36.817257>,  <28.398506, 35.733047, 37.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494961, 35.653763, 36.817257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903937, 0.310398, -0.294196,
		0.353201, 0.929714, -0.104318,
		0.241138, -0.198207, -0.950035,
		28.567303, 35.594299, 36.532246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348400, 36.294464, 36.669415>,  <28.398506, 35.733047, 37.197269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348400, 36.294464, 36.669415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263844, 35.921841, 36.551090>,  <28.213110, 35.698265, 36.480095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263844, 35.921841, 36.551090>,  <28.348400, 36.294464, 36.669415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263844, 35.921841, 36.551090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917737, 0.293301, -0.267831,
		0.336264, 0.214862, -0.916930,
		-0.211390, -0.931562, -0.295813,
		28.200426, 35.642372, 36.462345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976517, 36.242073, 36.014439>,  <28.348400, 36.294464, 36.669415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976517, 36.242073, 36.014439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914284, 35.879128, 36.170631>,  <27.876944, 35.661358, 36.264347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914284, 35.879128, 36.170631>,  <27.976517, 36.242073, 36.014439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914284, 35.879128, 36.170631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885043, -0.047530, -0.463077,
		0.438740, -0.417644, -0.795663,
		-0.155584, -0.907367, 0.390486,
		27.867609, 35.606918, 36.287777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777651, 35.860695, 35.478252>,  <27.976517, 36.242073, 36.014439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777651, 35.860695, 35.478252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641266, 35.648605, 35.788765>,  <27.559435, 35.521351, 35.975071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641266, 35.648605, 35.788765>,  <27.777651, 35.860695, 35.478252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641266, 35.648605, 35.788765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917915, 0.009528, -0.396662,
		0.202924, -0.847803, -0.489951,
		-0.340960, -0.530225, 0.776278,
		27.538979, 35.489536, 36.021648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264261, 35.451443, 35.143387>,  <27.777651, 35.860695, 35.478252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264261, 35.451443, 35.143387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183779, 35.425343, 35.534336>,  <27.135489, 35.409683, 35.768906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183779, 35.425343, 35.534336>,  <27.264261, 35.451443, 35.143387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183779, 35.425343, 35.534336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979214, -0.012691, -0.202432,
		0.025614, -0.997788, -0.061346,
		-0.201206, -0.065256, 0.977373,
		27.123417, 35.405769, 35.827549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210075, 34.728981, 35.348095>,  <27.264261, 35.451443, 35.143387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210075, 34.728981, 35.348095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092205, 34.808910, 35.721882>,  <27.021482, 34.856869, 35.946156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092205, 34.808910, 35.721882>,  <27.210075, 34.728981, 35.348095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092205, 34.808910, 35.721882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941564, 0.106254, -0.319636,
		-0.163162, -0.974054, 0.156836,
		-0.294678, 0.199823, 0.934471,
		27.003801, 34.868858, 36.002224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571753, 34.539200, 35.389481>,  <27.210075, 34.728981, 35.348095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571753, 34.539200, 35.389481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576481, 34.819042, 35.675255>,  <26.579317, 34.986946, 35.846718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576481, 34.819042, 35.675255>,  <26.571753, 34.539200, 35.389481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576481, 34.819042, 35.675255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925635, 0.277915, -0.256833,
		-0.378233, -0.658269, 0.650862,
		0.011819, 0.699603, 0.714433,
		26.580027, 35.028923, 35.889584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079918, 34.339890, 35.838318>,  <26.571753, 34.539200, 35.389481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079918, 34.339890, 35.838318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124853, 34.735687, 35.874722>,  <26.151815, 34.973167, 35.896564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124853, 34.735687, 35.874722>,  <26.079918, 34.339890, 35.838318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124853, 34.735687, 35.874722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940277, 0.135474, -0.312291,
		-0.321339, -0.050486, 0.945618,
		0.112340, 0.989493, 0.091004,
		26.158556, 35.032536, 35.902023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438801, 34.696629, 36.233009>,  <26.079918, 34.339890, 35.838318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438801, 34.696629, 36.233009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638624, 34.912014, 35.961571>,  <25.758518, 35.041245, 35.798706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638624, 34.912014, 35.961571>,  <25.438801, 34.696629, 36.233009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638624, 34.912014, 35.961571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863449, 0.246202, -0.440274,
		-0.069999, 0.805878, 0.587929,
		0.499556, 0.538465, -0.678600,
		25.788490, 35.073555, 35.757992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189524, 35.129433, 36.784912>,  <25.438801, 34.696629, 36.233009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189524, 35.129433, 36.784912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412613, 35.296783, 36.498161>,  <25.546467, 35.397194, 36.326111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412613, 35.296783, 36.498161>,  <25.189524, 35.129433, 36.784912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412613, 35.296783, 36.498161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608805, 0.793248, -0.010697,
		0.564182, 0.442401, 0.697122,
		0.557723, 0.418376, -0.716873,
		25.579929, 35.422295, 36.283100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114935, 35.784477, 36.944851>,  <25.189524, 35.129433, 36.784912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114935, 35.784477, 36.944851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223606, 35.782890, 36.559898>,  <25.288809, 35.781937, 36.328926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223606, 35.782890, 36.559898>,  <25.114935, 35.784477, 36.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223606, 35.782890, 36.559898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629289, 0.755856, -0.180767,
		0.728138, 0.654725, 0.202852,
		0.271680, -0.003970, -0.962380,
		25.305111, 35.781700, 36.271183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232319, 36.441139, 36.839981>,  <25.114935, 35.784477, 36.944851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232319, 36.441139, 36.839981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170496, 36.276093, 36.480904>,  <25.133402, 36.177067, 36.265457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170496, 36.276093, 36.480904>,  <25.232319, 36.441139, 36.839981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170496, 36.276093, 36.480904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635510, 0.737216, -0.229434,
		0.756465, 0.535035, -0.376163,
		-0.154558, -0.412614, -0.897698,
		25.124128, 36.152309, 36.211594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937632, 36.543835, 37.153244>,  <25.232319, 36.441139, 36.839981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937632, 36.543835, 37.153244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677013, 36.554031, 37.456516>,  <25.520643, 36.560150, 37.638481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677013, 36.554031, 37.456516>,  <25.937632, 36.543835, 37.153244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677013, 36.554031, 37.456516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083433, 0.995780, 0.038219,
		-0.754009, 0.088159, -0.650921,
		-0.651544, 0.025491, 0.758183,
		25.481550, 36.561680, 37.683971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667212, 36.752426, 37.410740>,  <25.937632, 36.543835, 37.153244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667212, 36.752426, 37.410740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931101, 37.052406, 37.391384>,  <27.089436, 37.232395, 37.379772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931101, 37.052406, 37.391384>,  <26.667212, 36.752426, 37.410740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931101, 37.052406, 37.391384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751508, 0.658395, -0.041855,
		0.000469, 0.063977, 0.997951,
		0.659724, 0.749949, -0.048388,
		27.129019, 37.277390, 37.376869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419500, 37.206264, 37.929905>,  <26.667212, 36.752426, 37.410740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419500, 37.206264, 37.929905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620569, 37.378639, 37.630142>,  <26.741211, 37.482063, 37.450283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620569, 37.378639, 37.630142>,  <26.419500, 37.206264, 37.929905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620569, 37.378639, 37.630142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763483, 0.627917, -0.151041,
		0.405479, 0.648087, 0.644648,
		0.502673, 0.430934, -0.749410,
		26.771372, 37.507919, 37.405319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422529, 37.999939, 38.056808>,  <26.419500, 37.206264, 37.929905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422529, 37.999939, 38.056808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458288, 37.925869, 37.665356>,  <26.479744, 37.881428, 37.430485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458288, 37.925869, 37.665356>,  <26.422529, 37.999939, 38.056808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458288, 37.925869, 37.665356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850888, 0.496504, -0.171677,
		0.517684, 0.848053, -0.113175,
		0.089400, -0.185174, -0.978631,
		26.485107, 37.870316, 37.371765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277462, 38.567390, 37.694489>,  <26.422529, 37.999939, 38.056808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277462, 38.567390, 37.694489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258602, 38.312279, 37.386978>,  <26.247286, 38.159214, 37.202473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258602, 38.312279, 37.386978>,  <26.277462, 38.567390, 37.694489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258602, 38.312279, 37.386978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680939, 0.583614, -0.442400,
		0.730821, 0.502632, -0.461803,
		-0.047151, -0.637775, -0.768778,
		26.244457, 38.120945, 37.156345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402477, 38.899590, 37.079536>,  <26.277462, 38.567390, 37.694489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402477, 38.899590, 37.079536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191612, 38.574806, 36.979279>,  <26.065092, 38.379936, 36.919125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191612, 38.574806, 36.979279>,  <26.402477, 38.899590, 37.079536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191612, 38.574806, 36.979279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660297, 0.577067, -0.480626,
		0.534887, -0.087869, -0.840342,
		-0.527166, -0.811956, -0.250646,
		26.033463, 38.331219, 36.904083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264700, 39.108692, 36.425507>,  <26.402477, 38.899590, 37.079536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264700, 39.108692, 36.425507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028961, 38.807915, 36.543663>,  <25.887518, 38.627449, 36.614555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028961, 38.807915, 36.543663>,  <26.264700, 39.108692, 36.425507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028961, 38.807915, 36.543663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751780, 0.376573, -0.541312,
		0.295797, -0.541091, -0.787226,
		-0.589348, -0.751939, 0.295393,
		25.852158, 38.582333, 36.632278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287483, 38.455349, 36.419735>,  <26.264700, 39.108692, 36.425507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287483, 38.455349, 36.419735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119404, 38.103508, 36.330532>,  <26.018557, 37.892403, 36.277012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119404, 38.103508, 36.330532>,  <26.287483, 38.455349, 36.419735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119404, 38.103508, 36.330532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578490, 0.449003, -0.680988,
		0.699131, -0.157141, -0.697511,
		-0.420196, -0.879604, -0.223008,
		25.993345, 37.839626, 36.263630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366642, 38.421783, 35.742748>,  <26.287483, 38.455349, 36.419735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366642, 38.421783, 35.742748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058512, 38.230957, 35.911983>,  <25.873634, 38.116459, 36.013523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058512, 38.230957, 35.911983>,  <26.366642, 38.421783, 35.742748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058512, 38.230957, 35.911983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611952, 0.366628, -0.700785,
		0.179207, -0.798742, -0.574366,
		-0.770325, -0.477070, 0.423089,
		25.827414, 38.087837, 36.038910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910139, 38.253475, 35.265465>,  <26.366642, 38.421783, 35.742748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910139, 38.253475, 35.265465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679550, 38.268112, 35.591984>,  <25.541197, 38.276894, 35.787895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679550, 38.268112, 35.591984>,  <25.910139, 38.253475, 35.265465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679550, 38.268112, 35.591984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695995, 0.501398, -0.513995,
		-0.428099, -0.864442, -0.263573,
		-0.576474, 0.036595, 0.816295,
		25.506607, 38.279091, 35.836872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214119, 38.109295, 34.967258>,  <25.910139, 38.253475, 35.265465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214119, 38.109295, 34.967258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181171, 38.281738, 35.326672>,  <25.161404, 38.385204, 35.542320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181171, 38.281738, 35.326672>,  <25.214119, 38.109295, 34.967258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181171, 38.281738, 35.326672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756533, 0.559855, -0.337966,
		-0.648748, -0.707606, 0.280036,
		-0.082367, 0.431111, 0.898531,
		25.156462, 38.411072, 35.596230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.384501, 38.097969, 35.142296>,  <25.214119, 38.109295, 34.967258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.384501, 38.097969, 35.142296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588345, 38.373589, 35.348408>,  <24.710651, 38.538960, 35.472073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588345, 38.373589, 35.348408>,  <24.384501, 38.097969, 35.142296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588345, 38.373589, 35.348408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693296, 0.683516, -0.228354,
		-0.509547, -0.240867, 0.826042,
		0.509610, 0.689049, 0.515276,
		24.741228, 38.580303, 35.502991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997711, 38.415291, 35.671494>,  <24.384501, 38.097969, 35.142296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997711, 38.415291, 35.671494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268902, 38.674267, 35.532253>,  <24.431616, 38.829651, 35.448711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268902, 38.674267, 35.532253>,  <23.997711, 38.415291, 35.671494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268902, 38.674267, 35.532253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717949, 0.684868, -0.124517,
		0.157783, 0.334335, 0.929153,
		0.677977, 0.647438, -0.348096,
		24.472296, 38.868500, 35.427826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256475, 38.984627, 36.170471>,  <23.997711, 38.415291, 35.671494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256475, 38.984627, 36.170471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224627, 39.064831, 35.779892>,  <24.205517, 39.112953, 35.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.224627, 39.064831, 35.779892>,  <24.256475, 38.984627, 36.170471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224627, 39.064831, 35.779892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612013, 0.763368, 0.206661,
		0.786829, 0.614055, 0.061936,
		-0.079621, 0.200513, -0.976450,
		24.200741, 39.124985, 35.486958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552332, 39.629261, 35.898495>,  <24.256475, 38.984627, 36.170471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552332, 39.629261, 35.898495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218987, 39.504700, 35.715836>,  <24.018980, 39.429962, 35.606239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218987, 39.504700, 35.715836>,  <24.552332, 39.629261, 35.898495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218987, 39.504700, 35.715836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472707, 0.829716, 0.296851,
		0.286449, 0.463247, -0.838660,
		-0.833364, -0.311407, -0.456651,
		23.968977, 39.411278, 35.578842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190836, 39.770153, 35.570225>,  <24.552332, 39.629261, 35.898495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190836, 39.770153, 35.570225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931150, 39.468239, 35.607800>,  <24.775339, 39.287090, 35.630344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931150, 39.468239, 35.607800>,  <25.190836, 39.770153, 35.570225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931150, 39.468239, 35.607800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701419, -0.546350, 0.457726,
		-0.294162, 0.363050, 0.884117,
		-0.649214, -0.754783, 0.093935,
		24.736385, 39.241802, 35.635979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243820, 39.521408, 36.282471>,  <25.190836, 39.770153, 35.570225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243820, 39.521408, 36.282471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092136, 39.217430, 36.071312>,  <25.001125, 39.035042, 35.944614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092136, 39.217430, 36.071312>,  <25.243820, 39.521408, 36.282471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092136, 39.217430, 36.071312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625174, -0.631023, 0.459312,
		-0.682170, -0.155852, 0.714391,
		-0.379212, -0.759948, -0.527900,
		24.978373, 38.989445, 35.912941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063318, 39.035595, 36.758678>,  <25.243820, 39.521408, 36.282471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063318, 39.035595, 36.758678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085222, 38.849979, 36.405029>,  <25.098366, 38.738609, 36.192841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085222, 38.849979, 36.405029>,  <25.063318, 39.035595, 36.758678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085222, 38.849979, 36.405029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223929, -0.857188, 0.463773,
		-0.973066, -0.223377, 0.056971,
		0.054761, -0.464039, -0.884121,
		25.101650, 38.710770, 36.139793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752491, 38.333527, 36.863659>,  <25.063318, 39.035595, 36.758678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752491, 38.333527, 36.863659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993097, 38.323872, 36.544258>,  <25.137461, 38.318081, 36.352619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993097, 38.323872, 36.544258>,  <24.752491, 38.333527, 36.863659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993097, 38.323872, 36.544258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516301, -0.750995, 0.411631,
		-0.609602, -0.659867, -0.439274,
		0.601514, -0.024134, -0.798498,
		25.173552, 38.316631, 36.304710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006943, 37.695541, 36.951527>,  <24.752491, 38.333527, 36.863659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006943, 37.695541, 36.951527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257385, 37.910816, 36.725838>,  <25.407650, 38.039982, 36.590424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257385, 37.910816, 36.725838>,  <25.006943, 37.695541, 36.951527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257385, 37.910816, 36.725838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756856, -0.593476, 0.273778,
		-0.187513, -0.598452, -0.778905,
		0.626105, 0.538183, -0.564227,
		25.445217, 38.072269, 36.556568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443489, 37.260155, 36.455570>,  <25.006943, 37.695541, 36.951527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443489, 37.260155, 36.455570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624201, 37.589310, 36.593407>,  <25.732628, 37.786804, 36.676109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624201, 37.589310, 36.593407>,  <25.443489, 37.260155, 36.455570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624201, 37.589310, 36.593407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779933, -0.551839, 0.295258,
		0.433126, 0.135368, -0.891110,
		0.451781, 0.822891, 0.344594,
		25.759735, 37.836178, 36.696785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083460, 37.165936, 36.283066>,  <25.443489, 37.260155, 36.455570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083460, 37.165936, 36.283066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134321, 37.466602, 36.541935>,  <26.164839, 37.647003, 36.697254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134321, 37.466602, 36.541935>,  <26.083460, 37.165936, 36.283066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134321, 37.466602, 36.541935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838177, -0.430307, 0.335104,
		0.530369, 0.499834, -0.684744,
		0.127154, 0.751666, 0.647171,
		26.172468, 37.692101, 36.736088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663857, 37.707146, 36.167271>,  <26.083460, 37.165936, 36.283066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663857, 37.707146, 36.167271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601412, 37.735558, 36.561344>,  <26.563946, 37.752605, 36.797787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601412, 37.735558, 36.561344>,  <26.663857, 37.707146, 36.167271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601412, 37.735558, 36.561344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964252, -0.205257, 0.167594,
		0.214119, 0.976127, -0.036445,
		-0.156112, 0.071027, 0.985182,
		26.554579, 37.756866, 36.856899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193571, 38.213184, 36.426998>,  <26.663857, 37.707146, 36.167271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193571, 38.213184, 36.426998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066059, 37.974819, 36.721825>,  <26.989552, 37.831799, 36.898720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066059, 37.974819, 36.721825>,  <27.193571, 38.213184, 36.426998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066059, 37.974819, 36.721825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945381, -0.255747, 0.202108,
		0.068063, 0.761236, 0.644893,
		-0.318782, -0.595914, 0.737065,
		26.970425, 37.796043, 36.942944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566751, 38.387180, 36.985672>,  <27.193571, 38.213184, 36.426998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566751, 38.387180, 36.985672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485891, 37.998852, 37.037273>,  <27.437376, 37.765854, 37.068233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485891, 37.998852, 37.037273>,  <27.566751, 38.387180, 36.985672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485891, 37.998852, 37.037273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975324, -0.187627, 0.116354,
		-0.088754, 0.149341, 0.984794,
		-0.202151, -0.970821, 0.129003,
		27.425245, 37.707607, 37.075974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851151, 38.230743, 37.633392>,  <27.566751, 38.387180, 36.985672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851151, 38.230743, 37.633392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812462, 37.907074, 37.401569>,  <27.789249, 37.712872, 37.262474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812462, 37.907074, 37.401569>,  <27.851151, 38.230743, 37.633392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812462, 37.907074, 37.401569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963829, -0.221439, 0.148321,
		-0.248354, -0.544248, 0.801321,
		-0.096720, -0.809172, -0.579557,
		27.783445, 37.664322, 37.227703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059128, 37.532169, 37.880795>,  <27.851151, 38.230743, 37.633392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059128, 37.532169, 37.880795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075045, 37.515118, 37.481476>,  <28.084595, 37.504887, 37.241882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075045, 37.515118, 37.481476>,  <28.059128, 37.532169, 37.880795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075045, 37.515118, 37.481476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984594, -0.168577, 0.046444,
		-0.170270, -0.984766, 0.035263,
		0.039792, -0.042628, -0.998298,
		28.086983, 37.502331, 37.181988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482399, 36.923767, 37.754833>,  <28.059128, 37.532169, 37.880795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482399, 36.923767, 37.754833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467146, 37.198082, 37.464111>,  <28.457994, 37.362671, 37.289677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467146, 37.198082, 37.464111>,  <28.482399, 36.923767, 37.754833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467146, 37.198082, 37.464111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996197, 0.083114, 0.026156,
		0.078345, -0.723045, -0.686344,
		-0.038133, 0.685783, -0.726807,
		28.455706, 37.403816, 37.246071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734684, 36.784065, 37.065228>,  <28.482399, 36.923767, 37.754833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734684, 36.784065, 37.065228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789894, 37.170200, 37.153831>,  <28.823019, 37.401882, 37.206993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789894, 37.170200, 37.153831>,  <28.734684, 36.784065, 37.065228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789894, 37.170200, 37.153831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989652, -0.143277, 0.007748,
		0.039217, 0.218152, -0.975127,
		0.138023, 0.965340, 0.221513,
		28.831301, 37.459801, 37.220287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223557, 37.095966, 36.600754>,  <28.734684, 36.784065, 37.065228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223557, 37.095966, 36.600754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236452, 37.322380, 36.930252>,  <29.244190, 37.458229, 37.127953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236452, 37.322380, 36.930252>,  <29.223557, 37.095966, 36.600754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236452, 37.322380, 36.930252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965295, 0.196076, -0.172512,
		-0.259166, 0.800723, -0.540071,
		0.032240, 0.566037, 0.823749,
		29.246124, 37.492191, 37.177376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133261, 37.726612, 36.379272>,  <29.223557, 37.095966, 36.600754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133261, 37.726612, 36.379272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327482, 37.610004, 36.708942>,  <29.444016, 37.540039, 36.906742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327482, 37.610004, 36.708942>,  <29.133261, 37.726612, 36.379272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327482, 37.610004, 36.708942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832410, 0.442198, -0.333998,
		-0.267081, 0.848221, 0.457371,
		0.485553, -0.291516, 0.824170,
		29.473148, 37.522549, 36.956192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670238, 38.158718, 36.887760>,  <29.133261, 37.726612, 36.379272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670238, 38.158718, 36.887760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793991, 37.780399, 36.848270>,  <29.868242, 37.553406, 36.824577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793991, 37.780399, 36.848270>,  <29.670238, 38.158718, 36.887760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793991, 37.780399, 36.848270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931219, 0.322361, -0.170046,
		0.192654, -0.039325, 0.980478,
		0.309381, -0.945800, -0.098724,
		29.886805, 37.496658, 36.818653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340370, 38.135326, 37.046669>,  <29.670238, 38.158718, 36.887760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340370, 38.135326, 37.046669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348169, 37.775131, 36.872887>,  <30.352848, 37.559013, 36.768620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348169, 37.775131, 36.872887>,  <30.340370, 38.135326, 37.046669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348169, 37.775131, 36.872887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898165, 0.206669, -0.388056,
		0.439226, -0.382644, 0.812812,
		0.019496, -0.900484, -0.434452,
		30.354017, 37.504986, 36.742550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961758, 37.819511, 37.292599>,  <30.340370, 38.135326, 37.046669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961758, 37.819511, 37.292599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828270, 37.726795, 36.927105>,  <30.748177, 37.671165, 36.707809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828270, 37.726795, 36.927105>,  <30.961758, 37.819511, 37.292599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828270, 37.726795, 36.927105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777548, 0.480334, -0.405831,
		0.532963, -0.845904, 0.019931,
		-0.333720, -0.231791, -0.913731,
		30.728153, 37.657257, 36.652985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486542, 38.055210, 36.838573>,  <30.961758, 37.819511, 37.292599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486542, 38.055210, 36.838573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224604, 37.957333, 36.552551>,  <31.067440, 37.898605, 36.380939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224604, 37.957333, 36.552551>,  <31.486542, 38.055210, 36.838573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224604, 37.957333, 36.552551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474002, 0.603947, -0.640758,
		0.588637, -0.758537, -0.279513,
		-0.654849, -0.244684, -0.715054,
		31.028151, 37.883926, 36.338036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835186, 38.280846, 36.240768>,  <31.486542, 38.055210, 36.838573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835186, 38.280846, 36.240768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491043, 38.161770, 36.075279>,  <31.284557, 38.090324, 35.975986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491043, 38.161770, 36.075279>,  <31.835186, 38.280846, 36.240768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491043, 38.161770, 36.075279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228657, 0.500009, -0.835289,
		0.455519, -0.813248, -0.362119,
		-0.860360, -0.297689, -0.413718,
		31.232935, 38.072464, 35.951164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035175, 38.096840, 35.525066>,  <31.835186, 38.280846, 36.240768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035175, 38.096840, 35.525066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648989, 38.190605, 35.570553>,  <31.417278, 38.246864, 35.597847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648989, 38.190605, 35.570553>,  <32.035175, 38.096840, 35.525066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648989, 38.190605, 35.570553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047714, 0.588175, -0.807325,
		-0.256132, -0.774017, -0.579046,
		-0.965463, 0.234411, 0.113719,
		31.359350, 38.260929, 35.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923447, 38.511581, 35.034309>,  <32.035175, 38.096840, 35.525066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923447, 38.511581, 35.034309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565113, 38.573467, 35.200943>,  <31.350113, 38.610600, 35.300922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565113, 38.573467, 35.200943>,  <31.923447, 38.511581, 35.034309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565113, 38.573467, 35.200943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154065, 0.771169, -0.617708,
		-0.416825, -0.617546, -0.667004,
		-0.895835, 0.154715, 0.416584,
		31.296362, 38.619881, 35.325920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499809, 38.630516, 34.611820>,  <31.923447, 38.511581, 35.034309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499809, 38.630516, 34.611820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821617, 38.475925, 34.431427>,  <33.014702, 38.383171, 34.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821617, 38.475925, 34.431427>,  <32.499809, 38.630516, 34.611820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821617, 38.475925, 34.431427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042883, 0.795140, -0.604908,
		0.592378, 0.467319, 0.656278,
		0.804518, -0.386478, -0.450984,
		33.062973, 38.359982, 34.296131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475704, 39.098454, 35.174927>,  <32.499809, 38.630516, 34.611820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475704, 39.098454, 35.174927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810604, 39.217808, 34.991631>,  <33.011543, 39.289421, 34.881653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810604, 39.217808, 34.991631>,  <32.475704, 39.098454, 35.174927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810604, 39.217808, 34.991631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284205, 0.953374, 0.101519,
		0.467161, 0.045236, 0.883014,
		0.837250, 0.298383, -0.458236,
		33.061779, 39.307323, 34.854160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995586, 39.589211, 35.578861>,  <32.475704, 39.098454, 35.174927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995586, 39.589211, 35.578861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936714, 39.621220, 35.184513>,  <32.901390, 39.640427, 34.947906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936714, 39.621220, 35.184513>,  <32.995586, 39.589211, 35.578861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936714, 39.621220, 35.184513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501043, 0.853347, 0.144067,
		0.852816, 0.515166, -0.085498,
		-0.147178, 0.080024, -0.985868,
		32.892559, 39.645226, 34.888752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375565, 39.809399, 34.879635>,  <32.995586, 39.589211, 35.578861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375565, 39.809399, 34.879635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736427, 39.939598, 34.766388>,  <33.952946, 40.017719, 34.698441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736427, 39.939598, 34.766388>,  <33.375565, 39.809399, 34.879635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736427, 39.939598, 34.766388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041323, -0.588055, -0.807765,
		-0.429417, 0.740433, -0.517069,
		0.902161, 0.325501, -0.283118,
		34.007076, 40.037247, 34.681454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306099, 40.064911, 34.220795>,  <33.375565, 39.809399, 34.879635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306099, 40.064911, 34.220795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700897, 40.001820, 34.208347>,  <33.937775, 39.963963, 34.200878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700897, 40.001820, 34.208347>,  <33.306099, 40.064911, 34.220795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700897, 40.001820, 34.208347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086407, -0.357224, -0.930013,
		0.135578, 0.920604, -0.366206,
		0.986992, -0.157732, -0.031115,
		33.996994, 39.954498, 34.199013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486046, 40.350700, 33.672493>,  <33.306099, 40.064911, 34.220795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486046, 40.350700, 33.672493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772243, 40.081955, 33.749084>,  <33.943962, 39.920708, 33.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772243, 40.081955, 33.749084>,  <33.486046, 40.350700, 33.672493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772243, 40.081955, 33.749084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217935, -0.475060, -0.852539,
		0.663754, 0.568258, -0.486326,
		0.715496, -0.671864, 0.191480,
		33.986893, 39.880394, 33.806530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778526, 40.237225, 33.041481>,  <33.486046, 40.350700, 33.672493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778526, 40.237225, 33.041481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887688, 39.917286, 33.255314>,  <33.953186, 39.725323, 33.383614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887688, 39.917286, 33.255314>,  <33.778526, 40.237225, 33.041481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887688, 39.917286, 33.255314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080852, -0.572774, -0.815716,
		0.958637, 0.179393, -0.220983,
		0.272907, -0.799842, 0.534578,
		33.969559, 39.677334, 33.415688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255386, 39.968655, 32.621384>,  <33.778526, 40.237225, 33.041481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255386, 39.968655, 32.621384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158367, 39.659595, 32.856052>,  <34.100155, 39.474159, 32.996853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158367, 39.659595, 32.856052>,  <34.255386, 39.968655, 32.621384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158367, 39.659595, 32.856052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122198, -0.575577, -0.808566,
		0.962412, -0.267808, 0.045191,
		-0.242551, -0.772651, 0.586668,
		34.085602, 39.427799, 33.032051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612774, 39.442245, 32.467476>,  <34.255386, 39.968655, 32.621384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612774, 39.442245, 32.467476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294308, 39.264275, 32.631504>,  <34.103230, 39.157494, 32.729919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294308, 39.264275, 32.631504>,  <34.612774, 39.442245, 32.467476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294308, 39.264275, 32.631504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078407, -0.596140, -0.799042,
		0.599976, -0.668323, 0.439741,
		-0.796166, -0.444928, 0.410071,
		34.055458, 39.130795, 32.754524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662605, 38.837109, 32.227551>,  <34.612774, 39.442245, 32.467476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662605, 38.837109, 32.227551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286301, 38.818562, 32.361904>,  <34.060516, 38.807434, 32.442516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286301, 38.818562, 32.361904>,  <34.662605, 38.837109, 32.227551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286301, 38.818562, 32.361904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268153, -0.504501, -0.820715,
		0.207511, -0.862165, 0.462180,
		-0.940762, -0.046372, 0.335882,
		34.004070, 38.804649, 32.462669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436684, 38.338993, 31.884682>,  <34.662605, 38.837109, 32.227551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436684, 38.338993, 31.884682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080536, 38.480160, 31.999702>,  <33.866848, 38.564861, 32.068714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080536, 38.480160, 31.999702>,  <34.436684, 38.338993, 31.884682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080536, 38.480160, 31.999702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426513, -0.425903, -0.797930,
		-0.159135, -0.833100, 0.529737,
		-0.890372, 0.352918, 0.287552,
		33.813423, 38.586037, 32.085968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897877, 37.762768, 31.909187>,  <34.436684, 38.338993, 31.884682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897877, 37.762768, 31.909187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697430, 38.102753, 31.844152>,  <33.577160, 38.306744, 31.805132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697430, 38.102753, 31.844152>,  <33.897877, 37.762768, 31.909187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697430, 38.102753, 31.844152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431210, -0.408152, -0.804655,
		-0.750289, -0.333121, 0.571048,
		-0.501122, 0.849966, -0.162587,
		33.547092, 38.357742, 31.795376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196304, 37.595360, 31.776663>,  <33.897877, 37.762768, 31.909187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196304, 37.595360, 31.776663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225456, 37.971241, 31.643007>,  <33.242947, 38.196770, 31.562815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225456, 37.971241, 31.643007>,  <33.196304, 37.595360, 31.776663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225456, 37.971241, 31.643007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570420, -0.235550, -0.786852,
		-0.818114, 0.247941, 0.518859,
		0.072876, 0.939703, -0.334137,
		33.247318, 38.253151, 31.542767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526680, 37.837582, 31.737539>,  <33.196304, 37.595360, 31.776663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526680, 37.837582, 31.737539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739845, 38.047604, 31.472115>,  <32.867744, 38.173618, 31.312860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739845, 38.047604, 31.472115>,  <32.526680, 37.837582, 31.737539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739845, 38.047604, 31.472115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578918, -0.345693, -0.738478,
		-0.617133, 0.777695, 0.119741,
		0.532917, 0.525059, -0.663560,
		32.899719, 38.205120, 31.273046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033825, 38.097084, 31.214237>,  <32.526680, 37.837582, 31.737539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033825, 38.097084, 31.214237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377708, 38.144520, 31.015507>,  <32.584038, 38.172981, 30.896269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377708, 38.144520, 31.015507>,  <32.033825, 38.097084, 31.214237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377708, 38.144520, 31.015507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473853, -0.177963, -0.862434,
		-0.190692, 0.976866, -0.096803,
		0.859709, 0.118589, -0.496826,
		32.635620, 38.180096, 30.866459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886774, 38.634777, 30.725853>,  <32.033825, 38.097084, 31.214237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886774, 38.634777, 30.725853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195633, 38.419922, 30.590048>,  <32.380947, 38.291008, 30.508566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195633, 38.419922, 30.590048>,  <31.886774, 38.634777, 30.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195633, 38.419922, 30.590048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495333, -0.174109, -0.851076,
		0.398034, 0.825329, -0.400501,
		0.772149, -0.537139, -0.339512,
		32.427277, 38.258781, 30.488194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898741, 38.795971, 30.080128>,  <31.886774, 38.634777, 30.725853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898741, 38.795971, 30.080128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103043, 38.452080, 30.079163>,  <32.225624, 38.245747, 30.078583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103043, 38.452080, 30.079163>,  <31.898741, 38.795971, 30.080128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103043, 38.452080, 30.079163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480457, -0.283104, -0.830068,
		0.712946, 0.425121, -0.557657,
		0.510754, -0.859724, -0.002414,
		32.256268, 38.194164, 30.078438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121391, 38.836468, 29.447010>,  <31.898741, 38.795971, 30.080128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121391, 38.836468, 29.447010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175430, 38.454857, 29.554026>,  <32.207855, 38.225891, 29.618235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175430, 38.454857, 29.554026>,  <32.121391, 38.836468, 29.447010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175430, 38.454857, 29.554026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582165, -0.294921, -0.757697,
		0.801768, -0.053391, -0.595245,
		0.135096, -0.954029, 0.267541,
		32.215958, 38.168648, 29.634289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148888, 38.440834, 28.880974>,  <32.121391, 38.836468, 29.447010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148888, 38.440834, 28.880974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041489, 38.146915, 29.130127>,  <31.977051, 37.970562, 29.279619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041489, 38.146915, 29.130127>,  <32.148888, 38.440834, 28.880974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041489, 38.146915, 29.130127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604033, -0.375275, -0.703074,
		0.750370, -0.565013, -0.343083,
		-0.268495, -0.734798, 0.622881,
		31.960939, 37.926476, 29.316992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124134, 37.852890, 28.486006>,  <32.148888, 38.440834, 28.880974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124134, 37.852890, 28.486006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899742, 37.762302, 28.804506>,  <31.765108, 37.707951, 28.995607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899742, 37.762302, 28.804506>,  <32.124134, 37.852890, 28.486006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899742, 37.762302, 28.804506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596049, -0.556991, -0.578348,
		0.574483, -0.799045, 0.177472,
		-0.560977, -0.226469, 0.796252,
		31.731449, 37.694363, 29.043383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119652, 37.127342, 28.461433>,  <32.124134, 37.852890, 28.486006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119652, 37.127342, 28.461433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804951, 37.255646, 28.672390>,  <31.616131, 37.332626, 28.798964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804951, 37.255646, 28.672390>,  <32.119652, 37.127342, 28.461433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804951, 37.255646, 28.672390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607749, -0.552013, -0.570896,
		0.108007, -0.769673, 0.629236,
		-0.786750, 0.320757, 0.527389,
		31.568926, 37.351871, 28.830606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762299, 36.468132, 28.608086>,  <32.119652, 37.127342, 28.461433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762299, 36.468132, 28.608086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491302, 36.760239, 28.643242>,  <31.328705, 36.935501, 28.664335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491302, 36.760239, 28.643242>,  <31.762299, 36.468132, 28.608086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491302, 36.760239, 28.643242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600145, -0.479743, -0.640057,
		-0.425243, -0.486381, 0.763284,
		-0.677492, 0.730261, 0.087892,
		31.288055, 36.979317, 28.669609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114752, 36.121365, 28.657539>,  <31.762299, 36.468132, 28.608086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114752, 36.121365, 28.657539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054205, 36.495007, 28.528208>,  <31.017876, 36.719193, 28.450609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054205, 36.495007, 28.528208>,  <31.114752, 36.121365, 28.657539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054205, 36.495007, 28.528208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681717, -0.335513, -0.650148,
		-0.715786, 0.122008, 0.687578,
		-0.151368, 0.934101, -0.323331,
		31.008795, 36.775238, 28.431208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278412, 36.231518, 28.517715>,  <31.114752, 36.121365, 28.657539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278412, 36.231518, 28.517715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435896, 36.552071, 28.337595>,  <30.530386, 36.744404, 28.229523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435896, 36.552071, 28.337595>,  <30.278412, 36.231518, 28.517715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435896, 36.552071, 28.337595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609203, -0.139371, -0.780672,
		-0.688378, 0.581684, 0.433335,
		0.393710, 0.801386, -0.450303,
		30.554008, 36.792488, 28.202503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722696, 36.611897, 28.347219>,  <30.278412, 36.231518, 28.517715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722696, 36.611897, 28.347219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027626, 36.696388, 28.102516>,  <30.210583, 36.747086, 27.955694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027626, 36.696388, 28.102516>,  <29.722696, 36.611897, 28.347219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027626, 36.696388, 28.102516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585886, -0.176344, -0.790974,
		-0.274960, 0.961397, -0.010672,
		0.762322, 0.211233, -0.611756,
		30.256323, 36.759758, 27.918989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407013, 36.976940, 27.794762>,  <29.722696, 36.611897, 28.347219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407013, 36.976940, 27.794762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759686, 36.898422, 27.623131>,  <29.971289, 36.851311, 27.520153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759686, 36.898422, 27.623131>,  <29.407013, 36.976940, 27.794762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759686, 36.898422, 27.623131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452165, -0.091605, -0.887218,
		0.134851, 0.976257, -0.169524,
		0.881681, -0.196295, -0.429076,
		30.024189, 36.839535, 27.494408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414070, 37.372879, 27.192068>,  <29.407013, 36.976940, 27.794762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414070, 37.372879, 27.192068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688812, 37.094971, 27.106724>,  <29.853657, 36.928226, 27.055517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688812, 37.094971, 27.106724>,  <29.414070, 37.372879, 27.192068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688812, 37.094971, 27.106724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413225, -0.131812, -0.901039,
		0.597894, 0.707047, -0.377633,
		0.686853, -0.694773, -0.213360,
		29.894869, 36.886539, 27.042715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742449, 37.599731, 26.567396>,  <29.414070, 37.372879, 27.192068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742449, 37.599731, 26.567396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808310, 37.206089, 26.593979>,  <29.847826, 36.969902, 26.609928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808310, 37.206089, 26.593979>,  <29.742449, 37.599731, 26.567396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808310, 37.206089, 26.593979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304315, -0.114773, -0.945632,
		0.938233, 0.135476, -0.318377,
		0.164651, -0.984110, 0.066456,
		29.857704, 36.910854, 26.613916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191614, 37.443962, 26.048401>,  <29.742449, 37.599731, 26.567396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191614, 37.443962, 26.048401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018167, 37.094742, 26.137629>,  <29.914099, 36.885208, 26.191164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018167, 37.094742, 26.137629>,  <30.191614, 37.443962, 26.048401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018167, 37.094742, 26.137629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237543, -0.128045, -0.962901,
		0.869224, -0.470517, -0.151865,
		-0.433616, -0.873051, 0.223067,
		29.888083, 36.832825, 26.204548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403149, 37.065956, 25.475960>,  <30.191614, 37.443962, 26.048401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403149, 37.065956, 25.475960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099314, 36.869698, 25.646744>,  <29.917013, 36.751942, 25.749214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099314, 36.869698, 25.646744>,  <30.403149, 37.065956, 25.475960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099314, 36.869698, 25.646744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365833, -0.220466, -0.904191,
		0.537767, -0.843007, -0.012031,
		-0.759587, -0.490645, 0.426959,
		29.871437, 36.722504, 25.774832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372864, 36.549610, 25.070351>,  <30.403149, 37.065956, 25.475960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372864, 36.549610, 25.070351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001434, 36.546982, 25.218788>,  <29.778576, 36.545406, 25.307850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001434, 36.546982, 25.218788>,  <30.372864, 36.549610, 25.070351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001434, 36.546982, 25.218788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363163, -0.190227, -0.912100,
		0.076587, -0.981718, 0.174252,
		-0.928573, -0.006573, 0.371093,
		29.722862, 36.545010, 25.330116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847551, 36.121601, 24.634256>,  <30.372864, 36.549610, 25.070351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847551, 36.121601, 24.634256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604530, 36.350281, 24.854816>,  <29.458717, 36.487488, 24.987152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604530, 36.350281, 24.854816>,  <29.847551, 36.121601, 24.634256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604530, 36.350281, 24.854816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681644, -0.018925, -0.731439,
		-0.407728, -0.820244, 0.401194,
		-0.607551, 0.571700, 0.551399,
		29.422264, 36.521790, 25.020237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248335, 35.780132, 24.691635>,  <29.847551, 36.121601, 24.634256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248335, 35.780132, 24.691635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186375, 36.174004, 24.723654>,  <29.149199, 36.410328, 24.742865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186375, 36.174004, 24.723654>,  <29.248335, 35.780132, 24.691635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186375, 36.174004, 24.723654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512517, -0.010829, -0.858609,
		-0.844589, -0.174025, 0.506344,
		-0.154902, 0.984682, 0.080045,
		29.139904, 36.469410, 24.747667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592669, 35.853794, 24.557568>,  <29.248335, 35.780132, 24.691635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592669, 35.853794, 24.557568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721413, 36.230247, 24.516249>,  <28.798658, 36.456120, 24.491457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721413, 36.230247, 24.516249>,  <28.592669, 35.853794, 24.557568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721413, 36.230247, 24.516249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571442, 0.106113, -0.813753,
		-0.754891, 0.320942, 0.571958,
		0.321860, 0.941135, -0.103296,
		28.817970, 36.512589, 24.485260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043892, 36.248989, 24.261812>,  <28.592669, 35.853794, 24.557568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043892, 36.248989, 24.261812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362085, 36.476917, 24.179340>,  <28.553001, 36.613674, 24.129858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362085, 36.476917, 24.179340>,  <28.043892, 36.248989, 24.261812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362085, 36.476917, 24.179340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431956, 0.294583, -0.852429,
		-0.424998, 0.767151, 0.480474,
		0.795481, 0.569824, -0.206179,
		28.600729, 36.647865, 24.117487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759014, 36.882023, 23.952448>,  <28.043892, 36.248989, 24.261812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759014, 36.882023, 23.952448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142147, 36.881027, 23.837523>,  <28.372026, 36.880428, 23.768568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142147, 36.881027, 23.837523>,  <27.759014, 36.882023, 23.952448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142147, 36.881027, 23.837523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266461, 0.366388, -0.891492,
		0.107490, 0.930458, 0.350275,
		0.957833, -0.002492, -0.287314,
		28.429497, 36.880280, 23.751328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803749, 37.413605, 23.496483>,  <27.759014, 36.882023, 23.952448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803749, 37.413605, 23.496483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137218, 37.205032, 23.423719>,  <28.337301, 37.079887, 23.380062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137218, 37.205032, 23.423719>,  <27.803749, 37.413605, 23.496483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137218, 37.205032, 23.423719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015238, 0.350987, -0.936256,
		0.552044, 0.777762, 0.300555,
		0.833676, -0.521435, -0.181909,
		28.387321, 37.048603, 23.369146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173412, 37.897179, 23.104956>,  <27.803749, 37.413605, 23.496483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173412, 37.897179, 23.104956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339558, 37.540310, 23.033957>,  <28.439245, 37.326191, 22.991356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339558, 37.540310, 23.033957>,  <28.173412, 37.897179, 23.104956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339558, 37.540310, 23.033957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006045, 0.197831, -0.980218,
		0.909635, 0.406075, 0.087565,
		0.415365, -0.892169, -0.177499,
		28.464167, 37.272659, 22.980707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591482, 37.989368, 22.596411>,  <28.173412, 37.897179, 23.104956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591482, 37.989368, 22.596411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556713, 37.590935, 22.590044>,  <28.535851, 37.351875, 22.586224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556713, 37.590935, 22.590044>,  <28.591482, 37.989368, 22.596411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556713, 37.590935, 22.590044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050063, 0.020326, -0.998539,
		0.994956, -0.086000, -0.051634,
		-0.086924, -0.996088, -0.015918,
		28.530636, 37.292107, 22.585268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084860, 37.767593, 22.164764>,  <28.591482, 37.989368, 22.596411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084860, 37.767593, 22.164764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797947, 37.489506, 22.183447>,  <28.625799, 37.322655, 22.194656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797947, 37.489506, 22.183447>,  <29.084860, 37.767593, 22.164764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797947, 37.489506, 22.183447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141767, 0.079981, -0.986664,
		0.682208, -0.714338, -0.155928,
		-0.717283, -0.695215, 0.046706,
		28.582762, 37.280941, 22.197458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249367, 37.365154, 21.612568>,  <29.084860, 37.767593, 22.164764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249367, 37.365154, 21.612568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873901, 37.240147, 21.670862>,  <28.648623, 37.165142, 21.705839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873901, 37.240147, 21.670862>,  <29.249367, 37.365154, 21.612568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873901, 37.240147, 21.670862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183842, 0.095993, -0.978257,
		0.291737, -0.945048, -0.147560,
		-0.938665, -0.312522, 0.145735,
		28.592302, 37.146389, 21.714582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157717, 36.836353, 21.149851>,  <29.249367, 37.365154, 21.612568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157717, 36.836353, 21.149851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794577, 36.973999, 21.245682>,  <28.576693, 37.056587, 21.303181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794577, 36.973999, 21.245682>,  <29.157717, 36.836353, 21.149851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794577, 36.973999, 21.245682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154796, 0.255960, -0.954213,
		-0.389677, -0.903367, -0.179106,
		-0.907849, 0.344110, 0.239579,
		28.522223, 37.077232, 21.317556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855093, 36.609875, 20.612867>,  <29.157717, 36.836353, 21.149851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855093, 36.609875, 20.612867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597870, 36.887371, 20.742601>,  <28.443535, 37.053871, 20.820442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597870, 36.887371, 20.742601>,  <28.855093, 36.609875, 20.612867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597870, 36.887371, 20.742601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300155, 0.161309, -0.940153,
		-0.704545, -0.701924, 0.104500,
		-0.643059, 0.693745, 0.324335,
		28.404953, 37.095493, 20.839903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125893, 36.472198, 20.396612>,  <28.855093, 36.609875, 20.612867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125893, 36.472198, 20.396612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130611, 36.866123, 20.465910>,  <28.133444, 37.102478, 20.507488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130611, 36.866123, 20.465910>,  <28.125893, 36.472198, 20.396612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130611, 36.866123, 20.465910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390484, 0.164039, -0.905877,
		-0.920534, -0.056961, 0.386488,
		0.011799, 0.984808, 0.173246,
		28.134151, 37.161564, 20.517883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571625, 36.703873, 20.021017>,  <28.125893, 36.472198, 20.396612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571625, 36.703873, 20.021017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794462, 37.032200, 20.071453>,  <27.928165, 37.229198, 20.101715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794462, 37.032200, 20.071453>,  <27.571625, 36.703873, 20.021017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794462, 37.032200, 20.071453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053266, 0.186842, -0.980945,
		-0.828739, 0.539763, 0.147811,
		0.557095, 0.820820, 0.126092,
		27.961592, 37.278446, 20.109282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317614, 37.197006, 19.502247>,  <27.571625, 36.703873, 20.021017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317614, 37.197006, 19.502247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693310, 37.279030, 19.612360>,  <27.918728, 37.328243, 19.678429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693310, 37.279030, 19.612360>,  <27.317614, 37.197006, 19.502247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693310, 37.279030, 19.612360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208643, 0.295771, -0.932195,
		-0.272579, 0.932989, 0.235015,
		0.939239, 0.205062, 0.275282,
		27.975080, 37.340549, 19.694944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481100, 37.981026, 19.446051>,  <27.317614, 37.197006, 19.502247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481100, 37.981026, 19.446051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766893, 37.709938, 19.376528>,  <27.938370, 37.547283, 19.334814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766893, 37.709938, 19.376528>,  <27.481100, 37.981026, 19.446051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766893, 37.709938, 19.376528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225145, 0.457914, -0.860014,
		0.662440, 0.575332, 0.479756,
		0.714481, -0.677722, -0.173807,
		27.981237, 37.506622, 19.324387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538822, 38.640503, 19.344801>,  <27.481100, 37.981026, 19.446051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538822, 38.640503, 19.344801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671211, 38.381287, 19.619173>,  <27.750645, 38.225758, 19.783796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671211, 38.381287, 19.619173>,  <27.538822, 38.640503, 19.344801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671211, 38.381287, 19.619173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587517, 0.710339, 0.387611,
		-0.738431, 0.274707, 0.615838,
		0.330975, -0.648039, 0.685931,
		27.770504, 38.186874, 19.824953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860680, 38.922688, 19.869658>,  <27.538822, 38.640503, 19.344801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860680, 38.922688, 19.869658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918091, 39.316868, 19.906061>,  <27.952538, 39.553375, 19.927904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918091, 39.316868, 19.906061>,  <27.860680, 38.922688, 19.869658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918091, 39.316868, 19.906061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729882, 0.167512, -0.662730,
		-0.668335, 0.028693, 0.743307,
		0.143528, 0.985452, 0.091011,
		27.961149, 39.612503, 19.933365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144680, 39.228943, 20.112516>,  <27.860680, 38.922688, 19.869658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144680, 39.228943, 20.112516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406525, 39.442680, 19.898617>,  <27.563631, 39.570923, 19.770277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406525, 39.442680, 19.898617>,  <27.144680, 39.228943, 20.112516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406525, 39.442680, 19.898617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654628, 0.046901, -0.754495,
		-0.378079, 0.843965, 0.380498,
		0.654613, 0.534343, -0.534751,
		27.602909, 39.602982, 19.738192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841797, 39.549183, 19.577175>,  <27.144680, 39.228943, 20.112516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841797, 39.549183, 19.577175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216612, 39.592754, 19.444454>,  <27.441502, 39.618896, 19.364822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216612, 39.592754, 19.444454>,  <26.841797, 39.549183, 19.577175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216612, 39.592754, 19.444454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348058, 0.213728, -0.912785,
		-0.028509, 0.970802, 0.238184,
		0.937039, 0.108925, -0.331802,
		27.497725, 39.625431, 19.344913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036480, 40.206654, 19.335007>,  <26.841797, 39.549183, 19.577175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036480, 40.206654, 19.335007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235352, 39.937740, 19.115608>,  <27.354675, 39.776394, 18.983969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235352, 39.937740, 19.115608>,  <27.036480, 40.206654, 19.335007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235352, 39.937740, 19.115608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373666, 0.404633, -0.834653,
		0.783061, 0.619929, -0.050032,
		0.497181, -0.672280, -0.548499,
		27.384506, 39.736057, 18.951059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643929, 40.478313, 18.860889>,  <27.036480, 40.206654, 19.335007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643929, 40.478313, 18.860889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477415, 40.155540, 18.693285>,  <27.377506, 39.961876, 18.592722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477415, 40.155540, 18.693285>,  <27.643929, 40.478313, 18.860889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477415, 40.155540, 18.693285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293478, 0.555423, -0.778059,
		0.860569, -0.200923, -0.468030,
		-0.416284, -0.806930, -0.419013,
		27.352530, 39.913460, 18.567581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337219, 40.401230, 19.022978>,  <27.643929, 40.478313, 18.860889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337219, 40.401230, 19.022978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111685, 40.167889, 19.256826>,  <27.976364, 40.027882, 19.397137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111685, 40.167889, 19.256826>,  <28.337219, 40.401230, 19.022978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111685, 40.167889, 19.256826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448961, 0.377646, 0.809825,
		-0.693198, 0.719082, 0.048974,
		-0.563836, -0.583356, 0.584623,
		27.942533, 39.992882, 19.432213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141947, 40.779121, 19.563999>,  <28.337219, 40.401230, 19.022978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141947, 40.779121, 19.563999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084612, 40.407036, 19.699142>,  <28.050211, 40.183784, 19.780230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084612, 40.407036, 19.699142>,  <28.141947, 40.779121, 19.563999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084612, 40.407036, 19.699142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394076, 0.259508, 0.881680,
		-0.907832, 0.259518, 0.329380,
		-0.143335, -0.930218, 0.337860,
		28.041611, 40.127972, 19.800501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925005, 40.858295, 20.348328>,  <28.141947, 40.779121, 19.563999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925005, 40.858295, 20.348328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065998, 40.487423, 20.297581>,  <28.150595, 40.264900, 20.267132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065998, 40.487423, 20.297581>,  <27.925005, 40.858295, 20.348328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065998, 40.487423, 20.297581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555102, 0.098010, 0.825988,
		-0.753403, -0.361573, 0.549225,
		0.352484, -0.927178, -0.126869,
		28.171743, 40.209270, 20.259520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720934, 40.497898, 20.952921>,  <27.925005, 40.858295, 20.348328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720934, 40.497898, 20.952921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994356, 40.259094, 20.784954>,  <28.158409, 40.115810, 20.684174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994356, 40.259094, 20.784954>,  <27.720934, 40.497898, 20.952921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994356, 40.259094, 20.784954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579601, 0.094300, 0.809426,
		-0.443641, -0.796669, 0.410489,
		0.683553, -0.597014, -0.419915,
		28.199423, 40.079990, 20.658979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765255, 39.970345, 21.356998>,  <27.720934, 40.497898, 20.952921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765255, 39.970345, 21.356998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115200, 40.006130, 21.166582>,  <28.325167, 40.027603, 21.052332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115200, 40.006130, 21.166582>,  <27.765255, 39.970345, 21.356998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115200, 40.006130, 21.166582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475718, 0.026258, 0.879206,
		0.091156, -0.995644, -0.019587,
		0.874861, 0.089463, -0.476039,
		28.377659, 40.032970, 21.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167002, 39.719738, 21.840456>,  <27.765255, 39.970345, 21.356998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167002, 39.719738, 21.840456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440641, 39.893360, 21.605984>,  <28.604826, 39.997532, 21.465302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440641, 39.893360, 21.605984>,  <28.167002, 39.719738, 21.840456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440641, 39.893360, 21.605984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602926, 0.115750, 0.789355,
		0.410474, -0.893419, -0.182519,
		0.684099, 0.434055, -0.586179,
		28.645870, 40.023575, 21.430130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794996, 39.416676, 21.962194>,  <28.167002, 39.719738, 21.840456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794996, 39.416676, 21.962194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863552, 39.786373, 21.825724>,  <28.904686, 40.008190, 21.743841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863552, 39.786373, 21.825724>,  <28.794996, 39.416676, 21.962194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863552, 39.786373, 21.825724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618953, 0.168414, 0.767160,
		0.766500, -0.342658, -0.543197,
		0.171392, 0.924241, -0.341179,
		28.914970, 40.063644, 21.723370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489952, 39.453072, 21.985537>,  <28.794996, 39.416676, 21.962194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489952, 39.453072, 21.985537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379091, 39.836174, 21.954828>,  <29.312574, 40.066036, 21.936403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379091, 39.836174, 21.954828>,  <29.489952, 39.453072, 21.985537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379091, 39.836174, 21.954828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759022, 0.267231, 0.593695,
		0.589129, 0.106272, -0.801020,
		-0.277150, 0.957755, -0.076771,
		29.295946, 40.123501, 21.931797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124958, 39.799767, 21.956270>,  <29.489952, 39.453072, 21.985537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124958, 39.799767, 21.956270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854996, 40.070324, 22.074251>,  <29.693018, 40.232658, 22.145039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854996, 40.070324, 22.074251>,  <30.124958, 39.799767, 21.956270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854996, 40.070324, 22.074251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684397, 0.424354, 0.592894,
		0.275865, 0.602011, -0.749320,
		-0.674906, 0.676392, 0.294950,
		29.652523, 40.273243, 22.162737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524059, 40.320915, 22.051401>,  <30.124958, 39.799767, 21.956270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524059, 40.320915, 22.051401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191216, 40.429398, 22.244911>,  <29.991508, 40.494488, 22.361017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191216, 40.429398, 22.244911>,  <30.524059, 40.320915, 22.051401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191216, 40.429398, 22.244911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545902, 0.246544, 0.800754,
		0.097896, 0.930411, -0.353203,
		-0.832110, 0.271205, 0.483777,
		29.941582, 40.510757, 22.390045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697926, 40.982880, 22.418255>,  <30.524059, 40.320915, 22.051401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697926, 40.982880, 22.418255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371723, 40.829086, 22.591288>,  <30.176003, 40.736813, 22.695108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371723, 40.829086, 22.591288>,  <30.697926, 40.982880, 22.418255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371723, 40.829086, 22.591288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353493, 0.260923, 0.898311,
		-0.458253, 0.885491, -0.076873,
		-0.815504, -0.384479, 0.432584,
		30.127071, 40.713741, 22.721064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485929, 41.536945, 22.951494>,  <30.697926, 40.982880, 22.418255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485929, 41.536945, 22.951494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308641, 41.194725, 23.058521>,  <30.202269, 40.989395, 23.122738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308641, 41.194725, 23.058521>,  <30.485929, 41.536945, 22.951494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308641, 41.194725, 23.058521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175092, 0.210115, 0.961871,
		-0.879146, 0.473172, 0.056672,
		-0.443222, -0.855547, 0.267570,
		30.175674, 40.938061, 23.138792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062672, 41.668098, 23.589970>,  <30.485929, 41.536945, 22.951494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062672, 41.668098, 23.589970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077726, 41.268635, 23.604156>,  <30.086760, 41.028957, 23.612669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077726, 41.268635, 23.604156>,  <30.062672, 41.668098, 23.589970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077726, 41.268635, 23.604156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105767, 0.039273, 0.993615,
		-0.993678, -0.033644, 0.107104,
		0.037635, -0.998662, 0.035467,
		30.089018, 40.969036, 23.614796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575386, 41.445511, 24.144644>,  <30.062672, 41.668098, 23.589970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575386, 41.445511, 24.144644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823702, 41.134487, 24.104603>,  <29.972691, 40.947872, 24.080578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823702, 41.134487, 24.104603>,  <29.575386, 41.445511, 24.144644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823702, 41.134487, 24.104603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081703, -0.062823, 0.994675,
		-0.779709, -0.625661, 0.024530,
		0.620788, -0.777561, -0.100102,
		30.009939, 40.901218, 24.074572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277067, 40.884823, 24.541401>,  <29.575386, 41.445511, 24.144644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277067, 40.884823, 24.541401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674755, 40.850582, 24.515493>,  <29.913368, 40.830036, 24.499949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674755, 40.850582, 24.515493>,  <29.277067, 40.884823, 24.541401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674755, 40.850582, 24.515493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085006, 0.259397, 0.962022,
		-0.065553, -0.961969, 0.265175,
		0.994222, -0.085605, -0.064769,
		29.973022, 40.824902, 24.496063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469671, 40.450535, 25.059948>,  <29.277067, 40.884823, 24.541401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469671, 40.450535, 25.059948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812803, 40.638435, 24.976557>,  <30.018682, 40.751175, 24.926523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812803, 40.638435, 24.976557>,  <29.469671, 40.450535, 25.059948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812803, 40.638435, 24.976557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238451, -0.004447, 0.971144,
		0.455269, -0.882787, -0.115828,
		0.857829, 0.469752, -0.208476,
		30.070152, 40.779362, 24.914013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819607, 40.132294, 25.583733>,  <29.469671, 40.450535, 25.059948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819607, 40.132294, 25.583733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047821, 40.434490, 25.454916>,  <30.184750, 40.615810, 25.377625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047821, 40.434490, 25.454916>,  <29.819607, 40.132294, 25.583733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047821, 40.434490, 25.454916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235261, 0.225349, 0.945447,
		0.786854, -0.615178, -0.049169,
		0.570538, 0.755496, -0.322044,
		30.218983, 40.661140, 25.358303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451950, 40.115234, 26.039919>,  <29.819607, 40.132294, 25.583733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451950, 40.115234, 26.039919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412130, 40.488781, 25.902525>,  <30.388239, 40.712910, 25.820089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412130, 40.488781, 25.902525>,  <30.451950, 40.115234, 26.039919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412130, 40.488781, 25.902525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228982, 0.357435, 0.905432,
		0.968327, 0.011484, -0.249422,
		-0.099550, 0.933867, -0.343485,
		30.382265, 40.768940, 25.799480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074253, 40.518654, 26.190248>,  <30.451950, 40.115234, 26.039919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074253, 40.518654, 26.190248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803967, 40.800495, 26.103577>,  <30.641794, 40.969601, 26.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803967, 40.800495, 26.103577>,  <31.074253, 40.518654, 26.190248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803967, 40.800495, 26.103577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177103, 0.440495, 0.880113,
		0.715572, 0.556331, -0.422436,
		-0.675715, 0.704599, -0.216678,
		30.601252, 41.011875, 26.038572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316828, 41.262661, 26.291811>,  <31.074253, 40.518654, 26.190248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316828, 41.262661, 26.291811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921017, 41.305573, 26.330442>,  <30.683531, 41.331318, 26.353621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921017, 41.305573, 26.330442>,  <31.316828, 41.262661, 26.291811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921017, 41.305573, 26.330442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143543, 0.660888, 0.736629,
		0.015196, 0.742778, -0.669365,
		-0.989528, 0.107276, 0.096578,
		30.624159, 41.337757, 26.359415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240396, 41.935860, 26.328173>,  <31.316828, 41.262661, 26.291811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240396, 41.935860, 26.328173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889555, 41.796425, 26.460340>,  <30.679050, 41.712765, 26.539642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889555, 41.796425, 26.460340>,  <31.240396, 41.935860, 26.328173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889555, 41.796425, 26.460340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086379, 0.562241, 0.822450,
		-0.472473, 0.749914, -0.463032,
		-0.877102, -0.348589, 0.330420,
		30.626425, 41.691849, 26.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820711, 42.560658, 26.638981>,  <31.240396, 41.935860, 26.328173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820711, 42.560658, 26.638981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637482, 42.247715, 26.807781>,  <30.527544, 42.059948, 26.909061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637482, 42.247715, 26.807781>,  <30.820711, 42.560658, 26.638981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637482, 42.247715, 26.807781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067220, 0.503863, 0.861164,
		-0.886370, 0.366108, -0.283396,
		-0.458072, -0.782360, 0.421999,
		30.500061, 42.013008, 26.934381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265804, 42.807076, 27.091585>,  <30.820711, 42.560658, 26.638981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265804, 42.807076, 27.091585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359892, 42.441498, 27.223877>,  <30.416344, 42.222153, 27.303251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359892, 42.441498, 27.223877>,  <30.265804, 42.807076, 27.091585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359892, 42.441498, 27.223877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023959, 0.345625, 0.938067,
		-0.971647, -0.212727, 0.103195,
		0.235219, -0.913942, 0.330729,
		30.430458, 42.167316, 27.323095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905352, 42.717319, 27.788662>,  <30.265804, 42.807076, 27.091585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905352, 42.717319, 27.788662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163305, 42.411762, 27.798367>,  <30.318077, 42.228428, 27.804190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163305, 42.411762, 27.798367>,  <29.905352, 42.717319, 27.788662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163305, 42.411762, 27.798367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111698, 0.125605, 0.985772,
		-0.756076, -0.632997, 0.166326,
		0.644882, -0.763897, 0.024263,
		30.356770, 42.182594, 27.805645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749735, 42.218338, 28.493521>,  <29.905352, 42.717319, 27.788662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749735, 42.218338, 28.493521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119566, 42.171150, 28.348610>,  <30.341465, 42.142838, 28.261663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119566, 42.171150, 28.348610>,  <29.749735, 42.218338, 28.493521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119566, 42.171150, 28.348610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380988, 0.293526, 0.876750,
		0.002909, -0.948644, 0.316332,
		0.924576, -0.117968, -0.362276,
		30.396938, 42.135761, 28.239927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018610, 41.794792, 29.006031>,  <29.749735, 42.218338, 28.493521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018610, 41.794792, 29.006031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338963, 41.954571, 28.827579>,  <30.531174, 42.050438, 28.720509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338963, 41.954571, 28.827579>,  <30.018610, 41.794792, 29.006031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338963, 41.954571, 28.827579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390464, 0.216504, 0.894798,
		0.454014, -0.890824, 0.017424,
		0.800880, 0.399448, -0.446130,
		30.579227, 42.074406, 28.693741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563196, 41.429947, 29.347616>,  <30.018610, 41.794792, 29.006031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563196, 41.429947, 29.347616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748209, 41.750542, 29.195992>,  <30.859217, 41.942898, 29.105017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748209, 41.750542, 29.195992>,  <30.563196, 41.429947, 29.347616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748209, 41.750542, 29.195992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516434, 0.103969, 0.849992,
		0.720665, -0.588909, -0.365824,
		0.462534, 0.801484, -0.379060,
		30.886969, 41.990986, 29.082273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238636, 41.266720, 29.470793>,  <30.563196, 41.429947, 29.347616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238636, 41.266720, 29.470793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281870, 41.654648, 29.383369>,  <31.307810, 41.887405, 29.330915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281870, 41.654648, 29.383369>,  <31.238636, 41.266720, 29.470793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281870, 41.654648, 29.383369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548747, 0.125122, 0.826572,
		0.828972, -0.209272, -0.518662,
		0.108082, 0.969819, -0.218560,
		31.314295, 41.945595, 29.317802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938383, 41.393486, 29.377460>,  <31.238636, 41.266720, 29.470793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938383, 41.393486, 29.377460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778938, 41.751167, 29.458952>,  <31.683271, 41.965778, 29.507847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778938, 41.751167, 29.458952>,  <31.938383, 41.393486, 29.377460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778938, 41.751167, 29.458952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494884, 0.022695, 0.868662,
		0.772139, 0.447081, -0.451575,
		-0.398611, 0.894205, 0.203729,
		31.659355, 42.019428, 29.520071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471878, 41.767796, 29.567547>,  <31.938383, 41.393486, 29.377460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471878, 41.767796, 29.567547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166462, 41.978634, 29.716770>,  <31.983213, 42.105137, 29.806305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166462, 41.978634, 29.716770>,  <32.471878, 41.767796, 29.567547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166462, 41.978634, 29.716770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474801, 0.066678, 0.877564,
		0.437689, 0.847183, -0.301179,
		-0.763539, 0.527100, 0.373059,
		31.937401, 42.136765, 29.828688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789803, 42.299866, 29.823450>,  <32.471878, 41.767796, 29.567547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789803, 42.299866, 29.823450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439594, 42.303116, 30.016695>,  <32.229469, 42.305065, 30.132643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439594, 42.303116, 30.016695>,  <32.789803, 42.299866, 29.823450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439594, 42.303116, 30.016695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482195, 0.078567, 0.872534,
		-0.030865, 0.996876, -0.072707,
		-0.875520, 0.008129, 0.483114,
		32.176937, 42.305553, 30.161629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863670, 42.785843, 30.308266>,  <32.789803, 42.299866, 29.823450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863670, 42.785843, 30.308266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551815, 42.557060, 30.410273>,  <32.364700, 42.419792, 30.471478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551815, 42.557060, 30.410273>,  <32.863670, 42.785843, 30.308266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551815, 42.557060, 30.410273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302213, 0.013035, 0.953151,
		-0.548482, 0.820183, 0.162689,
		-0.779638, -0.571953, 0.255019,
		32.317924, 42.385475, 30.486778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603920, 43.146645, 30.950926>,  <32.863670, 42.785843, 30.308266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603920, 43.146645, 30.950926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477337, 42.767220, 30.954369>,  <32.401386, 42.539562, 30.956434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477337, 42.767220, 30.954369>,  <32.603920, 43.146645, 30.950926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477337, 42.767220, 30.954369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243653, -0.072514, 0.967148,
		-0.916780, 0.308161, 0.254069,
		-0.316461, -0.948567, 0.008605,
		32.382401, 42.482651, 30.956949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248856, 43.098217, 31.545126>,  <32.603920, 43.146645, 30.950926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248856, 43.098217, 31.545126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338417, 42.720646, 31.448071>,  <32.392155, 42.494102, 31.389837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338417, 42.720646, 31.448071>,  <32.248856, 43.098217, 31.545126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338417, 42.720646, 31.448071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167686, -0.207938, 0.963661,
		-0.960077, -0.256456, 0.111725,
		0.223905, -0.943924, -0.242641,
		32.405590, 42.437469, 31.375278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772192, 42.817348, 32.035881>,  <32.248856, 43.098217, 31.545126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772192, 42.817348, 32.035881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067577, 42.576969, 31.913546>,  <32.244808, 42.432743, 31.840145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067577, 42.576969, 31.913546>,  <31.772192, 42.817348, 32.035881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067577, 42.576969, 31.913546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170718, -0.272161, 0.946987,
		-0.652327, -0.751525, -0.098387,
		0.738461, -0.600949, -0.305837,
		32.289116, 42.396687, 31.821795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751324, 42.182652, 32.496807>,  <31.772192, 42.817348, 32.035881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751324, 42.182652, 32.496807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109779, 42.162006, 32.320499>,  <32.324852, 42.149620, 32.214714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109779, 42.162006, 32.320499>,  <31.751324, 42.182652, 32.496807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109779, 42.162006, 32.320499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407937, -0.295218, 0.863964,
		-0.174712, -0.954035, -0.243501,
		0.896138, -0.051612, -0.440764,
		32.378620, 42.146523, 32.188271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082657, 41.771835, 32.882946>,  <31.751324, 42.182652, 32.496807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082657, 41.771835, 32.882946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382786, 41.918659, 32.663025>,  <32.562862, 42.006752, 32.531071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382786, 41.918659, 32.663025>,  <32.082657, 41.771835, 32.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382786, 41.918659, 32.663025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635725, -0.172537, 0.752386,
		0.181306, -0.914058, -0.362805,
		0.750322, 0.367056, -0.549807,
		32.607883, 42.028774, 32.498081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691246, 41.333759, 32.771198>,  <32.082657, 41.771835, 32.882946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691246, 41.333759, 32.771198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885647, 41.679005, 32.716282>,  <33.002285, 41.886150, 32.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885647, 41.679005, 32.716282>,  <32.691246, 41.333759, 32.771198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885647, 41.679005, 32.716282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712236, -0.300109, 0.634551,
		0.506484, -0.406173, -0.760590,
		0.485997, 0.863110, -0.137291,
		33.031445, 41.937939, 32.675095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404278, 41.215858, 32.699364>,  <32.691246, 41.333759, 32.771198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404278, 41.215858, 32.699364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396858, 41.598969, 32.814129>,  <33.392406, 41.828835, 32.882988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396858, 41.598969, 32.814129>,  <33.404278, 41.215858, 32.699364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396858, 41.598969, 32.814129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756042, -0.174342, 0.630877,
		0.654260, 0.228623, -0.720885,
		-0.018553, 0.957777, 0.286914,
		33.391293, 41.886303, 32.900204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098991, 41.294441, 32.757923>,  <33.404278, 41.215858, 32.699364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098991, 41.294441, 32.757923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930172, 41.604790, 32.945496>,  <33.828880, 41.791000, 33.058037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930172, 41.604790, 32.945496>,  <34.098991, 41.294441, 32.757923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930172, 41.604790, 32.945496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664165, -0.087446, 0.742454,
		0.617057, 0.624798, -0.478403,
		-0.422049, 0.775875, 0.468928,
		33.803558, 41.837551, 33.086174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626053, 41.829582, 32.832535>,  <34.098991, 41.294441, 32.757923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626053, 41.829582, 32.832535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350212, 41.859043, 33.120708>,  <34.184708, 41.876720, 33.293613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350212, 41.859043, 33.120708>,  <34.626053, 41.829582, 32.832535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350212, 41.859043, 33.120708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724120, 0.084157, 0.684520,
		-0.010216, 0.993727, -0.111366,
		-0.689599, 0.073649, 0.720437,
		34.143333, 41.881138, 33.336838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502819, 42.163174, 33.544403>,  <34.626053, 41.829582, 32.832535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502819, 42.163174, 33.544403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876656, 42.050690, 33.457268>,  <35.100960, 41.983200, 33.404987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876656, 42.050690, 33.457268>,  <34.502819, 42.163174, 33.544403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876656, 42.050690, 33.457268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170666, 0.182830, -0.968218,
		0.312098, 0.942070, 0.122880,
		0.934595, -0.281208, -0.217840,
		35.157036, 41.966328, 33.391914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786789, 42.594944, 33.041492>,  <34.502819, 42.163174, 33.544403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786789, 42.594944, 33.041492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046021, 42.290359, 33.036324>,  <35.201561, 42.107609, 33.033222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046021, 42.290359, 33.036324>,  <34.786789, 42.594944, 33.041492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046021, 42.290359, 33.036324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141945, 0.137443, -0.980286,
		0.748227, 0.633470, 0.197160,
		0.648081, -0.761462, -0.012921,
		35.240444, 42.061920, 33.032448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268208, 42.756874, 32.521984>,  <34.786789, 42.594944, 33.041492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268208, 42.756874, 32.521984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352161, 42.367661, 32.560268>,  <35.402534, 42.134132, 32.583241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352161, 42.367661, 32.560268>,  <35.268208, 42.756874, 32.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352161, 42.367661, 32.560268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202684, -0.052467, -0.977838,
		0.956486, 0.224636, 0.186205,
		0.209888, -0.973029, 0.095714,
		35.415127, 42.075752, 32.588982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902946, 42.638695, 32.099072>,  <35.268208, 42.756874, 32.521984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902946, 42.638695, 32.099072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714088, 42.288532, 32.140541>,  <35.600773, 42.078434, 32.165421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714088, 42.288532, 32.140541>,  <35.902946, 42.638695, 32.099072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714088, 42.288532, 32.140541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276274, -0.258625, -0.925627,
		0.837111, -0.408386, 0.363960,
		-0.472142, -0.875405, 0.103671,
		35.572445, 42.025909, 32.171642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372318, 42.092274, 31.856354>,  <35.902946, 42.638695, 32.099072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372318, 42.092274, 31.856354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994728, 41.961792, 31.836365>,  <35.768173, 41.883503, 31.824371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994728, 41.961792, 31.836365>,  <36.372318, 42.092274, 31.856354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994728, 41.961792, 31.836365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123855, -0.209845, -0.969858,
		0.305882, -0.921715, 0.238491,
		-0.943979, -0.326201, -0.049971,
		35.711533, 41.863934, 31.821373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408543, 41.481644, 31.416107>,  <36.372318, 42.092274, 31.856354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408543, 41.481644, 31.416107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033409, 41.620209, 31.424738>,  <35.808331, 41.703350, 31.429916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033409, 41.620209, 31.424738>,  <36.408543, 41.481644, 31.416107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033409, 41.620209, 31.424738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106568, -0.228235, -0.967756,
		-0.330321, -0.909893, 0.250963,
		-0.937833, 0.346415, 0.021575,
		35.752060, 41.724133, 31.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939564, 40.979523, 31.103344>,  <36.408543, 41.481644, 31.416107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939564, 40.979523, 31.103344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751701, 41.330830, 31.067429>,  <35.638985, 41.541615, 31.045879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751701, 41.330830, 31.067429>,  <35.939564, 40.979523, 31.103344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751701, 41.330830, 31.067429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018233, -0.111331, -0.993616,
		-0.882660, -0.465023, 0.068301,
		-0.469658, 0.878271, -0.089789,
		35.610806, 41.594311, 31.040491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541721, 40.866203, 30.476616>,  <35.939564, 40.979523, 31.103344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541721, 40.866203, 30.476616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501556, 41.255375, 30.559870>,  <35.477459, 41.488880, 30.609821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501556, 41.255375, 30.559870>,  <35.541721, 40.866203, 30.476616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501556, 41.255375, 30.559870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188911, 0.186744, -0.964074,
		-0.976847, -0.136125, 0.165046,
		-0.100414, 0.972932, 0.208135,
		35.471432, 41.547253, 30.622311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959908, 41.091240, 30.083975>,  <35.541721, 40.866203, 30.476616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959908, 41.091240, 30.083975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163673, 41.427544, 30.157314>,  <35.285934, 41.629326, 30.201317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163673, 41.427544, 30.157314>,  <34.959908, 41.091240, 30.083975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163673, 41.427544, 30.157314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104623, 0.271999, -0.956593,
		-0.854136, 0.468122, 0.226524,
		0.509417, 0.840760, 0.183348,
		35.316498, 41.679771, 30.212318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506031, 41.813675, 29.909603>,  <34.959908, 41.091240, 30.083975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506031, 41.813675, 29.909603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899708, 41.883831, 29.899736>,  <35.135914, 41.925926, 29.893816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899708, 41.883831, 29.899736>,  <34.506031, 41.813675, 29.909603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899708, 41.883831, 29.899736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096693, 0.415361, -0.904503,
		-0.148397, 0.892588, 0.425753,
		0.984189, 0.175393, -0.024669,
		35.194965, 41.936447, 29.892336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474060, 42.463619, 29.625257>,  <34.506031, 41.813675, 29.909603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474060, 42.463619, 29.625257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853207, 42.341370, 29.589178>,  <35.080696, 42.268021, 29.567530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853207, 42.341370, 29.589178>,  <34.474060, 42.463619, 29.625257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853207, 42.341370, 29.589178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075222, 0.489670, -0.868657,
		0.309648, 0.816590, 0.487133,
		0.947871, -0.305621, -0.090200,
		35.137569, 42.249683, 29.562119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879330, 42.992985, 29.379654>,  <34.474060, 42.463619, 29.625257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879330, 42.992985, 29.379654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092281, 42.674107, 29.265776>,  <35.220055, 42.482780, 29.197449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092281, 42.674107, 29.265776>,  <34.879330, 42.992985, 29.379654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092281, 42.674107, 29.265776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079490, 0.381912, -0.920774,
		0.842763, 0.467575, 0.266692,
		0.532384, -0.797193, -0.284694,
		35.251995, 42.434948, 29.180367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150074, 43.301849, 28.793386>,  <34.879330, 42.992985, 29.379654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150074, 43.301849, 28.793386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185459, 42.904018, 28.771502>,  <35.206688, 42.665321, 28.758371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185459, 42.904018, 28.771502>,  <35.150074, 43.301849, 28.793386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185459, 42.904018, 28.771502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034770, 0.051811, -0.998051,
		0.995473, 0.090189, -0.029998,
		0.088459, -0.994576, -0.054712,
		35.211998, 42.605644, 28.755089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552746, 43.157589, 28.230331>,  <35.150074, 43.301849, 28.793386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552746, 43.157589, 28.230331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374573, 42.805576, 28.296217>,  <35.267670, 42.594368, 28.335749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374573, 42.805576, 28.296217>,  <35.552746, 43.157589, 28.230331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374573, 42.805576, 28.296217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079090, -0.144579, -0.986327,
		0.891817, -0.452366, -0.005202,
		-0.445428, -0.880035, 0.164716,
		35.240944, 42.541565, 28.345633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734371, 42.718445, 27.607553>,  <35.552746, 43.157589, 28.230331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734371, 42.718445, 27.607553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445942, 42.510529, 27.790802>,  <35.272884, 42.385780, 27.900751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445942, 42.510529, 27.790802>,  <35.734371, 42.718445, 27.607553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445942, 42.510529, 27.790802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345779, -0.303006, -0.888045,
		0.600407, -0.798755, 0.038758,
		-0.721074, -0.519787, 0.458119,
		35.229618, 42.354591, 27.928238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727398, 42.131477, 27.194784>,  <35.734371, 42.718445, 27.607553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727398, 42.131477, 27.194784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390724, 42.145458, 27.410318>,  <35.188721, 42.153847, 27.539639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390724, 42.145458, 27.410318>,  <35.727398, 42.131477, 27.194784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390724, 42.145458, 27.410318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526927, -0.271138, -0.805501,
		0.117948, -0.961906, 0.246629,
		-0.841686, 0.034948, 0.538835,
		35.138218, 42.155945, 27.571968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308987, 41.584263, 27.022789>,  <35.727398, 42.131477, 27.194784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308987, 41.584263, 27.022789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021648, 41.821217, 27.168695>,  <34.849243, 41.963390, 27.256239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021648, 41.821217, 27.168695>,  <35.308987, 41.584263, 27.022789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021648, 41.821217, 27.168695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569134, -0.198887, -0.797829,
		-0.400076, -0.780719, 0.480017,
		-0.718349, 0.592387, 0.364764,
		34.806145, 41.998932, 27.278124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686172, 41.176285, 27.103710>,  <35.308987, 41.584263, 27.022789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686172, 41.176285, 27.103710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566994, 41.553844, 27.046741>,  <34.495487, 41.780380, 27.012560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566994, 41.553844, 27.046741>,  <34.686172, 41.176285, 27.103710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566994, 41.553844, 27.046741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579833, -0.297475, -0.758487,
		-0.758300, -0.143412, 0.635936,
		-0.297951, 0.943897, -0.142420,
		34.477608, 41.837013, 27.004015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996700, 41.104092, 26.806360>,  <34.686172, 41.176285, 27.103710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996700, 41.104092, 26.806360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090614, 41.487503, 26.741739>,  <34.146965, 41.717548, 26.702967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090614, 41.487503, 26.741739>,  <33.996700, 41.104092, 26.806360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090614, 41.487503, 26.741739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597657, 0.011276, -0.801673,
		-0.766604, 0.284777, 0.575518,
		0.234787, 0.958528, -0.161555,
		34.161049, 41.775063, 26.693274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288506, 41.479446, 26.796793>,  <33.996700, 41.104092, 26.806360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288506, 41.479446, 26.796793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561855, 41.704430, 26.610613>,  <33.725864, 41.839420, 26.498905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561855, 41.704430, 26.610613>,  <33.288506, 41.479446, 26.796793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561855, 41.704430, 26.610613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540085, -0.039499, -0.840683,
		-0.491236, 0.825880, 0.276785,
		0.683370, 0.562461, -0.465449,
		33.766865, 41.873169, 26.470978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909626, 41.940147, 26.498434>,  <33.288506, 41.479446, 26.796793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909626, 41.940147, 26.498434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240509, 41.906391, 26.276224>,  <33.439037, 41.886135, 26.142899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240509, 41.906391, 26.276224>,  <32.909626, 41.940147, 26.498434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240509, 41.906391, 26.276224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557880, -0.005346, -0.829904,
		0.067068, 0.996418, -0.051503,
		0.827207, -0.084393, -0.555523,
		33.488670, 41.881073, 26.109568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741821, 42.309044, 26.025812>,  <32.909626, 41.940147, 26.498434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741821, 42.309044, 26.025812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046303, 42.099312, 25.873161>,  <33.228992, 41.973473, 25.781570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046303, 42.099312, 25.873161>,  <32.741821, 42.309044, 26.025812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046303, 42.099312, 25.873161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533347, -0.171391, -0.828351,
		0.368926, 0.834085, -0.410116,
		0.761206, -0.524335, -0.381627,
		33.274666, 41.942013, 25.758673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883640, 42.477386, 25.348049>,  <32.741821, 42.309044, 26.025812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883640, 42.477386, 25.348049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054935, 42.118076, 25.387470>,  <33.157715, 41.902489, 25.411123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054935, 42.118076, 25.387470>,  <32.883640, 42.477386, 25.348049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054935, 42.118076, 25.387470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457062, -0.309389, -0.833890,
		0.779554, 0.312059, -0.543060,
		0.428239, -0.898275, 0.098555,
		33.183407, 41.848595, 25.417036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079647, 42.350090, 24.672167>,  <32.883640, 42.477386, 25.348049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079647, 42.350090, 24.672167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088947, 41.993088, 24.852341>,  <33.094528, 41.778885, 24.960445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088947, 41.993088, 24.852341>,  <33.079647, 42.350090, 24.672167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088947, 41.993088, 24.852341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366765, -0.426756, -0.826658,
		0.930023, -0.145981, -0.337263,
		0.023252, -0.892507, 0.450433,
		33.095924, 41.725334, 24.987471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238491, 41.898056, 24.150885>,  <33.079647, 42.350090, 24.672167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238491, 41.898056, 24.150885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057476, 41.647308, 24.404579>,  <32.948868, 41.496861, 24.556795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057476, 41.647308, 24.404579>,  <33.238491, 41.898056, 24.150885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057476, 41.647308, 24.404579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323139, -0.547614, -0.771816,
		0.831140, -0.554219, 0.045249,
		-0.452534, -0.626866, 0.634234,
		32.921715, 41.459248, 24.594849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540276, 41.377277, 23.953562>,  <33.238491, 41.898056, 24.150885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540276, 41.377277, 23.953562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232006, 41.241356, 24.169188>,  <33.047043, 41.159801, 24.298563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232006, 41.241356, 24.169188>,  <33.540276, 41.377277, 23.953562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232006, 41.241356, 24.169188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266440, -0.596619, -0.757004,
		0.578852, -0.727033, 0.369262,
		-0.770675, -0.339808, 0.539064,
		33.000805, 41.139412, 24.330906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579746, 40.603519, 23.883465>,  <33.540276, 41.377277, 23.953562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579746, 40.603519, 23.883465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203621, 40.691063, 23.987703>,  <32.977947, 40.743591, 24.050247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203621, 40.691063, 23.987703>,  <33.579746, 40.603519, 23.883465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203621, 40.691063, 23.987703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338625, -0.677876, -0.652547,
		0.033834, -0.701843, 0.711528,
		-0.940313, 0.218863, 0.260597,
		32.921528, 40.756721, 24.065882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263248, 39.930561, 23.963772>,  <33.579746, 40.603519, 23.883465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263248, 39.930561, 23.963772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961967, 40.185284, 23.897846>,  <32.781200, 40.338116, 23.858292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961967, 40.185284, 23.897846>,  <33.263248, 39.930561, 23.963772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961967, 40.185284, 23.897846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374919, -0.621482, -0.687892,
		-0.540479, -0.456333, 0.706854,
		-0.753205, 0.636804, -0.164810,
		32.736008, 40.376324, 23.848402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552105, 39.584824, 23.924818>,  <33.263248, 39.930561, 23.963772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552105, 39.584824, 23.924818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516499, 39.927685, 23.721897>,  <32.495132, 40.133404, 23.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516499, 39.927685, 23.721897>,  <32.552105, 39.584824, 23.924818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516499, 39.927685, 23.721897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221883, -0.513592, -0.828849,
		-0.971001, 0.038779, 0.235907,
		-0.089018, 0.857157, -0.507303,
		32.489792, 40.184834, 23.569706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963959, 39.504128, 23.521544>,  <32.552105, 39.584824, 23.924818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963959, 39.504128, 23.521544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138111, 39.807835, 23.328066>,  <32.242603, 39.990059, 23.211979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138111, 39.807835, 23.328066>,  <31.963959, 39.504128, 23.521544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138111, 39.807835, 23.328066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223664, -0.429212, -0.875072,
		-0.872020, 0.489173, -0.017050,
		0.435380, 0.759267, -0.483692,
		32.268726, 40.035614, 23.182959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452154, 39.724537, 23.072908>,  <31.963959, 39.504128, 23.521544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452154, 39.724537, 23.072908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802029, 39.869820, 22.944530>,  <32.011955, 39.956989, 22.867504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802029, 39.869820, 22.944530>,  <31.452154, 39.724537, 23.072908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802029, 39.869820, 22.944530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170696, -0.388911, -0.905324,
		-0.453637, 0.846659, -0.278178,
		0.874687, 0.363204, -0.320946,
		32.064434, 39.978783, 22.848248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299402, 40.086132, 22.493389>,  <31.452154, 39.724537, 23.072908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299402, 40.086132, 22.493389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690401, 40.004894, 22.470589>,  <31.925001, 39.956150, 22.456909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690401, 40.004894, 22.470589>,  <31.299402, 40.086132, 22.493389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690401, 40.004894, 22.470589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138506, -0.414139, -0.899614,
		0.159103, 0.887266, -0.432950,
		0.977498, -0.203098, -0.057001,
		31.983650, 39.943966, 22.453489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625336, 40.404495, 21.850367>,  <31.299402, 40.086132, 22.493389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625336, 40.404495, 21.850367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851408, 40.093365, 21.960323>,  <31.987051, 39.906689, 22.026297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851408, 40.093365, 21.960323>,  <31.625336, 40.404495, 21.850367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851408, 40.093365, 21.960323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117673, -0.405816, -0.906348,
		0.816532, 0.479903, -0.320887,
		0.565180, -0.777822, 0.274890,
		32.020962, 39.860020, 22.042789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030075, 40.377190, 21.341850>,  <31.625336, 40.404495, 21.850367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030075, 40.377190, 21.341850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088356, 40.016548, 21.504765>,  <32.123325, 39.800163, 21.602512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088356, 40.016548, 21.504765>,  <32.030075, 40.377190, 21.341850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088356, 40.016548, 21.504765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014327, -0.413558, -0.910365,
		0.989225, 0.126808, -0.073174,
		0.145703, -0.901604, 0.407284,
		32.132069, 39.746067, 21.626949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563396, 40.089314, 20.964869>,  <32.030075, 40.377190, 21.341850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563396, 40.089314, 20.964869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350819, 39.796783, 21.135853>,  <32.223270, 39.621265, 21.238443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350819, 39.796783, 21.135853>,  <32.563396, 40.089314, 20.964869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350819, 39.796783, 21.135853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042554, -0.480934, -0.875723,
		0.846021, -0.483592, 0.224470,
		-0.531448, -0.731328, 0.427459,
		32.191383, 39.577385, 21.264091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733494, 39.603184, 20.526758>,  <32.563396, 40.089314, 20.964869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733494, 39.603184, 20.526758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415199, 39.460526, 20.722555>,  <32.224220, 39.374931, 20.840033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415199, 39.460526, 20.722555>,  <32.733494, 39.603184, 20.526758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415199, 39.460526, 20.722555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267920, -0.517548, -0.812627,
		0.543154, -0.777785, 0.316281,
		-0.795740, -0.356644, 0.489493,
		32.176476, 39.353531, 20.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610886, 38.967354, 20.266178>,  <32.733494, 39.603184, 20.526758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610886, 38.967354, 20.266178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251793, 39.035984, 20.428478>,  <32.036335, 39.077164, 20.525858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251793, 39.035984, 20.428478>,  <32.610886, 38.967354, 20.266178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251793, 39.035984, 20.428478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439110, -0.274520, -0.855466,
		-0.035389, -0.946151, 0.321786,
		-0.897736, 0.171573, 0.405749,
		31.982471, 39.087456, 20.550203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270630, 38.337795, 20.278322>,  <32.610886, 38.967354, 20.266178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270630, 38.337795, 20.278322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014160, 38.643269, 20.248165>,  <31.860279, 38.826553, 20.230070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014160, 38.643269, 20.248165>,  <32.270630, 38.337795, 20.278322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014160, 38.643269, 20.248165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489610, -0.482748, -0.726111,
		-0.590918, -0.428645, 0.683432,
		-0.641169, 0.763687, -0.075396,
		31.821810, 38.872375, 20.225546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258625, 37.778076, 19.752396>,  <32.270630, 38.337795, 20.278322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258625, 37.778076, 19.752396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605545, 37.610439, 19.644953>,  <32.813698, 37.509857, 19.580486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605545, 37.610439, 19.644953>,  <32.258625, 37.778076, 19.752396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605545, 37.610439, 19.644953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404668, 0.279371, 0.870744,
		-0.289879, -0.863896, 0.411891,
		0.867303, -0.419089, -0.268607,
		32.865734, 37.484711, 19.564371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400311, 37.410049, 20.375238>,  <32.258625, 37.778076, 19.752396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400311, 37.410049, 20.375238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730183, 37.495609, 20.165804>,  <32.928108, 37.546944, 20.040144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730183, 37.495609, 20.165804>,  <32.400311, 37.410049, 20.375238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730183, 37.495609, 20.165804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454585, 0.300128, 0.838615,
		0.336531, -0.929605, 0.150270,
		0.824681, 0.213910, -0.523587,
		32.977589, 37.559780, 20.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900734, 37.104767, 20.690084>,  <32.400311, 37.410049, 20.375238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900734, 37.104767, 20.690084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111759, 37.371662, 20.479763>,  <33.238373, 37.531799, 20.353569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111759, 37.371662, 20.479763>,  <32.900734, 37.104767, 20.690084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111759, 37.371662, 20.479763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575912, 0.174095, 0.798760,
		0.624502, -0.724214, -0.292423,
		0.527564, 0.667237, -0.525806,
		33.270027, 37.571835, 20.322021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624683, 37.017521, 20.886536>,  <32.900734, 37.104767, 20.690084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624683, 37.017521, 20.886536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614777, 37.394825, 20.754082>,  <33.608833, 37.621208, 20.674610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614777, 37.394825, 20.754082>,  <33.624683, 37.017521, 20.886536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614777, 37.394825, 20.754082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537702, 0.291811, 0.791027,
		0.842771, -0.158457, -0.514420,
		-0.024770, 0.943259, -0.331133,
		33.607346, 37.677803, 20.654741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246086, 37.171104, 20.950462>,  <33.624683, 37.017521, 20.886536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246086, 37.171104, 20.950462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057285, 37.521694, 20.912491>,  <33.944004, 37.732048, 20.889708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057285, 37.521694, 20.912491>,  <34.246086, 37.171104, 20.950462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057285, 37.521694, 20.912491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394343, 0.306205, 0.866448,
		0.788485, 0.371530, -0.490160,
		-0.472001, 0.876472, -0.094928,
		33.915684, 37.784637, 20.884012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716644, 37.670876, 20.896109>,  <34.246086, 37.171104, 20.950462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716644, 37.670876, 20.896109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394833, 37.841080, 21.061840>,  <34.201744, 37.943203, 21.161280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394833, 37.841080, 21.061840>,  <34.716644, 37.670876, 20.896109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394833, 37.841080, 21.061840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558045, 0.302853, 0.772571,
		0.203257, 0.852772, -0.481109,
		-0.804533, 0.425511, 0.414328,
		34.153473, 37.968735, 21.186138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972813, 38.346577, 20.957104>,  <34.716644, 37.670876, 20.896109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972813, 38.346577, 20.957104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667831, 38.254204, 21.198874>,  <34.484840, 38.198780, 21.343935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667831, 38.254204, 21.198874>,  <34.972813, 38.346577, 20.957104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667831, 38.254204, 21.198874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561764, 0.227263, 0.795470,
		-0.321064, 0.946056, -0.043548,
		-0.762456, -0.230933, 0.604426,
		34.439095, 38.184925, 21.380201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081604, 38.833416, 21.415081>,  <34.972813, 38.346577, 20.957104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081604, 38.833416, 21.415081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803959, 38.606792, 21.592716>,  <34.637371, 38.470818, 21.699297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803959, 38.606792, 21.592716>,  <35.081604, 38.833416, 21.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803959, 38.606792, 21.592716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314920, 0.315756, 0.895055,
		-0.647323, 0.761125, -0.040751,
		-0.694116, -0.566556, 0.444090,
		34.595722, 38.436825, 21.725943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763176, 39.281418, 21.876013>,  <35.081604, 38.833416, 21.415081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763176, 39.281418, 21.876013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692200, 38.904591, 21.989868>,  <34.649616, 38.678493, 22.058182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692200, 38.904591, 21.989868>,  <34.763176, 39.281418, 21.876013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692200, 38.904591, 21.989868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199699, 0.248745, 0.947758,
		-0.963658, 0.225011, 0.143994,
		-0.177438, -0.942070, 0.284640,
		34.638969, 38.621971, 22.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354694, 39.272541, 22.450705>,  <34.763176, 39.281418, 21.876013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354694, 39.272541, 22.450705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523735, 38.910892, 22.475929>,  <34.625160, 38.693905, 22.491064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523735, 38.910892, 22.475929>,  <34.354694, 39.272541, 22.450705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523735, 38.910892, 22.475929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197213, 0.159646, 0.967275,
		-0.884598, -0.396336, 0.245770,
		0.422602, -0.904119, 0.063060,
		34.650517, 38.639656, 22.494846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093861, 39.022919, 23.032141>,  <34.354694, 39.272541, 22.450705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093861, 39.022919, 23.032141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434895, 38.818985, 22.986237>,  <34.639515, 38.696625, 22.958694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434895, 38.818985, 22.986237>,  <34.093861, 39.022919, 23.032141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434895, 38.818985, 22.986237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201347, 0.117822, 0.972408,
		-0.482245, -0.852166, 0.203107,
		0.852584, -0.509834, -0.114762,
		34.690670, 38.666035, 22.951809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064388, 38.548038, 23.515959>,  <34.093861, 39.022919, 23.032141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064388, 38.548038, 23.515959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452209, 38.592907, 23.428886>,  <34.684902, 38.619827, 23.376642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452209, 38.592907, 23.428886>,  <34.064388, 38.548038, 23.515959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452209, 38.592907, 23.428886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222725, -0.034419, 0.974273,
		0.101796, -0.993092, -0.058355,
		0.969552, 0.112175, -0.217683,
		34.743076, 38.626560, 23.363581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386517, 37.948753, 23.840357>,  <34.064388, 38.548038, 23.515959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386517, 37.948753, 23.840357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590111, 38.287533, 23.778900>,  <34.712269, 38.490799, 23.742025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590111, 38.287533, 23.778900>,  <34.386517, 37.948753, 23.840357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590111, 38.287533, 23.778900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162816, 0.080543, 0.983364,
		0.845234, -0.525538, -0.096901,
		0.508990, 0.846949, -0.153644,
		34.742809, 38.541618, 23.732807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799942, 37.943417, 24.415949>,  <34.386517, 37.948753, 23.840357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799942, 37.943417, 24.415949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834320, 38.313461, 24.268013>,  <34.854946, 38.535488, 24.179251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834320, 38.313461, 24.268013>,  <34.799942, 37.943417, 24.415949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834320, 38.313461, 24.268013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041695, 0.367549, 0.929069,
		0.995427, -0.095273, -0.006982,
		0.085949, 0.925111, -0.369840,
		34.860104, 38.590996, 24.157061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297775, 38.224159, 24.816113>,  <34.799942, 37.943417, 24.415949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297775, 38.224159, 24.816113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162693, 38.549583, 24.626770>,  <35.081642, 38.744839, 24.513165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162693, 38.549583, 24.626770>,  <35.297775, 38.224159, 24.816113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162693, 38.549583, 24.626770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206960, 0.554776, 0.805848,
		0.918217, 0.174175, -0.355727,
		-0.337707, 0.813564, -0.473357,
		35.061382, 38.793652, 24.484762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864834, 38.719891, 24.725636>,  <35.297775, 38.224159, 24.816113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864834, 38.719891, 24.725636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520004, 38.922497, 24.732265>,  <35.313107, 39.044060, 24.736244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520004, 38.922497, 24.732265>,  <35.864834, 38.719891, 24.725636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520004, 38.922497, 24.732265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351305, 0.573696, 0.739904,
		0.365262, 0.643674, -0.672509,
		-0.862072, 0.506514, 0.016576,
		35.261383, 39.074451, 24.737238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960388, 39.552097, 24.648113>,  <35.864834, 38.719891, 24.725636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960388, 39.552097, 24.648113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602722, 39.508667, 24.821865>,  <35.388123, 39.482609, 24.926117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602722, 39.508667, 24.821865>,  <35.960388, 39.552097, 24.648113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602722, 39.508667, 24.821865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255024, 0.673900, 0.693413,
		-0.368018, 0.730800, -0.574886,
		-0.894162, -0.108579, 0.434379,
		35.334473, 39.476093, 24.952179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697880, 40.265743, 24.760765>,  <35.960388, 39.552097, 24.648113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697880, 40.265743, 24.760765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499096, 40.030060, 25.015593>,  <35.379826, 39.888649, 25.168489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499096, 40.030060, 25.015593>,  <35.697880, 40.265743, 24.760765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499096, 40.030060, 25.015593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171052, 0.653227, 0.737588,
		-0.850748, 0.475524, -0.223841,
		-0.496959, -0.589213, 0.637071,
		35.350010, 39.853294, 25.206715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415092, 40.647572, 25.240953>,  <35.697880, 40.265743, 24.760765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415092, 40.647572, 25.240953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384758, 40.304935, 25.445110>,  <35.366558, 40.099354, 25.567604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384758, 40.304935, 25.445110>,  <35.415092, 40.647572, 25.240953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384758, 40.304935, 25.445110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270561, 0.474984, 0.837369,
		-0.959711, 0.201597, 0.195739,
		-0.075838, -0.856591, 0.510392,
		35.362007, 40.047958, 25.598228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064327, 40.767887, 25.904924>,  <35.415092, 40.647572, 25.240953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064327, 40.767887, 25.904924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246838, 40.420040, 25.980370>,  <35.356342, 40.211330, 26.025637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246838, 40.420040, 25.980370>,  <35.064327, 40.767887, 25.904924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246838, 40.420040, 25.980370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406194, 0.392138, 0.825369,
		-0.791721, -0.299979, 0.532156,
		0.456272, -0.869621, 0.188615,
		35.383720, 40.159153, 26.036955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955620, 40.619461, 26.644230>,  <35.064327, 40.767887, 25.904924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955620, 40.619461, 26.644230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255520, 40.378914, 26.533789>,  <35.435459, 40.234585, 26.467524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255520, 40.378914, 26.533789>,  <34.955620, 40.619461, 26.644230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255520, 40.378914, 26.533789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575517, 0.386678, 0.720597,
		-0.326578, -0.699171, 0.636008,
		0.749751, -0.601365, -0.276104,
		35.480446, 40.198505, 26.450958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109009, 40.174011, 27.285492>,  <34.955620, 40.619461, 26.644230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109009, 40.174011, 27.285492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433819, 40.200672, 27.053568>,  <35.628704, 40.216671, 26.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433819, 40.200672, 27.053568>,  <35.109009, 40.174011, 27.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433819, 40.200672, 27.053568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542476, 0.280230, 0.791954,
		0.215268, -0.957616, 0.191393,
		0.812022, 0.066656, -0.579808,
		35.677425, 40.220669, 26.879625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616959, 39.783619, 27.713606>,  <35.109009, 40.174011, 27.285492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616959, 39.783619, 27.713606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800892, 40.017792, 27.446526>,  <35.911251, 40.158295, 27.286278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800892, 40.017792, 27.446526>,  <35.616959, 39.783619, 27.713606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800892, 40.017792, 27.446526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713794, 0.203616, 0.670104,
		0.528253, -0.784737, -0.324247,
		0.459833, 0.585430, -0.667701,
		35.938843, 40.193420, 27.246216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234528, 39.530354, 27.822001>,  <35.616959, 39.783619, 27.713606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234528, 39.530354, 27.822001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293407, 39.875896, 27.629301>,  <36.328735, 40.083221, 27.513681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293407, 39.875896, 27.629301>,  <36.234528, 39.530354, 27.822001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293407, 39.875896, 27.629301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759481, 0.213307, 0.614564,
		0.633655, -0.456346, -0.624684,
		0.147204, 0.863857, -0.481749,
		36.337570, 40.135052, 27.484776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957275, 39.650047, 27.809589>,  <36.234528, 39.530354, 27.822001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957275, 39.650047, 27.809589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813698, 40.016037, 27.735855>,  <36.727551, 40.235630, 27.691614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813698, 40.016037, 27.735855>,  <36.957275, 39.650047, 27.809589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813698, 40.016037, 27.735855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708058, 0.395610, 0.584932,
		0.608125, 0.079434, -0.789857,
		-0.358939, 0.914977, -0.184336,
		36.706017, 40.290531, 27.680553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555775, 39.996391, 27.541809>,  <36.957275, 39.650047, 27.809589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555775, 39.996391, 27.541809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275429, 40.235249, 27.697868>,  <37.107224, 40.378563, 27.791504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275429, 40.235249, 27.697868>,  <37.555775, 39.996391, 27.541809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275429, 40.235249, 27.697868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669484, 0.361952, 0.648677,
		0.246138, 0.715830, -0.653455,
		-0.700862, 0.597141, 0.390147,
		37.065170, 40.414391, 27.814913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916847, 40.571468, 27.745239>,  <37.555775, 39.996391, 27.541809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916847, 40.571468, 27.745239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572445, 40.613529, 27.944286>,  <37.365803, 40.638763, 28.063715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572445, 40.613529, 27.944286>,  <37.916847, 40.571468, 27.745239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572445, 40.613529, 27.944286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480037, 0.491285, 0.726776,
		-0.168052, 0.864629, -0.473471,
		-0.861001, 0.105147, 0.497615,
		37.314144, 40.645073, 28.093571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696918, 41.372635, 27.908865>,  <37.916847, 40.571468, 27.745239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696918, 41.372635, 27.908865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516624, 41.136818, 28.176977>,  <37.408447, 40.995327, 28.337845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516624, 41.136818, 28.176977>,  <37.696918, 41.372635, 27.908865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516624, 41.136818, 28.176977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401490, 0.536759, 0.742089,
		-0.797272, 0.603597, -0.005240,
		-0.450736, -0.589543, 0.670281,
		37.381405, 40.959953, 28.378061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417793, 41.800835, 28.395996>,  <37.696918, 41.372635, 27.908865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417793, 41.800835, 28.395996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411724, 41.452435, 28.592415>,  <37.408085, 41.243393, 28.710266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411724, 41.452435, 28.592415>,  <37.417793, 41.800835, 28.395996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411724, 41.452435, 28.592415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228383, 0.475103, 0.849776,
		-0.973453, 0.125037, 0.191715,
		-0.015169, -0.871001, 0.491046,
		37.407173, 41.191135, 28.739729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030090, 41.853470, 29.135384>,  <37.417793, 41.800835, 28.395996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030090, 41.853470, 29.135384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271454, 41.535858, 29.164825>,  <37.416271, 41.345291, 29.182489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271454, 41.535858, 29.164825>,  <37.030090, 41.853470, 29.135384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271454, 41.535858, 29.164825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293736, 0.307132, 0.905201,
		-0.741358, -0.524590, 0.418561,
		0.603413, -0.794025, 0.073604,
		37.452477, 41.297649, 29.186907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977638, 41.779697, 29.875933>,  <37.030090, 41.853470, 29.135384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977638, 41.779697, 29.875933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268394, 41.539021, 29.743513>,  <37.442848, 41.394615, 29.664061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268394, 41.539021, 29.743513>,  <36.977638, 41.779697, 29.875933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268394, 41.539021, 29.743513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485788, 0.109762, 0.867158,
		-0.485428, -0.791148, 0.372081,
		0.726891, -0.601695, -0.331049,
		37.486462, 41.358513, 29.644199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038193, 41.272083, 30.330265>,  <36.977638, 41.779697, 29.875933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038193, 41.272083, 30.330265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386814, 41.259708, 30.134537>,  <37.595989, 41.252285, 30.017099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386814, 41.259708, 30.134537>,  <37.038193, 41.272083, 30.330265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386814, 41.259708, 30.134537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484254, -0.101894, 0.868974,
		-0.076746, -0.994314, -0.073823,
		0.871555, -0.030941, -0.489321,
		37.648281, 41.250427, 29.987741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435036, 40.773029, 30.647688>,  <37.038193, 41.272083, 30.330265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435036, 40.773029, 30.647688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706463, 40.983868, 30.443058>,  <37.869320, 41.110371, 30.320280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706463, 40.983868, 30.443058>,  <37.435036, 40.773029, 30.647688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706463, 40.983868, 30.443058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564509, 0.071380, 0.822335,
		0.469967, -0.846801, -0.249115,
		0.678573, 0.527098, -0.511573,
		37.910034, 41.141998, 30.289585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936043, 40.591972, 31.059528>,  <37.435036, 40.773029, 30.647688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936043, 40.591972, 31.059528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088409, 40.906097, 30.864313>,  <38.179829, 41.094574, 30.747183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088409, 40.906097, 30.864313>,  <37.936043, 40.591972, 31.059528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088409, 40.906097, 30.864313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570589, 0.215685, 0.792407,
		0.727553, -0.580308, -0.365936,
		0.380913, 0.785317, -0.488039,
		38.202682, 41.141693, 30.717901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744576, 40.470192, 30.956959>,  <37.936043, 40.591972, 31.059528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744576, 40.470192, 30.956959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603760, 40.844559, 30.952322>,  <38.519272, 41.069180, 30.949539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603760, 40.844559, 30.952322>,  <38.744576, 40.470192, 30.956959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603760, 40.844559, 30.952322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513282, 0.203397, 0.833769,
		0.782693, 0.287571, -0.551992,
		-0.352041, 0.935913, -0.011592,
		38.498146, 41.125332, 30.948845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237484, 40.848152, 31.350262>,  <38.744576, 40.470192, 30.956959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237484, 40.848152, 31.350262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933628, 41.104774, 31.307663>,  <38.751312, 41.258747, 31.282103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933628, 41.104774, 31.307663>,  <39.237484, 40.848152, 31.350262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933628, 41.104774, 31.307663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269427, 0.459506, 0.846323,
		0.591904, 0.614211, -0.521915,
		-0.759644, 0.641560, -0.106498,
		38.705734, 41.297241, 31.275713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480953, 41.601242, 31.368494>,  <39.237484, 40.848152, 31.350262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480953, 41.601242, 31.368494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106678, 41.587055, 31.508915>,  <38.882114, 41.578545, 31.593168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106678, 41.587055, 31.508915>,  <39.480953, 41.601242, 31.368494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106678, 41.587055, 31.508915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317433, 0.349780, 0.881414,
		-0.154053, 0.936160, -0.316025,
		-0.935683, -0.035468, 0.351053,
		38.825974, 41.576416, 31.614231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578541, 42.079002, 31.827011>,  <39.480953, 41.601242, 31.368494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578541, 42.079002, 31.827011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204781, 41.971172, 31.920156>,  <38.980526, 41.906475, 31.976044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204781, 41.971172, 31.920156>,  <39.578541, 42.079002, 31.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204781, 41.971172, 31.920156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186772, 0.185898, 0.964655,
		-0.303335, 0.944866, -0.123354,
		-0.934400, -0.269574, 0.232863,
		38.924461, 41.890301, 31.990015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336929, 42.621807, 32.189903>,  <39.578541, 42.079002, 31.827011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336929, 42.621807, 32.189903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129124, 42.290218, 32.272758>,  <39.004440, 42.091267, 32.322472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129124, 42.290218, 32.272758>,  <39.336929, 42.621807, 32.189903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129124, 42.290218, 32.272758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002146, 0.243687, 0.969851,
		-0.854458, 0.503409, -0.128379,
		-0.519517, -0.828973, 0.207139,
		38.973270, 42.041527, 32.334900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849903, 42.822472, 32.651134>,  <39.336929, 42.621807, 32.189903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849903, 42.822472, 32.651134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886261, 42.426502, 32.694580>,  <38.908077, 42.188923, 32.720650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886261, 42.426502, 32.694580>,  <38.849903, 42.822472, 32.651134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886261, 42.426502, 32.694580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092903, 0.117023, 0.988774,
		-0.991517, -0.079788, 0.102604,
		0.090899, -0.989919, 0.108618,
		38.913532, 42.129528, 32.727165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465561, 42.651505, 33.253307>,  <38.849903, 42.822472, 32.651134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465561, 42.651505, 33.253307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727436, 42.354385, 33.197273>,  <38.884563, 42.176113, 33.163651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727436, 42.354385, 33.197273>,  <38.465561, 42.651505, 33.253307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727436, 42.354385, 33.197273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120193, -0.080671, 0.989467,
		-0.746279, -0.664634, 0.036465,
		0.654692, -0.742801, -0.140087,
		38.923843, 42.131546, 33.155247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358337, 42.122192, 33.816715>,  <38.465561, 42.651505, 33.253307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358337, 42.122192, 33.816715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731293, 42.089088, 33.675976>,  <38.955067, 42.069225, 33.591534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731293, 42.089088, 33.675976>,  <38.358337, 42.122192, 33.816715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731293, 42.089088, 33.675976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330105, -0.201511, 0.922184,
		-0.147222, -0.975983, -0.160567,
		0.932393, -0.082762, -0.351844,
		39.011009, 42.064259, 33.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609894, 41.553482, 34.223553>,  <38.358337, 42.122192, 33.816715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609894, 41.553482, 34.223553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936733, 41.733578, 34.079536>,  <39.132839, 41.841637, 33.993126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936733, 41.733578, 34.079536>,  <38.609894, 41.553482, 34.223553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936733, 41.733578, 34.079536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478724, -0.181969, 0.858901,
		0.321195, -0.874169, -0.364228,
		0.817103, 0.450240, -0.360038,
		39.181866, 41.868649, 33.971523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232090, 41.112705, 34.313881>,  <38.609894, 41.553482, 34.223553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232090, 41.112705, 34.313881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366829, 41.488842, 34.294712>,  <39.447674, 41.714523, 34.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366829, 41.488842, 34.294712>,  <39.232090, 41.112705, 34.313881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366829, 41.488842, 34.294712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428513, -0.107784, 0.897084,
		0.838396, -0.322719, -0.439255,
		0.336851, 0.940338, -0.047924,
		39.467884, 41.770943, 34.280334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963913, 41.058933, 34.526566>,  <39.232090, 41.112705, 34.313881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963913, 41.058933, 34.526566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843803, 41.438614, 34.564190>,  <39.771736, 41.666424, 34.586765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843803, 41.438614, 34.564190>,  <39.963913, 41.058933, 34.526566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843803, 41.438614, 34.564190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463693, 0.059088, 0.884024,
		0.833561, 0.309063, -0.457882,
		-0.300274, 0.949204, 0.094057,
		39.753719, 41.723373, 34.592407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329273, 41.237274, 35.094433>,  <39.963913, 41.058933, 34.526566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329273, 41.237274, 35.094433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112762, 41.567493, 35.030560>,  <39.982857, 41.765625, 34.992237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112762, 41.567493, 35.030560>,  <40.329273, 41.237274, 35.094433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112762, 41.567493, 35.030560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330323, 0.383402, 0.862490,
		0.773247, 0.414097, -0.480222,
		-0.541273, 0.825546, -0.159679,
		39.950382, 41.815159, 34.982655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748455, 41.795124, 35.166462>,  <40.329273, 41.237274, 35.094433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748455, 41.795124, 35.166462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375496, 41.903854, 35.261753>,  <40.151722, 41.969093, 35.318928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375496, 41.903854, 35.261753>,  <40.748455, 41.795124, 35.166462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375496, 41.903854, 35.261753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330965, 0.377188, 0.864980,
		0.145272, 0.885346, -0.441654,
		-0.932394, 0.271830, 0.238224,
		40.095779, 41.985405, 35.333221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751488, 42.567638, 35.372337>,  <40.748455, 41.795124, 35.166462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751488, 42.567638, 35.372337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451302, 42.369541, 35.547394>,  <40.271191, 42.250683, 35.652428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451302, 42.369541, 35.547394>,  <40.751488, 42.567638, 35.372337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451302, 42.369541, 35.547394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257917, 0.390225, 0.883857,
		-0.608504, 0.776182, -0.165119,
		-0.750467, -0.495244, 0.437644,
		40.226162, 42.220966, 35.678688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508297, 43.010765, 35.818710>,  <40.751488, 42.567638, 35.372337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508297, 43.010765, 35.818710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424385, 42.637478, 35.935394>,  <40.374039, 42.413506, 36.005405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424385, 42.637478, 35.935394>,  <40.508297, 43.010765, 35.818710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424385, 42.637478, 35.935394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264449, 0.233072, 0.935812,
		-0.941307, 0.273456, 0.197895,
		-0.209779, -0.933220, 0.291707,
		40.361450, 42.357513, 36.022907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993279, 43.023533, 36.222790>,  <40.508297, 43.010765, 35.818710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993279, 43.023533, 36.222790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201324, 42.703838, 36.343262>,  <40.326153, 42.512024, 36.415546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201324, 42.703838, 36.343262>,  <39.993279, 43.023533, 36.222790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201324, 42.703838, 36.343262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014456, 0.344343, 0.938732,
		-0.853976, -0.492599, 0.167543,
		0.520111, -0.799233, 0.301182,
		40.357357, 42.464069, 36.433617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650696, 42.598446, 36.796001>,  <39.993279, 43.023533, 36.222790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650696, 42.598446, 36.796001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049915, 42.618542, 36.781189>,  <40.289448, 42.630600, 36.772301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049915, 42.618542, 36.781189>,  <39.650696, 42.598446, 36.796001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049915, 42.618542, 36.781189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018407, 0.330071, 0.943777,
		0.059636, -0.942618, 0.328503,
		0.998051, 0.050236, -0.037035,
		40.349331, 42.633614, 36.770077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296963, 41.969807, 36.947151>,  <39.650696, 42.598446, 36.796001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296963, 41.969807, 36.947151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691975, 42.029263, 36.926361>,  <39.928982, 42.064934, 36.913887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691975, 42.029263, 36.926361>,  <39.296963, 41.969807, 36.947151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691975, 42.029263, 36.926361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095917, -0.306031, 0.947177,
		0.124877, -0.940347, -0.316470,
		0.987525, 0.148635, -0.051979,
		39.988232, 42.073853, 36.910767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484638, 41.558884, 37.478287>,  <39.296963, 41.969807, 36.947151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484638, 41.558884, 37.478287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820961, 41.769459, 37.427837>,  <40.022755, 41.895805, 37.397568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820961, 41.769459, 37.427837>,  <39.484638, 41.558884, 37.478287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820961, 41.769459, 37.427837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246816, -0.165438, 0.954836,
		0.481796, -0.833962, -0.269035,
		0.840806, 0.526439, -0.126128,
		40.073204, 41.927391, 37.389999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974876, 41.153328, 37.774963>,  <39.484638, 41.558884, 37.478287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974876, 41.153328, 37.774963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170403, 41.501621, 37.753510>,  <40.287720, 41.710598, 37.740639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170403, 41.501621, 37.753510>,  <39.974876, 41.153328, 37.774963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170403, 41.501621, 37.753510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438830, -0.192282, 0.877756,
		0.753982, -0.452596, -0.476096,
		0.488814, 0.870738, -0.053636,
		40.317047, 41.762844, 37.737419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781643, 41.054260, 37.717575>,  <39.974876, 41.153328, 37.774963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781643, 41.054260, 37.717575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668266, 41.404022, 37.875095>,  <40.600243, 41.613880, 37.969608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668266, 41.404022, 37.875095>,  <40.781643, 41.054260, 37.717575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668266, 41.404022, 37.875095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374527, -0.277100, 0.884842,
		0.882832, 0.398287, -0.248948,
		-0.283437, 0.874405, 0.393802,
		40.583237, 41.666344, 37.993237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363735, 41.326363, 37.980183>,  <40.781643, 41.054260, 37.717575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363735, 41.326363, 37.980183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062141, 41.474457, 38.197227>,  <40.881184, 41.563313, 38.327454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062141, 41.474457, 38.197227>,  <41.363735, 41.326363, 37.980183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062141, 41.474457, 38.197227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460487, -0.291185, 0.838548,
		0.468462, 0.882120, 0.049060,
		-0.753986, 0.370236, 0.542614,
		40.835945, 41.585529, 38.360012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753555, 41.596584, 38.537781>,  <41.363735, 41.326363, 37.980183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753555, 41.596584, 38.537781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379040, 41.566330, 38.674973>,  <41.154331, 41.548176, 38.757290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379040, 41.566330, 38.674973>,  <41.753555, 41.596584, 38.537781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379040, 41.566330, 38.674973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343341, -0.402824, 0.848440,
		0.073989, 0.912147, 0.403129,
		-0.936292, -0.075636, 0.342981,
		41.098152, 41.543640, 38.777866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740082, 41.807747, 39.164719>,  <41.753555, 41.596584, 38.537781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740082, 41.807747, 39.164719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416748, 41.572346, 39.158356>,  <41.222748, 41.431103, 39.154537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416748, 41.572346, 39.158356>,  <41.740082, 41.807747, 39.164719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416748, 41.572346, 39.158356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331326, -0.477094, 0.814005,
		-0.486638, 0.652718, 0.580640,
		-0.808336, -0.588507, -0.015909,
		41.174248, 41.395794, 39.153584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255615, 41.997623, 39.782650>,  <41.740082, 41.807747, 39.164719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255615, 41.997623, 39.782650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167168, 41.630539, 39.650646>,  <41.114098, 41.410286, 39.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167168, 41.630539, 39.650646>,  <41.255615, 41.997623, 39.782650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167168, 41.630539, 39.650646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085681, -0.355354, 0.930797,
		-0.971475, 0.177544, 0.157208,
		-0.221122, -0.917716, -0.330005,
		41.100830, 41.355225, 39.551643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962627, 41.781097, 40.288429>,  <41.255615, 41.997623, 39.782650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962627, 41.781097, 40.288429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005241, 41.414837, 40.133392>,  <41.030811, 41.195080, 40.040371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005241, 41.414837, 40.133392>,  <40.962627, 41.781097, 40.288429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005241, 41.414837, 40.133392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182299, -0.365215, 0.912899,
		-0.977455, -0.167912, 0.128016,
		0.106534, -0.915655, -0.387591,
		41.037201, 41.140141, 40.017117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594185, 41.263199, 40.623093>,  <40.962627, 41.781097, 40.288429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594185, 41.263199, 40.623093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908714, 41.081089, 40.456036>,  <41.097431, 40.971825, 40.355801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908714, 41.081089, 40.456036>,  <40.594185, 41.263199, 40.623093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908714, 41.081089, 40.456036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173047, -0.486646, 0.856289,
		-0.593090, -0.745589, -0.303876,
		0.786320, -0.455272, -0.417647,
		41.144611, 40.944508, 40.330742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891190, 40.974827, 41.267395>,  <40.594185, 41.263199, 40.623093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891190, 40.974827, 41.267395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002991, 41.124672, 41.621014>,  <41.070072, 41.214581, 41.833187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002991, 41.124672, 41.621014>,  <40.891190, 40.974827, 41.267395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002991, 41.124672, 41.621014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507179, 0.724199, -0.467231,
		-0.815259, 0.578963, 0.012419,
		0.279503, 0.374615, 0.884048,
		41.086842, 41.237057, 41.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610161, 40.699726, 41.380787>,  <40.891190, 40.974827, 41.267395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610161, 40.699726, 41.380787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473679, 40.367363, 41.204983>,  <41.391788, 40.167946, 41.099503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473679, 40.367363, 41.204983>,  <41.610161, 40.699726, 41.380787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473679, 40.367363, 41.204983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066400, 0.445092, -0.893020,
		0.937640, -0.333889, -0.096697,
		-0.341208, -0.830910, -0.439506,
		41.371315, 40.118092, 41.073132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888672, 40.804520, 40.679478>,  <41.610161, 40.699726, 41.380787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888672, 40.804520, 40.679478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604725, 40.522812, 40.675632>,  <41.434357, 40.353786, 40.673325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604725, 40.522812, 40.675632>,  <41.888672, 40.804520, 40.679478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604725, 40.522812, 40.675632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438032, 0.452124, -0.776989,
		0.551557, -0.547348, -0.629441,
		-0.709868, -0.704269, -0.009616,
		41.391766, 40.311531, 40.672749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812634, 40.501614, 39.983368>,  <41.888672, 40.804520, 40.679478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812634, 40.501614, 39.983368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434731, 40.531258, 40.111076>,  <41.207989, 40.549046, 40.187702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434731, 40.531258, 40.111076>,  <41.812634, 40.501614, 39.983368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434731, 40.531258, 40.111076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250503, 0.464920, -0.849175,
		-0.211369, -0.882246, -0.420673,
		-0.944760, 0.074109, 0.319275,
		41.151302, 40.553490, 40.206860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342033, 40.122890, 39.507774>,  <41.812634, 40.501614, 39.983368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342033, 40.122890, 39.507774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163841, 40.454754, 39.642368>,  <41.056927, 40.653870, 39.723125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163841, 40.454754, 39.642368>,  <41.342033, 40.122890, 39.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163841, 40.454754, 39.642368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229541, 0.257435, -0.938636,
		-0.865367, -0.495379, 0.075758,
		-0.445478, 0.829654, 0.336486,
		41.030197, 40.703651, 39.743313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649883, 40.203617, 39.119785>,  <41.342033, 40.122890, 39.507774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649883, 40.203617, 39.119785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795807, 40.545410, 39.267715>,  <40.883362, 40.750484, 39.356476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795807, 40.545410, 39.267715>,  <40.649883, 40.203617, 39.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795807, 40.545410, 39.267715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344483, 0.492885, -0.798997,
		-0.865013, 0.164080, 0.474163,
		0.364807, 0.854484, 0.369829,
		40.905251, 40.801754, 39.378666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120094, 40.673332, 38.981266>,  <40.649883, 40.203617, 39.119785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120094, 40.673332, 38.981266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444515, 40.889896, 39.069862>,  <40.639168, 41.019836, 39.123020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444515, 40.889896, 39.069862>,  <40.120094, 40.673332, 38.981266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444515, 40.889896, 39.069862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255978, 0.668953, -0.697838,
		-0.525988, 0.509287, 0.681148,
		0.811056, 0.541414, 0.221495,
		40.687832, 41.052322, 39.136311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895054, 41.384174, 39.294537>,  <40.120094, 40.673332, 38.981266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895054, 41.384174, 39.294537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251892, 41.423710, 39.118172>,  <40.465996, 41.447433, 39.012352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251892, 41.423710, 39.118172>,  <39.895054, 41.384174, 39.294537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251892, 41.423710, 39.118172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368919, 0.722752, -0.584405,
		0.260907, 0.684003, 0.681224,
		0.892091, 0.098841, -0.440913,
		40.519520, 41.453362, 38.985897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142925, 42.203663, 39.321636>,  <39.895054, 41.384174, 39.294537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142925, 42.203663, 39.321636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264515, 41.962994, 39.026180>,  <40.337467, 41.818592, 38.848907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264515, 41.962994, 39.026180>,  <40.142925, 42.203663, 39.321636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264515, 41.962994, 39.026180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132072, 0.741225, -0.658136,
		0.943482, 0.297608, 0.145847,
		0.303972, -0.601677, -0.738638,
		40.355705, 41.782490, 38.804588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018238, 42.714184, 38.828033>,  <40.142925, 42.203663, 39.321636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018238, 42.714184, 38.828033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207233, 42.393898, 38.680737>,  <40.320629, 42.201725, 38.592358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207233, 42.393898, 38.680737>,  <40.018238, 42.714184, 38.828033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207233, 42.393898, 38.680737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171551, 0.493392, -0.852722,
		0.864480, 0.339728, 0.370486,
		0.472489, -0.800718, -0.368246,
		40.348980, 42.153683, 38.570263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251976, 42.939178, 38.110855>,  <40.018238, 42.714184, 38.828033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251976, 42.939178, 38.110855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344414, 42.550056, 38.116993>,  <40.399876, 42.316582, 38.120674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344414, 42.550056, 38.116993>,  <40.251976, 42.939178, 38.110855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344414, 42.550056, 38.116993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039868, -0.006290, -0.999185,
		0.972113, 0.231523, 0.037330,
		0.231099, -0.972809, 0.015345,
		40.413742, 42.258213, 38.121597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857647, 42.945744, 37.638493>,  <40.251976, 42.939178, 38.110855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857647, 42.945744, 37.638493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704838, 42.577866, 37.674774>,  <40.613152, 42.357140, 37.696545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704838, 42.577866, 37.674774>,  <40.857647, 42.945744, 37.638493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704838, 42.577866, 37.674774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053953, -0.075788, -0.995663,
		0.922577, -0.385258, -0.020667,
		-0.382021, -0.919691, 0.090706,
		40.590233, 42.301960, 37.701984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202007, 42.519409, 37.231800>,  <40.857647, 42.945744, 37.638493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202007, 42.519409, 37.231800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845634, 42.342564, 37.273319>,  <40.631809, 42.236458, 37.298229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845634, 42.342564, 37.273319>,  <41.202007, 42.519409, 37.231800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845634, 42.342564, 37.273319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020687, -0.188812, -0.981795,
		0.453663, -0.876862, 0.159073,
		-0.890933, -0.442113, 0.103797,
		40.578354, 42.209930, 37.304459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286228, 41.896664, 36.844215>,  <41.202007, 42.519409, 37.231800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286228, 41.896664, 36.844215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905544, 42.013405, 36.882305>,  <40.677132, 42.083450, 36.905159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905544, 42.013405, 36.882305>,  <41.286228, 41.896664, 36.844215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905544, 42.013405, 36.882305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149084, -0.168216, -0.974411,
		-0.268365, -0.941555, 0.203604,
		-0.951711, 0.291852, 0.095228,
		40.620029, 42.100960, 36.910873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908154, 41.366150, 36.611279>,  <41.286228, 41.896664, 36.844215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908154, 41.366150, 36.611279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688934, 41.700115, 36.591042>,  <40.557404, 41.900494, 36.578899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688934, 41.700115, 36.591042>,  <40.908154, 41.366150, 36.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688934, 41.700115, 36.591042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255110, -0.224447, -0.940501,
		-0.796594, -0.502534, 0.336003,
		-0.548049, 0.834915, -0.050592,
		40.524521, 41.950588, 36.575863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317364, 41.133904, 36.545933>,  <40.908154, 41.366150, 36.611279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317364, 41.133904, 36.545933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313622, 41.500011, 36.384842>,  <40.311375, 41.719677, 36.288189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313622, 41.500011, 36.384842>,  <40.317364, 41.133904, 36.545933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313622, 41.500011, 36.384842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276686, -0.389390, -0.878533,
		-0.960915, 0.103211, 0.256886,
		-0.009355, 0.915272, -0.402728,
		40.310814, 41.774593, 36.264023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708847, 41.341476, 36.145931>,  <40.317364, 41.133904, 36.545933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708847, 41.341476, 36.145931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032547, 41.534744, 36.012272>,  <40.226768, 41.650703, 35.932076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032547, 41.534744, 36.012272>,  <39.708847, 41.341476, 36.145931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032547, 41.534744, 36.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065358, -0.491222, -0.868579,
		-0.583812, 0.724740, -0.365944,
		0.809254, 0.483170, -0.334149,
		40.275322, 41.679695, 35.912025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117260, 41.872902, 36.209148>,  <39.708847, 41.341476, 36.145931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117260, 41.872902, 36.209148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454216, 41.995792, 36.032063>,  <39.656387, 42.069527, 35.925812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454216, 41.995792, 36.032063>,  <39.117260, 41.872902, 36.209148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454216, 41.995792, 36.032063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454652, -0.035810, -0.889949,
		-0.289270, 0.950962, 0.109516,
		0.842386, 0.307227, -0.442716,
		39.706932, 42.087959, 35.899246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932930, 42.418446, 35.653030>,  <39.117260, 41.872902, 36.209148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932930, 42.418446, 35.653030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297462, 42.287262, 35.553493>,  <39.516182, 42.208553, 35.493771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297462, 42.287262, 35.553493>,  <38.932930, 42.418446, 35.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297462, 42.287262, 35.553493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239769, 0.068516, -0.968409,
		0.334649, 0.942204, -0.016194,
		0.911329, -0.327960, -0.248840,
		39.570862, 42.188873, 35.478840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023571, 42.695217, 35.010361>,  <38.932930, 42.418446, 35.653030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023571, 42.695217, 35.010361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353302, 42.474014, 34.961914>,  <39.551140, 42.341293, 34.932846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353302, 42.474014, 34.961914>,  <39.023571, 42.695217, 35.010361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353302, 42.474014, 34.961914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028896, 0.172560, -0.984575,
		0.565374, 0.815113, 0.126266,
		0.824328, -0.553005, -0.121115,
		39.600601, 42.308113, 34.925579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552574, 43.059006, 34.548340>,  <39.023571, 42.695217, 35.010361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552574, 43.059006, 34.548340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582783, 42.660480, 34.564655>,  <39.600906, 42.421368, 34.574444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582783, 42.660480, 34.564655>,  <39.552574, 43.059006, 34.548340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582783, 42.660480, 34.564655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067425, -0.045915, -0.996667,
		0.994862, 0.072515, -0.070644,
		0.075517, -0.996310, 0.040790,
		39.605438, 42.361588, 34.576893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155701, 42.880749, 34.093018>,  <39.552574, 43.059006, 34.548340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155701, 42.880749, 34.093018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935120, 42.548733, 34.126301>,  <39.802769, 42.349522, 34.146271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935120, 42.548733, 34.126301>,  <40.155701, 42.880749, 34.093018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935120, 42.548733, 34.126301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018274, -0.111747, -0.993569,
		0.834004, -0.546388, 0.076791,
		-0.551455, -0.830044, 0.083213,
		39.769684, 42.299721, 34.151264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302334, 42.543835, 33.524246>,  <40.155701, 42.880749, 34.093018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302334, 42.543835, 33.524246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977234, 42.344799, 33.645470>,  <39.782173, 42.225376, 33.718204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977234, 42.344799, 33.645470>,  <40.302334, 42.543835, 33.524246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977234, 42.344799, 33.645470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278410, -0.125233, -0.952263,
		0.511791, -0.858324, -0.036752,
		-0.812747, -0.497592, 0.303059,
		39.733410, 42.195522, 33.736389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193073, 41.918423, 33.091007>,  <40.302334, 42.543835, 33.524246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193073, 41.918423, 33.091007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824078, 41.977539, 33.233650>,  <39.602680, 42.013008, 33.319237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824078, 41.977539, 33.233650>,  <40.193073, 41.918423, 33.091007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824078, 41.977539, 33.233650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382828, -0.231657, -0.894303,
		-0.049558, -0.961505, 0.270280,
		-0.922490, 0.147791, 0.356611,
		39.547329, 42.021877, 33.340633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850925, 41.240860, 32.963356>,  <40.193073, 41.918423, 33.091007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850925, 41.240860, 32.963356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554909, 41.502823, 33.024582>,  <39.377296, 41.660000, 33.061317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554909, 41.502823, 33.024582>,  <39.850925, 41.240860, 32.963356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554909, 41.502823, 33.024582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391810, -0.234836, -0.889571,
		-0.546641, -0.718296, 0.430389,
		-0.740046, 0.654907, 0.153064,
		39.332893, 41.699295, 33.070503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627350, 41.266712, 33.279873>,  <39.850925, 41.240860, 32.963356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627350, 41.266712, 33.279873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369743, 41.403217, 33.553741>,  <40.215179, 41.485119, 33.718063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369743, 41.403217, 33.553741>,  <40.627350, 41.266712, 33.279873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369743, 41.403217, 33.553741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087077, 0.921872, -0.377585,
		-0.760037, -0.183553, -0.623419,
		-0.644019, 0.341264, 0.684674,
		40.176537, 41.505596, 33.759144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340744, 41.157856, 33.648094>,  <40.627350, 41.266712, 33.279873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340744, 41.157856, 33.648094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160198, 41.231136, 33.997425>,  <41.051872, 41.275105, 34.207024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160198, 41.231136, 33.997425>,  <41.340744, 41.157856, 33.648094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160198, 41.231136, 33.997425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560026, -0.820114, -0.117399,
		0.694723, -0.542078, 0.472770,
		-0.451365, 0.183203, 0.873331,
		41.024788, 41.286098, 34.259426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466267, 40.776928, 33.062283>,  <41.340744, 41.157856, 33.648094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466267, 40.776928, 33.062283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241341, 40.454586, 33.136471>,  <41.106384, 40.261181, 33.180984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241341, 40.454586, 33.136471>,  <41.466267, 40.776928, 33.062283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241341, 40.454586, 33.136471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819617, -0.572897, -0.004263,
		0.109690, 0.149617, 0.982641,
		-0.562314, -0.805856, 0.185469,
		41.072647, 40.212830, 33.192112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873478, 40.310795, 33.581100>,  <41.466267, 40.776928, 33.062283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873478, 40.310795, 33.581100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606037, 40.100761, 33.370483>,  <41.445572, 39.974739, 33.244114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606037, 40.100761, 33.370483>,  <41.873478, 40.310795, 33.581100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606037, 40.100761, 33.370483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695552, -0.692045, -0.193081,
		-0.263010, -0.495336, 0.827930,
		-0.668605, -0.525086, -0.526547,
		41.405457, 39.943237, 33.212521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052883, 39.658306, 33.618725>,  <41.873478, 40.310795, 33.581100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052883, 39.658306, 33.618725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840195, 39.686417, 33.281124>,  <41.712582, 39.703281, 33.078564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840195, 39.686417, 33.281124>,  <42.052883, 39.658306, 33.618725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840195, 39.686417, 33.281124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688203, -0.544968, -0.478943,
		-0.493612, -0.835506, 0.241405,
		-0.531718, 0.070277, -0.844001,
		41.680679, 39.707500, 33.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471672, 39.780415, 34.265427>,  <42.052883, 39.658306, 33.618725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471672, 39.780415, 34.265427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847492, 39.914806, 34.291866>,  <43.072983, 39.995441, 34.307728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847492, 39.914806, 34.291866>,  <42.471672, 39.780415, 34.265427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847492, 39.914806, 34.291866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316708, -0.926047, 0.205262,
		0.130172, -0.171921, -0.976473,
		0.939548, 0.335976, 0.066096,
		43.129356, 40.015598, 34.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816246, 39.222469, 34.077461>,  <42.471672, 39.780415, 34.265427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816246, 39.222469, 34.077461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084637, 39.450378, 34.267258>,  <43.245670, 39.587124, 34.381138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084637, 39.450378, 34.267258>,  <42.816246, 39.222469, 34.077461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084637, 39.450378, 34.267258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298383, -0.793316, 0.530677,
		0.678791, -0.214491, -0.702308,
		0.670977, 0.569776, 0.474495,
		43.285931, 39.621311, 34.409607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528973, 38.900627, 33.924686>,  <42.816246, 39.222469, 34.077461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528973, 38.900627, 33.924686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469196, 39.105804, 34.262814>,  <43.433331, 39.228909, 34.465691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469196, 39.105804, 34.262814>,  <43.528973, 38.900627, 33.924686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469196, 39.105804, 34.262814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275258, -0.799541, 0.533823,
		0.949685, 0.312454, -0.021709,
		-0.149438, 0.512939, 0.845318,
		43.424366, 39.259686, 34.516407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092888, 38.789597, 34.275887>,  <43.528973, 38.900627, 33.924686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092888, 38.789597, 34.275887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801506, 38.899525, 34.526909>,  <43.626678, 38.965481, 34.677525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801506, 38.899525, 34.526909>,  <44.092888, 38.789597, 34.275887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801506, 38.899525, 34.526909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308081, -0.686770, 0.658356,
		0.611916, 0.672921, 0.415615,
		-0.728453, 0.274816, 0.627560,
		43.582970, 38.981968, 34.715176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456074, 38.787476, 34.915741>,  <44.092888, 38.789597, 34.275887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456074, 38.787476, 34.915741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059170, 38.740128, 34.930733>,  <43.821026, 38.711720, 34.939728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059170, 38.740128, 34.930733>,  <44.456074, 38.787476, 34.915741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059170, 38.740128, 34.930733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123622, -0.913657, 0.387232,
		-0.011594, 0.388869, 0.921220,
		-0.992262, -0.118372, 0.037480,
		43.761490, 38.704617, 34.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064114, 38.496349, 34.985645>,  <44.456074, 38.787476, 34.915741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064114, 38.496349, 34.985645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267399, 38.193153, 35.149193>,  <45.389370, 38.011238, 35.247322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267399, 38.193153, 35.149193>,  <45.064114, 38.496349, 34.985645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267399, 38.193153, 35.149193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851893, 0.372710, -0.367920,
		0.126488, 0.535296, 0.835140,
		0.508211, -0.757988, 0.408872,
		45.419861, 37.965755, 35.271854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723614, 38.697754, 35.414642>,  <45.064114, 38.496349, 34.985645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723614, 38.697754, 35.414642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747387, 38.333477, 35.251129>,  <45.761650, 38.114910, 35.153023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747387, 38.333477, 35.251129>,  <45.723614, 38.697754, 35.414642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747387, 38.333477, 35.251129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897596, 0.227940, -0.377312,
		0.436794, -0.344494, 0.830984,
		0.059433, -0.910696, -0.408780,
		45.765217, 38.060268, 35.128494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328476, 38.439537, 35.551189>,  <45.723614, 38.697754, 35.414642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328476, 38.439537, 35.551189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195415, 38.244057, 35.228573>,  <46.115578, 38.126770, 35.035004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195415, 38.244057, 35.228573>,  <46.328476, 38.439537, 35.551189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195415, 38.244057, 35.228573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903826, 0.078870, -0.420567,
		0.269143, -0.868880, 0.415463,
		-0.332655, -0.488700, -0.806544,
		46.095619, 38.097446, 34.986610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831348, 38.120235, 35.182671>,  <46.328476, 38.439537, 35.551189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831348, 38.120235, 35.182671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559566, 38.159039, 34.891758>,  <46.396496, 38.182320, 34.717213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559566, 38.159039, 34.891758>,  <46.831348, 38.120235, 35.182671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559566, 38.159039, 34.891758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730474, -0.003673, -0.682930,
		-0.068921, -0.995277, -0.068366,
		-0.679454, 0.097008, -0.727277,
		46.355732, 38.188141, 34.673576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.103600, 37.721760, 34.706284>,  <46.831348, 38.120235, 35.182671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.103600, 37.721760, 34.706284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893257, 38.009251, 34.524338>,  <46.767052, 38.181747, 34.415173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893257, 38.009251, 34.524338>,  <47.103600, 37.721760, 34.706284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893257, 38.009251, 34.524338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663649, 0.012206, -0.747945,
		-0.532019, -0.695181, -0.483403,
		-0.525857, 0.718731, -0.454863,
		46.735500, 38.224869, 34.387878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685566, 37.211914, 34.617016>,  <47.103600, 37.721760, 34.706284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685566, 37.211914, 34.617016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619545, 36.921185, 34.350334>,  <47.579933, 36.746746, 34.190327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619545, 36.921185, 34.350334>,  <47.685566, 37.211914, 34.617016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619545, 36.921185, 34.350334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017848, -0.678062, 0.734788,
		-0.986124, 0.109377, 0.124885,
		-0.165048, -0.726821, -0.666701,
		47.570030, 36.703136, 34.150322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025795, 36.873974, 34.699318>,  <47.685566, 37.211914, 34.617016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025795, 36.873974, 34.699318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303486, 36.619141, 34.565346>,  <47.470100, 36.466240, 34.484962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303486, 36.619141, 34.565346>,  <47.025795, 36.873974, 34.699318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303486, 36.619141, 34.565346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073538, -0.525681, 0.847497,
		-0.715990, -0.563725, -0.411792,
		0.694226, -0.637082, -0.334927,
		47.511753, 36.428017, 34.464867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.934677, 36.335239, 35.177383>,  <47.025795, 36.873974, 34.699318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.934677, 36.335239, 35.177383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228954, 36.181278, 34.954456>,  <47.405521, 36.088902, 34.820698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228954, 36.181278, 34.954456>,  <46.934677, 36.335239, 35.177383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228954, 36.181278, 34.954456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049185, -0.790305, 0.610736,
		-0.675530, -0.476725, -0.562488,
		0.735690, -0.384905, -0.557323,
		47.449661, 36.065807, 34.787258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700752, 35.701115, 35.102734>,  <46.934677, 36.335239, 35.177383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700752, 35.701115, 35.102734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093430, 35.709671, 35.027020>,  <47.329037, 35.714806, 34.981590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.093430, 35.709671, 35.027020>,  <46.700752, 35.701115, 35.102734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.093430, 35.709671, 35.027020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082739, -0.942918, 0.322582,
		-0.171577, -0.332336, -0.927423,
		0.981690, 0.021387, -0.189281,
		47.387936, 35.716087, 34.970234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.821896, 34.994411, 34.973034>,  <46.700752, 35.701115, 35.102734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.821896, 34.994411, 34.973034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170956, 35.169243, 35.060154>,  <47.380394, 35.274143, 35.112427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170956, 35.169243, 35.060154>,  <46.821896, 34.994411, 34.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.170956, 35.169243, 35.060154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316542, -0.845894, 0.429260,
		0.371857, -0.305652, -0.876527,
		0.872653, 0.437081, 0.217800,
		47.432751, 35.300365, 35.125492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502743, 34.701439, 34.629025>,  <46.821896, 34.994411, 34.973034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502743, 34.701439, 34.629025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.581673, 34.869511, 34.983315>,  <47.629032, 34.970352, 35.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.581673, 34.869511, 34.983315>,  <47.502743, 34.701439, 34.629025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.581673, 34.869511, 34.983315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183588, -0.903345, 0.387637,
		0.962994, 0.086117, -0.255396,
		0.197328, 0.420180, 0.885726,
		47.640873, 34.995564, 35.249031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.742416, 35.649010, 25.804367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.405731, 35.609486, 26.016687>,  <33.203720, 35.585770, 26.144079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.405731, 35.609486, 26.016687>,  <33.742416, 35.649010, 25.804367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405731, 35.609486, 26.016687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388218, 0.572480, 0.722186,
		-0.375236, 0.813942, -0.443504,
		-0.841715, -0.098814, 0.530803,
		33.153217, 35.579842, 26.175928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562714, 36.400925, 26.088356>,  <33.742416, 35.649010, 25.804367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562714, 36.400925, 26.088356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.392647, 36.110813, 26.304947>,  <33.290607, 35.936745, 26.434902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.392647, 36.110813, 26.304947>,  <33.562714, 36.400925, 26.088356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392647, 36.110813, 26.304947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415143, 0.375342, 0.828719,
		-0.804295, 0.577133, 0.141515,
		-0.425164, -0.725284, 0.541479,
		33.265099, 35.893227, 26.467390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116573, 36.659168, 26.590338>,  <33.562714, 36.400925, 26.088356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116573, 36.659168, 26.590338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221424, 36.300774, 26.733723>,  <33.284336, 36.085735, 26.819754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221424, 36.300774, 26.733723>,  <33.116573, 36.659168, 26.590338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221424, 36.300774, 26.733723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414149, 0.439949, 0.796822,
		-0.871648, -0.060412, 0.486395,
		0.262127, -0.895988, 0.358462,
		33.300060, 36.031979, 26.841261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995716, 36.706436, 27.290989>,  <33.116573, 36.659168, 26.590338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995716, 36.706436, 27.290989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218960, 36.374535, 27.289145>,  <33.352905, 36.175392, 27.288038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.218960, 36.374535, 27.289145>,  <32.995716, 36.706436, 27.290989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218960, 36.374535, 27.289145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341225, 0.224443, 0.912793,
		-0.756359, -0.511011, 0.408397,
		0.558109, -0.829755, -0.004610,
		33.386395, 36.125607, 27.287762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969109, 36.541607, 27.963182>,  <32.995716, 36.706436, 27.290989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969109, 36.541607, 27.963182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278355, 36.315136, 27.848827>,  <33.463902, 36.179253, 27.780214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278355, 36.315136, 27.848827>,  <32.969109, 36.541607, 27.963182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278355, 36.315136, 27.848827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453729, 0.178735, 0.873032,
		-0.443191, -0.804673, 0.395073,
		0.773118, -0.566176, -0.285890,
		33.510292, 36.145283, 27.763060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077824, 36.099129, 28.494917>,  <32.969109, 36.541607, 27.963182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077824, 36.099129, 28.494917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.414879, 36.104156, 28.279581>,  <33.617111, 36.107174, 28.150379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.414879, 36.104156, 28.279581>,  <33.077824, 36.099129, 28.494917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414879, 36.104156, 28.279581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516803, 0.261955, 0.815042,
		0.151260, -0.964998, 0.214240,
		0.842636, 0.012563, -0.538338,
		33.667671, 36.107925, 28.118080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427830, 35.658245, 28.816957>,  <33.077824, 36.099129, 28.494917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427830, 35.658245, 28.816957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663666, 35.904247, 28.607521>,  <33.805168, 36.051849, 28.481859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663666, 35.904247, 28.607521>,  <33.427830, 35.658245, 28.816957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663666, 35.904247, 28.607521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553014, 0.165102, 0.816650,
		0.588693, -0.771042, -0.242766,
		0.589590, 0.615009, -0.523592,
		33.840542, 36.088749, 28.450443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072269, 35.615021, 29.147045>,  <33.427830, 35.658245, 28.816957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072269, 35.615021, 29.147045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.124229, 35.944313, 28.925983>,  <34.155403, 36.141888, 28.793346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.124229, 35.944313, 28.925983>,  <34.072269, 35.615021, 29.147045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124229, 35.944313, 28.925983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605051, 0.375758, 0.701939,
		0.785519, -0.425563, -0.449284,
		0.129898, 0.823226, -0.552652,
		34.163200, 36.191280, 28.760187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820354, 35.601021, 29.072624>,  <34.072269, 35.615021, 29.147045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820354, 35.601021, 29.072624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648872, 35.960957, 29.040375>,  <34.545982, 36.176918, 29.021025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648872, 35.960957, 29.040375>,  <34.820354, 35.601021, 29.072624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648872, 35.960957, 29.040375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509092, 0.314332, 0.801262,
		0.746351, 0.302457, -0.592857,
		-0.428701, 0.899842, -0.080623,
		34.520264, 36.230907, 29.016188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266090, 35.991459, 29.237865>,  <34.820354, 35.601021, 29.072624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266090, 35.991459, 29.237865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972446, 36.261280, 29.269011>,  <34.796261, 36.423172, 29.287697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972446, 36.261280, 29.269011>,  <35.266090, 35.991459, 29.237865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972446, 36.261280, 29.269011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502748, 0.462859, 0.730072,
		0.456435, 0.575096, -0.678919,
		-0.734106, 0.674556, 0.077863,
		34.752216, 36.463646, 29.292370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605972, 36.645210, 29.177063>,  <35.266090, 35.991459, 29.237865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605972, 36.645210, 29.177063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262444, 36.736832, 29.360346>,  <35.056324, 36.791805, 29.470316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262444, 36.736832, 29.360346>,  <35.605972, 36.645210, 29.177063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262444, 36.736832, 29.360346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510544, 0.456028, 0.728961,
		-0.041984, 0.859985, -0.508590,
		-0.858826, 0.229053, 0.458206,
		35.004795, 36.805546, 29.497808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768291, 37.325970, 29.394400>,  <35.605972, 36.645210, 29.177063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768291, 37.325970, 29.394400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455032, 37.215397, 29.617205>,  <35.267075, 37.149055, 29.750887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455032, 37.215397, 29.617205>,  <35.768291, 37.325970, 29.394400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455032, 37.215397, 29.617205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465643, 0.332987, 0.819937,
		-0.412131, 0.901503, -0.132062,
		-0.783150, -0.276428, 0.557013,
		35.220089, 37.132469, 29.784309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623501, 37.905273, 29.666159>,  <35.768291, 37.325970, 29.394400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623501, 37.905273, 29.666159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458973, 37.622429, 29.896223>,  <35.360256, 37.452721, 30.034262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458973, 37.622429, 29.896223>,  <35.623501, 37.905273, 29.666159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458973, 37.622429, 29.896223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358424, 0.454701, 0.815340,
		-0.838065, 0.541513, 0.066421,
		-0.411315, -0.707115, 0.575160,
		35.335579, 37.410294, 30.068771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320431, 38.303535, 30.223482>,  <35.623501, 37.905273, 29.666159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320431, 38.303535, 30.223482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353146, 37.933926, 30.372877>,  <35.372776, 37.712162, 30.462515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353146, 37.933926, 30.372877>,  <35.320431, 38.303535, 30.223482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353146, 37.933926, 30.372877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499661, 0.362264, 0.786832,
		-0.862351, 0.122263, 0.491327,
		0.081790, -0.924022, 0.373488,
		35.377682, 37.656719, 30.484924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205982, 38.368073, 30.931644>,  <35.320431, 38.303535, 30.223482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205982, 38.368073, 30.931644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374218, 38.006981, 30.895460>,  <35.475159, 37.790325, 30.873751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374218, 38.006981, 30.895460>,  <35.205982, 38.368073, 30.931644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374218, 38.006981, 30.895460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525499, 0.161121, 0.835399,
		-0.739565, -0.398895, 0.542149,
		0.420588, -0.902731, -0.090460,
		35.500393, 37.736160, 30.868322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172298, 38.081474, 31.619841>,  <35.205982, 38.368073, 30.931644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172298, 38.081474, 31.619841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439045, 37.877262, 31.402714>,  <35.599091, 37.754734, 31.272438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439045, 37.877262, 31.402714>,  <35.172298, 38.081474, 31.619841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439045, 37.877262, 31.402714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670284, 0.092680, 0.736295,
		-0.325594, -0.854850, 0.404006,
		0.666865, -0.510532, -0.542816,
		35.639103, 37.724102, 31.239868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419960, 37.494308, 32.035969>,  <35.172298, 38.081474, 31.619841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419960, 37.494308, 32.035969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697594, 37.595657, 31.766436>,  <35.864174, 37.656467, 31.604717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.697594, 37.595657, 31.766436>,  <35.419960, 37.494308, 32.035969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697594, 37.595657, 31.766436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695717, 0.004438, 0.718302,
		0.184988, -0.967359, -0.173195,
		0.694087, 0.253372, -0.673829,
		35.905819, 37.671669, 31.564287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959885, 37.004833, 32.139355>,  <35.419960, 37.494308, 32.035969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959885, 37.004833, 32.139355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154251, 37.291290, 31.938944>,  <36.270870, 37.463165, 31.818697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.154251, 37.291290, 31.938944>,  <35.959885, 37.004833, 32.139355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154251, 37.291290, 31.938944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740443, -0.032738, 0.671322,
		0.464358, -0.697188, -0.546169,
		0.485918, 0.716141, -0.501025,
		36.300026, 37.506134, 31.788637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712105, 36.740612, 32.126503>,  <35.959885, 37.004833, 32.139355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712105, 36.740612, 32.126503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689938, 37.132057, 32.047260>,  <36.676636, 37.366924, 31.999714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.689938, 37.132057, 32.047260>,  <36.712105, 36.740612, 32.126503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689938, 37.132057, 32.047260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757954, 0.170395, 0.629660,
		0.649949, -0.115262, -0.751186,
		-0.055423, 0.978612, -0.198111,
		36.673309, 37.425640, 31.987827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391220, 36.943413, 31.985989>,  <36.712105, 36.740612, 32.126503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391220, 36.943413, 31.985989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181122, 37.270206, 32.081196>,  <37.055061, 37.466282, 32.138321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181122, 37.270206, 32.081196>,  <37.391220, 36.943413, 31.985989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181122, 37.270206, 32.081196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702927, 0.258923, 0.662460,
		0.479590, 0.515265, -0.710278,
		-0.525250, 0.816983, 0.238017,
		37.023548, 37.515301, 32.152599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815697, 37.469345, 32.001347>,  <37.391220, 36.943413, 31.985989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815697, 37.469345, 32.001347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534851, 37.625370, 32.239635>,  <37.366344, 37.718983, 32.382610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534851, 37.625370, 32.239635>,  <37.815697, 37.469345, 32.001347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534851, 37.625370, 32.239635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688011, 0.156030, 0.708728,
		0.183494, 0.907474, -0.377916,
		-0.702118, 0.390058, 0.595722,
		37.324215, 37.742386, 32.418350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931431, 38.192680, 32.198273>,  <37.815697, 37.469345, 32.001347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931431, 38.192680, 32.198273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698879, 38.050526, 32.491039>,  <37.559349, 37.965233, 32.666698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698879, 38.050526, 32.491039>,  <37.931431, 38.192680, 32.198273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698879, 38.050526, 32.491039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762983, 0.074309, 0.642133,
		-0.282591, 0.931763, 0.227949,
		-0.581377, -0.355382, 0.731918,
		37.524467, 37.943913, 32.710613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193813, 38.871052, 32.016468>,  <37.931431, 38.192680, 32.198273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193813, 38.871052, 32.016468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517956, 39.048763, 31.863661>,  <38.712440, 39.155388, 31.771976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.517956, 39.048763, 31.863661>,  <38.193813, 38.871052, 32.016468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517956, 39.048763, 31.863661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442785, 0.037334, -0.895850,
		-0.383741, 0.895112, 0.226972,
		0.810361, 0.444275, -0.382015,
		38.761063, 39.182045, 31.749056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945007, 39.408211, 31.602057>,  <38.193813, 38.871052, 32.016468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945007, 39.408211, 31.602057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317272, 39.350956, 31.467367>,  <38.540630, 39.316605, 31.386553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317272, 39.350956, 31.467367>,  <37.945007, 39.408211, 31.602057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317272, 39.350956, 31.467367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352704, -0.106167, -0.929692,
		0.097323, 0.983992, -0.149290,
		0.930660, -0.143136, -0.336726,
		38.596470, 39.308014, 31.366350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931442, 39.794762, 31.011593>,  <37.945007, 39.408211, 31.602057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931442, 39.794762, 31.011593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240040, 39.544209, 30.966969>,  <38.425198, 39.393875, 30.940193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240040, 39.544209, 30.966969>,  <37.931442, 39.794762, 31.011593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240040, 39.544209, 30.966969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230995, -0.112378, -0.966443,
		0.592828, 0.771371, -0.231390,
		0.771490, -0.626384, -0.111562,
		38.471485, 39.356293, 30.933500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262093, 40.071331, 30.349545>,  <37.931442, 39.794762, 31.011593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262093, 40.071331, 30.349545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372158, 39.693142, 30.419241>,  <38.438198, 39.466228, 30.461058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372158, 39.693142, 30.419241>,  <38.262093, 40.071331, 30.349545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372158, 39.693142, 30.419241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211930, -0.236430, -0.948254,
		0.937748, 0.223998, -0.265432,
		0.275163, -0.945477, 0.174240,
		38.454708, 39.409500, 30.471514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701744, 39.805588, 29.856678>,  <38.262093, 40.071331, 30.349545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701744, 39.805588, 29.856678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577015, 39.443478, 29.972088>,  <38.502178, 39.226212, 30.041334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.577015, 39.443478, 29.972088>,  <38.701744, 39.805588, 29.856678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577015, 39.443478, 29.972088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130053, -0.260140, -0.956772,
		0.941197, -0.335869, -0.036615,
		-0.311825, -0.905273, 0.288524,
		38.483467, 39.171894, 30.058645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925991, 39.317371, 29.375566>,  <38.701744, 39.805588, 29.856678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925991, 39.317371, 29.375566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667252, 39.080105, 29.567291>,  <38.512009, 38.937744, 29.682325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667252, 39.080105, 29.567291>,  <38.925991, 39.317371, 29.375566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667252, 39.080105, 29.567291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120908, -0.540795, -0.832420,
		0.752970, -0.596404, 0.278096,
		-0.646852, -0.593163, 0.479312,
		38.473198, 38.902157, 29.711084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040199, 38.583580, 29.136824>,  <38.925991, 39.317371, 29.375566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040199, 38.583580, 29.136824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668991, 38.579414, 29.285776>,  <38.446266, 38.576916, 29.375149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668991, 38.579414, 29.285776>,  <39.040199, 38.583580, 29.136824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668991, 38.579414, 29.285776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299637, -0.573072, -0.762762,
		0.221349, -0.819438, 0.528702,
		-0.928021, -0.010418, 0.372383,
		38.390583, 38.576290, 29.397491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739109, 37.890491, 28.934685>,  <39.040199, 38.583580, 29.136824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739109, 37.890491, 28.934685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.439766, 38.146297, 29.005083>,  <38.260159, 38.299782, 29.047321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.439766, 38.146297, 29.005083>,  <38.739109, 37.890491, 28.934685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439766, 38.146297, 29.005083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528390, -0.414392, -0.741002,
		-0.400954, -0.647529, 0.648029,
		-0.748358, 0.639520, 0.175996,
		38.215256, 38.338154, 29.057882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230442, 37.462791, 29.026758>,  <38.739109, 37.890491, 28.934685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230442, 37.462791, 29.026758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084316, 37.822777, 28.931581>,  <37.996639, 38.038769, 28.874475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084316, 37.822777, 28.931581>,  <38.230442, 37.462791, 29.026758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084316, 37.822777, 28.931581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526354, -0.410523, -0.744595,
		-0.767787, -0.146769, 0.623668,
		-0.365314, 0.899961, -0.237942,
		37.974724, 38.092766, 28.860199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620220, 37.345619, 28.728178>,  <38.230442, 37.462791, 29.026758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620220, 37.345619, 28.728178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679104, 37.725246, 28.616751>,  <37.714436, 37.953022, 28.549894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679104, 37.725246, 28.616751>,  <37.620220, 37.345619, 28.728178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679104, 37.725246, 28.616751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557430, -0.153045, -0.815996,
		-0.817068, 0.275404, 0.506509,
		0.147210, 0.949068, -0.278566,
		37.723267, 38.009968, 28.533180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985237, 37.703625, 28.552694>,  <37.620220, 37.345619, 28.728178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985237, 37.703625, 28.552694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253277, 37.907539, 28.336884>,  <37.414101, 38.029888, 28.207397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253277, 37.907539, 28.336884>,  <36.985237, 37.703625, 28.552694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253277, 37.907539, 28.336884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595258, -0.065167, -0.800888,
		-0.443439, 0.857830, 0.259785,
		0.670097, 0.509784, -0.539528,
		37.454308, 38.060474, 28.175026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629456, 38.231842, 28.270390>,  <36.985237, 37.703625, 28.552694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629456, 38.231842, 28.270390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960926, 38.222019, 28.046717>,  <37.159809, 38.216125, 27.912512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960926, 38.222019, 28.046717>,  <36.629456, 38.231842, 28.270390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960926, 38.222019, 28.046717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557125, -0.132313, -0.819820,
		-0.053858, 0.990904, -0.123325,
		0.828680, -0.024554, -0.559184,
		37.209530, 38.214653, 27.878962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525650, 38.572433, 27.587765>,  <36.629456, 38.231842, 28.270390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525650, 38.572433, 27.587765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801140, 38.282764, 27.601831>,  <36.966434, 38.108963, 27.610271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801140, 38.282764, 27.601831>,  <36.525650, 38.572433, 27.587765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801140, 38.282764, 27.601831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352423, -0.376769, -0.856646,
		0.633611, 0.577596, -0.514704,
		0.688720, -0.724174, 0.035167,
		37.007755, 38.065514, 27.612381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720966, 38.472122, 26.841223>,  <36.525650, 38.572433, 27.587765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720966, 38.472122, 26.841223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834618, 38.144527, 27.040632>,  <36.902809, 37.947971, 27.160278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834618, 38.144527, 27.040632>,  <36.720966, 38.472122, 26.841223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834618, 38.144527, 27.040632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398849, -0.573790, -0.715321,
		0.871888, 0.004410, -0.489685,
		0.284131, -0.818990, 0.498522,
		36.919857, 37.898830, 27.190189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991302, 38.007736, 26.301939>,  <36.720966, 38.472122, 26.841223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991302, 38.007736, 26.301939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920059, 37.756470, 26.604908>,  <36.877312, 37.605709, 26.786690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920059, 37.756470, 26.604908>,  <36.991302, 38.007736, 26.301939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920059, 37.756470, 26.604908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451219, -0.631895, -0.630167,
		0.874459, -0.454000, -0.170895,
		-0.178108, -0.628166, 0.757420,
		36.866627, 37.568020, 26.832134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320889, 37.372494, 26.161877>,  <36.991302, 38.007736, 26.301939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320889, 37.372494, 26.161877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999870, 37.319660, 26.394592>,  <36.807259, 37.287960, 26.534222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999870, 37.319660, 26.394592>,  <37.320889, 37.372494, 26.161877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999870, 37.319660, 26.394592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418524, -0.570317, -0.706807,
		0.425159, -0.810736, 0.402426,
		-0.802545, -0.132080, 0.581787,
		36.759106, 37.280037, 26.569128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009487, 36.841366, 25.786470>,  <37.320889, 37.372494, 26.161877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009487, 36.841366, 25.786470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737610, 36.923763, 26.068064>,  <36.574486, 36.973202, 26.237019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737610, 36.923763, 26.068064>,  <37.009487, 36.841366, 25.786470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737610, 36.923763, 26.068064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725386, -0.331130, -0.603464,
		0.108801, -0.920826, 0.374489,
		-0.679690, 0.205991, 0.703982,
		36.533703, 36.985561, 26.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655548, 36.240524, 25.870358>,  <37.009487, 36.841366, 25.786470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655548, 36.240524, 25.870358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406120, 36.524574, 26.001131>,  <36.256466, 36.695004, 26.079596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406120, 36.524574, 26.001131>,  <36.655548, 36.240524, 25.870358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406120, 36.524574, 26.001131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706967, -0.333710, -0.623566,
		-0.333710, -0.619966, 0.710127,
		0.623566, -0.710127, -0.326933,
		36.219051, 36.737614, 26.099211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.946095, 35.877094, 25.885475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850948, 36.265560, 25.879019>,  <35.793861, 36.498638, 25.875145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850948, 36.265560, 25.879019>,  <35.946095, 35.877094, 25.885475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850948, 36.265560, 25.879019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839252, -0.213862, -0.499919,
		-0.488956, -0.105366, 0.865922,
		-0.237862, 0.971165, -0.016140,
		35.779591, 36.556911, 25.874176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215626, 35.964508, 26.063515>,  <35.946095, 35.877094, 25.885475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215626, 35.964508, 26.063515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336395, 36.282955, 25.853741>,  <35.408855, 36.474026, 25.727877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336395, 36.282955, 25.853741>,  <35.215626, 35.964508, 26.063515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336395, 36.282955, 25.853741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716430, -0.173448, -0.675755,
		-0.628946, 0.579745, 0.517999,
		0.301920, 0.796123, -0.524436,
		35.426971, 36.521793, 25.696409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605522, 36.317230, 25.938076>,  <35.215626, 35.964508, 26.063515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605522, 36.317230, 25.938076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881142, 36.446030, 25.678373>,  <35.046513, 36.523308, 25.522552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881142, 36.446030, 25.678373>,  <34.605522, 36.317230, 25.938076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881142, 36.446030, 25.678373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692434, 0.028113, -0.720933,
		-0.213884, 0.946324, 0.242332,
		0.689049, 0.321995, -0.649254,
		35.087856, 36.542629, 25.483597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138439, 36.671585, 25.494825>,  <34.605522, 36.317230, 25.938076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138439, 36.671585, 25.494825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493607, 36.670910, 25.310825>,  <34.706707, 36.670506, 25.200426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493607, 36.670910, 25.310825>,  <34.138439, 36.671585, 25.494825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493607, 36.670910, 25.310825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459758, 0.029344, -0.887559,
		0.015000, 0.999568, 0.025277,
		0.887917, -0.001692, -0.460000,
		34.759983, 36.670403, 25.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122032, 37.227589, 25.096607>,  <34.138439, 36.671585, 25.494825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122032, 37.227589, 25.096607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367149, 36.945827, 24.953333>,  <34.514221, 36.776772, 24.867369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367149, 36.945827, 24.953333>,  <34.122032, 37.227589, 25.096607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367149, 36.945827, 24.953333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488001, 0.019194, -0.872632,
		0.621560, 0.709540, -0.331987,
		0.612795, -0.704403, -0.358187,
		34.550987, 36.734505, 24.845877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124523, 37.325481, 24.277288>,  <34.122032, 37.227589, 25.096607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124523, 37.325481, 24.277288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255089, 36.952961, 24.341944>,  <34.333427, 36.729446, 24.380737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255089, 36.952961, 24.341944>,  <34.124523, 37.325481, 24.277288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255089, 36.952961, 24.341944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446902, -0.302736, -0.841801,
		0.832907, 0.202538, -0.515019,
		0.326412, -0.931305, 0.161637,
		34.353012, 36.673569, 24.390434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607182, 37.065502, 23.694725>,  <34.124523, 37.325481, 24.277288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607182, 37.065502, 23.694725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452824, 36.736290, 23.861439>,  <34.360210, 36.538765, 23.961468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452824, 36.736290, 23.861439>,  <34.607182, 37.065502, 23.694725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452824, 36.736290, 23.861439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290241, -0.320529, -0.901677,
		0.875697, -0.468920, -0.115186,
		-0.385894, -0.823027, 0.416787,
		34.337055, 36.489380, 23.986475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845871, 36.494629, 23.254726>,  <34.607182, 37.065502, 23.694725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845871, 36.494629, 23.254726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555363, 36.337143, 23.480122>,  <34.381058, 36.242649, 23.615358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555363, 36.337143, 23.480122>,  <34.845871, 36.494629, 23.254726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555363, 36.337143, 23.480122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294348, -0.562654, -0.772515,
		0.621203, -0.726915, 0.292748,
		-0.726269, -0.393719, 0.563488,
		34.337482, 36.219028, 23.649168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923187, 35.821590, 23.239946>,  <34.845871, 36.494629, 23.254726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923187, 35.821590, 23.239946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532898, 35.860683, 23.318338>,  <34.298725, 35.884140, 23.365374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532898, 35.860683, 23.318338>,  <34.923187, 35.821590, 23.239946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532898, 35.860683, 23.318338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216882, -0.555300, -0.802873,
		0.030363, -0.825888, 0.563016,
		-0.975725, 0.097730, 0.195980,
		34.240181, 35.890003, 23.377132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619087, 35.255920, 23.071360>,  <34.923187, 35.821590, 23.239946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619087, 35.255920, 23.071360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288857, 35.481625, 23.073917>,  <34.090717, 35.617046, 23.075453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288857, 35.481625, 23.073917>,  <34.619087, 35.255920, 23.071360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288857, 35.481625, 23.073917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287919, -0.411459, -0.864757,
		-0.485317, -0.715761, 0.502150,
		-0.825573, 0.564260, 0.006393,
		34.041183, 35.650902, 23.075836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103451, 34.827789, 22.920444>,  <34.619087, 35.255920, 23.071360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103451, 34.827789, 22.920444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924232, 35.175884, 22.838530>,  <33.816704, 35.384743, 22.789381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924232, 35.175884, 22.838530>,  <34.103451, 34.827789, 22.920444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924232, 35.175884, 22.838530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490453, -0.430779, -0.757552,
		-0.747472, -0.238975, 0.619820,
		-0.448042, 0.870241, -0.204789,
		33.789822, 35.436958, 22.777092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411186, 34.702839, 22.908554>,  <34.103451, 34.827789, 22.920444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411186, 34.702839, 22.908554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490875, 35.021179, 22.679844>,  <33.538689, 35.212185, 22.542618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490875, 35.021179, 22.679844>,  <33.411186, 34.702839, 22.908554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490875, 35.021179, 22.679844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596358, -0.364530, -0.715175,
		-0.777604, 0.483462, 0.401991,
		0.199222, 0.795854, -0.571776,
		33.550640, 35.259933, 22.508310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802807, 34.776482, 22.487759>,  <33.411186, 34.702839, 22.908554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802807, 34.776482, 22.487759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071819, 35.014053, 22.311142>,  <33.233227, 35.156597, 22.205172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071819, 35.014053, 22.311142>,  <32.802807, 34.776482, 22.487759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071819, 35.014053, 22.311142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519017, -0.046800, -0.853482,
		-0.527569, 0.803157, 0.276783,
		0.672527, 0.593926, -0.441542,
		33.273579, 35.192230, 22.178679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317444, 35.134789, 21.983652>,  <32.802807, 34.776482, 22.487759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317444, 35.134789, 21.983652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694263, 35.168171, 21.853682>,  <32.920357, 35.188202, 21.775700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694263, 35.168171, 21.853682>,  <32.317444, 35.134789, 21.983652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694263, 35.168171, 21.853682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317201, -0.093685, -0.943720,
		-0.109201, 0.992098, -0.061783,
		0.942050, 0.083457, -0.324925,
		32.976879, 35.193207, 21.756205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244442, 35.680775, 21.428682>,  <32.317444, 35.134789, 21.983652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244442, 35.680775, 21.428682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595024, 35.494221, 21.380829>,  <32.805374, 35.382286, 21.352118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595024, 35.494221, 21.380829>,  <32.244442, 35.680775, 21.428682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595024, 35.494221, 21.380829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187466, -0.101682, -0.976994,
		0.443494, 0.878716, -0.176552,
		0.876453, -0.466389, -0.119634,
		32.857960, 35.354305, 21.344938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611610, 36.013271, 20.915474>,  <32.244442, 35.680775, 21.428682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611610, 36.013271, 20.915474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763897, 35.643456, 20.922159>,  <32.855267, 35.421566, 20.926170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763897, 35.643456, 20.922159>,  <32.611610, 36.013271, 20.915474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763897, 35.643456, 20.922159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147865, -0.078711, -0.985871,
		0.912794, 0.372864, -0.166674,
		0.380715, -0.924542, 0.016714,
		32.878113, 35.366093, 20.927174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170910, 35.868252, 20.308094>,  <32.611610, 36.013271, 20.915474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170910, 35.868252, 20.308094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006710, 35.526276, 20.434946>,  <32.908192, 35.321091, 20.511057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006710, 35.526276, 20.434946>,  <33.170910, 35.868252, 20.308094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006710, 35.526276, 20.434946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135058, -0.286944, -0.948379,
		0.901805, -0.432137, 0.002323,
		-0.410496, -0.854939, 0.317131,
		32.883560, 35.269794, 20.530085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465523, 35.346462, 19.842400>,  <33.170910, 35.868252, 20.308094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465523, 35.346462, 19.842400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126740, 35.211151, 20.006466>,  <32.923470, 35.129967, 20.104906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126740, 35.211151, 20.006466>,  <33.465523, 35.346462, 19.842400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126740, 35.211151, 20.006466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244959, -0.436427, -0.865752,
		0.471868, -0.833728, 0.286772,
		-0.846957, -0.338273, 0.410165,
		32.872654, 35.109669, 20.129515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467926, 34.699131, 19.610193>,  <33.465523, 35.346462, 19.842400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467926, 34.699131, 19.610193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093048, 34.770779, 19.729912>,  <32.868122, 34.813766, 19.801743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093048, 34.770779, 19.729912>,  <33.467926, 34.699131, 19.610193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093048, 34.770779, 19.729912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348792, -0.487787, -0.800255,
		0.002651, -0.854388, 0.519628,
		-0.937196, 0.179121, 0.299297,
		32.811890, 34.824516, 19.819700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046352, 34.109909, 19.401598>,  <33.467926, 34.699131, 19.610193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046352, 34.109909, 19.401598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789604, 34.398235, 19.506235>,  <32.635555, 34.571228, 19.569017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789604, 34.398235, 19.506235>,  <33.046352, 34.109909, 19.401598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789604, 34.398235, 19.506235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607849, -0.270320, -0.746624,
		-0.467460, -0.638248, 0.611654,
		-0.641873, 0.720810, 0.261595,
		32.597042, 34.614479, 19.584713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460598, 34.056911, 19.089685>,  <33.046352, 34.109909, 19.401598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460598, 34.056911, 19.089685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.348553, 34.425491, 19.197361>,  <32.281326, 34.646641, 19.261967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.348553, 34.425491, 19.197361>,  <32.460598, 34.056911, 19.089685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348553, 34.425491, 19.197361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434550, 0.128328, -0.891459,
		-0.855982, -0.366681, 0.364471,
		-0.280109, 0.921454, 0.269188,
		32.264519, 34.701927, 19.278118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940464, 33.984978, 18.802284>,  <32.460598, 34.056911, 19.089685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940464, 33.984978, 18.802284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005367, 34.376488, 18.852369>,  <32.044308, 34.611393, 18.882420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005367, 34.376488, 18.852369>,  <31.940464, 33.984978, 18.802284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005367, 34.376488, 18.852369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417671, 0.183092, -0.889960,
		-0.893993, 0.092106, 0.438513,
		0.162259, 0.978772, 0.125213,
		32.054047, 34.670120, 18.889933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343859, 34.387917, 18.665045>,  <31.940464, 33.984978, 18.802284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343859, 34.387917, 18.665045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681332, 34.594650, 18.606972>,  <31.883816, 34.718693, 18.572128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681332, 34.594650, 18.606972>,  <31.343859, 34.387917, 18.665045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681332, 34.594650, 18.606972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371386, 0.366633, -0.853026,
		-0.387648, 0.773602, 0.501268,
		0.843684, 0.516837, -0.145180,
		31.934437, 34.749702, 18.563417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523714, 34.426064, 18.708124>,  <31.343859, 34.387917, 18.665045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523714, 34.426064, 18.708124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.124945, 34.441647, 18.735342>,  <29.885683, 34.450996, 18.751673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.124945, 34.441647, 18.735342>,  <30.523714, 34.426064, 18.708124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124945, 34.441647, 18.735342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077173, 0.334128, 0.939363,
		0.013862, 0.941722, -0.336106,
		-0.996921, 0.038960, 0.068043,
		29.825869, 34.453335, 18.755754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393013, 34.989666, 19.215477>,  <30.523714, 34.426064, 18.708124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393013, 34.989666, 19.215477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042339, 34.801624, 19.174635>,  <29.831936, 34.688797, 19.150129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042339, 34.801624, 19.174635>,  <30.393013, 34.989666, 19.215477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042339, 34.801624, 19.174635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306114, 0.381406, 0.872252,
		-0.371108, 0.795945, -0.478279,
		-0.876683, -0.470107, -0.102106,
		29.779335, 34.660591, 19.144003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967308, 35.445076, 19.429859>,  <30.393013, 34.989666, 19.215477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967308, 35.445076, 19.429859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.804295, 35.083038, 19.478378>,  <29.706486, 34.865814, 19.507490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.804295, 35.083038, 19.478378>,  <29.967308, 35.445076, 19.429859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804295, 35.083038, 19.478378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191674, 0.214652, 0.957698,
		-0.892847, 0.367046, -0.260962,
		-0.407536, -0.905097, 0.121298,
		29.682034, 34.811508, 19.514769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444412, 35.638027, 19.971056>,  <29.967308, 35.445076, 19.429859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444412, 35.638027, 19.971056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.492153, 35.241085, 19.983656>,  <29.520798, 35.002922, 19.991215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.492153, 35.241085, 19.983656>,  <29.444412, 35.638027, 19.971056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492153, 35.241085, 19.983656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087473, 0.021092, 0.995944,
		-0.988991, -0.121624, -0.084286,
		0.119353, -0.992352, 0.031499,
		29.527960, 34.943378, 19.993105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876400, 35.235073, 20.340658>,  <29.444412, 35.638027, 19.971056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876400, 35.235073, 20.340658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223885, 35.039482, 20.372250>,  <29.432375, 34.922127, 20.391205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223885, 35.039482, 20.372250>,  <28.876400, 35.235073, 20.340658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223885, 35.039482, 20.372250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070402, 0.035935, 0.996871,
		-0.490289, -0.871554, -0.003208,
		0.868712, -0.488981, 0.078978,
		29.484499, 34.892788, 20.395943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762207, 34.790367, 20.883200>,  <28.876400, 35.235073, 20.340658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762207, 34.790367, 20.883200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160559, 34.801857, 20.848785>,  <29.399569, 34.808750, 20.828136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160559, 34.801857, 20.848785>,  <28.762207, 34.790367, 20.883200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160559, 34.801857, 20.848785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083136, 0.090307, 0.992438,
		0.036271, -0.995500, 0.087548,
		0.995878, 0.028719, -0.086038,
		29.459322, 34.810474, 20.822973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975744, 34.497772, 21.523851>,  <28.762207, 34.790367, 20.883200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975744, 34.497772, 21.523851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316185, 34.663639, 21.395056>,  <29.520449, 34.763161, 21.317778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316185, 34.663639, 21.395056>,  <28.975744, 34.497772, 21.523851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316185, 34.663639, 21.395056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346664, 0.016709, 0.937841,
		0.394275, -0.909818, -0.129530,
		0.851100, 0.414671, -0.321989,
		29.571514, 34.788040, 21.298460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511072, 34.097446, 21.948725>,  <28.975744, 34.497772, 21.523851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511072, 34.097446, 21.948725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.653492, 34.449417, 21.822891>,  <29.738943, 34.660599, 21.747391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.653492, 34.449417, 21.822891>,  <29.511072, 34.097446, 21.948725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653492, 34.449417, 21.822891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328562, 0.197271, 0.923651,
		0.874801, -0.432225, -0.218872,
		0.356048, 0.879924, -0.314585,
		29.760307, 34.713394, 21.728516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057831, 34.067211, 22.358757>,  <29.511072, 34.097446, 21.948725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057831, 34.067211, 22.358757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059338, 34.435341, 22.202303>,  <30.060242, 34.656219, 22.108431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.059338, 34.435341, 22.202303>,  <30.057831, 34.067211, 22.358757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059338, 34.435341, 22.202303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581616, 0.316158, 0.749512,
		0.813455, -0.230312, -0.534086,
		0.003766, 0.920327, -0.391133,
		30.060467, 34.711437, 22.084963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837969, 34.353554, 22.314825>,  <30.057831, 34.067211, 22.358757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837969, 34.353554, 22.314825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.557117, 34.637711, 22.334269>,  <30.388607, 34.808205, 22.345934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.557117, 34.637711, 22.334269>,  <30.837969, 34.353554, 22.314825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557117, 34.637711, 22.334269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495704, 0.438648, 0.749577,
		0.511171, 0.550392, -0.660131,
		-0.702126, 0.710391, 0.048607,
		30.346479, 34.850826, 22.348850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253216, 34.963585, 22.251505>,  <30.837969, 34.353554, 22.314825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253216, 34.963585, 22.251505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920986, 35.070175, 22.447113>,  <30.721649, 35.134129, 22.564478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920986, 35.070175, 22.447113>,  <31.253216, 34.963585, 22.251505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920986, 35.070175, 22.447113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543761, 0.577724, 0.608736,
		-0.120307, 0.771509, -0.624740,
		-0.830572, 0.266474, 0.489021,
		30.671814, 35.150116, 22.593819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349434, 35.638855, 22.335657>,  <31.253216, 34.963585, 22.251505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349434, 35.638855, 22.335657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077322, 35.513855, 22.600855>,  <30.914055, 35.438854, 22.759974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077322, 35.513855, 22.600855>,  <31.349434, 35.638855, 22.335657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077322, 35.513855, 22.600855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527892, 0.418627, 0.738973,
		-0.508480, 0.852697, -0.119814,
		-0.680278, -0.312504, 0.662996,
		30.873240, 35.420105, 22.799753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459078, 36.018635, 22.970486>,  <31.349434, 35.638855, 22.335657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459078, 36.018635, 22.970486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214216, 35.739326, 23.118908>,  <31.067299, 35.571743, 23.207962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214216, 35.739326, 23.118908>,  <31.459078, 36.018635, 22.970486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214216, 35.739326, 23.118908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456112, 0.071507, 0.887045,
		-0.645931, 0.712252, 0.274717,
		-0.612156, -0.698271, 0.371056,
		31.030569, 35.529846, 23.230225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293602, 36.202187, 23.714867>,  <31.459078, 36.018635, 22.970486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293602, 36.202187, 23.714867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.203959, 35.814373, 23.675329>,  <31.150171, 35.581684, 23.651608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.203959, 35.814373, 23.675329>,  <31.293602, 36.202187, 23.714867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203959, 35.814373, 23.675329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238096, -0.152819, 0.959143,
		-0.945031, 0.191420, 0.265092,
		-0.224110, -0.969538, -0.098842,
		31.136724, 35.523510, 23.645676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127230, 36.043491, 24.312527>,  <31.293602, 36.202187, 23.714867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127230, 36.043491, 24.312527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254519, 35.696899, 24.158667>,  <31.330893, 35.488945, 24.066351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254519, 35.696899, 24.158667>,  <31.127230, 36.043491, 24.312527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254519, 35.696899, 24.158667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437443, -0.225755, 0.870447,
		-0.841058, -0.445257, 0.307193,
		0.318222, -0.866476, -0.384648,
		31.349985, 35.436958, 24.043272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952431, 35.562778, 24.790173>,  <31.127230, 36.043491, 24.312527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952431, 35.562778, 24.790173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255074, 35.410324, 24.577650>,  <31.436659, 35.318851, 24.450136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.255074, 35.410324, 24.577650>,  <30.952431, 35.562778, 24.790173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255074, 35.410324, 24.577650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495811, -0.195327, 0.846179,
		-0.426287, -0.903650, 0.041186,
		0.756605, -0.381136, -0.531305,
		31.482056, 35.295982, 24.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090347, 35.012577, 25.194822>,  <30.952431, 35.562778, 24.790173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090347, 35.012577, 25.194822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.423800, 35.078323, 24.983902>,  <31.623871, 35.117771, 24.857349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.423800, 35.078323, 24.983902>,  <31.090347, 35.012577, 25.194822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423800, 35.078323, 24.983902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550506, -0.169872, 0.817366,
		0.044770, -0.971663, -0.232093,
		0.833630, 0.164362, -0.527301,
		31.673889, 35.127632, 24.825712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548155, 34.561367, 25.608072>,  <31.090347, 35.012577, 25.194822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548155, 34.561367, 25.608072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789331, 34.783188, 25.378660>,  <31.934038, 34.916279, 25.241013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789331, 34.783188, 25.378660>,  <31.548155, 34.561367, 25.608072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789331, 34.783188, 25.378660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675748, 0.027130, 0.736634,
		0.424060, -0.831708, -0.358378,
		0.602941, 0.554550, -0.573530,
		31.970213, 34.949554, 25.206602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295948, 34.145981, 25.476543>,  <31.548155, 34.561367, 25.608072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295948, 34.145981, 25.476543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287121, 34.543858, 25.436342>,  <32.281826, 34.782585, 25.412222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287121, 34.543858, 25.436342>,  <32.295948, 34.145981, 25.476543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287121, 34.543858, 25.436342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698846, 0.087234, 0.709933,
		0.714931, -0.054567, -0.697062,
		-0.022069, 0.994692, -0.100501,
		32.280499, 34.842266, 25.406193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975258, 34.339474, 25.541908>,  <32.295948, 34.145981, 25.476543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975258, 34.339474, 25.541908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799213, 34.688992, 25.624643>,  <32.693584, 34.898701, 25.674284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799213, 34.688992, 25.624643>,  <32.975258, 34.339474, 25.541908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799213, 34.688992, 25.624643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679597, 0.173584, 0.712753,
		0.586896, 0.454259, -0.670225,
		-0.440115, 0.873795, 0.206837,
		32.667179, 34.951130, 25.686695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478844, 34.796574, 25.754179>,  <32.975258, 34.339474, 25.541908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478844, 34.796574, 25.754179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188076, 35.051647, 25.856112>,  <33.013615, 35.204693, 25.917271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188076, 35.051647, 25.856112>,  <33.478844, 34.796574, 25.754179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188076, 35.051647, 25.856112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565727, 0.345734, 0.748613,
		0.389275, 0.688350, -0.612078,
		-0.726924, 0.637685, 0.254832,
		32.969997, 35.242954, 25.932562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.280228, 38.054607, 27.147936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.952847, 38.129562, 27.365198>,  <37.756416, 38.174538, 27.495556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.952847, 38.129562, 27.365198>,  <38.280228, 38.054607, 27.147936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952847, 38.129562, 27.365198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574146, 0.230379, 0.785673,
		0.022097, 0.954888, -0.296144,
		-0.818455, 0.187391, 0.543154,
		37.707310, 38.185780, 27.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221012, 38.779850, 27.468325>,  <38.280228, 38.054607, 27.147936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221012, 38.779850, 27.468325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.981251, 38.563843, 27.704660>,  <37.837395, 38.434238, 27.846462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.981251, 38.563843, 27.704660>,  <38.221012, 38.779850, 27.468325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981251, 38.563843, 27.704660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500088, 0.323704, 0.803199,
		-0.625002, 0.776912, 0.076029,
		-0.599404, -0.540022, 0.590840,
		37.801430, 38.401836, 27.881912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910957, 39.241867, 28.066687>,  <38.221012, 38.779850, 27.468325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910957, 39.241867, 28.066687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850372, 38.870773, 28.203142>,  <37.814022, 38.648117, 28.285015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850372, 38.870773, 28.203142>,  <37.910957, 39.241867, 28.066687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850372, 38.870773, 28.203142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159503, 0.317657, 0.934694,
		-0.975510, 0.195979, 0.099864,
		-0.151458, -0.927732, 0.341137,
		37.804935, 38.592453, 28.305483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445091, 39.247555, 28.565186>,  <37.910957, 39.241867, 28.066687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445091, 39.247555, 28.565186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609268, 38.895031, 28.658844>,  <37.707775, 38.683517, 28.715038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.609268, 38.895031, 28.658844>,  <37.445091, 39.247555, 28.565186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609268, 38.895031, 28.658844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106242, 0.301239, 0.947611,
		-0.905675, -0.364066, 0.217275,
		0.410445, -0.881312, 0.234146,
		37.732403, 38.630638, 28.729088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194008, 39.111179, 29.169083>,  <37.445091, 39.247555, 28.565186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194008, 39.111179, 29.169083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.513920, 38.871494, 29.154732>,  <37.705868, 38.727684, 29.146120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.513920, 38.871494, 29.154732>,  <37.194008, 39.111179, 29.169083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513920, 38.871494, 29.154732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223209, 0.241372, 0.944414,
		-0.557248, -0.763334, 0.326796,
		0.799782, -0.599217, -0.035879,
		37.753853, 38.691730, 29.143969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242813, 38.809410, 29.889204>,  <37.194008, 39.111179, 29.169083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242813, 38.809410, 29.889204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601948, 38.762745, 29.719370>,  <37.817429, 38.734745, 29.617470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601948, 38.762745, 29.719370>,  <37.242813, 38.809410, 29.889204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601948, 38.762745, 29.719370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430925, 0.034653, 0.901722,
		-0.090481, -0.992567, 0.081383,
		0.897840, -0.116659, -0.424587,
		37.871300, 38.727745, 29.591993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553009, 38.297546, 30.275278>,  <37.242813, 38.809410, 29.889204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553009, 38.297546, 30.275278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842819, 38.509293, 30.098717>,  <38.016705, 38.636341, 29.992781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842819, 38.509293, 30.098717>,  <37.553009, 38.297546, 30.275278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842819, 38.509293, 30.098717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522682, -0.004523, 0.852516,
		0.449293, -0.848384, -0.279965,
		0.724527, 0.529362, -0.441403,
		38.060177, 38.668102, 29.966295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239746, 37.960659, 30.439978>,  <37.553009, 38.297546, 30.275278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239746, 37.960659, 30.439978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301220, 38.339733, 30.328064>,  <38.338104, 38.567177, 30.260916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301220, 38.339733, 30.328064>,  <38.239746, 37.960659, 30.439978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301220, 38.339733, 30.328064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455635, 0.183284, 0.871093,
		0.876799, -0.261356, -0.403628,
		0.153687, 0.947681, -0.279786,
		38.347324, 38.624039, 30.244127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902260, 38.207439, 30.728672>,  <38.239746, 37.960659, 30.439978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902260, 38.207439, 30.728672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771313, 38.574188, 30.637308>,  <38.692745, 38.794239, 30.582491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771313, 38.574188, 30.637308>,  <38.902260, 38.207439, 30.728672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771313, 38.574188, 30.637308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504829, 0.374051, 0.777968,
		0.798736, 0.139373, -0.585316,
		-0.327366, 0.916876, -0.228408,
		38.673103, 38.849251, 30.568785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500000, 38.674381, 30.664360>,  <38.902260, 38.207439, 30.728672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500000, 38.674381, 30.664360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156292, 38.850269, 30.768898>,  <38.950066, 38.955803, 30.831621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156292, 38.850269, 30.768898>,  <39.500000, 38.674381, 30.664360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156292, 38.850269, 30.768898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439184, 0.372259, 0.817644,
		0.262248, 0.817354, -0.512989,
		-0.859269, 0.439722, 0.261344,
		38.898510, 38.982185, 30.847301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809483, 39.270836, 30.982071>,  <39.500000, 38.674381, 30.664360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809483, 39.270836, 30.982071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.428741, 39.255764, 31.103758>,  <39.200294, 39.246719, 31.176769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.428741, 39.255764, 31.103758>,  <39.809483, 39.270836, 30.982071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428741, 39.255764, 31.103758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254609, 0.455484, 0.853058,
		-0.170711, 0.889446, -0.423962,
		-0.951857, -0.037682, 0.304217,
		39.143185, 39.244461, 31.195023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715469, 39.960957, 31.290939>,  <39.809483, 39.270836, 30.982071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715469, 39.960957, 31.290939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445786, 39.699253, 31.427986>,  <39.283978, 39.542229, 31.510214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445786, 39.699253, 31.427986>,  <39.715469, 39.960957, 31.290939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445786, 39.699253, 31.427986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068333, 0.406659, 0.911021,
		-0.735375, 0.637628, -0.229465,
		-0.674206, -0.654262, 0.342618,
		39.243523, 39.502975, 31.530771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430183, 40.264004, 31.885550>,  <39.715469, 39.960957, 31.290939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430183, 40.264004, 31.885550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.327358, 39.882092, 31.945293>,  <39.265663, 39.652943, 31.981140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.327358, 39.882092, 31.945293>,  <39.430183, 40.264004, 31.885550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327358, 39.882092, 31.945293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245361, 0.085008, 0.965698,
		-0.934727, 0.284895, 0.212414,
		-0.257066, -0.954782, 0.149361,
		39.250240, 39.595657, 31.990103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942963, 40.185131, 32.453808>,  <39.430183, 40.264004, 31.885550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942963, 40.185131, 32.453808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180939, 39.867077, 32.406803>,  <39.323723, 39.676243, 32.378601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180939, 39.867077, 32.406803>,  <38.942963, 40.185131, 32.453808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180939, 39.867077, 32.406803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351820, 0.126156, 0.927528,
		-0.722685, -0.593163, 0.354800,
		0.594935, -0.795136, -0.117516,
		39.359421, 39.628536, 32.371548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088261, 40.844490, 32.892414>,  <38.942963, 40.185131, 32.453808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088261, 40.844490, 32.892414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048012, 41.237988, 32.832912>,  <39.023865, 41.474087, 32.797211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048012, 41.237988, 32.832912>,  <39.088261, 40.844490, 32.892414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048012, 41.237988, 32.832912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512064, -0.179390, -0.840006,
		-0.853034, -0.008350, 0.521789,
		-0.100618, 0.983743, -0.148749,
		39.017826, 41.533112, 32.788288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462555, 40.830032, 32.578030>,  <39.088261, 40.844490, 32.892414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462555, 40.830032, 32.578030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.617340, 41.193363, 32.514526>,  <38.710213, 41.411362, 32.476425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.617340, 41.193363, 32.514526>,  <38.462555, 40.830032, 32.578030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617340, 41.193363, 32.514526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272495, -0.051837, -0.960760,
		-0.880912, 0.415039, 0.227455,
		0.386963, 0.908326, -0.158760,
		38.733429, 41.465862, 32.466900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960262, 41.116180, 32.354874>,  <38.462555, 40.830032, 32.578030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960262, 41.116180, 32.354874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.257694, 41.352108, 32.228886>,  <38.436153, 41.493664, 32.153294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.257694, 41.352108, 32.228886>,  <37.960262, 41.116180, 32.354874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257694, 41.352108, 32.228886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362445, -0.040308, -0.931133,
		-0.561892, 0.806532, 0.183803,
		0.743580, 0.589814, -0.314972,
		38.480770, 41.529053, 32.134396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642757, 41.663624, 32.048500>,  <37.960262, 41.116180, 32.354874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642757, 41.663624, 32.048500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012928, 41.618317, 31.903864>,  <38.235031, 41.591133, 31.817081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012928, 41.618317, 31.903864>,  <37.642757, 41.663624, 32.048500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012928, 41.618317, 31.903864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378654, -0.240725, -0.893685,
		0.014185, 0.963961, -0.265665,
		0.925429, -0.113272, -0.361593,
		38.290558, 41.584335, 31.795385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631447, 42.021770, 31.395853>,  <37.642757, 41.663624, 32.048500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631447, 42.021770, 31.395853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956367, 41.790581, 31.364582>,  <38.151321, 41.651867, 31.345819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956367, 41.790581, 31.364582>,  <37.631447, 42.021770, 31.395853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956367, 41.790581, 31.364582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148906, -0.075920, -0.985933,
		0.563907, 0.812517, -0.147733,
		0.812303, -0.577973, -0.078177,
		38.200058, 41.617188, 31.341129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059128, 42.335941, 30.809254>,  <37.631447, 42.021770, 31.395853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059128, 42.335941, 30.809254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218498, 41.970695, 30.843861>,  <38.314121, 41.751549, 30.864624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.218498, 41.970695, 30.843861>,  <38.059128, 42.335941, 30.809254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218498, 41.970695, 30.843861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070397, -0.124491, -0.989720,
		0.914495, 0.388239, -0.113881,
		0.398425, -0.913111, 0.086516,
		38.338024, 41.696762, 30.869816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403633, 42.274445, 30.135309>,  <38.059128, 42.335941, 30.809254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403633, 42.274445, 30.135309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359219, 41.920052, 30.315399>,  <38.332569, 41.707417, 30.423454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359219, 41.920052, 30.315399>,  <38.403633, 42.274445, 30.135309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359219, 41.920052, 30.315399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386302, -0.378925, -0.840944,
		0.915664, -0.267300, -0.300182,
		-0.111038, -0.885983, 0.450227,
		38.325909, 41.654255, 30.450468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832115, 41.869713, 29.699219>,  <38.403633, 42.274445, 30.135309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832115, 41.869713, 29.699219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552502, 41.660725, 29.894516>,  <38.384735, 41.535332, 30.011694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552502, 41.660725, 29.894516>,  <38.832115, 41.869713, 29.699219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552502, 41.660725, 29.894516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292387, -0.414255, -0.861918,
		0.652586, -0.745261, 0.136812,
		-0.699029, -0.522473, 0.488242,
		38.342793, 41.503983, 30.040989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811398, 41.253281, 29.359428>,  <38.832115, 41.869713, 29.699219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811398, 41.253281, 29.359428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.461700, 41.276356, 29.552248>,  <38.251881, 41.290199, 29.667940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.461700, 41.276356, 29.552248>,  <38.811398, 41.253281, 29.359428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461700, 41.276356, 29.552248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452271, -0.457731, -0.765463,
		0.176495, -0.887218, 0.426256,
		-0.874243, 0.057683, 0.482049,
		38.199429, 41.293659, 29.696863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515072, 40.673740, 29.227684>,  <38.811398, 41.253281, 29.359428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515072, 40.673740, 29.227684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.198517, 40.859783, 29.386368>,  <38.008583, 40.971409, 29.481579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.198517, 40.859783, 29.386368>,  <38.515072, 40.673740, 29.227684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198517, 40.859783, 29.386368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606958, -0.520523, -0.600548,
		-0.072820, -0.716055, 0.694235,
		-0.791391, 0.465104, 0.396711,
		37.961102, 40.999313, 29.505381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991676, 40.164070, 29.366116>,  <38.515072, 40.673740, 29.227684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991676, 40.164070, 29.366116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.833282, 40.525208, 29.299110>,  <37.738247, 40.741890, 29.258907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.833282, 40.525208, 29.299110>,  <37.991676, 40.164070, 29.366116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833282, 40.525208, 29.299110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503474, -0.366032, -0.782646,
		-0.767925, -0.225580, 0.599504,
		-0.395987, 0.902847, -0.167512,
		37.714485, 40.796062, 29.248857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307652, 39.988701, 29.362293>,  <37.991676, 40.164070, 29.366116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307652, 39.988701, 29.362293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381161, 40.334206, 29.174612>,  <37.425266, 40.541508, 29.062004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381161, 40.334206, 29.174612>,  <37.307652, 39.988701, 29.362293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381161, 40.334206, 29.174612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633793, -0.260739, -0.728232,
		-0.751355, 0.431205, 0.499527,
		0.183771, 0.863758, -0.469202,
		37.436291, 40.593334, 29.033852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704788, 40.128674, 29.081356>,  <37.307652, 39.988701, 29.362293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704788, 40.128674, 29.081356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920795, 40.392628, 28.872383>,  <37.050400, 40.550999, 28.747000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920795, 40.392628, 28.872383>,  <36.704788, 40.128674, 29.081356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920795, 40.392628, 28.872383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589718, -0.146220, -0.794262,
		-0.600511, 0.737002, 0.310185,
		0.540017, 0.659885, -0.522430,
		37.082802, 40.590591, 28.715654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241890, 40.761738, 28.861462>,  <36.704788, 40.128674, 29.081356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241890, 40.761738, 28.861462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.560326, 40.715248, 28.623898>,  <36.751389, 40.687355, 28.481359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.560326, 40.715248, 28.623898>,  <36.241890, 40.761738, 28.861462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560326, 40.715248, 28.623898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605042, -0.132107, -0.785158,
		0.012798, 0.984398, -0.175492,
		0.796091, -0.116228, -0.593911,
		36.799152, 40.680378, 28.445724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112255, 41.546795, 29.010418>,  <36.241890, 40.761738, 28.861462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112255, 41.546795, 29.010418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825485, 41.817204, 29.078541>,  <35.653423, 41.979450, 29.119413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825485, 41.817204, 29.078541>,  <36.112255, 41.546795, 29.010418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825485, 41.817204, 29.078541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263410, 0.036497, 0.963993,
		0.645468, 0.735974, -0.204237,
		-0.716928, 0.676025, 0.170305,
		35.610405, 42.020012, 29.129633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295612, 41.800358, 29.607679>,  <36.112255, 41.546795, 29.010418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295612, 41.800358, 29.607679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942513, 41.987427, 29.589636>,  <35.730652, 42.099670, 29.578810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942513, 41.987427, 29.589636>,  <36.295612, 41.800358, 29.607679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942513, 41.987427, 29.589636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036164, 0.028096, 0.998951,
		0.468452, 0.883454, -0.007889,
		-0.882748, 0.467676, -0.045111,
		35.677689, 42.127728, 29.576103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382328, 42.399132, 30.077396>,  <36.295612, 41.800358, 29.607679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382328, 42.399132, 30.077396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014336, 42.255783, 30.013906>,  <35.793541, 42.169773, 29.975813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014336, 42.255783, 30.013906>,  <36.382328, 42.399132, 30.077396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014336, 42.255783, 30.013906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148233, -0.056754, 0.987323,
		-0.362841, 0.931851, -0.000910,
		-0.919986, -0.358376, -0.158723,
		35.738338, 42.148270, 29.966290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928387, 42.759422, 30.515278>,  <36.382328, 42.399132, 30.077396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928387, 42.759422, 30.515278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.720345, 42.428120, 30.431866>,  <35.595520, 42.229340, 30.381819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.720345, 42.428120, 30.431866>,  <35.928387, 42.759422, 30.515278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720345, 42.428120, 30.431866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160395, -0.145093, 0.976331,
		-0.838908, 0.541239, -0.057385,
		-0.520102, -0.828256, -0.208531,
		35.564312, 42.179642, 30.369307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398792, 42.818947, 30.925026>,  <35.928387, 42.759422, 30.515278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398792, 42.818947, 30.925026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.415947, 42.433445, 30.819695>,  <35.426239, 42.202145, 30.756495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.415947, 42.433445, 30.819695>,  <35.398792, 42.818947, 30.925026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415947, 42.433445, 30.819695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203492, -0.266474, 0.942116,
		-0.978137, 0.013177, -0.207545,
		0.042891, -0.963752, -0.263330,
		35.428814, 42.144318, 30.740696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810730, 42.567223, 31.109451>,  <35.398792, 42.818947, 30.925026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810730, 42.567223, 31.109451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.065872, 42.259506, 31.094862>,  <35.218956, 42.074875, 31.086109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.065872, 42.259506, 31.094862>,  <34.810730, 42.567223, 31.109451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065872, 42.259506, 31.094862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178967, -0.194117, 0.964515,
		-0.749073, -0.608695, -0.261496,
		0.637856, -0.769292, -0.036472,
		35.257229, 42.028717, 31.083921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478260, 41.930023, 31.435156>,  <34.810730, 42.567223, 31.109451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478260, 41.930023, 31.435156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.871384, 41.856457, 31.441700>,  <35.107258, 41.812317, 31.445625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.871384, 41.856457, 31.441700>,  <34.478260, 41.930023, 31.435156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871384, 41.856457, 31.441700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068030, -0.278310, 0.958079,
		-0.171656, -0.942718, -0.286036,
		0.982805, -0.183919, 0.016359,
		35.166225, 41.801281, 31.446608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578873, 41.230057, 31.767294>,  <34.478260, 41.930023, 31.435156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578873, 41.230057, 31.767294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.917114, 41.442707, 31.786579>,  <35.120060, 41.570297, 31.798151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.917114, 41.442707, 31.786579>,  <34.578873, 41.230057, 31.767294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917114, 41.442707, 31.786579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078659, -0.213428, 0.973787,
		0.527981, -0.819647, -0.222293,
		0.845605, 0.531627, 0.048214,
		35.170795, 41.602196, 31.801043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851604, 40.879017, 32.321278>,  <34.578873, 41.230057, 31.767294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851604, 40.879017, 32.321278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080078, 41.203865, 32.273594>,  <35.217163, 41.398773, 32.244984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080078, 41.203865, 32.273594>,  <34.851604, 40.879017, 32.321278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080078, 41.203865, 32.273594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159917, 0.032349, 0.986600,
		0.805095, -0.582592, -0.111395,
		0.571182, 0.812121, -0.119210,
		35.251434, 41.447502, 32.237831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518852, 40.817249, 32.707806>,  <34.851604, 40.879017, 32.321278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518852, 40.817249, 32.707806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473736, 41.213104, 32.672260>,  <35.446667, 41.450619, 32.650932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473736, 41.213104, 32.672260>,  <35.518852, 40.817249, 32.707806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473736, 41.213104, 32.672260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127730, 0.103137, 0.986432,
		0.985375, 0.099912, -0.138039,
		-0.112793, 0.989636, -0.088867,
		35.439899, 41.509995, 32.645599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071529, 41.086800, 33.070721>,  <35.518852, 40.817249, 32.707806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071529, 41.086800, 33.070721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.786949, 41.367466, 33.055244>,  <35.616199, 41.535866, 33.045959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.786949, 41.367466, 33.055244>,  <36.071529, 41.086800, 33.070721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786949, 41.367466, 33.055244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092052, 0.147639, 0.984748,
		0.696682, 0.697037, -0.169628,
		-0.711450, 0.701671, -0.038694,
		35.573513, 41.577969, 33.043636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441273, 41.710026, 33.291618>,  <36.071529, 41.086800, 33.070721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441273, 41.710026, 33.291618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044102, 41.706821, 33.338982>,  <35.805798, 41.704899, 33.367401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044102, 41.706821, 33.338982>,  <36.441273, 41.710026, 33.291618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044102, 41.706821, 33.338982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118065, 0.035017, 0.992388,
		-0.012092, 0.999355, -0.033824,
		-0.992932, -0.008007, 0.118413,
		35.746223, 41.704418, 33.374504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.654232, 42.044659, 25.449461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308647, 41.997166, 25.645205>,  <34.101295, 41.968670, 25.762651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308647, 41.997166, 25.645205>,  <34.654232, 42.044659, 25.449461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308647, 41.997166, 25.645205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382796, 0.476533, 0.791444,
		-0.327163, 0.871103, -0.366257,
		-0.863963, -0.118730, 0.489359,
		34.049458, 41.961548, 25.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681660, 42.589195, 25.835392>,  <34.654232, 42.044659, 25.449461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681660, 42.589195, 25.835392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396667, 42.378235, 26.020527>,  <34.225674, 42.251659, 26.131609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396667, 42.378235, 26.020527>,  <34.681660, 42.589195, 25.835392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396667, 42.378235, 26.020527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449605, 0.163289, 0.878175,
		-0.538727, 0.833778, 0.120782,
		-0.712481, -0.527401, 0.462839,
		34.182922, 42.220016, 26.159378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402702, 43.009411, 26.300802>,  <34.681660, 42.589195, 25.835392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402702, 43.009411, 26.300802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332775, 42.639236, 26.435270>,  <34.290817, 42.417133, 26.515951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332775, 42.639236, 26.435270>,  <34.402702, 43.009411, 26.300802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332775, 42.639236, 26.435270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407654, 0.242759, 0.880276,
		-0.896245, 0.290934, 0.334817,
		-0.174823, -0.925432, 0.336172,
		34.280327, 42.361607, 26.536121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020870, 43.031982, 27.048130>,  <34.402702, 43.009411, 26.300802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020870, 43.031982, 27.048130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174000, 42.663261, 27.023720>,  <34.265877, 42.442028, 27.009073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174000, 42.663261, 27.023720>,  <34.020870, 43.031982, 27.048130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174000, 42.663261, 27.023720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383420, 0.098443, 0.918313,
		-0.840495, -0.374953, 0.391124,
		0.382827, -0.921802, -0.061024,
		34.288849, 42.386723, 27.005413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957378, 42.810345, 27.729830>,  <34.020870, 43.031982, 27.048130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957378, 42.810345, 27.729830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216137, 42.538628, 27.591215>,  <34.371391, 42.375599, 27.508047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216137, 42.538628, 27.591215>,  <33.957378, 42.810345, 27.729830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216137, 42.538628, 27.591215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383613, -0.102864, 0.917747,
		-0.659064, -0.726623, 0.194043,
		0.646897, -0.679292, -0.346536,
		34.410206, 42.334839, 27.487255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854744, 42.172794, 28.121433>,  <33.957378, 42.810345, 27.729830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854744, 42.172794, 28.121433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223618, 42.180313, 27.966917>,  <34.444942, 42.184822, 27.874207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223618, 42.180313, 27.966917>,  <33.854744, 42.172794, 28.121433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223618, 42.180313, 27.966917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382799, -0.186735, 0.904762,
		-0.055130, -0.982231, -0.179398,
		0.922185, 0.018793, -0.386292,
		34.500275, 42.185951, 27.851030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253971, 41.807289, 28.596354>,  <33.854744, 42.172794, 28.121433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253971, 41.807289, 28.596354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551979, 41.937641, 28.363546>,  <34.730785, 42.015854, 28.223862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551979, 41.937641, 28.363546>,  <34.253971, 41.807289, 28.596354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551979, 41.937641, 28.363546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633895, -0.074263, 0.769846,
		0.207657, -0.942489, -0.261903,
		0.745020, 0.325883, -0.582017,
		34.775486, 42.035404, 28.188942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807487, 41.337826, 28.681238>,  <34.253971, 41.807289, 28.596354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807487, 41.337826, 28.681238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931091, 41.705433, 28.583323>,  <35.005253, 41.925999, 28.524574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931091, 41.705433, 28.583323>,  <34.807487, 41.337826, 28.681238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931091, 41.705433, 28.583323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603945, 0.009211, 0.796973,
		0.734687, -0.394111, -0.552189,
		0.309009, 0.919017, -0.244788,
		35.023792, 41.981136, 28.509886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507851, 41.292885, 28.713911>,  <34.807487, 41.337826, 28.681238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507851, 41.292885, 28.713911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421581, 41.683254, 28.726921>,  <35.369820, 41.917477, 28.734728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421581, 41.683254, 28.726921>,  <35.507851, 41.292885, 28.713911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421581, 41.683254, 28.726921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418150, 0.062207, 0.906246,
		0.882403, 0.209057, -0.421498,
		-0.215677, 0.975923, 0.032526,
		35.356876, 41.976032, 28.736679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076916, 41.176132, 28.257698>,  <35.507851, 41.292885, 28.713911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076916, 41.176132, 28.257698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391224, 40.975010, 28.113613>,  <36.579807, 40.854336, 28.027163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391224, 40.975010, 28.113613>,  <36.076916, 41.176132, 28.257698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391224, 40.975010, 28.113613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487545, -0.145130, -0.860952,
		0.380615, 0.852128, -0.359179,
		0.785769, -0.502807, -0.360212,
		36.626953, 40.824169, 28.005550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152309, 41.453720, 27.647470>,  <36.076916, 41.176132, 28.257698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152309, 41.453720, 27.647470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330727, 41.095829, 27.638508>,  <36.437778, 40.881092, 27.633131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330727, 41.095829, 27.638508>,  <36.152309, 41.453720, 27.647470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330727, 41.095829, 27.638508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514158, -0.235670, -0.824683,
		0.732588, 0.379366, -0.565152,
		0.446046, -0.894730, -0.022405,
		36.464539, 40.827412, 27.631786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461338, 41.409176, 26.984762>,  <36.152309, 41.453720, 27.647470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461338, 41.409176, 26.984762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409687, 41.043724, 27.138964>,  <36.378696, 40.824455, 27.231483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409687, 41.043724, 27.138964>,  <36.461338, 41.409176, 26.984762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409687, 41.043724, 27.138964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330234, -0.326947, -0.885467,
		0.935025, -0.241644, -0.259492,
		-0.129127, -0.913627, 0.385503,
		36.370949, 40.769634, 27.254614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620090, 40.941505, 26.456251>,  <36.461338, 41.409176, 26.984762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620090, 40.941505, 26.456251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428379, 40.684814, 26.695744>,  <36.313351, 40.530800, 26.839439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428379, 40.684814, 26.695744>,  <36.620090, 40.941505, 26.456251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428379, 40.684814, 26.695744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331459, -0.499323, -0.800507,
		0.812664, -0.582124, 0.026612,
		-0.479282, -0.641723, 0.598732,
		36.284595, 40.492298, 26.875362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681381, 40.276608, 26.080902>,  <36.620090, 40.941505, 26.456251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681381, 40.276608, 26.080902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391376, 40.214199, 26.349236>,  <36.217373, 40.176754, 26.510235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391376, 40.214199, 26.349236>,  <36.681381, 40.276608, 26.080902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391376, 40.214199, 26.349236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436921, -0.648737, -0.623090,
		0.532409, -0.744848, 0.402172,
		-0.725011, -0.156021, 0.670833,
		36.173874, 40.167393, 26.550486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536823, 39.554676, 26.025360>,  <36.681381, 40.276608, 26.080902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536823, 39.554676, 26.025360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209091, 39.744156, 26.154545>,  <36.012451, 39.857845, 26.232056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209091, 39.744156, 26.154545>,  <36.536823, 39.554676, 26.025360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209091, 39.744156, 26.154545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573322, -0.677468, -0.460803,
		0.000513, -0.562711, 0.826654,
		-0.819330, 0.473702, 0.322962,
		35.963291, 39.886265, 26.251432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074455, 39.054367, 26.126522>,  <36.536823, 39.554676, 26.025360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074455, 39.054367, 26.126522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851181, 39.385845, 26.110056>,  <35.717216, 39.584732, 26.100176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851181, 39.385845, 26.110056>,  <36.074455, 39.054367, 26.126522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851181, 39.385845, 26.110056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668945, -0.478823, -0.568543,
		-0.490863, -0.289810, 0.821623,
		-0.558181, 0.828697, -0.041169,
		35.683727, 39.634453, 26.097706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348507, 38.899670, 26.199797>,  <36.074455, 39.054367, 26.126522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348507, 38.899670, 26.199797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364822, 39.243671, 25.996334>,  <35.374611, 39.450073, 25.874256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364822, 39.243671, 25.996334>,  <35.348507, 38.899670, 26.199797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364822, 39.243671, 25.996334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639084, -0.368875, -0.674910,
		-0.768055, 0.352600, 0.534569,
		0.040784, 0.860002, -0.508657,
		35.377056, 39.501671, 25.843737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776146, 38.901688, 25.828987>,  <35.348507, 38.899670, 26.199797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776146, 38.901688, 25.828987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937675, 39.226635, 25.660711>,  <35.034592, 39.421604, 25.559746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937675, 39.226635, 25.660711>,  <34.776146, 38.901688, 25.828987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937675, 39.226635, 25.660711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470593, -0.209885, -0.857024,
		-0.784518, 0.544060, 0.297540,
		0.403823, 0.812371, -0.420690,
		35.058823, 39.470345, 25.534504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185120, 39.381096, 25.506697>,  <34.776146, 38.901688, 25.828987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185120, 39.381096, 25.506697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546673, 39.405968, 25.337404>,  <34.763607, 39.420891, 25.235828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546673, 39.405968, 25.337404>,  <34.185120, 39.381096, 25.506697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546673, 39.405968, 25.337404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389162, -0.291243, -0.873917,
		-0.177605, 0.954626, -0.239052,
		0.903886, 0.062182, -0.423230,
		34.817837, 39.424622, 25.210436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143173, 39.742374, 24.941448>,  <34.185120, 39.381096, 25.506697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143173, 39.742374, 24.941448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473263, 39.529369, 24.866156>,  <34.671318, 39.401566, 24.820980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473263, 39.529369, 24.866156>,  <34.143173, 39.742374, 24.941448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473263, 39.529369, 24.866156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349692, -0.220014, -0.910664,
		0.443525, 0.817329, -0.367776,
		0.825228, -0.532511, -0.188232,
		34.720833, 39.369617, 24.809687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329556, 39.853436, 24.167110>,  <34.143173, 39.742374, 24.941448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329556, 39.853436, 24.167110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571438, 39.548840, 24.260460>,  <34.716568, 39.366081, 24.316469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571438, 39.548840, 24.260460>,  <34.329556, 39.853436, 24.167110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571438, 39.548840, 24.260460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146493, -0.394359, -0.907205,
		0.782860, 0.514405, -0.350024,
		0.604707, -0.761490, 0.233371,
		34.752850, 39.320393, 24.330471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033066, 39.826511, 23.801043>,  <34.329556, 39.853436, 24.167110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033066, 39.826511, 23.801043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004997, 39.442314, 23.908768>,  <34.988155, 39.211796, 23.973402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004997, 39.442314, 23.908768>,  <35.033066, 39.826511, 23.801043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004997, 39.442314, 23.908768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150851, -0.277089, -0.948929,
		0.986063, -0.025958, 0.164334,
		-0.070167, -0.960494, 0.269311,
		34.983948, 39.154167, 23.989561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590500, 39.486526, 23.472027>,  <35.033066, 39.826511, 23.801043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590500, 39.486526, 23.472027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313190, 39.206020, 23.538483>,  <35.146805, 39.037716, 23.578356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313190, 39.206020, 23.538483>,  <35.590500, 39.486526, 23.472027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313190, 39.206020, 23.538483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206414, -0.414093, -0.886522,
		0.690480, -0.580310, 0.431830,
		-0.693275, -0.701262, 0.166139,
		35.105209, 38.995644, 23.588324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.918985, 35.966042, 26.141703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.200922, 36.232498, 26.044170>,  <29.370083, 36.392372, 25.985651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.200922, 36.232498, 26.044170>,  <28.918985, 35.966042, 26.141703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200922, 36.232498, 26.044170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418079, -0.112416, 0.901428,
		0.573071, -0.737302, -0.357736,
		0.704839, 0.666145, -0.243828,
		29.412374, 36.432343, 25.971022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428669, 35.636715, 26.511078>,  <28.918985, 35.966042, 26.141703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428669, 35.636715, 26.511078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.560078, 36.001587, 26.413094>,  <29.638924, 36.220509, 26.354303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.560078, 36.001587, 26.413094>,  <29.428669, 35.636715, 26.511078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560078, 36.001587, 26.413094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651513, -0.031085, 0.758001,
		0.683815, -0.408617, -0.604507,
		0.328523, 0.912177, -0.244963,
		29.658634, 36.275238, 26.339605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116335, 35.629074, 26.751205>,  <29.428669, 35.636715, 26.511078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116335, 35.629074, 26.751205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.027199, 36.014801, 26.694025>,  <29.973717, 36.246239, 26.659718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.027199, 36.014801, 26.694025>,  <30.116335, 35.629074, 26.751205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027199, 36.014801, 26.694025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487583, 0.237230, 0.840229,
		0.844160, 0.117535, -0.523049,
		-0.222839, 0.964317, -0.142951,
		29.960346, 36.304096, 26.651140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791021, 35.896774, 26.957617>,  <30.116335, 35.629074, 26.751205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791021, 35.896774, 26.957617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.522896, 36.193356, 26.969772>,  <30.362020, 36.371304, 26.977066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.522896, 36.193356, 26.969772>,  <30.791021, 35.896774, 26.957617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522896, 36.193356, 26.969772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501064, 0.422022, 0.755535,
		0.547370, 0.521673, -0.654403,
		-0.670314, 0.741455, 0.030389,
		30.321802, 36.415791, 26.978889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149588, 36.482449, 26.980659>,  <30.791021, 35.896774, 26.957617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149588, 36.482449, 26.980659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.793520, 36.586464, 27.130318>,  <30.579880, 36.648872, 27.220112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.793520, 36.586464, 27.130318>,  <31.149588, 36.482449, 26.980659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793520, 36.586464, 27.130318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440929, 0.284705, 0.851190,
		0.114819, 0.922673, -0.368092,
		-0.890167, 0.260035, 0.374144,
		30.526470, 36.664474, 27.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284044, 37.178211, 27.183737>,  <31.149588, 36.482449, 26.980659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284044, 37.178211, 27.183737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.961014, 37.067600, 27.392103>,  <30.767195, 37.001236, 27.517122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.961014, 37.067600, 27.392103>,  <31.284044, 37.178211, 27.183737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961014, 37.067600, 27.392103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363801, 0.461613, 0.809050,
		-0.464184, 0.842880, -0.272189,
		-0.807578, -0.276525, 0.520914,
		30.718740, 36.984642, 27.548378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162899, 37.757214, 27.641113>,  <31.284044, 37.178211, 27.183737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162899, 37.757214, 27.641113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.964277, 37.449902, 27.802696>,  <30.845104, 37.265514, 27.899647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.964277, 37.449902, 27.802696>,  <31.162899, 37.757214, 27.641113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964277, 37.449902, 27.802696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325066, 0.266925, 0.907239,
		-0.804840, 0.581804, 0.117200,
		-0.496552, -0.768280, 0.403957,
		30.815311, 37.219418, 27.923883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826508, 38.072601, 28.281912>,  <31.162899, 37.757214, 27.641113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826508, 38.072601, 28.281912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.862713, 37.675159, 28.308891>,  <30.884436, 37.436695, 28.325079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.862713, 37.675159, 28.308891>,  <30.826508, 38.072601, 28.281912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862713, 37.675159, 28.308891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378267, 0.096950, 0.920606,
		-0.921261, -0.057815, 0.384625,
		0.090514, -0.993609, 0.067447,
		30.889868, 37.377075, 28.329124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479677, 37.963470, 28.894171>,  <30.826508, 38.072601, 28.281912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479677, 37.963470, 28.894171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.727549, 37.658089, 28.821352>,  <30.876272, 37.474861, 28.777660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.727549, 37.658089, 28.821352>,  <30.479677, 37.963470, 28.894171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727549, 37.658089, 28.821352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531194, 0.237213, 0.813365,
		-0.577780, -0.600727, 0.552537,
		0.619679, -0.763451, -0.182046,
		30.913452, 37.429054, 28.766739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542025, 37.628704, 29.590048>,  <30.479677, 37.963470, 28.894171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542025, 37.628704, 29.590048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.856958, 37.537857, 29.360779>,  <31.045918, 37.483349, 29.223217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.856958, 37.537857, 29.360779>,  <30.542025, 37.628704, 29.590048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856958, 37.537857, 29.360779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612978, 0.387972, 0.688285,
		0.066055, -0.893251, 0.444679,
		0.787334, -0.227114, -0.573171,
		31.093159, 37.469723, 29.188828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996613, 37.341064, 30.042030>,  <30.542025, 37.628704, 29.590048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996613, 37.341064, 30.042030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.230047, 37.447979, 29.735308>,  <31.370108, 37.512127, 29.551275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.230047, 37.447979, 29.735308>,  <30.996613, 37.341064, 30.042030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230047, 37.447979, 29.735308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703880, 0.304390, 0.641795,
		0.404949, -0.914279, -0.010498,
		0.583584, 0.267284, -0.766805,
		31.405123, 37.528164, 29.505266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689438, 37.063332, 30.186106>,  <30.996613, 37.341064, 30.042030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689438, 37.063332, 30.186106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.764431, 37.343048, 29.910179>,  <31.809427, 37.510876, 29.744623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.764431, 37.343048, 29.910179>,  <31.689438, 37.063332, 30.186106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764431, 37.343048, 29.910179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878688, 0.194493, 0.435982,
		0.439041, -0.687871, -0.577993,
		0.187484, 0.699289, -0.689815,
		31.820677, 37.552834, 29.703236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370853, 36.978043, 30.032335>,  <31.689438, 37.063332, 30.186106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370853, 36.978043, 30.032335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.315319, 37.352249, 29.902390>,  <32.281998, 37.576771, 29.824421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.315319, 37.352249, 29.902390>,  <32.370853, 36.978043, 30.032335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315319, 37.352249, 29.902390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779735, 0.305503, 0.546517,
		0.610522, -0.177431, -0.771869,
		-0.138840, 0.935514, -0.324865,
		32.273666, 37.632904, 29.804930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049095, 37.324993, 29.751202>,  <32.370853, 36.978043, 30.032335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049095, 37.324993, 29.751202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769192, 37.568966, 29.899965>,  <32.601250, 37.715351, 29.989223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769192, 37.568966, 29.899965>,  <33.049095, 37.324993, 29.751202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769192, 37.568966, 29.899965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645099, 0.315859, 0.695758,
		0.306897, 0.726781, -0.614494,
		-0.699758, 0.609936, 0.371910,
		32.559265, 37.751945, 30.011538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711132, 37.265732, 29.305668>,  <33.049095, 37.324993, 29.751202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711132, 37.265732, 29.305668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.035564, 37.031975, 29.315763>,  <34.230225, 36.891720, 29.321821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.035564, 37.031975, 29.315763>,  <33.711132, 37.265732, 29.305668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035564, 37.031975, 29.315763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112878, -0.198712, -0.973536,
		0.573942, 0.786765, -0.227137,
		0.811079, -0.584392, 0.025241,
		34.278889, 36.856659, 29.323336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103142, 37.463272, 28.837290>,  <33.711132, 37.265732, 29.305668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103142, 37.463272, 28.837290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.209774, 37.080429, 28.882685>,  <34.273754, 36.850723, 28.909922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.209774, 37.080429, 28.882685>,  <34.103142, 37.463272, 28.837290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209774, 37.080429, 28.882685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000412, -0.117635, -0.993057,
		0.963812, 0.264780, -0.030966,
		0.266584, -0.957107, 0.113487,
		34.289749, 36.793297, 28.916731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476067, 37.313507, 28.215931>,  <34.103142, 37.463272, 28.837290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476067, 37.313507, 28.215931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.354561, 36.965126, 28.370424>,  <34.281658, 36.756100, 28.463120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.354561, 36.965126, 28.370424>,  <34.476067, 37.313507, 28.215931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354561, 36.965126, 28.370424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192053, -0.341093, -0.920202,
		0.933190, -0.353702, -0.063657,
		-0.303764, -0.870948, 0.386234,
		34.263432, 36.703842, 28.486294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716583, 36.834972, 27.778131>,  <34.476067, 37.313507, 28.215931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716583, 36.834972, 27.778131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471466, 36.607121, 27.997225>,  <34.324398, 36.470409, 28.128681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471466, 36.607121, 27.997225>,  <34.716583, 36.834972, 27.778131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471466, 36.607121, 27.997225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344399, -0.431327, -0.833874,
		0.711251, -0.699628, 0.068133,
		-0.612789, -0.569629, 0.547734,
		34.287628, 36.436234, 28.161545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750378, 36.213432, 27.420248>,  <34.716583, 36.834972, 27.778131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750378, 36.213432, 27.420248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.423233, 36.161510, 27.644478>,  <34.226944, 36.130356, 27.779016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.423233, 36.161510, 27.644478>,  <34.750378, 36.213432, 27.420248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423233, 36.161510, 27.644478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473730, -0.401082, -0.784036,
		0.326611, -0.906798, 0.266537,
		-0.817866, -0.129808, 0.560575,
		34.177872, 36.122566, 27.812651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555592, 35.642132, 27.180325>,  <34.750378, 36.213432, 27.420248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555592, 35.642132, 27.180325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221684, 35.777340, 27.354176>,  <34.021339, 35.858467, 27.458487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221684, 35.777340, 27.354176>,  <34.555592, 35.642132, 27.180325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221684, 35.777340, 27.354176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550529, -0.499666, -0.668769,
		-0.008892, -0.797542, 0.603198,
		-0.834768, 0.338025, 0.434627,
		33.971252, 35.878746, 27.484564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193680, 35.110973, 27.226368>,  <34.555592, 35.642132, 27.180325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193680, 35.110973, 27.226368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934021, 35.415131, 27.234474>,  <33.778229, 35.597626, 27.239338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934021, 35.415131, 27.234474>,  <34.193680, 35.110973, 27.226368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934021, 35.415131, 27.234474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542196, -0.443853, -0.713455,
		-0.533515, -0.474120, 0.700408,
		-0.649141, 0.760398, 0.020264,
		33.739277, 35.643250, 27.240553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508259, 34.840378, 27.288143>,  <34.193680, 35.110973, 27.226368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508259, 34.840378, 27.288143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.463963, 35.215889, 27.157652>,  <33.437386, 35.441196, 27.079357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.463963, 35.215889, 27.157652>,  <33.508259, 34.840378, 27.288143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463963, 35.215889, 27.157652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686327, -0.309644, -0.658084,
		-0.718812, 0.151022, 0.678602,
		-0.110740, 0.938783, -0.326227,
		33.430740, 35.497524, 27.059784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789024, 34.950527, 27.307783>,  <33.508259, 34.840378, 27.288143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789024, 34.950527, 27.307783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.911377, 35.226631, 27.045494>,  <32.984791, 35.392296, 26.888121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.911377, 35.226631, 27.045494>,  <32.789024, 34.950527, 27.307783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911377, 35.226631, 27.045494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721133, -0.281701, -0.632939,
		-0.621613, 0.666468, 0.411604,
		0.305884, 0.690264, -0.655721,
		33.003143, 35.433712, 26.848778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170017, 35.339695, 27.006199>,  <32.789024, 34.950527, 27.307783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170017, 35.339695, 27.006199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.467220, 35.405827, 26.746780>,  <32.645542, 35.445507, 26.591129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.467220, 35.405827, 26.746780>,  <32.170017, 35.339695, 27.006199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467220, 35.405827, 26.746780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647537, -0.067440, -0.759044,
		-0.169230, 0.983930, 0.056948,
		0.743005, 0.165329, -0.648544,
		32.690121, 35.455425, 26.552217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893070, 35.770340, 26.442955>,  <32.170017, 35.339695, 27.006199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893070, 35.770340, 26.442955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.220955, 35.600124, 26.289598>,  <32.417686, 35.497993, 26.197584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.220955, 35.600124, 26.289598>,  <31.893070, 35.770340, 26.442955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220955, 35.600124, 26.289598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469218, -0.115006, -0.875562,
		0.328497, 0.897600, -0.293944,
		0.819710, -0.425544, -0.383391,
		32.466869, 35.472462, 26.174582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971121, 36.086994, 25.756454>,  <31.893070, 35.770340, 26.442955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971121, 36.086994, 25.756454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183128, 35.747871, 25.763508>,  <32.310333, 35.544399, 25.767740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183128, 35.747871, 25.763508>,  <31.971121, 36.086994, 25.756454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183128, 35.747871, 25.763508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348890, -0.236971, -0.906708,
		0.772889, 0.474420, -0.421389,
		0.530018, -0.847803, 0.017631,
		32.342133, 35.493530, 25.768797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347446, 36.091717, 25.141956>,  <31.971121, 36.086994, 25.756454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347446, 36.091717, 25.141956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.303982, 35.704842, 25.233820>,  <32.277905, 35.472717, 25.288939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.303982, 35.704842, 25.233820>,  <32.347446, 36.091717, 25.141956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303982, 35.704842, 25.233820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385378, -0.171975, -0.906592,
		0.916339, -0.187014, -0.354046,
		-0.108658, -0.967187, 0.229659,
		32.271385, 35.414684, 25.302717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756565, 35.798534, 24.639069>,  <32.347446, 36.091717, 25.141956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756565, 35.798534, 24.639069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.500893, 35.532276, 24.793137>,  <32.347488, 35.372520, 24.885578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.500893, 35.532276, 24.793137>,  <32.756565, 35.798534, 24.639069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500893, 35.532276, 24.793137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364574, -0.178720, -0.913863,
		0.677147, -0.724551, -0.128442,
		-0.639185, -0.665646, 0.385172,
		32.309135, 35.332581, 24.908688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389248, 35.561695, 24.277632>,  <32.756565, 35.798534, 24.639069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389248, 35.561695, 24.277632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661816, 35.782848, 24.085804>,  <33.825356, 35.915543, 23.970707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661816, 35.782848, 24.085804>,  <33.389248, 35.561695, 24.277632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661816, 35.782848, 24.085804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457102, 0.190246, 0.868829,
		0.571601, -0.811247, -0.123089,
		0.681418, 0.552888, -0.479567,
		33.866241, 35.948715, 23.941935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011681, 35.333164, 24.585611>,  <33.389248, 35.561695, 24.277632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011681, 35.333164, 24.585611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.097214, 35.669640, 24.386946>,  <34.148533, 35.871525, 24.267746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.097214, 35.669640, 24.386946>,  <34.011681, 35.333164, 24.585611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097214, 35.669640, 24.386946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572467, 0.304064, 0.761463,
		0.791552, -0.447152, -0.416533,
		0.213837, 0.841190, -0.496662,
		34.161366, 35.921997, 24.237947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725410, 35.388618, 24.508505>,  <34.011681, 35.333164, 24.585611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725410, 35.388618, 24.508505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622498, 35.775051, 24.499697>,  <34.560749, 36.006912, 24.494411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622498, 35.775051, 24.499697>,  <34.725410, 35.388618, 24.508505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622498, 35.775051, 24.499697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801929, 0.226170, 0.552952,
		0.539179, 0.124608, -0.832922,
		-0.257285, 0.966085, -0.022019,
		34.545311, 36.064877, 24.493092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384598, 35.845448, 24.436110>,  <34.725410, 35.388618, 24.508505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384598, 35.845448, 24.436110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115005, 36.107059, 24.573513>,  <34.953251, 36.264027, 24.655956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115005, 36.107059, 24.573513>,  <35.384598, 35.845448, 24.436110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115005, 36.107059, 24.573513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674485, 0.355084, 0.647290,
		0.301372, 0.667951, -0.680453,
		-0.673976, 0.654031, 0.343511,
		34.912811, 36.303268, 24.676567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751404, 36.451111, 24.388981>,  <35.384598, 35.845448, 24.436110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751404, 36.451111, 24.388981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461544, 36.542450, 24.649054>,  <35.287628, 36.597256, 24.805098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.461544, 36.542450, 24.649054>,  <35.751404, 36.451111, 24.388981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461544, 36.542450, 24.649054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688405, 0.282696, 0.667968,
		-0.031272, 0.931632, -0.362054,
		-0.724652, 0.228351, 0.650181,
		35.244148, 36.610954, 24.844109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942883, 37.114784, 24.674978>,  <35.751404, 36.451111, 24.388981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942883, 37.114784, 24.674978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671387, 36.947617, 24.916525>,  <35.508488, 36.847317, 25.061453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671387, 36.947617, 24.916525>,  <35.942883, 37.114784, 24.674978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671387, 36.947617, 24.916525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381122, 0.502422, 0.776091,
		-0.627741, 0.756911, -0.181734,
		-0.678739, -0.417921, 0.603867,
		35.467766, 36.822239, 25.097685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794773, 37.710960, 25.197260>,  <35.942883, 37.114784, 24.674978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794773, 37.710960, 25.197260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.677879, 37.354301, 25.335571>,  <35.607742, 37.140305, 25.418558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.677879, 37.354301, 25.335571>,  <35.794773, 37.710960, 25.197260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677879, 37.354301, 25.335571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400693, 0.214139, 0.890836,
		-0.868356, 0.398887, 0.294697,
		-0.292237, -0.891647, 0.345781,
		35.590210, 37.086807, 25.439306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588139, 37.846226, 25.894884>,  <35.794773, 37.710960, 25.197260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588139, 37.846226, 25.894884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659286, 37.452789, 25.882771>,  <35.701973, 37.216728, 25.875504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659286, 37.452789, 25.882771>,  <35.588139, 37.846226, 25.894884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659286, 37.452789, 25.882771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472002, 0.058271, 0.879670,
		-0.863468, -0.170759, 0.474620,
		0.177868, -0.983588, -0.030283,
		35.712646, 37.157711, 25.873686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351986, 37.599640, 26.481241>,  <35.588139, 37.846226, 25.894884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351986, 37.599640, 26.481241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.628128, 37.336876, 26.359997>,  <35.793816, 37.179218, 26.287251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.628128, 37.336876, 26.359997>,  <35.351986, 37.599640, 26.481241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628128, 37.336876, 26.359997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522830, 0.163415, 0.836627,
		-0.500055, -0.736047, 0.456267,
		0.690357, -0.656909, -0.303111,
		35.835236, 37.139805, 26.269064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531815, 37.220528, 27.050562>,  <35.351986, 37.599640, 26.481241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531815, 37.220528, 27.050562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847359, 37.170406, 26.809896>,  <36.036686, 37.140335, 26.665497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847359, 37.170406, 26.809896>,  <35.531815, 37.220528, 27.050562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847359, 37.170406, 26.809896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611659, 0.255295, 0.748798,
		0.059775, -0.958710, 0.278035,
		0.788860, -0.125303, -0.601663,
		36.084015, 37.132816, 26.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936649, 36.856495, 27.553520>,  <35.531815, 37.220528, 27.050562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936649, 36.856495, 27.553520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164318, 37.004139, 27.259638>,  <36.300919, 37.092728, 27.083307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164318, 37.004139, 27.259638>,  <35.936649, 36.856495, 27.553520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164318, 37.004139, 27.259638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696318, 0.258796, 0.669452,
		0.437244, -0.892625, -0.109722,
		0.569174, 0.369115, -0.734708,
		36.335072, 37.114872, 27.039225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562511, 36.799938, 27.829943>,  <35.936649, 36.856495, 27.553520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562511, 36.799938, 27.829943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676613, 37.021481, 27.517056>,  <36.745075, 37.154408, 27.329323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676613, 37.021481, 27.517056>,  <36.562511, 36.799938, 27.829943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676613, 37.021481, 27.517056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627421, 0.509050, 0.589246,
		0.724549, -0.658868, -0.202293,
		0.285258, 0.553860, -0.782219,
		36.762192, 37.187637, 27.282391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285103, 36.773518, 27.760393>,  <36.562511, 36.799938, 27.829943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285103, 36.773518, 27.760393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206474, 37.117237, 27.571520>,  <37.159298, 37.323471, 27.458195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206474, 37.117237, 27.571520>,  <37.285103, 36.773518, 27.760393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206474, 37.117237, 27.571520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631828, 0.479275, 0.609171,
		0.749768, -0.178592, -0.637145,
		-0.196575, 0.859302, -0.472184,
		37.147503, 37.375027, 27.429865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877968, 37.122177, 27.713358>,  <37.285103, 36.773518, 27.760393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877968, 37.122177, 27.713358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610577, 37.417080, 27.674187>,  <37.450142, 37.594021, 27.650684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610577, 37.417080, 27.674187>,  <37.877968, 37.122177, 27.713358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610577, 37.417080, 27.674187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478167, 0.526890, 0.702669,
		0.569646, 0.422891, -0.704746,
		-0.668476, 0.737258, -0.097929,
		37.410034, 37.638256, 27.644808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.958473, 38.795109, 23.052250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.580906, 38.724716, 23.164001>,  <35.354366, 38.682480, 23.231052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.580906, 38.724716, 23.164001>,  <35.958473, 38.795109, 23.052250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580906, 38.724716, 23.164001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191856, -0.396318, -0.897844,
		0.268726, -0.901090, 0.340328,
		-0.943916, -0.175980, 0.279380,
		35.297729, 38.671921, 23.247816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833054, 38.119846, 22.712646>,  <35.958473, 38.795109, 23.052250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833054, 38.119846, 22.712646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475563, 38.273968, 22.804550>,  <35.261066, 38.366440, 22.859692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475563, 38.273968, 22.804550>,  <35.833054, 38.119846, 22.712646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475563, 38.273968, 22.804550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354968, -0.294220, -0.887374,
		-0.274294, -0.874636, 0.399719,
		-0.893734, 0.385289, 0.229764,
		35.207443, 38.389561, 22.873478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304558, 37.553558, 22.639740>,  <35.833054, 38.119846, 22.712646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304558, 37.553558, 22.639740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.122337, 37.904835, 22.581427>,  <35.013004, 38.115601, 22.546438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.122337, 37.904835, 22.581427>,  <35.304558, 37.553558, 22.639740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122337, 37.904835, 22.581427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440055, -0.364506, -0.820663,
		-0.773840, -0.309697, 0.552503,
		-0.455547, 0.878193, -0.145785,
		34.985672, 38.168293, 22.537691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556480, 37.363621, 22.602879>,  <35.304558, 37.553558, 22.639740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556480, 37.363621, 22.602879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583225, 37.729336, 22.443075>,  <34.599274, 37.948765, 22.347193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583225, 37.729336, 22.443075>,  <34.556480, 37.363621, 22.602879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583225, 37.729336, 22.443075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522876, -0.308911, -0.794465,
		-0.849782, 0.262017, 0.457403,
		0.066866, 0.914287, -0.399509,
		34.603287, 38.003620, 22.323223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900616, 37.544540, 22.418179>,  <34.556480, 37.363621, 22.602879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900616, 37.544540, 22.418179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090843, 37.826405, 22.207546>,  <34.204979, 37.995525, 22.081167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.090843, 37.826405, 22.207546>,  <33.900616, 37.544540, 22.418179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090843, 37.826405, 22.207546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624668, -0.150954, -0.766160,
		-0.619375, 0.693298, 0.368392,
		0.475567, 0.704664, -0.526579,
		34.233513, 38.037804, 22.049572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413647, 38.131607, 22.174366>,  <33.900616, 37.544540, 22.418179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413647, 38.131607, 22.174366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731937, 38.124382, 21.932211>,  <33.922913, 38.120049, 21.786917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731937, 38.124382, 21.932211>,  <33.413647, 38.131607, 22.174366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731937, 38.124382, 21.932211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605500, -0.000841, -0.795845,
		0.013864, 0.999837, -0.011604,
		0.795724, -0.018060, -0.605390,
		33.970654, 38.118965, 21.750593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173988, 38.613026, 21.534151>,  <33.413647, 38.131607, 22.174366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173988, 38.613026, 21.534151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476059, 38.369869, 21.436026>,  <33.657303, 38.223976, 21.377150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476059, 38.369869, 21.436026>,  <33.173988, 38.613026, 21.534151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476059, 38.369869, 21.436026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427025, -0.172269, -0.887678,
		0.497349, 0.775110, -0.389677,
		0.755178, -0.607887, -0.245314,
		33.702614, 38.187504, 21.362431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273502, 38.876877, 20.899757>,  <33.173988, 38.613026, 21.534151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273502, 38.876877, 20.899757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455807, 38.521057, 20.887259>,  <33.565189, 38.307564, 20.879759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455807, 38.521057, 20.887259>,  <33.273502, 38.876877, 20.899757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455807, 38.521057, 20.887259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309419, -0.125420, -0.942619,
		0.834591, 0.439277, -0.332407,
		0.455761, -0.889553, -0.031247,
		33.592537, 38.254192, 20.877884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453041, 38.813332, 20.165741>,  <33.273502, 38.876877, 20.899757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453041, 38.813332, 20.165741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.531715, 38.450771, 20.315277>,  <33.578918, 38.233234, 20.404999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.531715, 38.450771, 20.315277>,  <33.453041, 38.813332, 20.165741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531715, 38.450771, 20.315277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058893, -0.391521, -0.918282,
		0.978697, 0.158594, -0.130386,
		0.196683, -0.906399, 0.373841,
		33.590721, 38.178852, 20.427429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963169, 38.437855, 19.666481>,  <33.453041, 38.813332, 20.165741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963169, 38.437855, 19.666481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743408, 38.175217, 19.873182>,  <33.611553, 38.017632, 19.997204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743408, 38.175217, 19.873182>,  <33.963169, 38.437855, 19.666481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743408, 38.175217, 19.873182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196239, -0.499760, -0.843641,
		0.812188, -0.564904, 0.145718,
		-0.549400, -0.656600, 0.516755,
		33.578587, 37.978237, 20.028210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063496, 37.728081, 19.381752>,  <33.963169, 38.437855, 19.666481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063496, 37.728081, 19.381752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741989, 37.647720, 19.605751>,  <33.549084, 37.599503, 19.740150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741989, 37.647720, 19.605751>,  <34.063496, 37.728081, 19.381752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741989, 37.647720, 19.605751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423903, -0.467061, -0.775990,
		0.417452, -0.861099, 0.290245,
		-0.803766, -0.200903, 0.559998,
		33.500858, 37.587448, 19.773750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007645, 36.989079, 19.315109>,  <34.063496, 37.728081, 19.381752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007645, 36.989079, 19.315109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647736, 37.142307, 19.398689>,  <33.431789, 37.234245, 19.448837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647736, 37.142307, 19.398689>,  <34.007645, 36.989079, 19.315109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647736, 37.142307, 19.398689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413586, -0.596031, -0.688254,
		-0.139108, -0.705693, 0.694727,
		-0.899775, 0.383071, 0.208952,
		33.377804, 37.257229, 19.461374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524731, 36.428062, 19.423847>,  <34.007645, 36.989079, 19.315109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524731, 36.428062, 19.423847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.339314, 36.762409, 19.306234>,  <33.228062, 36.963017, 19.235666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.339314, 36.762409, 19.306234>,  <33.524731, 36.428062, 19.423847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339314, 36.762409, 19.306234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467303, -0.512551, -0.720360,
		-0.752832, -0.196515, 0.628192,
		-0.463543, 0.835867, -0.294033,
		33.200249, 37.013168, 19.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848351, 36.267731, 19.341913>,  <33.524731, 36.428062, 19.423847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848351, 36.267731, 19.341913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893101, 36.601135, 19.125492>,  <32.919952, 36.801178, 18.995640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893101, 36.601135, 19.125492>,  <32.848351, 36.267731, 19.341913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893101, 36.601135, 19.125492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573362, -0.390556, -0.720224,
		-0.811628, 0.390795, 0.434212,
		0.111876, 0.833514, -0.541053,
		32.926662, 36.851189, 18.963177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389393, 35.948097, 18.923664>,  <32.848351, 36.267731, 19.341913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389393, 35.948097, 18.923664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.266392, 35.567665, 18.935654>,  <32.192593, 35.339405, 18.942848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.266392, 35.567665, 18.935654>,  <32.389393, 35.948097, 18.923664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266392, 35.567665, 18.935654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384561, -0.095399, 0.918157,
		-0.870377, 0.293861, 0.395082,
		-0.307501, -0.951076, 0.029974,
		32.174141, 35.282341, 18.944645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969397, 35.930687, 19.491039>,  <32.389393, 35.948097, 18.923664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969397, 35.930687, 19.491039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071800, 35.551769, 19.414000>,  <32.133244, 35.324417, 19.367775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071800, 35.551769, 19.414000>,  <31.969397, 35.930687, 19.491039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071800, 35.551769, 19.414000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348631, -0.095353, 0.932397,
		-0.901619, -0.305849, 0.305844,
		0.256009, -0.947293, -0.192601,
		32.148602, 35.267582, 19.356220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727133, 35.521633, 19.992411>,  <31.969397, 35.930687, 19.491039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727133, 35.521633, 19.992411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976315, 35.234951, 19.867027>,  <32.125824, 35.062943, 19.791798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976315, 35.234951, 19.867027>,  <31.727133, 35.521633, 19.992411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976315, 35.234951, 19.867027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200924, -0.240670, 0.949583,
		-0.756016, -0.654527, -0.005922,
		0.622952, -0.716710, -0.313461,
		32.163200, 35.019939, 19.772989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666666, 34.880753, 20.452076>,  <31.727133, 35.521633, 19.992411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666666, 34.880753, 20.452076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.011810, 34.856812, 20.251322>,  <32.218895, 34.842445, 20.130869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.011810, 34.856812, 20.251322>,  <31.666666, 34.880753, 20.452076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011810, 34.856812, 20.251322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485063, -0.181053, 0.855531,
		-0.142077, -0.981650, -0.127189,
		0.862860, -0.059857, -0.501886,
		32.270668, 34.838856, 20.100756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898336, 34.271610, 20.683935>,  <31.666666, 34.880753, 20.452076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898336, 34.271610, 20.683935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186340, 34.502010, 20.529116>,  <32.359142, 34.640251, 20.436224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186340, 34.502010, 20.529116>,  <31.898336, 34.271610, 20.683935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186340, 34.502010, 20.529116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496118, -0.037263, 0.867455,
		0.485236, -0.816596, -0.312596,
		0.720009, 0.576005, -0.387046,
		32.402344, 34.674812, 20.413002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621246, 34.049408, 20.898706>,  <31.898336, 34.271610, 20.683935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621246, 34.049408, 20.898706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.697189, 34.420368, 20.769781>,  <32.742756, 34.642944, 20.692427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.697189, 34.420368, 20.769781>,  <32.621246, 34.049408, 20.898706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697189, 34.420368, 20.769781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718477, 0.092498, 0.689373,
		0.669136, -0.362457, -0.648753,
		0.189860, 0.927399, -0.322311,
		32.754147, 34.698589, 20.673088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387135, 34.190079, 20.951107>,  <32.621246, 34.049408, 20.898706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387135, 34.190079, 20.951107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222797, 34.554733, 20.946648>,  <33.124195, 34.773525, 20.943972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222797, 34.554733, 20.946648>,  <33.387135, 34.190079, 20.951107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222797, 34.554733, 20.946648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521097, 0.244838, 0.817626,
		0.748109, 0.330105, -0.575642,
		-0.410841, 0.911639, -0.011149,
		33.099545, 34.828224, 20.943302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946152, 34.640327, 21.074280>,  <33.387135, 34.190079, 20.951107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946152, 34.640327, 21.074280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623253, 34.859650, 21.161657>,  <33.429512, 34.991241, 21.214083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623253, 34.859650, 21.161657>,  <33.946152, 34.640327, 21.074280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623253, 34.859650, 21.161657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394774, 0.226469, 0.890430,
		0.438753, 0.805033, -0.399272,
		-0.807248, 0.548301, 0.218442,
		33.381077, 35.024139, 21.227190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206188, 35.358788, 21.217524>,  <33.946152, 34.640327, 21.074280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206188, 35.358788, 21.217524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843105, 35.304237, 21.376255>,  <33.625256, 35.271507, 21.471493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843105, 35.304237, 21.376255>,  <34.206188, 35.358788, 21.217524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843105, 35.304237, 21.376255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282921, 0.499498, 0.818814,
		-0.309880, 0.855514, -0.414814,
		-0.907706, -0.136375, 0.396828,
		33.570793, 35.263325, 21.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034996, 35.993446, 21.489647>,  <34.206188, 35.358788, 21.217524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034996, 35.993446, 21.489647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796490, 35.747711, 21.696358>,  <33.653385, 35.600269, 21.820385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796490, 35.747711, 21.696358>,  <34.034996, 35.993446, 21.489647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796490, 35.747711, 21.696358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116981, 0.570369, 0.813016,
		-0.794220, 0.545225, -0.268225,
		-0.596263, -0.614336, 0.516779,
		33.617611, 35.563412, 21.851391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799038, 36.428398, 21.968433>,  <34.034996, 35.993446, 21.489647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799038, 36.428398, 21.968433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704750, 36.067120, 22.111919>,  <33.648178, 35.850353, 22.198011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704750, 36.067120, 22.111919>,  <33.799038, 36.428398, 21.968433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704750, 36.067120, 22.111919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075418, 0.385005, 0.919828,
		-0.968890, 0.189769, -0.158871,
		-0.235720, -0.903194, 0.358715,
		33.634033, 35.796162, 22.219534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334694, 36.602856, 22.486031>,  <33.799038, 36.428398, 21.968433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334694, 36.602856, 22.486031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.443748, 36.230373, 22.582800>,  <33.509182, 36.006886, 22.640862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.443748, 36.230373, 22.582800>,  <33.334694, 36.602856, 22.486031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443748, 36.230373, 22.582800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155115, 0.290704, 0.944156,
		-0.949530, -0.219887, 0.223701,
		0.272638, -0.931204, 0.241924,
		33.525539, 35.951012, 22.655376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996399, 36.385529, 23.188782>,  <33.334694, 36.602856, 22.486031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996399, 36.385529, 23.188782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320503, 36.157433, 23.134672>,  <33.514965, 36.020573, 23.102205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320503, 36.157433, 23.134672>,  <32.996399, 36.385529, 23.188782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320503, 36.157433, 23.134672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251833, 0.130344, 0.958953,
		-0.529204, -0.811069, 0.249219,
		0.810261, -0.570244, -0.135275,
		33.563583, 35.986359, 23.094090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950119, 35.912968, 23.764681>,  <32.996399, 36.385529, 23.188782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950119, 35.912968, 23.764681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330650, 35.942905, 23.645105>,  <33.558971, 35.960869, 23.573360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330650, 35.942905, 23.645105>,  <32.950119, 35.912968, 23.764681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330650, 35.942905, 23.645105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279769, 0.196986, 0.939641,
		0.129208, -0.977546, 0.166462,
		0.951333, 0.074838, -0.298940,
		33.616051, 35.965359, 23.555424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728951, 35.244991, 24.134722>,  <32.950119, 35.912968, 23.764681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728951, 35.244991, 24.134722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404415, 35.160545, 24.352772>,  <32.209694, 35.109879, 24.483603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.404415, 35.160545, 24.352772>,  <32.728951, 35.244991, 24.134722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404415, 35.160545, 24.352772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525916, -0.143540, -0.838337,
		0.255231, -0.966865, 0.005431,
		-0.811338, -0.211114, 0.545126,
		32.161015, 35.097210, 24.516310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400837, 34.648640, 23.768032>,  <32.728951, 35.244991, 24.134722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400837, 34.648640, 23.768032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101841, 34.791775, 23.991892>,  <31.922443, 34.877655, 24.126207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101841, 34.791775, 23.991892>,  <32.400837, 34.648640, 23.768032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101841, 34.791775, 23.991892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616103, -0.058502, -0.785490,
		-0.248340, -0.931948, 0.264197,
		-0.747492, 0.357841, 0.559647,
		31.877594, 34.899128, 24.159786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809515, 34.260815, 23.718170>,  <32.400837, 34.648640, 23.768032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809515, 34.260815, 23.718170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659405, 34.621170, 23.805418>,  <31.569338, 34.837383, 23.857767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659405, 34.621170, 23.805418>,  <31.809515, 34.260815, 23.718170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659405, 34.621170, 23.805418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616732, -0.067010, -0.784316,
		-0.691962, -0.428856, 0.580751,
		-0.375275, 0.900884, 0.218121,
		31.546822, 34.891434, 23.870855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148251, 34.226337, 23.482740>,  <31.809515, 34.260815, 23.718170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148251, 34.226337, 23.482740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128176, 34.620197, 23.549606>,  <31.116131, 34.856514, 23.589725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128176, 34.620197, 23.549606>,  <31.148251, 34.226337, 23.482740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128176, 34.620197, 23.549606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609862, 0.102334, -0.785873,
		-0.790917, -0.141386, 0.595365,
		-0.050185, 0.984651, 0.167164,
		31.113121, 34.915592, 23.599756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398520, 34.518032, 23.725834>,  <31.148251, 34.226337, 23.482740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398520, 34.518032, 23.725834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595163, 34.816051, 23.545515>,  <30.713150, 34.994865, 23.437323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595163, 34.816051, 23.545515>,  <30.398520, 34.518032, 23.725834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595163, 34.816051, 23.545515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732116, 0.073317, -0.677223,
		-0.471513, 0.662967, 0.581507,
		0.491611, 0.745050, -0.450799,
		30.742647, 35.039566, 23.410276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919024, 35.065613, 23.575649>,  <30.398520, 34.518032, 23.725834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919024, 35.065613, 23.575649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223902, 35.160168, 23.334593>,  <30.406830, 35.216900, 23.189959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223902, 35.160168, 23.334593>,  <29.919024, 35.065613, 23.575649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223902, 35.160168, 23.334593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625069, 0.026639, -0.780115,
		-0.168358, 0.971293, 0.168064,
		0.762197, 0.236391, -0.602640,
		30.452560, 35.231087, 23.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578278, 35.521038, 23.122938>,  <29.919024, 35.065613, 23.575649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578278, 35.521038, 23.122938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.923922, 35.411289, 22.954161>,  <30.131308, 35.345440, 22.852894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.923922, 35.411289, 22.954161>,  <29.578278, 35.521038, 23.122938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923922, 35.411289, 22.954161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437826, 0.003719, -0.899052,
		0.248245, 0.961616, -0.116914,
		0.864108, -0.274373, -0.421944,
		30.183153, 35.328976, 22.827578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392021, 36.278507, 23.292603>,  <29.578278, 35.521038, 23.122938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392021, 36.278507, 23.292603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.087399, 36.537746, 23.292606>,  <28.904625, 36.693291, 23.292608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.087399, 36.537746, 23.292606>,  <29.392021, 36.278507, 23.292603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087399, 36.537746, 23.292606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113025, 0.132800, 0.984677,
		0.638166, 0.749889, -0.174386,
		-0.761558, 0.648097, 0.000008,
		28.858931, 36.732174, 23.292608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711647, 36.810837, 23.495132>,  <29.392021, 36.278507, 23.292603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711647, 36.810837, 23.495132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.321617, 36.864956, 23.565472>,  <29.087599, 36.897427, 23.607676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.321617, 36.864956, 23.565472>,  <29.711647, 36.810837, 23.495132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321617, 36.864956, 23.565472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179716, 0.016822, 0.983575,
		0.130114, 0.990663, -0.040717,
		-0.975076, 0.135294, 0.175849,
		29.029095, 36.905544, 23.618227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636829, 37.350784, 23.995087>,  <29.711647, 36.810837, 23.495132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636829, 37.350784, 23.995087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291706, 37.149643, 24.015892>,  <29.084633, 37.028957, 24.028376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.291706, 37.149643, 24.015892>,  <29.636829, 37.350784, 23.995087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291706, 37.149643, 24.015892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149164, -0.154927, 0.976600,
		-0.483024, 0.850376, 0.208679,
		-0.862808, -0.502849, 0.052012,
		29.032864, 36.998787, 24.031496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123304, 37.751839, 24.363615>,  <29.636829, 37.350784, 23.995087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123304, 37.751839, 24.363615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.032604, 37.364269, 24.403172>,  <28.978184, 37.131729, 24.426905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.032604, 37.364269, 24.403172>,  <29.123304, 37.751839, 24.363615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032604, 37.364269, 24.403172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372194, 0.007624, 0.928124,
		-0.900031, 0.247259, 0.358897,
		-0.226751, -0.968919, 0.098890,
		28.964579, 37.073593, 24.432838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793043, 37.698418, 25.004744>,  <29.123304, 37.751839, 24.363615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793043, 37.698418, 25.004744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.909954, 37.325863, 24.917944>,  <28.980101, 37.102329, 24.865864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.909954, 37.325863, 24.917944>,  <28.793043, 37.698418, 25.004744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909954, 37.325863, 24.917944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389124, -0.091452, 0.916634,
		-0.873589, -0.352349, 0.335697,
		0.292275, -0.931389, -0.216999,
		28.997637, 37.046448, 24.852844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663193, 37.390892, 25.604416>,  <28.793043, 37.698418, 25.004744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663193, 37.390892, 25.604416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.910933, 37.124962, 25.437363>,  <29.059576, 36.965405, 25.337132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.910933, 37.124962, 25.437363>,  <28.663193, 37.390892, 25.604416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910933, 37.124962, 25.437363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393489, -0.197457, 0.897874,
		-0.679390, -0.720433, 0.139305,
		0.619350, -0.664822, -0.417633,
		29.096737, 36.925514, 25.312073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529196, 36.784328, 25.862436>,  <28.663193, 37.390892, 25.604416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529196, 36.784328, 25.862436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.890205, 36.699707, 25.712397>,  <29.106812, 36.648933, 25.622372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.890205, 36.699707, 25.712397>,  <28.529196, 36.784328, 25.862436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890205, 36.699707, 25.712397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306755, -0.295524, 0.904747,
		-0.302275, -0.931612, -0.201813,
		0.902514, -0.211575, -0.375106,
		29.160961, 36.636242, 25.599867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.774353, 39.614166, 20.247192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.099789, 39.382172, 20.263664>,  <31.295050, 39.242977, 20.273548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.099789, 39.382172, 20.263664>,  <30.774353, 39.614166, 20.247192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099789, 39.382172, 20.263664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287973, 0.463463, 0.838018,
		-0.505121, -0.669942, 0.544087,
		0.813587, -0.579982, 0.041180,
		31.343864, 39.208176, 20.276018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815544, 39.425209, 20.976816>,  <30.774353, 39.614166, 20.247192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815544, 39.425209, 20.976816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178364, 39.310535, 20.853479>,  <31.396055, 39.241730, 20.779478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178364, 39.310535, 20.853479>,  <30.815544, 39.425209, 20.976816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178364, 39.310535, 20.853479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406339, 0.404347, 0.819386,
		-0.110228, -0.868514, 0.483253,
		0.907049, -0.286683, -0.308340,
		31.450480, 39.224529, 20.760977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102839, 38.979210, 21.499056>,  <30.815544, 39.425209, 20.976816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102839, 38.979210, 21.499056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.440357, 39.079300, 21.309153>,  <31.642868, 39.139355, 21.195211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.440357, 39.079300, 21.309153>,  <31.102839, 38.979210, 21.499056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440357, 39.079300, 21.309153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451505, 0.147186, 0.880045,
		0.290089, -0.956934, 0.011217,
		0.843796, 0.250227, -0.474757,
		31.693497, 39.154366, 21.166725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617205, 38.610615, 21.940302>,  <31.102839, 38.979210, 21.499056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617205, 38.610615, 21.940302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.817076, 38.885735, 21.729681>,  <31.936998, 39.050808, 21.603310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.817076, 38.885735, 21.729681>,  <31.617205, 38.610615, 21.940302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817076, 38.885735, 21.729681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450498, 0.312854, 0.836166,
		0.739848, -0.655023, -0.153525,
		0.499677, 0.687798, -0.526551,
		31.966978, 39.092075, 21.571716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280411, 38.565102, 22.153156>,  <31.617205, 38.610615, 21.940302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280411, 38.565102, 22.153156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.240601, 38.935093, 22.006454>,  <32.216713, 39.157089, 21.918434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.240601, 38.935093, 22.006454>,  <32.280411, 38.565102, 22.153156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240601, 38.935093, 22.006454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337348, 0.378123, 0.862101,
		0.936104, -0.037921, -0.349674,
		-0.099528, 0.924978, -0.366755,
		32.210743, 39.212585, 21.896427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880150, 38.968124, 22.467749>,  <32.280411, 38.565102, 22.153156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880150, 38.968124, 22.467749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601662, 39.229454, 22.348795>,  <32.434566, 39.386253, 22.277422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601662, 39.229454, 22.348795>,  <32.880150, 38.968124, 22.467749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601662, 39.229454, 22.348795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242327, 0.603880, 0.759346,
		0.675686, 0.456609, -0.578754,
		-0.696222, 0.653327, -0.297385,
		32.392796, 39.425453, 22.259579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237053, 39.660656, 22.396948>,  <32.880150, 38.968124, 22.467749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237053, 39.660656, 22.396948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848751, 39.756680, 22.397125>,  <32.615768, 39.814293, 22.397232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848751, 39.756680, 22.397125>,  <33.237053, 39.660656, 22.396948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848751, 39.756680, 22.397125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154867, 0.624852, 0.765229,
		0.183422, 0.742922, -0.643758,
		-0.970759, 0.240057, 0.000442,
		32.557522, 39.828697, 22.397257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110336, 40.441906, 22.288506>,  <33.237053, 39.660656, 22.396948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110336, 40.441906, 22.288506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.783001, 40.297729, 22.467573>,  <32.586601, 40.211224, 22.575014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.783001, 40.297729, 22.467573>,  <33.110336, 40.441906, 22.288506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783001, 40.297729, 22.467573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024434, 0.756386, 0.653669,
		-0.574222, 0.545859, -0.610170,
		-0.818335, -0.360442, 0.447671,
		32.537498, 40.189598, 22.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836056, 41.029461, 22.590710>,  <33.110336, 40.441906, 22.288506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836056, 41.029461, 22.590710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.647129, 40.725033, 22.768560>,  <32.533772, 40.542377, 22.875271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.647129, 40.725033, 22.768560>,  <32.836056, 41.029461, 22.590710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647129, 40.725033, 22.768560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021081, 0.494541, 0.868898,
		-0.881176, 0.419769, -0.217536,
		-0.472317, -0.761067, 0.444628,
		32.505432, 40.496712, 22.901949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278332, 41.268623, 22.910126>,  <32.836056, 41.029461, 22.590710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278332, 41.268623, 22.910126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342663, 40.933117, 23.118202>,  <32.381264, 40.731812, 23.243048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342663, 40.933117, 23.118202>,  <32.278332, 41.268623, 22.910126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342663, 40.933117, 23.118202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003620, 0.526547, 0.850138,
		-0.986976, -0.138611, 0.081648,
		0.160830, -0.838770, 0.520191,
		32.390911, 40.681484, 23.274260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804380, 41.253769, 23.558405>,  <32.278332, 41.268623, 22.910126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804380, 41.253769, 23.558405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116810, 41.020214, 23.646948>,  <32.304268, 40.880081, 23.700073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116810, 41.020214, 23.646948>,  <31.804380, 41.253769, 23.558405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116810, 41.020214, 23.646948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064132, 0.427622, 0.901680,
		-0.621137, -0.690082, 0.371450,
		0.781074, -0.583889, 0.221355,
		32.351131, 40.845047, 23.713354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671856, 41.009670, 24.236258>,  <31.804380, 41.253769, 23.558405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671856, 41.009670, 24.236258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.060852, 40.925457, 24.196371>,  <32.294250, 40.874928, 24.172440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.060852, 40.925457, 24.196371>,  <31.671856, 41.009670, 24.236258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060852, 40.925457, 24.196371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209017, 0.599594, 0.772528,
		-0.102855, -0.772116, 0.627103,
		0.972488, -0.210533, -0.099714,
		32.352600, 40.862297, 24.166456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227095, 40.520916, 24.431356>,  <31.671856, 41.009670, 24.236258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227095, 40.520916, 24.431356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840263, 40.612923, 24.474907>,  <30.608164, 40.668125, 24.501038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.840263, 40.612923, 24.474907>,  <31.227095, 40.520916, 24.431356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840263, 40.612923, 24.474907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127485, -0.067607, -0.989534,
		-0.220248, -0.970836, 0.094705,
		-0.967077, 0.230017, 0.108877,
		30.550140, 40.681927, 24.507570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914782, 39.982224, 23.975424>,  <31.227095, 40.520916, 24.431356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914782, 39.982224, 23.975424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639235, 40.271450, 23.995937>,  <30.473906, 40.444988, 24.008245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639235, 40.271450, 23.995937>,  <30.914782, 39.982224, 23.975424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639235, 40.271450, 23.995937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122330, -0.046227, -0.991412,
		-0.714489, -0.689227, 0.120298,
		-0.688869, 0.723070, 0.051284,
		30.432573, 40.488369, 24.011322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412184, 39.655476, 23.715107>,  <30.914782, 39.982224, 23.975424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412184, 39.655476, 23.715107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318224, 40.042068, 23.673655>,  <30.261848, 40.274025, 23.648783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318224, 40.042068, 23.673655>,  <30.412184, 39.655476, 23.715107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318224, 40.042068, 23.673655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213007, -0.155206, -0.964645,
		-0.948394, -0.204520, 0.242324,
		-0.234899, 0.966480, -0.103633,
		30.247755, 40.332012, 23.642565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777895, 39.710888, 23.371117>,  <30.412184, 39.655476, 23.715107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777895, 39.710888, 23.371117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.905163, 40.086922, 23.322115>,  <29.981524, 40.312542, 23.292715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.905163, 40.086922, 23.322115>,  <29.777895, 39.710888, 23.371117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905163, 40.086922, 23.322115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434515, 0.029759, -0.900173,
		-0.842595, 0.339635, 0.417950,
		0.318168, 0.940087, -0.122502,
		30.000612, 40.368946, 23.285364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159170, 40.195137, 23.367435>,  <29.777895, 39.710888, 23.371117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159170, 40.195137, 23.367435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445889, 40.371468, 23.151331>,  <29.617920, 40.477264, 23.021669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445889, 40.371468, 23.151331>,  <29.159170, 40.195137, 23.367435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445889, 40.371468, 23.151331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638345, 0.103087, -0.762817,
		-0.280575, 0.891654, 0.355290,
		0.716794, 0.440824, -0.540259,
		29.660927, 40.503716, 22.989254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886227, 40.751755, 23.146324>,  <29.159170, 40.195137, 23.367435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886227, 40.751755, 23.146324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185894, 40.656025, 22.899269>,  <29.365694, 40.598587, 22.751036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185894, 40.656025, 22.899269>,  <28.886227, 40.751755, 23.146324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185894, 40.656025, 22.899269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624962, 0.053578, -0.778814,
		0.219478, 0.969461, -0.109427,
		0.749167, -0.239321, -0.617636,
		29.410645, 40.584229, 22.713978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760752, 41.182331, 22.497011>,  <28.886227, 40.751755, 23.146324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760752, 41.182331, 22.497011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026157, 40.897678, 22.404640>,  <29.185400, 40.726887, 22.349216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.026157, 40.897678, 22.404640>,  <28.760752, 41.182331, 22.497011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026157, 40.897678, 22.404640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462407, -0.147416, -0.874327,
		0.588158, 0.686910, -0.426877,
		0.663513, -0.711634, -0.230928,
		29.225212, 40.684189, 22.335361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900410, 41.345116, 21.849998>,  <28.760752, 41.182331, 22.497011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900410, 41.345116, 21.849998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.046619, 40.973011, 21.862623>,  <29.134346, 40.749748, 21.870197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.046619, 40.973011, 21.862623>,  <28.900410, 41.345116, 21.849998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046619, 40.973011, 21.862623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320834, -0.157748, -0.933906,
		0.873760, 0.331240, -0.356122,
		0.365525, -0.930266, 0.031560,
		29.156277, 40.693932, 21.872091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199474, 41.210438, 21.157997>,  <28.900410, 41.345116, 21.849998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199474, 41.210438, 21.157997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110746, 40.851376, 21.310320>,  <29.057510, 40.635941, 21.401714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110746, 40.851376, 21.310320>,  <29.199474, 41.210438, 21.157997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110746, 40.851376, 21.310320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456152, -0.249642, -0.854169,
		0.861813, -0.363177, -0.354091,
		-0.221819, -0.897653, 0.380809,
		29.044201, 40.582081, 21.424562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435423, 40.762619, 20.668385>,  <29.199474, 41.210438, 21.157997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435423, 40.762619, 20.668385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206173, 40.512917, 20.880735>,  <29.068623, 40.363094, 21.008146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.206173, 40.512917, 20.880735>,  <29.435423, 40.762619, 20.668385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206173, 40.512917, 20.880735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430146, -0.322235, -0.843291,
		0.697496, -0.711668, -0.083839,
		-0.573127, -0.624255, 0.530878,
		29.034235, 40.325642, 21.039999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557619, 40.045315, 20.489662>,  <29.435423, 40.762619, 20.668385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557619, 40.045315, 20.489662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184599, 40.044357, 20.634073>,  <28.960787, 40.043781, 20.720720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184599, 40.044357, 20.634073>,  <29.557619, 40.045315, 20.489662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184599, 40.044357, 20.634073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301854, -0.543430, -0.783305,
		0.198068, -0.839451, 0.506054,
		-0.932551, -0.002393, 0.361028,
		28.904833, 40.043640, 20.742382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271540, 39.464676, 20.229824>,  <29.557619, 40.045315, 20.489662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271540, 39.464676, 20.229824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930866, 39.632053, 20.356022>,  <28.726461, 39.732479, 20.431740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930866, 39.632053, 20.356022>,  <29.271540, 39.464676, 20.229824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930866, 39.632053, 20.356022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495602, -0.447457, -0.744420,
		-0.170330, -0.790370, 0.588475,
		-0.851685, 0.418446, 0.315493,
		28.675362, 39.757587, 20.450670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677637, 39.007870, 19.976706>,  <29.271540, 39.464676, 20.229824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677637, 39.007870, 19.976706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513765, 39.357635, 20.080669>,  <28.415442, 39.567497, 20.143047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513765, 39.357635, 20.080669>,  <28.677637, 39.007870, 19.976706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513765, 39.357635, 20.080669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707262, -0.124516, -0.695899,
		-0.576145, -0.468921, 0.669455,
		-0.409679, 0.874419, 0.259911,
		28.390862, 39.619961, 20.158644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728632, 38.336658, 20.254953>,  <28.677637, 39.007870, 19.976706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728632, 38.336658, 20.254953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468864, 38.036259, 20.207184>,  <28.313004, 37.856018, 20.178522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468864, 38.036259, 20.207184>,  <28.728632, 38.336658, 20.254953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468864, 38.036259, 20.207184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024376, -0.177523, 0.983815,
		-0.760041, 0.635996, 0.133592,
		-0.649418, -0.750996, -0.119422,
		28.274038, 37.810959, 20.171358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176044, 38.444855, 20.697592>,  <28.728632, 38.336658, 20.254953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176044, 38.444855, 20.697592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153311, 38.048634, 20.647684>,  <28.139671, 37.810902, 20.617739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.153311, 38.048634, 20.647684>,  <28.176044, 38.444855, 20.697592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153311, 38.048634, 20.647684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180135, -0.112748, 0.977159,
		-0.981999, 0.078011, -0.172026,
		-0.056834, -0.990557, -0.124771,
		28.136261, 37.751465, 20.610252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675945, 38.134148, 21.260702>,  <28.176044, 38.444855, 20.697592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675945, 38.134148, 21.260702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885443, 37.812202, 21.149065>,  <28.011141, 37.619038, 21.082083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885443, 37.812202, 21.149065>,  <27.675945, 38.134148, 21.260702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885443, 37.812202, 21.149065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124342, -0.396341, 0.909644,
		-0.842753, -0.441716, -0.307659,
		0.523743, -0.804860, -0.279093,
		28.042566, 37.570744, 21.065336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301813, 37.497807, 21.567963>,  <27.675945, 38.134148, 21.260702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301813, 37.497807, 21.567963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677963, 37.381409, 21.497520>,  <27.903654, 37.311569, 21.455256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677963, 37.381409, 21.497520>,  <27.301813, 37.497807, 21.567963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677963, 37.381409, 21.497520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037157, -0.426762, 0.903600,
		-0.338099, -0.856268, -0.390505,
		0.940377, -0.290997, -0.176104,
		27.960075, 37.294109, 21.444689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362743, 36.912518, 21.959454>,  <27.301813, 37.497807, 21.567963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362743, 36.912518, 21.959454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741137, 37.012241, 21.876541>,  <27.968172, 37.072075, 21.826794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741137, 37.012241, 21.876541>,  <27.362743, 36.912518, 21.959454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741137, 37.012241, 21.876541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290024, -0.364892, 0.884726,
		0.144934, -0.897050, -0.417486,
		0.945981, 0.249308, -0.207281,
		28.024931, 37.087032, 21.814358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740738, 36.294144, 22.121323>,  <27.362743, 36.912518, 21.959454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740738, 36.294144, 22.121323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004879, 36.592823, 22.153248>,  <28.163364, 36.772030, 22.172403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004879, 36.592823, 22.153248>,  <27.740738, 36.294144, 22.121323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004879, 36.592823, 22.153248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424450, -0.458804, 0.780603,
		0.619497, -0.481596, -0.619910,
		0.660353, 0.746702, 0.079815,
		28.202986, 36.816833, 22.177193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227818, 36.045544, 22.617493>,  <27.740738, 36.294144, 22.121323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227818, 36.045544, 22.617493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349686, 36.426346, 22.605698>,  <28.422808, 36.654827, 22.598619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349686, 36.426346, 22.605698>,  <28.227818, 36.045544, 22.617493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349686, 36.426346, 22.605698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361227, -0.086846, 0.928425,
		0.881300, -0.293518, -0.370347,
		0.304672, 0.952001, -0.029489,
		28.441088, 36.711945, 22.596851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924496, 36.081131, 22.798698>,  <28.227818, 36.045544, 22.617493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924496, 36.081131, 22.798698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774296, 36.445217, 22.868559>,  <28.684175, 36.663670, 22.910475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774296, 36.445217, 22.868559>,  <28.924496, 36.081131, 22.798698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774296, 36.445217, 22.868559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328718, -0.045396, 0.943336,
		0.866571, 0.411633, -0.282159,
		-0.375500, 0.910218, 0.174650,
		28.661646, 36.718281, 22.920954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538605, 35.842491, 22.404825>,  <28.924496, 36.081131, 22.798698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538605, 35.842491, 22.404825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789881, 35.531754, 22.387396>,  <29.940645, 35.345310, 22.376938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789881, 35.531754, 22.387396>,  <29.538605, 35.842491, 22.404825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789881, 35.531754, 22.387396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348405, -0.230776, -0.908492,
		0.695697, 0.585885, -0.415625,
		0.628188, -0.776841, -0.043575,
		29.978336, 35.298702, 22.374323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819782, 35.896557, 21.772791>,  <29.538605, 35.842491, 22.404825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819782, 35.896557, 21.772791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895542, 35.520523, 21.886185>,  <29.940998, 35.294903, 21.954222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895542, 35.520523, 21.886185>,  <29.819782, 35.896557, 21.772791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895542, 35.520523, 21.886185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165820, -0.315188, -0.934430,
		0.967797, 0.129975, -0.215582,
		0.189401, -0.940087, 0.283485,
		29.952362, 35.238499, 21.971230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421770, 35.757011, 21.405186>,  <29.819782, 35.896557, 21.772791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421770, 35.757011, 21.405186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218178, 35.421509, 21.482573>,  <30.096024, 35.220207, 21.529005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218178, 35.421509, 21.482573>,  <30.421770, 35.757011, 21.405186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218178, 35.421509, 21.482573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060185, -0.189532, -0.980028,
		0.858673, -0.510457, 0.045987,
		-0.508978, -0.838756, 0.193468,
		30.065485, 35.169884, 21.540613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612011, 35.430470, 20.895449>,  <30.421770, 35.757011, 21.405186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612011, 35.430470, 20.895449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291914, 35.223866, 21.017321>,  <30.099855, 35.099903, 21.090443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.291914, 35.223866, 21.017321>,  <30.612011, 35.430470, 20.895449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291914, 35.223866, 21.017321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122519, -0.356534, -0.926214,
		0.587026, -0.778526, 0.222032,
		-0.800244, -0.516509, 0.304678,
		30.051842, 35.068913, 21.108725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746971, 34.678894, 20.768816>,  <30.612011, 35.430470, 20.895449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746971, 34.678894, 20.768816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351517, 34.726971, 20.804939>,  <30.114244, 34.755817, 20.826612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351517, 34.726971, 20.804939>,  <30.746971, 34.678894, 20.768816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351517, 34.726971, 20.804939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134577, -0.439737, -0.887986,
		-0.067020, -0.890047, 0.450915,
		-0.988634, 0.120196, 0.090309,
		30.054926, 34.763031, 20.832031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464487, 34.061317, 20.430960>,  <30.746971, 34.678894, 20.768816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464487, 34.061317, 20.430960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152008, 34.311024, 20.428856>,  <29.964521, 34.460846, 20.427593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152008, 34.311024, 20.428856>,  <30.464487, 34.061317, 20.430960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152008, 34.311024, 20.428856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250634, -0.321337, -0.913195,
		-0.571763, -0.712067, 0.407489,
		-0.781197, 0.624262, -0.005260,
		29.917648, 34.498302, 20.427279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893148, 33.699348, 20.161829>,  <30.464487, 34.061317, 20.430960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893148, 33.699348, 20.161829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773729, 34.075951, 20.099308>,  <29.702078, 34.301914, 20.061796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.773729, 34.075951, 20.099308>,  <29.893148, 33.699348, 20.161829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773729, 34.075951, 20.099308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179615, -0.216272, -0.959669,
		-0.937341, -0.258431, 0.233676,
		-0.298546, 0.941509, -0.156302,
		29.684166, 34.358402, 20.052418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183241, 33.648235, 19.807810>,  <29.893148, 33.699348, 20.161829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183241, 33.648235, 19.807810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355492, 34.000698, 19.729713>,  <29.458841, 34.212177, 19.682856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355492, 34.000698, 19.729713>,  <29.183241, 33.648235, 19.807810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355492, 34.000698, 19.729713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223234, -0.105616, -0.969026,
		-0.874487, 0.460873, 0.151224,
		0.430627, 0.881159, -0.195242,
		29.484680, 34.265045, 19.671141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715763, 34.229847, 19.594702>,  <29.183241, 33.648235, 19.807810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715763, 34.229847, 19.594702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074306, 34.220066, 19.417641>,  <29.289433, 34.214199, 19.311405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.074306, 34.220066, 19.417641>,  <28.715763, 34.229847, 19.594702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074306, 34.220066, 19.417641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442868, -0.003993, -0.896578,
		0.020157, 0.999693, -0.014409,
		0.896360, -0.024454, -0.442651,
		29.343214, 34.212730, 19.284845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.621422, 37.519852, 33.454380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902901, 37.715397, 33.248150>,  <37.071789, 37.832722, 33.124413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902901, 37.715397, 33.248150>,  <36.621422, 37.519852, 33.454380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902901, 37.715397, 33.248150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579042, -0.025909, -0.814886,
		-0.411724, 0.871977, 0.264839,
		0.703700, 0.488861, -0.515579,
		37.114010, 37.862057, 33.093475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364365, 38.214447, 33.160381>,  <36.621422, 37.519852, 33.454380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364365, 38.214447, 33.160381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651634, 38.056477, 32.931210>,  <36.823997, 37.961693, 32.793705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651634, 38.056477, 32.931210>,  <36.364365, 38.214447, 33.160381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651634, 38.056477, 32.931210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627246, -0.010905, -0.778745,
		0.301302, 0.918647, -0.255550,
		0.718178, -0.394930, -0.572931,
		36.867088, 37.937996, 32.759331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329353, 38.559109, 32.552433>,  <36.364365, 38.214447, 33.160381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329353, 38.559109, 32.552433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538967, 38.243496, 32.424171>,  <36.664738, 38.054131, 32.347214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538967, 38.243496, 32.424171>,  <36.329353, 38.559109, 32.552433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538967, 38.243496, 32.424171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526235, -0.003937, -0.850330,
		0.669672, 0.614345, -0.417277,
		0.524038, -0.789028, -0.320653,
		36.696178, 38.006786, 32.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605530, 38.677830, 31.798460>,  <36.329353, 38.559109, 32.552433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605530, 38.677830, 31.798460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586048, 38.285007, 31.871346>,  <36.574360, 38.049316, 31.915077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586048, 38.285007, 31.871346>,  <36.605530, 38.677830, 31.798460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586048, 38.285007, 31.871346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436125, -0.143213, -0.888417,
		0.898567, -0.122735, -0.421323,
		-0.048701, -0.982052, 0.182214,
		36.571438, 37.990391, 31.926010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856781, 38.448990, 31.085470>,  <36.605530, 38.677830, 31.798460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856781, 38.448990, 31.085470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682247, 38.168880, 31.311470>,  <36.577526, 38.000813, 31.447069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682247, 38.168880, 31.311470>,  <36.856781, 38.448990, 31.085470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682247, 38.168880, 31.311470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579312, -0.261832, -0.771908,
		0.688485, -0.664120, -0.291433,
		-0.436333, -0.700278, 0.565000,
		36.551346, 37.958797, 31.480970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853664, 37.846031, 30.656818>,  <36.856781, 38.448990, 31.085470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853664, 37.846031, 30.656818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571735, 37.794735, 30.935896>,  <36.402576, 37.763958, 31.103342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571735, 37.794735, 30.935896>,  <36.853664, 37.846031, 30.656818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571735, 37.794735, 30.935896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625546, -0.351455, -0.696543,
		0.334535, -0.927379, 0.167493,
		-0.704826, -0.128243, 0.697692,
		36.360287, 37.756264, 31.145203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593216, 37.221691, 30.445654>,  <36.853664, 37.846031, 30.656818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593216, 37.221691, 30.445654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.318256, 37.359009, 30.701662>,  <36.153278, 37.441399, 30.855267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.318256, 37.359009, 30.701662>,  <36.593216, 37.221691, 30.445654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318256, 37.359009, 30.701662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722418, -0.413913, -0.553885,
		0.074764, -0.843103, 0.532529,
		-0.687403, 0.343298, 0.640019,
		36.112034, 37.461998, 30.893667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147335, 36.627460, 30.631927>,  <36.593216, 37.221691, 30.445654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147335, 36.627460, 30.631927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965488, 36.978237, 30.694265>,  <35.856380, 37.188705, 30.731668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965488, 36.978237, 30.694265>,  <36.147335, 36.627460, 30.631927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965488, 36.978237, 30.694265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790486, -0.316622, -0.524292,
		-0.410433, -0.361544, 0.837157,
		-0.454616, 0.876947, 0.155843,
		35.829102, 37.241322, 30.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436062, 36.472015, 30.996258>,  <36.147335, 36.627460, 30.631927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436062, 36.472015, 30.996258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433979, 36.825111, 30.808323>,  <35.432728, 37.036968, 30.695562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433979, 36.825111, 30.808323>,  <35.436062, 36.472015, 30.996258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433979, 36.825111, 30.808323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770006, -0.303312, -0.561331,
		-0.638015, 0.358855, 0.681293,
		-0.005208, 0.882737, -0.469838,
		35.432415, 37.089931, 30.667372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694313, 36.540138, 30.849501>,  <35.436062, 36.472015, 30.996258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694313, 36.540138, 30.849501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898102, 36.797596, 30.621059>,  <35.020374, 36.952072, 30.483995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898102, 36.797596, 30.621059>,  <34.694313, 36.540138, 30.849501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898102, 36.797596, 30.621059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687565, -0.094559, -0.719939,
		-0.517388, 0.759461, 0.394372,
		0.509474, 0.643645, -0.571103,
		35.050945, 36.990688, 30.449728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177254, 36.970871, 30.615501>,  <34.694313, 36.540138, 30.849501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177254, 36.970871, 30.615501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481552, 37.005440, 30.358194>,  <34.664131, 37.026180, 30.203810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481552, 37.005440, 30.358194>,  <34.177254, 36.970871, 30.615501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481552, 37.005440, 30.358194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626282, -0.162458, -0.762482,
		-0.170396, 0.982924, -0.069468,
		0.760747, 0.086417, -0.643270,
		34.709778, 37.031364, 30.165213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871975, 37.010284, 30.095503>,  <34.177254, 36.970871, 30.615501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871975, 37.010284, 30.095503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222561, 36.961811, 29.909115>,  <34.432911, 36.932728, 29.797281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222561, 36.961811, 29.909115>,  <33.871975, 37.010284, 30.095503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222561, 36.961811, 29.909115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480368, -0.154603, -0.863333,
		0.032580, 0.980517, -0.193715,
		0.876462, -0.121182, -0.465972,
		34.485500, 36.925457, 29.769323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564873, 37.666878, 30.178938>,  <33.871975, 37.010284, 30.095503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564873, 37.666878, 30.178938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213051, 37.848732, 30.235064>,  <33.001957, 37.957844, 30.268738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213051, 37.848732, 30.235064>,  <33.564873, 37.666878, 30.178938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213051, 37.848732, 30.235064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394475, 0.531916, 0.749303,
		0.266024, 0.714405, -0.647192,
		-0.879557, 0.454633, 0.140312,
		32.949184, 37.985123, 30.277157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734325, 38.328918, 30.286074>,  <33.564873, 37.666878, 30.178938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734325, 38.328918, 30.286074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379787, 38.298634, 30.468788>,  <33.167065, 38.280464, 30.578417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379787, 38.298634, 30.468788>,  <33.734325, 38.328918, 30.286074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379787, 38.298634, 30.468788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337503, 0.569749, 0.749318,
		-0.316984, 0.818324, -0.479444,
		-0.886348, -0.075708, 0.456788,
		33.113884, 38.275921, 30.605825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508751, 39.046719, 30.540693>,  <33.734325, 38.328918, 30.286074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508751, 39.046719, 30.540693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330376, 38.767090, 30.764277>,  <33.223351, 38.599312, 30.898426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330376, 38.767090, 30.764277>,  <33.508751, 39.046719, 30.540693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330376, 38.767090, 30.764277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247174, 0.504024, 0.827566,
		-0.860256, 0.507207, -0.051973,
		-0.445943, -0.699071, 0.558958,
		33.196594, 38.557369, 30.931963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390644, 39.448605, 31.142946>,  <33.508751, 39.046719, 30.540693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390644, 39.448605, 31.142946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315380, 39.074230, 31.262026>,  <33.270222, 38.849606, 31.333473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315380, 39.074230, 31.262026>,  <33.390644, 39.448605, 31.142946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315380, 39.074230, 31.262026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220119, 0.255217, 0.941495,
		-0.957153, 0.242684, 0.157994,
		-0.188163, -0.935932, 0.297701,
		33.258930, 38.793449, 31.351336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827557, 39.520977, 31.756701>,  <33.390644, 39.448605, 31.142946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827557, 39.520977, 31.756701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042774, 39.183949, 31.766405>,  <33.171906, 38.981731, 31.772228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042774, 39.183949, 31.766405>,  <32.827557, 39.520977, 31.756701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042774, 39.183949, 31.766405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193503, 0.151476, 0.969336,
		-0.820409, -0.516846, 0.244540,
		0.538040, -0.842571, 0.024261,
		33.204185, 38.931179, 31.773684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717846, 39.186028, 32.333023>,  <32.827557, 39.520977, 31.756701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717846, 39.186028, 32.333023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056156, 38.981667, 32.271523>,  <33.259144, 38.859051, 32.234623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056156, 38.981667, 32.271523>,  <32.717846, 39.186028, 32.333023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056156, 38.981667, 32.271523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231799, 0.092318, 0.968373,
		-0.480547, -0.854669, 0.196506,
		0.845780, -0.510899, -0.153748,
		33.309891, 38.828396, 32.225399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798622, 38.728382, 32.889797>,  <32.717846, 39.186028, 32.333023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798622, 38.728382, 32.889797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170139, 38.766087, 32.746433>,  <33.393051, 38.788708, 32.660416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.170139, 38.766087, 32.746433>,  <32.798622, 38.728382, 32.889797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170139, 38.766087, 32.746433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338327, 0.179050, 0.923837,
		0.151248, -0.979315, 0.134412,
		0.928794, 0.094253, -0.358410,
		33.448776, 38.794365, 32.638908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202534, 38.412586, 33.309002>,  <32.798622, 38.728382, 32.889797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202534, 38.412586, 33.309002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425861, 38.696316, 33.136890>,  <33.559856, 38.866554, 33.033623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425861, 38.696316, 33.136890>,  <33.202534, 38.412586, 33.309002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425861, 38.696316, 33.136890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349667, 0.269128, 0.897387,
		0.752339, -0.651481, -0.097769,
		0.558318, 0.709326, -0.430277,
		33.593357, 38.909115, 33.007809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696793, 38.460701, 33.859089>,  <33.202534, 38.412586, 33.309002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696793, 38.460701, 33.859089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826775, 38.741013, 33.605064>,  <33.904766, 38.909199, 33.452648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826775, 38.741013, 33.605064>,  <33.696793, 38.460701, 33.859089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826775, 38.741013, 33.605064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356636, 0.531127, 0.768579,
		0.875906, -0.476244, -0.077329,
		0.324959, 0.700782, -0.635064,
		33.924263, 38.951248, 33.414547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392780, 38.551338, 33.988735>,  <33.696793, 38.460701, 33.859089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392780, 38.551338, 33.988735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251701, 38.891575, 33.832737>,  <34.167053, 39.095718, 33.739140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251701, 38.891575, 33.832737>,  <34.392780, 38.551338, 33.988735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251701, 38.891575, 33.832737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362146, 0.508376, 0.781283,
		0.862819, 0.134320, -0.487341,
		-0.352695, 0.850595, -0.389993,
		34.145893, 39.146755, 33.715740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888695, 39.044075, 34.123531>,  <34.392780, 38.551338, 33.988735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888695, 39.044075, 34.123531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604424, 39.309990, 34.031445>,  <34.433861, 39.469540, 33.976192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604424, 39.309990, 34.031445>,  <34.888695, 39.044075, 34.123531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604424, 39.309990, 34.031445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326398, 0.601453, 0.729190,
		0.623222, 0.443073, -0.644422,
		-0.710675, 0.664785, -0.230221,
		34.391220, 39.509426, 33.962379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217945, 39.607193, 34.195988>,  <34.888695, 39.044075, 34.123531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217945, 39.607193, 34.195988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838245, 39.732944, 34.199909>,  <34.610428, 39.808395, 34.202263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.838245, 39.732944, 34.199909>,  <35.217945, 39.607193, 34.195988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838245, 39.732944, 34.199909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208881, 0.606787, 0.766928,
		0.235156, 0.730052, -0.641658,
		-0.949247, 0.314378, 0.009804,
		34.553471, 39.827259, 34.202850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172539, 40.376232, 34.136688>,  <35.217945, 39.607193, 34.195988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172539, 40.376232, 34.136688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832016, 40.270576, 34.318020>,  <34.627701, 40.207184, 34.426819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832016, 40.270576, 34.318020>,  <35.172539, 40.376232, 34.136688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832016, 40.270576, 34.318020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221929, 0.601641, 0.767318,
		-0.475422, 0.753829, -0.453560,
		-0.851306, -0.264141, 0.453329,
		34.576626, 40.191334, 34.454018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720230, 40.968361, 34.260818>,  <35.172539, 40.376232, 34.136688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720230, 40.968361, 34.260818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763367, 41.312138, 34.460709>,  <34.789249, 41.518406, 34.580643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763367, 41.312138, 34.460709>,  <34.720230, 40.968361, 34.260818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763367, 41.312138, 34.460709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648951, 0.441652, -0.619521,
		-0.753149, -0.257487, 0.605366,
		0.107842, 0.859444, 0.499725,
		34.795719, 41.569969, 34.610626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009899, 41.202560, 34.371010>,  <34.720230, 40.968361, 34.260818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009899, 41.202560, 34.371010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258015, 41.515049, 34.342911>,  <34.406883, 41.702541, 34.326050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258015, 41.515049, 34.342911>,  <34.009899, 41.202560, 34.371010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258015, 41.515049, 34.342911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693211, 0.504088, -0.515124,
		-0.367016, 0.368221, 0.854232,
		0.620288, 0.781222, -0.070247,
		34.444099, 41.749416, 34.321838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410938, 41.592178, 34.331566>,  <34.009899, 41.202560, 34.371010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410938, 41.592178, 34.331566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740059, 41.750538, 34.168465>,  <33.937531, 41.845554, 34.070602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740059, 41.750538, 34.168465>,  <33.410938, 41.592178, 34.331566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740059, 41.750538, 34.168465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543356, 0.337606, -0.768627,
		-0.166640, 0.853981, 0.492897,
		0.822797, 0.395903, -0.407757,
		33.986897, 41.869308, 34.046139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220234, 42.264130, 34.164150>,  <33.410938, 41.592178, 34.331566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220234, 42.264130, 34.164150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502934, 42.129662, 33.915154>,  <33.672554, 42.048981, 33.765755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502934, 42.129662, 33.915154>,  <33.220234, 42.264130, 34.164150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502934, 42.129662, 33.915154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425058, 0.501595, -0.753477,
		0.565535, 0.797114, 0.211610,
		0.706750, -0.336171, -0.622489,
		33.714958, 42.028809, 33.728405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433975, 42.871281, 33.733356>,  <33.220234, 42.264130, 34.164150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433975, 42.871281, 33.733356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503857, 42.522293, 33.550808>,  <33.545784, 42.312901, 33.441277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503857, 42.522293, 33.550808>,  <33.433975, 42.871281, 33.733356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503857, 42.522293, 33.550808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254305, 0.407795, -0.876945,
		0.951214, 0.269265, -0.150629,
		0.174705, -0.872467, -0.456376,
		33.556267, 42.260551, 33.413895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460114, 43.145061, 33.149296>,  <33.433975, 42.871281, 33.733356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460114, 43.145061, 33.149296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426388, 42.749725, 33.098587>,  <33.406151, 42.512524, 33.068161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.426388, 42.749725, 33.098587>,  <33.460114, 43.145061, 33.149296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426388, 42.749725, 33.098587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286338, 0.145891, -0.946956,
		0.954412, -0.043546, -0.295301,
		-0.084318, -0.988342, -0.126771,
		33.401093, 42.453224, 33.060555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592861, 43.071800, 32.528397>,  <33.460114, 43.145061, 33.149296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592861, 43.071800, 32.528397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406872, 42.721500, 32.580341>,  <33.295277, 42.511322, 32.611507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406872, 42.721500, 32.580341>,  <33.592861, 43.071800, 32.528397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406872, 42.721500, 32.580341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454825, 0.110440, -0.883707,
		0.759562, -0.469966, -0.449664,
		-0.464973, -0.875749, 0.129866,
		33.267380, 42.458775, 32.619301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606224, 42.650467, 31.946129>,  <33.592861, 43.071800, 32.528397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606224, 42.650467, 31.946129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313461, 42.431377, 32.108273>,  <33.137806, 42.299923, 32.205559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313461, 42.431377, 32.108273>,  <33.606224, 42.650467, 31.946129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313461, 42.431377, 32.108273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447066, -0.062958, -0.892282,
		0.514248, -0.834285, -0.198791,
		-0.731902, -0.547727, 0.405357,
		33.093891, 42.267059, 32.229881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627323, 42.013771, 31.671188>,  <33.606224, 42.650467, 31.946129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627323, 42.013771, 31.671188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.253563, 42.081932, 31.796318>,  <33.029308, 42.122829, 31.871395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.253563, 42.081932, 31.796318>,  <33.627323, 42.013771, 31.671188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253563, 42.081932, 31.796318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345650, -0.221335, -0.911886,
		-0.086152, -0.960194, 0.265716,
		-0.934400, 0.170405, 0.312823,
		32.973244, 42.133053, 31.890165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359425, 41.591255, 31.330498>,  <33.627323, 42.013771, 31.671188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359425, 41.591255, 31.330498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055321, 41.826157, 31.441587>,  <32.872856, 41.967098, 31.508242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055321, 41.826157, 31.441587>,  <33.359425, 41.591255, 31.330498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055321, 41.826157, 31.441587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404827, -0.093944, -0.909554,
		-0.508050, -0.803932, 0.309159,
		-0.760264, 0.587255, 0.277725,
		32.827240, 42.002335, 31.524904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777420, 41.240227, 31.163799>,  <33.359425, 41.591255, 31.330498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777420, 41.240227, 31.163799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639870, 41.613079, 31.209206>,  <32.557339, 41.836788, 31.236448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639870, 41.613079, 31.209206>,  <32.777420, 41.240227, 31.163799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639870, 41.613079, 31.209206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611536, -0.130571, -0.780368,
		-0.712582, -0.337767, 0.614931,
		-0.343875, 0.932129, 0.113514,
		32.536709, 41.892719, 31.243259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973774, 41.226460, 30.989191>,  <32.777420, 41.240227, 31.163799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973774, 41.226460, 30.989191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095779, 41.606342, 30.960850>,  <32.168983, 41.834274, 30.943846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095779, 41.606342, 30.960850>,  <31.973774, 41.226460, 30.989191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095779, 41.606342, 30.960850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666022, 0.159541, -0.728671,
		-0.680721, 0.269444, 0.681189,
		0.305013, 0.949709, -0.070853,
		32.187283, 41.891254, 30.939594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367912, 41.596470, 30.957903>,  <31.973774, 41.226460, 30.989191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367912, 41.596470, 30.957903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670658, 41.821163, 30.824272>,  <31.852306, 41.955978, 30.744093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670658, 41.821163, 30.824272>,  <31.367912, 41.596470, 30.957903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670658, 41.821163, 30.824272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561236, 0.296676, -0.772656,
		-0.334917, 0.772292, 0.539811,
		0.756865, 0.561737, -0.334076,
		31.897718, 41.989685, 30.724049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992697, 42.010815, 30.600023>,  <31.367912, 41.596470, 30.957903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992697, 42.010815, 30.600023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.362679, 42.122334, 30.496696>,  <31.584667, 42.189247, 30.434700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.362679, 42.122334, 30.496696>,  <30.992697, 42.010815, 30.600023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362679, 42.122334, 30.496696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340957, 0.308344, -0.888072,
		-0.167945, 0.909502, 0.380263,
		0.924956, 0.278800, -0.258317,
		31.640165, 42.205975, 30.419201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937574, 42.765629, 30.257624>,  <30.992697, 42.010815, 30.600023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937574, 42.765629, 30.257624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.264910, 42.576859, 30.126413>,  <31.461311, 42.463596, 30.047688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.264910, 42.576859, 30.126413>,  <30.937574, 42.765629, 30.257624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264910, 42.576859, 30.126413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327376, 0.086348, -0.940940,
		0.472383, 0.877397, -0.083837,
		0.818339, -0.471930, -0.328028,
		31.510412, 42.435280, 30.028006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187380, 43.237152, 29.808050>,  <30.937574, 42.765629, 30.257624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187380, 43.237152, 29.808050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.322784, 42.871262, 29.719793>,  <31.404028, 42.651726, 29.666840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.322784, 42.871262, 29.719793>,  <31.187380, 43.237152, 29.808050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322784, 42.871262, 29.719793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241695, 0.142092, -0.959892,
		0.909392, 0.378262, -0.172985,
		0.338512, -0.914728, -0.220641,
		31.424337, 42.596844, 29.653601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472530, 43.271763, 29.152908>,  <31.187380, 43.237152, 29.808050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472530, 43.271763, 29.152908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432920, 42.876289, 29.197973>,  <31.409155, 42.639004, 29.225012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432920, 42.876289, 29.197973>,  <31.472530, 43.271763, 29.152908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432920, 42.876289, 29.197973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454007, -0.055859, -0.889246,
		0.885478, -0.139206, -0.443340,
		-0.099024, -0.988687, 0.112662,
		31.403214, 42.579685, 29.231771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536554, 43.017605, 28.501131>,  <31.472530, 43.271763, 29.152908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536554, 43.017605, 28.501131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361624, 42.698792, 28.667736>,  <31.256666, 42.507504, 28.767698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361624, 42.698792, 28.667736>,  <31.536554, 43.017605, 28.501131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361624, 42.698792, 28.667736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457061, -0.201881, -0.866221,
		0.774495, -0.569190, -0.276006,
		-0.437324, -0.797036, 0.416510,
		31.230427, 42.459682, 28.792688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615330, 42.473125, 27.999659>,  <31.536554, 43.017605, 28.501131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615330, 42.473125, 27.999659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308586, 42.350918, 28.225431>,  <31.124540, 42.277592, 28.360895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308586, 42.350918, 28.225431>,  <31.615330, 42.473125, 27.999659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308586, 42.350918, 28.225431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463159, -0.345372, -0.816212,
		0.444308, -0.887342, 0.123347,
		-0.766860, -0.305520, 0.564432,
		31.078527, 42.259262, 28.394760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545839, 41.887718, 27.671820>,  <31.615330, 42.473125, 27.999659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545839, 41.887718, 27.671820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210754, 41.979599, 27.870003>,  <31.009705, 42.034725, 27.988913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210754, 41.979599, 27.870003>,  <31.545839, 41.887718, 27.671820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210754, 41.979599, 27.870003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545876, -0.379037, -0.747229,
		0.016160, -0.896420, 0.442910,
		-0.837710, 0.229699, 0.495459,
		30.959442, 42.048508, 28.018641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233778, 41.258980, 27.768562>,  <31.545839, 41.887718, 27.671820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233778, 41.258980, 27.768562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.962948, 41.553333, 27.771414>,  <30.800449, 41.729946, 27.773125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.962948, 41.553333, 27.771414>,  <31.233778, 41.258980, 27.768562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962948, 41.553333, 27.771414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490689, -0.444215, -0.749598,
		-0.548449, -0.511030, 0.661855,
		-0.677073, 0.735881, 0.007128,
		30.759825, 41.774097, 27.773552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525276, 40.979694, 27.820417>,  <31.233778, 41.258980, 27.768562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525276, 40.979694, 27.820417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516222, 41.343929, 27.655338>,  <30.510790, 41.562469, 27.556292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516222, 41.343929, 27.655338>,  <30.525276, 40.979694, 27.820417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516222, 41.343929, 27.655338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420692, -0.383152, -0.822322,
		-0.906921, 0.155005, 0.391749,
		-0.022636, 0.910587, -0.412698,
		30.509432, 41.617104, 27.531528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030579, 40.926014, 27.412281>,  <30.525276, 40.979694, 27.820417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030579, 40.926014, 27.412281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.194195, 41.256718, 27.257797>,  <30.292364, 41.455139, 27.165106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.194195, 41.256718, 27.257797>,  <30.030579, 40.926014, 27.412281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194195, 41.256718, 27.257797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365129, -0.239589, -0.899599,
		-0.836281, 0.508990, 0.203871,
		0.409041, 0.826757, -0.386211,
		30.316908, 41.504745, 27.141933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437187, 41.283630, 26.986198>,  <30.030579, 40.926014, 27.412281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437187, 41.283630, 26.986198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.799564, 41.404877, 26.867952>,  <30.016991, 41.477623, 26.797005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.799564, 41.404877, 26.867952>,  <29.437187, 41.283630, 26.986198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799564, 41.404877, 26.867952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258877, -0.155936, -0.953240,
		-0.335036, 0.940110, -0.062801,
		0.905944, 0.303112, -0.295617,
		30.071348, 41.495811, 26.779266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344646, 41.519672, 26.285025>,  <29.437187, 41.283630, 26.986198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344646, 41.519672, 26.285025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.739962, 41.459343, 26.294334>,  <29.977150, 41.423145, 26.299919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.739962, 41.459343, 26.294334>,  <29.344646, 41.519672, 26.285025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739962, 41.459343, 26.294334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005801, -0.189511, -0.981861,
		0.152501, 0.970225, -0.188166,
		0.988286, -0.150826, 0.023272,
		30.036448, 41.414097, 26.301315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675640, 41.908943, 25.756531>,  <29.344646, 41.519672, 26.285025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675640, 41.908943, 25.756531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953476, 41.634880, 25.844261>,  <30.120178, 41.470444, 25.896898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.953476, 41.634880, 25.844261>,  <29.675640, 41.908943, 25.756531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953476, 41.634880, 25.844261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219698, -0.088283, -0.971565,
		0.685039, 0.723023, 0.089208,
		0.694589, -0.685159, 0.219324,
		30.161852, 41.429333, 25.910059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172646, 41.966984, 25.306763>,  <29.675640, 41.908943, 25.756531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172646, 41.966984, 25.306763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228722, 41.599110, 25.453476>,  <30.262367, 41.378387, 25.541504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228722, 41.599110, 25.453476>,  <30.172646, 41.966984, 25.306763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228722, 41.599110, 25.453476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354836, -0.299169, -0.885770,
		0.924358, 0.254325, 0.284396,
		0.140191, -0.919683, 0.366783,
		30.270779, 41.323204, 25.563511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781885, 41.759449, 25.049063>,  <30.172646, 41.966984, 25.306763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781885, 41.759449, 25.049063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.607458, 41.413540, 25.148674>,  <30.502802, 41.205994, 25.208441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.607458, 41.413540, 25.148674>,  <30.781885, 41.759449, 25.049063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607458, 41.413540, 25.148674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242404, -0.379369, -0.892927,
		0.866652, -0.329011, 0.375055,
		-0.436067, -0.864772, 0.249028,
		30.476639, 41.154110, 25.223383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249924, 41.236835, 24.812708>,  <30.781885, 41.759449, 25.049063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249924, 41.236835, 24.812708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885138, 41.074547, 24.837065>,  <30.666265, 40.977173, 24.851679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885138, 41.074547, 24.837065>,  <31.249924, 41.236835, 24.812708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885138, 41.074547, 24.837065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148236, -0.464261, -0.873205,
		0.382547, -0.787308, 0.483533,
		-0.911967, -0.405720, 0.060894,
		30.611547, 40.952831, 24.855333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915760, 40.888760, 24.992535>,  <31.249924, 41.236835, 24.812708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915760, 40.888760, 24.992535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.250324, 40.956562, 24.784042>,  <32.451065, 40.997242, 24.658947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.250324, 40.956562, 24.784042>,  <31.915760, 40.888760, 24.992535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250324, 40.956562, 24.784042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439140, 0.361807, 0.822345,
		0.327981, -0.916713, 0.228180,
		0.836411, 0.169511, -0.521231,
		32.501247, 41.007416, 24.627674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508976, 40.605305, 25.461529>,  <31.915760, 40.888760, 24.992535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508976, 40.605305, 25.461529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654129, 40.855698, 25.185421>,  <32.741219, 41.005932, 25.019756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654129, 40.855698, 25.185421>,  <32.508976, 40.605305, 25.461529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654129, 40.855698, 25.185421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646083, 0.364780, 0.670456,
		0.671488, -0.689265, -0.272064,
		0.362878, 0.625979, -0.690268,
		32.762993, 41.043491, 24.978340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196430, 40.500599, 25.457737>,  <32.508976, 40.605305, 25.461529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196430, 40.500599, 25.457737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185440, 40.869816, 25.304253>,  <33.178844, 41.091347, 25.212162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185440, 40.869816, 25.304253>,  <33.196430, 40.500599, 25.457737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185440, 40.869816, 25.304253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746115, 0.274393, 0.606647,
		0.665250, -0.269623, -0.696237,
		-0.027477, 0.923045, -0.383709,
		33.177197, 41.146729, 25.189140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863537, 40.796150, 25.407143>,  <33.196430, 40.500599, 25.457737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863537, 40.796150, 25.407143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650558, 41.134663, 25.400145>,  <33.522770, 41.337772, 25.395947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.650558, 41.134663, 25.400145>,  <33.863537, 40.796150, 25.407143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650558, 41.134663, 25.400145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612548, 0.399488, 0.682052,
		0.584199, 0.352438, -0.731095,
		-0.532444, 0.846284, -0.017495,
		33.490826, 41.388546, 25.394896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327213, 41.381893, 25.206127>,  <33.863537, 40.796150, 25.407143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327213, 41.381893, 25.206127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015194, 41.552048, 25.389679>,  <33.827984, 41.654140, 25.499811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015194, 41.552048, 25.389679>,  <34.327213, 41.381893, 25.206127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015194, 41.552048, 25.389679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617994, 0.408876, 0.671494,
		0.098018, 0.807383, -0.581829,
		-0.780049, 0.425385, 0.458881,
		33.781178, 41.679665, 25.527344>
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
