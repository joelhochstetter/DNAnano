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
	<2.864366, 4.285376, 1.991489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975212, 4.482574, 2.321377>,  <3.041720, 4.600894, 2.519309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975212, 4.482574, 2.321377>,  <2.864366, 4.285376, 1.991489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.975212, 4.482574, 2.321377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408759, -0.716300, 0.565535,
		0.869553, -0.493830, 0.003019,
		0.277116, 0.492997, 0.824718,
		3.058347, 4.630474, 2.568792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.121724, 3.714749, 2.438489>,  <2.864366, 4.285376, 1.991489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.121724, 3.714749, 2.438489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.962170, 4.044350, 2.599442>,  <2.866437, 4.242110, 2.696013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.962170, 4.044350, 2.599442>,  <3.121724, 3.714749, 2.438489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.962170, 4.044350, 2.599442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641745, -0.564282, 0.519374,
		0.655022, -0.051055, 0.753883,
		-0.398886, 0.824002, 0.402381,
		2.842504, 4.291550, 2.720156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.106449, 3.634424, 3.109018>,  <3.121724, 3.714749, 2.438489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.106449, 3.634424, 3.109018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.824310, 3.898636, 3.006111>,  <2.655027, 4.057163, 2.944367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.824310, 3.898636, 3.006111>,  <3.106449, 3.634424, 3.109018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.824310, 3.898636, 3.006111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647355, -0.452353, 0.613440,
		0.288820, 0.599231, 0.746663,
		-0.705347, 0.660529, -0.257267,
		2.612706, 4.096795, 2.928931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.760507, 3.803127, 3.720554>,  <3.106449, 3.634424, 3.109018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.760507, 3.803127, 3.720554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.504089, 3.883972, 3.424389>,  <2.350239, 3.932479, 3.246690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.504089, 3.883972, 3.424389>,  <2.760507, 3.803127, 3.720554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.504089, 3.883972, 3.424389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750932, -0.364554, 0.550637,
		-0.158630, 0.908983, 0.385468,
		-0.641044, 0.202113, -0.740414,
		2.311776, 3.944606, 3.202265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.182798, 4.150109, 4.094049>,  <2.760507, 3.803127, 3.720554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.182798, 4.150109, 4.094049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.051884, 4.002357, 3.746155>,  <1.973335, 3.913706, 3.537418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.051884, 4.002357, 3.746155>,  <2.182798, 4.150109, 4.094049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.051884, 4.002357, 3.746155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813248, -0.358572, 0.458316,
		-0.481156, 0.857313, -0.183042,
		-0.327286, -0.369380, -0.869737,
		1.953698, 3.891544, 3.485234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.478371, 4.205257, 4.195468>,  <2.182798, 4.150109, 4.094049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.478371, 4.205257, 4.195468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.510944, 3.933006, 3.904232>,  <1.530488, 3.769656, 3.729490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.510944, 3.933006, 3.904232>,  <1.478371, 4.205257, 4.195468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.510944, 3.933006, 3.904232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681972, -0.570782, 0.457299,
		-0.726830, 0.459299, -0.510649,
		0.081432, -0.680627, -0.728090,
		1.535374, 3.728818, 3.685805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.788654, 4.035941, 4.041642>,  <1.478371, 4.205257, 4.195468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.788654, 4.035941, 4.041642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.013828, 3.736061, 3.902470>,  <1.148933, 3.556134, 3.818966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.013828, 3.736061, 3.902470>,  <0.788654, 4.035941, 4.041642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.013828, 3.736061, 3.902470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577890, -0.657990, 0.482796,
		-0.590886, -0.070718, -0.803649,
		0.562936, -0.749698, -0.347930,
		1.182709, 3.511152, 3.798090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.285329, 3.489030, 3.977907>,  <0.788654, 4.035941, 4.041642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.285329, 3.489030, 3.977907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.627399, 3.283043, 3.954308>,  <0.832642, 3.159451, 3.940148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.627399, 3.283043, 3.954308>,  <0.285329, 3.489030, 3.977907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.627399, 3.283043, 3.954308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460424, -0.806976, 0.369864,
		-0.238079, -0.289135, -0.927210,
		0.855177, -0.514967, -0.058999,
		0.883953, 3.128553, 3.936608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.317244, 2.462335, 4.814871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.571823, 2.215874, 4.629272>,  <0.724570, 2.067997, 4.517913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.571823, 2.215874, 4.629272>,  <0.317244, 2.462335, 4.814871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.571823, 2.215874, 4.629272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390940, 0.776252, -0.494569,
		0.664908, 0.133373, 0.734921,
		0.636446, -0.616153, -0.463995,
		0.762756, 2.031028, 4.490074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.005211, 2.609466, 4.992823>,  <0.317244, 2.462335, 4.814871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.005211, 2.609466, 4.992823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.943852, 2.471992, 4.622234>,  <0.907036, 2.389508, 4.399881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.943852, 2.471992, 4.622234>,  <1.005211, 2.609466, 4.992823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.943852, 2.471992, 4.622234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482643, 0.792071, -0.373739,
		0.862279, -0.504486, 0.044374,
		-0.153399, -0.343684, -0.926472,
		0.897832, 2.368887, 4.344293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.691503, 2.529508, 4.691903>,  <1.005211, 2.609466, 4.992823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.691503, 2.529508, 4.691903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.384753, 2.582001, 4.440609>,  <1.200702, 2.613496, 4.289833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.384753, 2.582001, 4.440609>,  <1.691503, 2.529508, 4.691903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.384753, 2.582001, 4.440609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557798, 0.620433, -0.551294,
		0.317430, -0.773202, -0.548996,
		-0.766876, 0.131232, -0.628235,
		1.154690, 2.621370, 4.252139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.988563, 2.476688, 4.009325>,  <1.691503, 2.529508, 4.691903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.988563, 2.476688, 4.009325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649136, 2.687286, 3.988396>,  <1.445480, 2.813645, 3.975838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649136, 2.687286, 3.988396>,  <1.988563, 2.476688, 4.009325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.649136, 2.687286, 3.988396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428410, 0.625694, -0.651899,
		-0.310484, -0.575595, -0.756499,
		-0.848566, 0.526496, -0.052323,
		1.394566, 2.845235, 3.972699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.844234, 2.504311, 3.320268>,  <1.988563, 2.476688, 4.009325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.844234, 2.504311, 3.320268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633706, 2.814804, 3.459091>,  <1.507389, 3.001100, 3.542385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633706, 2.814804, 3.459091>,  <1.844234, 2.504311, 3.320268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.633706, 2.814804, 3.459091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327730, 0.561823, -0.759571,
		-0.784589, -0.286036, -0.550094,
		-0.526320, 0.776233, 0.347058,
		1.475809, 3.047674, 3.563209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.685026, 2.918840, 2.688792>,  <1.844234, 2.504311, 3.320268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.685026, 2.918840, 2.688792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642557, 3.173462, 2.994347>,  <1.617076, 3.326235, 3.177680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642557, 3.173462, 2.994347>,  <1.685026, 2.918840, 2.688792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.642557, 3.173462, 2.994347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541303, 0.681421, -0.492601,
		-0.834097, 0.361196, -0.416917,
		-0.106171, 0.636556, 0.763888,
		1.610706, 3.364429, 3.223513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.414806, 3.442867, 2.410658>,  <1.685026, 2.918840, 2.688792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.414806, 3.442867, 2.410658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.558994, 3.619202, 2.739468>,  <1.645507, 3.725003, 2.936754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.558994, 3.619202, 2.739468>,  <1.414806, 3.442867, 2.410658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.558994, 3.619202, 2.739468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573412, 0.590356, -0.568048,
		-0.735704, 0.676123, -0.039976,
		0.360470, 0.440838, 0.822024,
		1.667135, 3.751453, 2.986075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.360108, 4.247568, 2.303423>,  <1.414806, 3.442867, 2.410658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.360108, 4.247568, 2.303423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656822, 4.169144, 2.559959>,  <1.834850, 4.122089, 2.713881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656822, 4.169144, 2.559959>,  <1.360108, 4.247568, 2.303423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.656822, 4.169144, 2.559959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613772, 0.583855, -0.531411,
		-0.270261, 0.787829, 0.553430,
		0.741783, -0.196060, 0.641341,
		1.879357, 4.110326, 2.752362>
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
