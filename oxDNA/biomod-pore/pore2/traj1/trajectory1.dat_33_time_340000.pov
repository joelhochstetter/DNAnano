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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.823994, 17.262100, -0.948422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.200573, 17.366676, -1.033585>,  <23.426519, 17.429422, -1.084682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.200573, 17.366676, -1.033585>,  <22.823994, 17.262100, -0.948422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.200573, 17.366676, -1.033585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179403, 0.146217, 0.972849,
		0.285470, -0.954081, 0.090753,
		0.941446, 0.261438, -0.212906,
		23.483007, 17.445108, -1.097457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467363, 17.816479, -0.917444>,  <22.823994, 17.262100, -0.948422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467363, 17.816479, -0.917444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.468418, 18.160580, -1.121390>,  <22.469051, 18.367041, -1.243757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.468418, 18.160580, -1.121390>,  <22.467363, 17.816479, -0.917444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.468418, 18.160580, -1.121390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087057, 0.508127, 0.856871,
		0.996200, 0.042127, 0.076231,
		0.002638, 0.860251, -0.509863,
		22.469210, 18.418655, -1.274349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.085005, 18.218662, -0.975352>,  <22.467363, 17.816479, -0.917444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.085005, 18.218662, -0.975352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730652, 18.403641, -0.960618>,  <22.518040, 18.514627, -0.951778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730652, 18.403641, -0.960618>,  <23.085005, 18.218662, -0.975352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730652, 18.403641, -0.960618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189687, 0.288624, 0.938464,
		0.423356, 0.838356, -0.343407,
		-0.885883, 0.462444, 0.036834,
		22.464888, 18.542374, -0.949568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158342, 18.340218, -0.416423>,  <23.085005, 18.218662, -0.975352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158342, 18.340218, -0.416423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.812668, 18.520290, -0.506330>,  <22.605263, 18.628334, -0.560275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.812668, 18.520290, -0.506330>,  <23.158342, 18.340218, -0.416423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.812668, 18.520290, -0.506330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071658, 0.332038, 0.940540,
		0.498047, 0.828906, -0.254683,
		-0.864184, 0.450184, -0.224768,
		22.553413, 18.655346, -0.573761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.164440, 19.095404, -0.508685>,  <23.158342, 18.340218, -0.416423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.164440, 19.095404, -0.508685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.811745, 18.982430, -0.357547>,  <22.600128, 18.914644, -0.266864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.811745, 18.982430, -0.357547>,  <23.164440, 19.095404, -0.508685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.811745, 18.982430, -0.357547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090045, 0.685472, 0.722510,
		-0.463066, 0.671088, -0.578974,
		-0.881738, -0.282436, 0.377847,
		22.547224, 18.897699, -0.244193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807018, 19.721035, -0.547700>,  <23.164440, 19.095404, -0.508685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807018, 19.721035, -0.547700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.795483, 19.444115, -0.259287>,  <22.788561, 19.277962, -0.086240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.795483, 19.444115, -0.259287>,  <22.807018, 19.721035, -0.547700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.795483, 19.444115, -0.259287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446696, 0.636373, 0.628881,
		-0.894221, 0.340219, 0.290896,
		-0.028839, -0.692301, 0.721032,
		22.786831, 19.236423, -0.042978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.642572, 20.055229, 0.107560>,  <22.807018, 19.721035, -0.547700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.642572, 20.055229, 0.107560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.828671, 19.707874, 0.176200>,  <22.940329, 19.499460, 0.217384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.828671, 19.707874, 0.176200>,  <22.642572, 20.055229, 0.107560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.828671, 19.707874, 0.176200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614871, 0.456498, 0.643073,
		-0.636773, -0.193676, 0.746331,
		0.465246, -0.868389, 0.171600,
		22.968245, 19.447357, 0.227680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659769, 19.989643, 0.821087>,  <22.642572, 20.055229, 0.107560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659769, 19.989643, 0.821087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971054, 19.796429, 0.660556>,  <23.157825, 19.680500, 0.564238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971054, 19.796429, 0.660556>,  <22.659769, 19.989643, 0.821087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971054, 19.796429, 0.660556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619189, 0.483481, 0.618751,
		-0.104845, -0.730016, 0.675340,
		0.778212, -0.483036, -0.401327,
		23.204517, 19.651518, 0.540158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.219110, 19.393770, 0.865535>,  <22.659769, 19.989643, 0.821087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.219110, 19.393770, 0.865535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.617321, 19.377419, 0.831464>,  <22.856247, 19.367607, 0.811021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.617321, 19.377419, 0.831464>,  <22.219110, 19.393770, 0.865535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.617321, 19.377419, 0.831464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086633, 0.754687, 0.650341,
		0.037699, -0.654811, 0.754852,
		0.995527, -0.040878, -0.085179,
		22.915979, 19.365154, 0.805910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.414612, 19.450153, 1.587976>,  <22.219110, 19.393770, 0.865535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.414612, 19.450153, 1.587976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703171, 19.545589, 1.327926>,  <22.876307, 19.602850, 1.171896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703171, 19.545589, 1.327926>,  <22.414612, 19.450153, 1.587976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.703171, 19.545589, 1.327926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205885, 0.822443, 0.530282,
		0.661211, -0.516394, 0.544184,
		0.721395, 0.238589, -0.650126,
		22.919590, 19.617167, 1.132888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160246, 19.328157, 1.913905>,  <22.414612, 19.450153, 1.587976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160246, 19.328157, 1.913905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.092770, 19.605743, 1.633918>,  <23.052284, 19.772295, 1.465926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.092770, 19.605743, 1.633918>,  <23.160246, 19.328157, 1.913905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.092770, 19.605743, 1.633918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184459, 0.719824, 0.669200,
		0.968256, -0.016229, -0.249435,
		-0.168689, 0.693967, -0.699967,
		23.042164, 19.813934, 1.423928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.735470, 19.738625, 1.882992>,  <23.160246, 19.328157, 1.913905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.735470, 19.738625, 1.882992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.404705, 19.930874, 1.766222>,  <23.206245, 20.046223, 1.696160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.404705, 19.930874, 1.766222>,  <23.735470, 19.738625, 1.882992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.404705, 19.930874, 1.766222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130954, 0.669447, 0.731226,
		0.546871, 0.566431, -0.616513,
		-0.826912, 0.480621, -0.291925,
		23.156631, 20.075060, 1.678645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839325, 20.250389, 2.289863>,  <23.735470, 19.738625, 1.882992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839325, 20.250389, 2.289863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476997, 20.314442, 2.132970>,  <23.259600, 20.352873, 2.038834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476997, 20.314442, 2.132970>,  <23.839325, 20.250389, 2.289863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476997, 20.314442, 2.132970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182405, 0.688206, 0.702211,
		0.382384, 0.707623, -0.594182,
		-0.905820, 0.160133, -0.392233,
		23.205252, 20.362482, 2.015300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.683180, 20.875725, 2.024135>,  <23.839325, 20.250389, 2.289863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.683180, 20.875725, 2.024135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.324722, 20.734844, 2.132121>,  <23.109648, 20.650316, 2.196913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.324722, 20.734844, 2.132121>,  <23.683180, 20.875725, 2.024135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.324722, 20.734844, 2.132121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106954, 0.761840, 0.638874,
		-0.430682, 0.543649, -0.720388,
		-0.896144, -0.352200, 0.269965,
		23.055880, 20.629185, 2.213111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.226603, 21.425362, 1.978286>,  <23.683180, 20.875725, 2.024135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.226603, 21.425362, 1.978286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083069, 21.162998, 2.243923>,  <22.996948, 21.005581, 2.403306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.083069, 21.162998, 2.243923>,  <23.226603, 21.425362, 1.978286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.083069, 21.162998, 2.243923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273074, 0.754119, 0.597273,
		-0.892563, 0.032975, -0.449716,
		-0.358835, -0.655909, 0.664094,
		22.975418, 20.966225, 2.443151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.335489, 21.822950, 2.693847>,  <23.226603, 21.425362, 1.978286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.335489, 21.822950, 2.693847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268505, 22.001423, 2.342193>,  <23.228315, 22.108507, 2.131201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268505, 22.001423, 2.342193>,  <23.335489, 21.822950, 2.693847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268505, 22.001423, 2.342193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624503, 0.641997, 0.444787,
		0.762858, 0.623507, 0.171134,
		-0.167460, 0.446183, -0.879135,
		23.218267, 22.135279, 2.078453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.357861, 22.584766, 2.551317>,  <23.335489, 21.822950, 2.693847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.357861, 22.584766, 2.551317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050243, 22.442398, 2.338943>,  <22.865673, 22.356977, 2.211518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050243, 22.442398, 2.338943>,  <23.357861, 22.584766, 2.551317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.050243, 22.442398, 2.338943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512134, 0.840128, 0.178619,
		0.382480, 0.409276, -0.828373,
		-0.769044, -0.355920, -0.530936,
		22.819530, 22.335623, 2.179662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.100958, 23.138491, 2.111431>,  <23.357861, 22.584766, 2.551317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.100958, 23.138491, 2.111431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.814880, 22.860638, 2.142368>,  <22.643234, 22.693926, 2.160930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.814880, 22.860638, 2.142368>,  <23.100958, 23.138491, 2.111431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.814880, 22.860638, 2.142368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642703, 0.697107, 0.317764,
		-0.274646, 0.177555, -0.945010,
		-0.715194, -0.694633, 0.077343,
		22.600323, 22.652248, 2.165571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496813, 23.500399, 2.113025>,  <23.100958, 23.138491, 2.111431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496813, 23.500399, 2.113025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.368790, 23.164646, 2.288753>,  <22.291975, 22.963194, 2.394189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.368790, 23.164646, 2.288753>,  <22.496813, 23.500399, 2.113025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.368790, 23.164646, 2.288753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653771, 0.531290, 0.538808,
		-0.685671, -0.114763, -0.718807,
		-0.320060, -0.839381, 0.439319,
		22.272772, 22.912832, 2.420548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752352, 23.673271, 2.173972>,  <22.496813, 23.500399, 2.113025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752352, 23.673271, 2.173972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908413, 23.412380, 2.433936>,  <22.002050, 23.255846, 2.589914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908413, 23.412380, 2.433936>,  <21.752352, 23.673271, 2.173972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908413, 23.412380, 2.433936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470469, 0.465534, 0.749625,
		-0.791479, -0.598231, -0.125222,
		0.390153, -0.652226, 0.649909,
		22.025459, 23.216713, 2.628909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234751, 23.378950, 2.681832>,  <21.752352, 23.673271, 2.173972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234751, 23.378950, 2.681832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597332, 23.391022, 2.850324>,  <21.814880, 23.398264, 2.951418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597332, 23.391022, 2.850324>,  <21.234751, 23.378950, 2.681832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597332, 23.391022, 2.850324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367403, 0.548170, 0.751349,
		-0.208230, -0.835822, 0.507977,
		0.906452, 0.030179, 0.421229,
		21.869268, 23.400076, 2.976692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373640, 23.771685, 3.422011>,  <21.234751, 23.378950, 2.681832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373640, 23.771685, 3.422011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153385, 23.452999, 3.322377>,  <21.021233, 23.261787, 3.262596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153385, 23.452999, 3.322377>,  <21.373640, 23.771685, 3.422011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153385, 23.452999, 3.322377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119163, -0.220318, 0.968122,
		-0.826196, 0.562766, 0.026376,
		-0.550637, -0.796715, -0.249086,
		20.988194, 23.213985, 3.247651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757158, 23.770134, 3.849304>,  <21.373640, 23.771685, 3.422011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757158, 23.770134, 3.849304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.843376, 23.394684, 3.741582>,  <20.895107, 23.169415, 3.676950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.843376, 23.394684, 3.741582>,  <20.757158, 23.770134, 3.849304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.843376, 23.394684, 3.741582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027121, -0.269925, 0.962499,
		-0.976117, -0.214766, -0.032724,
		0.215545, -0.938624, -0.269303,
		20.908039, 23.113096, 3.660791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603836, 23.292000, 4.459632>,  <20.757158, 23.770134, 3.849304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603836, 23.292000, 4.459632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.881588, 23.092251, 4.252377>,  <21.048239, 22.972403, 4.128024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.881588, 23.092251, 4.252377>,  <20.603836, 23.292000, 4.459632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881588, 23.092251, 4.252377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261928, -0.495244, 0.828328,
		-0.670248, -0.710887, -0.213087,
		0.694378, -0.499372, -0.518137,
		21.089901, 22.942440, 4.096936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649254, 22.487288, 4.597363>,  <20.603836, 23.292000, 4.459632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649254, 22.487288, 4.597363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996395, 22.590912, 4.427789>,  <21.204679, 22.653086, 4.326045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996395, 22.590912, 4.427789>,  <20.649254, 22.487288, 4.597363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.996395, 22.590912, 4.427789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479702, -0.659010, 0.579303,
		-0.129303, -0.706112, -0.696195,
		0.867852, 0.259060, -0.423935,
		21.256750, 22.668631, 4.300609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064037, 21.986315, 4.792706>,  <20.649254, 22.487288, 4.597363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064037, 21.986315, 4.792706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313091, 22.262493, 4.645406>,  <21.462524, 22.428200, 4.557027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313091, 22.262493, 4.645406>,  <21.064037, 21.986315, 4.792706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313091, 22.262493, 4.645406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764822, -0.437466, 0.472938,
		0.165443, -0.576112, -0.800452,
		0.622636, 0.690448, -0.368248,
		21.499882, 22.469627, 4.534932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455221, 21.691298, 4.339093>,  <21.064037, 21.986315, 4.792706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455221, 21.691298, 4.339093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652580, 21.990990, 4.515822>,  <21.770996, 22.170805, 4.621860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652580, 21.990990, 4.515822>,  <21.455221, 21.691298, 4.339093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652580, 21.990990, 4.515822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582234, -0.661862, 0.472168,
		0.646189, 0.024277, -0.762791,
		0.493399, 0.749233, 0.441823,
		21.800600, 22.215759, 4.648369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.249144, 21.654978, 4.263612>,  <21.455221, 21.691298, 4.339093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.249144, 21.654978, 4.263612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.136097, 21.835114, 4.602391>,  <22.068268, 21.943195, 4.805658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.136097, 21.835114, 4.602391>,  <22.249144, 21.654978, 4.263612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.136097, 21.835114, 4.602391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573873, -0.628122, 0.525483,
		0.768633, 0.634551, -0.080920,
		-0.282618, 0.450341, 0.846948,
		22.051311, 21.970217, 4.856475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.858349, 21.731218, 4.645139>,  <22.249144, 21.654978, 4.263612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.858349, 21.731218, 4.645139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621307, 21.853745, 4.943130>,  <22.479082, 21.927261, 5.121925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621307, 21.853745, 4.943130>,  <22.858349, 21.731218, 4.645139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621307, 21.853745, 4.943130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637144, -0.387599, 0.666195,
		0.492819, 0.869447, 0.034524,
		-0.592602, 0.306317, 0.744978,
		22.443527, 21.945639, 5.166624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.267523, 22.114349, 5.114722>,  <22.858349, 21.731218, 4.645139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.267523, 22.114349, 5.114722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.953251, 21.953842, 5.303059>,  <22.764688, 21.857538, 5.416060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.953251, 21.953842, 5.303059>,  <23.267523, 22.114349, 5.114722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953251, 21.953842, 5.303059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613333, -0.405836, 0.677583,
		-0.080809, 0.821146, 0.564969,
		-0.785679, -0.401269, 0.470841,
		22.717546, 21.833462, 5.444311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012897, 22.309177, 5.820430>,  <23.267523, 22.114349, 5.114722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012897, 22.309177, 5.820430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.944229, 21.917862, 5.773991>,  <22.903028, 21.683073, 5.746127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.944229, 21.917862, 5.773991>,  <23.012897, 22.309177, 5.820430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.944229, 21.917862, 5.773991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511682, -0.189249, 0.838073,
		-0.841850, 0.084467, 0.533061,
		-0.171671, -0.978289, -0.116099,
		22.892729, 21.624374, 5.739161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696285, 21.987867, 6.445772>,  <23.012897, 22.309177, 5.820430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696285, 21.987867, 6.445772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950325, 21.751991, 6.246208>,  <23.102749, 21.610466, 6.126470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.950325, 21.751991, 6.246208>,  <22.696285, 21.987867, 6.445772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.950325, 21.751991, 6.246208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511859, -0.162432, 0.843573,
		-0.578487, -0.791126, 0.198678,
		0.635101, -0.589691, -0.498910,
		23.140856, 21.575085, 6.096535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643059, 21.342760, 6.617950>,  <22.696285, 21.987867, 6.445772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643059, 21.342760, 6.617950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023354, 21.380741, 6.499910>,  <23.251530, 21.403530, 6.429086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023354, 21.380741, 6.499910>,  <22.643059, 21.342760, 6.617950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023354, 21.380741, 6.499910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298333, -0.538950, 0.787737,
		-0.084246, -0.836969, -0.540727,
		0.950736, 0.094953, -0.295100,
		23.308575, 21.409227, 6.411380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.024836, 20.640539, 6.565071>,  <22.643059, 21.342760, 6.617950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.024836, 20.640539, 6.565071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223648, 20.978207, 6.645409>,  <23.342936, 21.180807, 6.693611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223648, 20.978207, 6.645409>,  <23.024836, 20.640539, 6.565071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.223648, 20.978207, 6.645409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328006, -0.397063, 0.857177,
		0.803350, -0.360166, -0.474245,
		0.497032, 0.844169, 0.200844,
		23.372757, 21.231457, 6.705662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642712, 20.411335, 6.923783>,  <23.024836, 20.640539, 6.565071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642712, 20.411335, 6.923783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.577984, 20.799393, 6.996040>,  <23.539148, 21.032228, 7.039395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.577984, 20.799393, 6.996040>,  <23.642712, 20.411335, 6.923783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.577984, 20.799393, 6.996040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426124, -0.096415, 0.899512,
		0.890075, 0.222533, -0.397801,
		-0.161817, 0.970146, 0.180643,
		23.529438, 21.090437, 7.050233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.241816, 20.568335, 7.263427>,  <23.642712, 20.411335, 6.923783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.241816, 20.568335, 7.263427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.952503, 20.818459, 7.380628>,  <23.778915, 20.968533, 7.450948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.952503, 20.818459, 7.380628>,  <24.241816, 20.568335, 7.263427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.952503, 20.818459, 7.380628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344824, -0.040572, 0.937790,
		0.598297, 0.779321, -0.186277,
		-0.723282, 0.625310, 0.293003,
		23.735519, 21.006052, 7.468528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613283, 21.097786, 7.634138>,  <24.241816, 20.568335, 7.263427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613283, 21.097786, 7.634138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234570, 21.089817, 7.762641>,  <24.007341, 21.085035, 7.839743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234570, 21.089817, 7.762641>,  <24.613283, 21.097786, 7.634138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234570, 21.089817, 7.762641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321559, -0.014275, 0.946782,
		-0.014275, 0.999700, 0.019921,
		-0.946782, -0.019921, 0.321258,
		23.950535, 21.083841, 7.859018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683975, 21.569580, 8.233754>,  <24.613283, 21.097786, 7.634138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683975, 21.569580, 8.233754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352837, 21.345684, 8.248524>,  <24.154154, 21.211346, 8.257385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352837, 21.345684, 8.248524>,  <24.683975, 21.569580, 8.233754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352837, 21.345684, 8.248524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182377, -0.206318, 0.961338,
		-0.530481, 0.802574, 0.272883,
		-0.827846, -0.559739, 0.036923,
		24.104483, 21.177763, 8.259601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.308374, 21.853336, 8.806775>,  <24.683975, 21.569580, 8.233754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.308374, 21.853336, 8.806775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168011, 21.483845, 8.745340>,  <24.083794, 21.262150, 8.708480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168011, 21.483845, 8.745340>,  <24.308374, 21.853336, 8.806775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168011, 21.483845, 8.745340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101253, -0.125625, 0.986897,
		-0.930920, 0.361861, -0.049448,
		-0.350908, -0.923729, -0.153586,
		24.062738, 21.206726, 8.699265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.987711, 21.868525, 9.328904>,  <24.308374, 21.853336, 8.806775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.987711, 21.868525, 9.328904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946323, 21.484486, 9.224977>,  <23.921492, 21.254063, 9.162621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946323, 21.484486, 9.224977>,  <23.987711, 21.868525, 9.328904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.946323, 21.484486, 9.224977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103930, -0.249352, 0.962820,
		-0.989188, 0.126624, -0.073983,
		-0.103468, -0.960099, -0.259816,
		23.915283, 21.196455, 9.147033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.464607, 21.644903, 9.662289>,  <23.987711, 21.868525, 9.328904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.464607, 21.644903, 9.662289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.649986, 21.305431, 9.560340>,  <23.761213, 21.101748, 9.499170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.649986, 21.305431, 9.560340>,  <23.464607, 21.644903, 9.662289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.649986, 21.305431, 9.560340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098204, -0.335045, 0.937071,
		-0.880666, -0.409254, -0.238620,
		0.463448, -0.848679, -0.254872,
		23.789021, 21.050827, 9.483878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.082945, 21.117311, 9.920064>,  <23.464607, 21.644903, 9.662289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.082945, 21.117311, 9.920064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432728, 20.931950, 9.862679>,  <23.642597, 20.820732, 9.828249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432728, 20.931950, 9.862679>,  <23.082945, 21.117311, 9.920064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432728, 20.931950, 9.862679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063533, -0.402588, 0.913174,
		-0.480926, -0.789416, -0.381487,
		0.874456, -0.463406, -0.143461,
		23.695065, 20.792929, 9.819641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922365, 20.437498, 10.055235>,  <23.082945, 21.117311, 9.920064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922365, 20.437498, 10.055235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.320126, 20.458763, 10.091767>,  <23.558783, 20.471521, 10.113687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.320126, 20.458763, 10.091767>,  <22.922365, 20.437498, 10.055235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.320126, 20.458763, 10.091767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034111, -0.656509, 0.753547,
		0.100020, -0.752443, -0.651019,
		0.994401, 0.053163, 0.091330,
		23.618446, 20.474712, 10.119166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.228338, 19.677261, 10.252164>,  <22.922365, 20.437498, 10.055235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.228338, 19.677261, 10.252164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465134, 19.971661, 10.383529>,  <23.607210, 20.148300, 10.462348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465134, 19.971661, 10.383529>,  <23.228338, 19.677261, 10.252164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465134, 19.971661, 10.383529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109240, -0.477001, 0.872088,
		0.798510, -0.480389, -0.362779,
		0.591987, 0.736000, 0.328413,
		23.642731, 20.192461, 10.482053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790653, 19.315269, 10.602945>,  <23.228338, 19.677261, 10.252164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790653, 19.315269, 10.602945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.792431, 19.694035, 10.731527>,  <23.793497, 19.921293, 10.808677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.792431, 19.694035, 10.731527>,  <23.790653, 19.315269, 10.602945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.792431, 19.694035, 10.731527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092614, -0.320465, 0.942722,
		0.995692, 0.025583, -0.089121,
		0.004443, 0.946915, 0.321454,
		23.793764, 19.978109, 10.827964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219456, 19.350157, 11.313626>,  <23.790653, 19.315269, 10.602945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219456, 19.350157, 11.313626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.997055, 19.682499, 11.322908>,  <23.863615, 19.881905, 11.328478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.997055, 19.682499, 11.322908>,  <24.219456, 19.350157, 11.313626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997055, 19.682499, 11.322908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069147, -0.074059, 0.994854,
		0.828300, 0.551535, 0.098628,
		-0.556001, 0.830858, 0.023206,
		23.830256, 19.931757, 11.329870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478132, 19.723848, 11.858377>,  <24.219456, 19.350157, 11.313626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478132, 19.723848, 11.858377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130596, 19.913540, 11.801494>,  <23.922075, 20.027355, 11.767364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130596, 19.913540, 11.801494>,  <24.478132, 19.723848, 11.858377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130596, 19.913540, 11.801494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084540, 0.140909, 0.986406,
		0.487823, 0.869051, -0.082336,
		-0.868839, 0.474231, -0.142209,
		23.869944, 20.055809, 11.758831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543262, 20.373688, 12.108507>,  <24.478132, 19.723848, 11.858377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543262, 20.373688, 12.108507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150780, 20.296768, 12.102111>,  <23.915291, 20.250616, 12.098273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150780, 20.296768, 12.102111>,  <24.543262, 20.373688, 12.108507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150780, 20.296768, 12.102111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053279, 0.190345, 0.980271,
		-0.185461, 0.962700, -0.197013,
		-0.981206, -0.192298, -0.015990,
		23.856419, 20.239079, 12.097314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.277649, 20.917181, 12.562732>,  <24.543262, 20.373688, 12.108507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.277649, 20.917181, 12.562732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.982227, 20.647602, 12.555369>,  <23.804976, 20.485855, 12.550952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.982227, 20.647602, 12.555369>,  <24.277649, 20.917181, 12.562732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.982227, 20.647602, 12.555369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265227, 0.265336, 0.926958,
		-0.619835, 0.689489, -0.374713,
		-0.738552, -0.673945, -0.018407,
		23.760662, 20.445419, 12.549848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.844460, 21.271931, 12.842000>,  <24.277649, 20.917181, 12.562732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.844460, 21.271931, 12.842000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.686195, 20.905064, 12.861003>,  <23.591238, 20.684944, 12.872404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.686195, 20.905064, 12.861003>,  <23.844460, 21.271931, 12.842000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.686195, 20.905064, 12.861003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291327, 0.174396, 0.940593,
		-0.870966, 0.358314, -0.336197,
		-0.395659, -0.917168, 0.047506,
		23.567497, 20.629913, 12.875255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.134428, 21.344019, 13.229887>,  <23.844460, 21.271931, 12.842000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.134428, 21.344019, 13.229887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.242947, 20.960941, 13.268295>,  <23.308058, 20.731094, 13.291341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.242947, 20.960941, 13.268295>,  <23.134428, 21.344019, 13.229887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.242947, 20.960941, 13.268295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437759, -0.033926, 0.898452,
		-0.857185, -0.285780, -0.428443,
		0.271295, -0.957694, 0.096022,
		23.324335, 20.673634, 13.297102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.584002, 21.040075, 13.585884>,  <23.134428, 21.344019, 13.229887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.584002, 21.040075, 13.585884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892612, 20.791752, 13.641518>,  <23.077778, 20.642757, 13.674898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.892612, 20.791752, 13.641518>,  <22.584002, 21.040075, 13.585884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.892612, 20.791752, 13.641518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267262, -0.117880, 0.956387,
		-0.577338, -0.775049, -0.256866,
		0.771526, -0.620809, 0.139084,
		23.124069, 20.605509, 13.683243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.197708, 20.419855, 13.883810>,  <22.584002, 21.040075, 13.585884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.197708, 20.419855, 13.883810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586922, 20.409397, 13.975483>,  <22.820450, 20.403122, 14.030487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586922, 20.409397, 13.975483>,  <22.197708, 20.419855, 13.883810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.586922, 20.409397, 13.975483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230228, -0.048669, 0.971919,
		-0.014250, -0.998473, -0.053375,
		0.973032, -0.026138, 0.229183,
		22.878832, 20.401554, 14.044238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.329887, 19.872177, 14.427989>,  <22.197708, 20.419855, 13.883810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.329887, 19.872177, 14.427989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.670414, 20.075565, 14.479708>,  <22.874729, 20.197599, 14.510739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.670414, 20.075565, 14.479708>,  <22.329887, 19.872177, 14.427989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.670414, 20.075565, 14.479708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095982, -0.091346, 0.991183,
		0.515801, -0.856219, -0.028960,
		0.851315, 0.508473, 0.129298,
		22.925808, 20.228107, 14.518497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.774223, 19.551107, 14.876655>,  <22.329887, 19.872177, 14.427989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.774223, 19.551107, 14.876655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908985, 19.927448, 14.891008>,  <22.989843, 20.153254, 14.899621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908985, 19.927448, 14.891008>,  <22.774223, 19.551107, 14.876655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908985, 19.927448, 14.891008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096572, -0.003381, 0.995320,
		0.936572, -0.338795, 0.089721,
		0.336906, 0.940854, 0.035885,
		23.010057, 20.209705, 14.901773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427389, 19.575422, 15.257386>,  <22.774223, 19.551107, 14.876655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427389, 19.575422, 15.257386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.269573, 19.942444, 15.277134>,  <23.174885, 20.162657, 15.288982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.269573, 19.942444, 15.277134>,  <23.427389, 19.575422, 15.257386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.269573, 19.942444, 15.277134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095753, -0.012383, 0.995328,
		0.913877, 0.397422, -0.082973,
		-0.394538, 0.917552, 0.049371,
		23.151213, 20.217710, 15.291945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.829271, 20.032713, 15.798926>,  <23.427389, 19.575422, 15.257386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.829271, 20.032713, 15.798926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.491707, 20.242050, 15.751732>,  <23.289167, 20.367653, 15.723415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.491707, 20.242050, 15.751732>,  <23.829271, 20.032713, 15.798926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.491707, 20.242050, 15.751732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077561, 0.098596, 0.992100,
		0.530844, 0.846398, -0.042615,
		-0.843913, 0.523345, -0.117987,
		23.238533, 20.399054, 15.716336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935780, 20.703547, 16.158575>,  <23.829271, 20.032713, 15.798926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935780, 20.703547, 16.158575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.537140, 20.706455, 16.125753>,  <23.297956, 20.708200, 16.106060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.537140, 20.706455, 16.125753>,  <23.935780, 20.703547, 16.158575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.537140, 20.706455, 16.125753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071948, 0.408300, 0.910008,
		0.040119, 0.912819, -0.406389,
		-0.996601, 0.007270, -0.082056,
		23.238159, 20.708635, 16.101137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.682404, 21.345528, 16.495316>,  <23.935780, 20.703547, 16.158575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.682404, 21.345528, 16.495316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359200, 21.110298, 16.480965>,  <23.165277, 20.969160, 16.472355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.359200, 21.110298, 16.480965>,  <23.682404, 21.345528, 16.495316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359200, 21.110298, 16.480965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051346, 0.009625, 0.998634,
		-0.586928, 0.808748, -0.037973,
		-0.808010, -0.588076, -0.035877,
		23.116796, 20.933876, 16.470201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119419, 21.539570, 16.970724>,  <23.682404, 21.345528, 16.495316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119419, 21.539570, 16.970724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006165, 21.159557, 16.918154>,  <22.938211, 20.931549, 16.886612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006165, 21.159557, 16.918154>,  <23.119419, 21.539570, 16.970724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006165, 21.159557, 16.918154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102876, -0.106158, 0.989013,
		-0.953546, 0.293546, -0.067678,
		-0.283137, -0.950032, -0.131426,
		22.921223, 20.874548, 16.878727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.498346, 21.601845, 17.191595>,  <23.119419, 21.539570, 16.970724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.498346, 21.601845, 17.191595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.570530, 21.208672, 17.205915>,  <22.613840, 20.972769, 17.214508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.570530, 21.208672, 17.205915>,  <22.498346, 21.601845, 17.191595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.570530, 21.208672, 17.205915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140342, 0.010294, 0.990050,
		-0.973519, -0.183687, -0.136088,
		0.180459, -0.982931, 0.035801,
		22.624668, 20.913792, 17.216656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058855, 21.305645, 17.654718>,  <22.498346, 21.601845, 17.191595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058855, 21.305645, 17.654718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.338161, 21.020473, 17.628931>,  <22.505745, 20.849371, 17.613459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.338161, 21.020473, 17.628931>,  <22.058855, 21.305645, 17.654718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.338161, 21.020473, 17.628931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117491, -0.202980, 0.972109,
		-0.706133, -0.671214, -0.225497,
		0.698264, -0.712931, -0.064469,
		22.547640, 20.806595, 17.609591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748095, 20.635872, 17.868711>,  <22.058855, 21.305645, 17.654718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748095, 20.635872, 17.868711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142071, 20.660763, 17.933235>,  <22.378456, 20.675697, 17.971949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142071, 20.660763, 17.933235>,  <21.748095, 20.635872, 17.868711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142071, 20.660763, 17.933235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152120, -0.131521, 0.979572,
		0.082170, -0.989359, -0.120074,
		0.984940, 0.062226, 0.161309,
		22.437553, 20.679430, 17.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.862230, 20.205711, 18.381201>,  <21.748095, 20.635872, 17.868711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.862230, 20.205711, 18.381201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198997, 20.420692, 18.400450>,  <22.401058, 20.549681, 18.411999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198997, 20.420692, 18.400450>,  <21.862230, 20.205711, 18.381201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198997, 20.420692, 18.400450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109049, 0.082129, 0.990638,
		0.528469, -0.839285, 0.127755,
		0.841920, 0.537453, 0.048120,
		22.451574, 20.581928, 18.414886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213541, 19.919262, 18.936811>,  <21.862230, 20.205711, 18.381201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213541, 19.919262, 18.936811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.342106, 20.295803, 18.895721>,  <22.419245, 20.521727, 18.871067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.342106, 20.295803, 18.895721>,  <22.213541, 19.919262, 18.936811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342106, 20.295803, 18.895721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253093, 0.189932, 0.948615,
		0.912489, -0.278900, 0.299296,
		0.321414, 0.941350, -0.102723,
		22.438530, 20.578209, 18.864904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659428, 20.068050, 19.474957>,  <22.213541, 19.919262, 18.936811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659428, 20.068050, 19.474957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541992, 20.432930, 19.360622>,  <22.471531, 20.651857, 19.292023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541992, 20.432930, 19.360622>,  <22.659428, 20.068050, 19.474957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.541992, 20.432930, 19.360622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243173, 0.217909, 0.945189,
		0.924485, 0.347004, 0.157846,
		-0.293588, 0.912197, -0.285835,
		22.453917, 20.706589, 19.274872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.853521, 20.506302, 20.055246>,  <22.659428, 20.068050, 19.474957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.853521, 20.506302, 20.055246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.591587, 20.735268, 19.857851>,  <22.434427, 20.872646, 19.739414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.591587, 20.735268, 19.857851>,  <22.853521, 20.506302, 20.055246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.591587, 20.735268, 19.857851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533321, 0.112667, 0.838376,
		0.535498, 0.812187, 0.231501,
		-0.654836, 0.572414, -0.493490,
		22.395136, 20.906992, 19.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704670, 21.008053, 20.556206>,  <22.853521, 20.506302, 20.055246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704670, 21.008053, 20.556206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417057, 21.026596, 20.278835>,  <22.244490, 21.037722, 20.112413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417057, 21.026596, 20.278835>,  <22.704670, 21.008053, 20.556206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417057, 21.026596, 20.278835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675162, 0.189958, 0.712792,
		0.164767, 0.980697, -0.105285,
		-0.719033, 0.046360, -0.693428,
		22.201347, 21.040504, 20.070807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.265308, 21.663176, 20.705118>,  <22.704670, 21.008053, 20.556206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.265308, 21.663176, 20.705118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053020, 21.416031, 20.473055>,  <21.925648, 21.267744, 20.333817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.053020, 21.416031, 20.473055>,  <22.265308, 21.663176, 20.705118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053020, 21.416031, 20.473055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732138, -0.010637, 0.681073,
		-0.426981, 0.786214, -0.446715,
		-0.530718, -0.617863, -0.580159,
		21.893805, 21.230673, 20.299007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.589460, 21.868271, 20.852631>,  <22.265308, 21.663176, 20.705118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.589460, 21.868271, 20.852631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.543976, 21.515675, 20.669308>,  <21.516685, 21.304117, 20.559313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.543976, 21.515675, 20.669308>,  <21.589460, 21.868271, 20.852631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543976, 21.515675, 20.669308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841585, -0.159704, 0.515975,
		-0.528020, 0.444378, -0.723687,
		-0.113712, -0.881489, -0.458309,
		21.509863, 21.251228, 20.531815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.949902, 21.838127, 20.491648>,  <21.589460, 21.868271, 20.852631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.949902, 21.838127, 20.491648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056381, 21.468639, 20.601833>,  <21.120270, 21.246946, 20.667944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056381, 21.468639, 20.601833>,  <20.949902, 21.838127, 20.491648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056381, 21.468639, 20.601833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684984, 0.019783, 0.728290,
		-0.678185, -0.382558, -0.627467,
		0.266200, -0.923720, 0.275463,
		21.136242, 21.191525, 20.684473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346645, 21.436630, 20.652840>,  <20.949902, 21.838127, 20.491648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346645, 21.436630, 20.652840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622768, 21.219215, 20.843855>,  <20.788443, 21.088766, 20.958464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622768, 21.219215, 20.843855>,  <20.346645, 21.436630, 20.652840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622768, 21.219215, 20.843855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637315, -0.144361, 0.756961,
		-0.342502, -0.826875, -0.446060,
		0.690306, -0.543541, 0.477536,
		20.829861, 21.056154, 20.987116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959044, 21.040140, 20.981585>,  <20.346645, 21.436630, 20.652840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959044, 21.040140, 20.981585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307587, 21.005768, 21.174810>,  <20.516712, 20.985144, 21.290745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307587, 21.005768, 21.174810>,  <19.959044, 21.040140, 20.981585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307587, 21.005768, 21.174810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488370, -0.057166, 0.870762,
		-0.047150, -0.994666, -0.091745,
		0.871362, -0.085862, 0.483070,
		20.568995, 20.979988, 21.319729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.869513, 20.510925, 21.456581>,  <19.959044, 21.040140, 20.981585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.869513, 20.510925, 21.456581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.181122, 20.721973, 21.592073>,  <20.368088, 20.848602, 21.673368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.181122, 20.721973, 21.592073>,  <19.869513, 20.510925, 21.456581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181122, 20.721973, 21.592073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308742, -0.147401, 0.939655,
		0.545710, -0.836594, 0.048069,
		0.779025, 0.527620, 0.338730,
		20.414829, 20.880259, 21.693693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123003, 20.209080, 22.017475>,  <19.869513, 20.510925, 21.456581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123003, 20.209080, 22.017475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.233215, 20.588654, 22.078932>,  <20.299343, 20.816399, 22.115805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.233215, 20.588654, 22.078932>,  <20.123003, 20.209080, 22.017475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233215, 20.588654, 22.078932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473525, -0.005111, 0.880766,
		0.836575, -0.315429, 0.447936,
		0.275530, 0.948935, 0.153640,
		20.315874, 20.873335, 22.125023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256102, 20.185200, 22.704073>,  <20.123003, 20.209080, 22.017475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256102, 20.185200, 22.704073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.268730, 20.578129, 22.630264>,  <20.276308, 20.813887, 22.585979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.268730, 20.578129, 22.630264>,  <20.256102, 20.185200, 22.704073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.268730, 20.578129, 22.630264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421178, 0.180497, 0.888836,
		0.906428, 0.049654, 0.419430,
		0.031572, 0.982321, -0.184520,
		20.278202, 20.872826, 22.574907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497374, 20.427155, 23.348486>,  <20.256102, 20.185200, 22.704073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497374, 20.427155, 23.348486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.289230, 20.700199, 23.143248>,  <20.164345, 20.864027, 23.020105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.289230, 20.700199, 23.143248>,  <20.497374, 20.427155, 23.348486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.289230, 20.700199, 23.143248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576045, 0.162966, 0.801008,
		0.630396, 0.712377, 0.308415,
		-0.520358, 0.682613, -0.513095,
		20.133123, 20.904984, 22.989319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.367027, 21.128935, 23.773432>,  <20.497374, 20.427155, 23.348486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.367027, 21.128935, 23.773432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085175, 21.047291, 23.501598>,  <19.916063, 20.998304, 23.338499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085175, 21.047291, 23.501598>,  <20.367027, 21.128935, 23.773432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085175, 21.047291, 23.501598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700776, 0.049826, 0.711640,
		-0.111394, 0.977679, -0.178146,
		-0.704631, -0.204112, -0.679583,
		19.873785, 20.986057, 23.297724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752010, 21.672102, 23.871605>,  <20.367027, 21.128935, 23.773432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752010, 21.672102, 23.871605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686016, 21.311871, 23.710741>,  <19.646420, 21.095732, 23.614222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686016, 21.311871, 23.710741>,  <19.752010, 21.672102, 23.871605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686016, 21.311871, 23.710741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827217, -0.095701, 0.553673,
		-0.537115, 0.424024, -0.729186,
		-0.164987, -0.900581, -0.402162,
		19.636520, 21.041697, 23.590092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025850, 21.531830, 23.800369>,  <19.752010, 21.672102, 23.871605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025850, 21.531830, 23.800369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141914, 21.158745, 23.714712>,  <19.211554, 20.934895, 23.663319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141914, 21.158745, 23.714712>,  <19.025850, 21.531830, 23.800369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141914, 21.158745, 23.714712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729355, -0.360407, 0.581506,
		-0.619555, -0.012545, -0.784853,
		0.290161, -0.932711, -0.214142,
		19.228962, 20.878931, 23.650469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529219, 21.097574, 23.624292>,  <19.025850, 21.531830, 23.800369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529219, 21.097574, 23.624292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800941, 20.868694, 23.808086>,  <18.963976, 20.731367, 23.918364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800941, 20.868694, 23.808086>,  <18.529219, 21.097574, 23.624292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800941, 20.868694, 23.808086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717658, -0.387171, 0.578848,
		-0.153317, -0.722970, -0.673653,
		0.679309, -0.572200, 0.459486,
		19.004734, 20.697035, 23.945932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.338202, 20.340305, 23.585154>,  <18.529219, 21.097574, 23.624292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.338202, 20.340305, 23.585154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.592140, 20.321209, 23.893620>,  <18.744503, 20.309752, 24.078699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.592140, 20.321209, 23.893620>,  <18.338202, 20.340305, 23.585154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.592140, 20.321209, 23.893620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606028, -0.649888, 0.458668,
		0.479272, -0.758529, -0.441511,
		0.634845, -0.047741, 0.771163,
		18.782595, 20.306887, 24.124968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506855, 19.765509, 23.312307>,  <18.338202, 20.340305, 23.585154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506855, 19.765509, 23.312307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543396, 19.428349, 23.524410>,  <18.565321, 19.226053, 23.651672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543396, 19.428349, 23.524410>,  <18.506855, 19.765509, 23.312307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543396, 19.428349, 23.524410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100461, 0.537570, 0.837213,
		-0.990738, -0.023213, 0.133788,
		0.091354, -0.842900, 0.530259,
		18.570803, 19.175478, 23.683489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726429, 19.685900, 22.682840>,  <18.506855, 19.765509, 23.312307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726429, 19.685900, 22.682840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665691, 20.019489, 22.895042>,  <18.629248, 20.219643, 23.022364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665691, 20.019489, 22.895042>,  <18.726429, 19.685900, 22.682840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665691, 20.019489, 22.895042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415013, 0.540917, -0.731555,
		-0.897054, 0.109083, -0.428245,
		-0.151845, 0.833972, 0.530503,
		18.620138, 20.269680, 23.054193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.038906, 20.416363, 22.519590>,  <18.726429, 19.685900, 22.682840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.038906, 20.416363, 22.519590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294250, 20.594364, 22.770817>,  <19.447458, 20.701164, 22.921553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294250, 20.594364, 22.770817>,  <19.038906, 20.416363, 22.519590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294250, 20.594364, 22.770817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761390, -0.245221, -0.600126,
		-0.113042, 0.861302, -0.495360,
		0.638363, 0.445002, 0.628066,
		19.485760, 20.727865, 22.959236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627428, 21.007921, 22.207243>,  <19.038906, 20.416363, 22.519590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627428, 21.007921, 22.207243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499180, 21.313236, 22.431599>,  <18.422232, 21.496426, 22.566212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499180, 21.313236, 22.431599>,  <18.627428, 21.007921, 22.207243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499180, 21.313236, 22.431599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044370, 0.603604, -0.796049,
		-0.946168, -0.230343, -0.227394,
		-0.320621, 0.763286, 0.560890,
		18.402994, 21.542221, 22.599865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048956, 21.350939, 21.823046>,  <18.627428, 21.007921, 22.207243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048956, 21.350939, 21.823046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.249058, 21.589176, 22.074448>,  <18.369118, 21.732119, 22.225288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.249058, 21.589176, 22.074448>,  <18.048956, 21.350939, 21.823046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249058, 21.589176, 22.074448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052933, 0.703463, -0.708758,
		-0.864260, 0.387827, 0.320383,
		0.500253, 0.595592, 0.628504,
		18.399134, 21.767855, 22.262999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687988, 21.941441, 21.739370>,  <18.048956, 21.350939, 21.823046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687988, 21.941441, 21.739370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059826, 22.005909, 21.871964>,  <18.282928, 22.044590, 21.951519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059826, 22.005909, 21.871964>,  <17.687988, 21.941441, 21.739370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059826, 22.005909, 21.871964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098841, 0.757387, -0.645442,
		-0.355087, 0.632763, 0.688131,
		0.929593, 0.161172, 0.331481,
		18.338703, 22.054260, 21.971407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749407, 22.661732, 21.730127>,  <17.687988, 21.941441, 21.739370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.749407, 22.661732, 21.730127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126419, 22.529709, 21.709364>,  <18.352627, 22.450495, 21.696905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.126419, 22.529709, 21.709364>,  <17.749407, 22.661732, 21.730127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126419, 22.529709, 21.709364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173666, 0.616690, -0.767811,
		0.285433, 0.714672, 0.638570,
		0.942533, -0.330057, -0.051910,
		18.409180, 22.430693, 21.693790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063934, 23.285456, 21.787060>,  <17.749407, 22.661732, 21.730127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063934, 23.285456, 21.787060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286980, 23.010395, 21.601070>,  <18.420807, 22.845358, 21.489477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286980, 23.010395, 21.601070>,  <18.063934, 23.285456, 21.787060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.286980, 23.010395, 21.601070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246045, 0.671886, -0.698592,
		0.792799, 0.275139, 0.543846,
		0.557613, -0.687654, -0.464974,
		18.454264, 22.804098, 21.461578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558210, 23.628359, 21.577774>,  <18.063934, 23.285456, 21.787060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558210, 23.628359, 21.577774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.598774, 23.307503, 21.342390>,  <18.623112, 23.114988, 21.201160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.598774, 23.307503, 21.342390>,  <18.558210, 23.628359, 21.577774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598774, 23.307503, 21.342390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151263, 0.597063, -0.787804,
		0.983278, -0.009123, 0.181881,
		0.101408, -0.802143, -0.588459,
		18.629196, 23.066860, 21.165852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208292, 23.663635, 21.116999>,  <18.558210, 23.628359, 21.577774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208292, 23.663635, 21.116999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.936165, 23.427357, 20.943449>,  <18.772888, 23.285589, 20.839319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.936165, 23.427357, 20.943449>,  <19.208292, 23.663635, 21.116999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.936165, 23.427357, 20.943449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215759, 0.404338, -0.888796,
		0.700440, -0.698276, -0.147631,
		-0.680318, -0.590696, -0.433874,
		18.732069, 23.250149, 20.813288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472269, 23.579157, 20.422615>,  <19.208292, 23.663635, 21.116999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472269, 23.579157, 20.422615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.099407, 23.439480, 20.384352>,  <18.875690, 23.355673, 20.361393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.099407, 23.439480, 20.384352>,  <19.472269, 23.579157, 20.422615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099407, 23.439480, 20.384352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002913, 0.256966, -0.966416,
		0.362048, -0.901128, -0.238515,
		-0.932155, -0.349195, -0.095660,
		18.819761, 23.334723, 20.355654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441940, 23.330469, 19.722649>,  <19.472269, 23.579157, 20.422615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.441940, 23.330469, 19.722649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057148, 23.359589, 19.827940>,  <18.826271, 23.377060, 19.891115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057148, 23.359589, 19.827940>,  <19.441940, 23.330469, 19.722649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057148, 23.359589, 19.827940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246911, 0.180090, -0.952157,
		-0.116719, -0.980953, -0.155269,
		-0.961983, 0.072797, 0.263228,
		18.768553, 23.381428, 19.906908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042511, 22.850574, 19.357365>,  <19.441940, 23.330469, 19.722649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042511, 22.850574, 19.357365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800636, 23.153885, 19.454826>,  <18.655512, 23.335871, 19.513304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800636, 23.153885, 19.454826>,  <19.042511, 22.850574, 19.357365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800636, 23.153885, 19.454826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395261, -0.020113, -0.918348,
		-0.691462, -0.651622, 0.311879,
		-0.604689, 0.758277, 0.243654,
		18.619230, 23.381369, 19.527922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423754, 22.622225, 19.036171>,  <19.042511, 22.850574, 19.357365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423754, 22.622225, 19.036171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.348911, 23.006458, 19.118410>,  <18.304007, 23.236998, 19.167753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.348911, 23.006458, 19.118410>,  <18.423754, 22.622225, 19.036171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348911, 23.006458, 19.118410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362721, 0.126948, -0.923210,
		-0.912921, -0.247311, 0.324672,
		-0.187104, 0.960584, 0.205598,
		18.292780, 23.294634, 19.180090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767136, 22.792461, 18.765356>,  <18.423754, 22.622225, 19.036171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767136, 22.792461, 18.765356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.963093, 23.137760, 18.814028>,  <18.080667, 23.344940, 18.843231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.963093, 23.137760, 18.814028>,  <17.767136, 22.792461, 18.765356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.963093, 23.137760, 18.814028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208416, 0.251499, -0.945151,
		-0.846503, 0.437664, 0.303123,
		0.489894, 0.863249, 0.121678,
		18.110062, 23.396734, 18.850531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.311821, 23.321079, 18.441164>,  <17.767136, 22.792461, 18.765356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.311821, 23.321079, 18.441164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667416, 23.499290, 18.483519>,  <17.880772, 23.606216, 18.508932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667416, 23.499290, 18.483519>,  <17.311821, 23.321079, 18.441164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667416, 23.499290, 18.483519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077289, 0.373884, -0.924249,
		-0.451367, 0.813460, 0.366812,
		0.888985, 0.445526, 0.105887,
		17.934111, 23.632948, 18.515285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.238008, 23.957932, 18.164114>,  <17.311821, 23.321079, 18.441164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.238008, 23.957932, 18.164114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.627823, 23.880600, 18.118675>,  <17.861712, 23.834202, 18.091412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.627823, 23.880600, 18.118675>,  <17.238008, 23.957932, 18.164114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.627823, 23.880600, 18.118675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019050, 0.433384, -0.901008,
		0.223421, 0.880228, 0.418665,
		0.974536, -0.193329, -0.113595,
		17.920183, 23.822601, 18.084597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507952, 24.455172, 17.740850>,  <17.238008, 23.957932, 18.164114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507952, 24.455172, 17.740850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823929, 24.211624, 17.711823>,  <18.013515, 24.065495, 17.694405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823929, 24.211624, 17.711823>,  <17.507952, 24.455172, 17.740850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823929, 24.211624, 17.711823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315373, 0.504930, -0.803484,
		0.525860, 0.611820, 0.590887,
		0.789944, -0.608870, -0.072571,
		18.060911, 24.028963, 17.690052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998577, 24.873995, 17.342422>,  <17.507952, 24.455172, 17.740850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998577, 24.873995, 17.342422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125607, 24.496403, 17.306534>,  <18.201824, 24.269848, 17.285000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125607, 24.496403, 17.306534>,  <17.998577, 24.873995, 17.342422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125607, 24.496403, 17.306534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318627, 0.195351, -0.927532,
		0.893098, 0.265971, 0.362815,
		0.317573, -0.943980, -0.089723,
		18.220879, 24.213209, 17.279617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692059, 24.858065, 17.258888>,  <17.998577, 24.873995, 17.342422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692059, 24.858065, 17.258888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.561729, 24.520859, 17.087694>,  <18.483532, 24.318535, 16.984978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.561729, 24.520859, 17.087694>,  <18.692059, 24.858065, 17.258888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.561729, 24.520859, 17.087694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388206, 0.293470, -0.873597,
		0.862054, -0.450782, 0.231644,
		-0.325821, -0.843013, -0.427983,
		18.463984, 24.267956, 16.959299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194918, 24.756016, 16.776941>,  <18.692059, 24.858065, 17.258888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194918, 24.756016, 16.776941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.884007, 24.530518, 16.665209>,  <18.697460, 24.395218, 16.598169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.884007, 24.530518, 16.665209>,  <19.194918, 24.756016, 16.776941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884007, 24.530518, 16.665209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155309, 0.258315, -0.953495,
		0.609684, -0.784516, -0.113228,
		-0.777280, -0.563745, -0.279332,
		18.650822, 24.361395, 16.581409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485426, 24.458397, 16.258358>,  <19.194918, 24.756016, 16.776941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485426, 24.458397, 16.258358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093163, 24.401070, 16.205032>,  <18.857805, 24.366674, 16.173037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093163, 24.401070, 16.205032>,  <19.485426, 24.458397, 16.258358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093163, 24.401070, 16.205032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086675, 0.292713, -0.952264,
		0.175496, -0.945400, -0.274629,
		-0.980657, -0.143315, -0.133312,
		18.798965, 24.358074, 16.165039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464663, 24.055548, 15.625297>,  <19.485426, 24.458397, 16.258358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464663, 24.055548, 15.625297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.087086, 24.180485, 15.668041>,  <18.860540, 24.255447, 15.693687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.087086, 24.180485, 15.668041>,  <19.464663, 24.055548, 15.625297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087086, 24.180485, 15.668041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065521, 0.140002, -0.987981,
		-0.323547, -0.939597, -0.111689,
		-0.943941, 0.312340, 0.106861,
		18.803904, 24.274187, 15.700099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032244, 23.657946, 15.147410>,  <19.464663, 24.055548, 15.625297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032244, 23.657946, 15.147410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877384, 24.018425, 15.225344>,  <18.784470, 24.234713, 15.272103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877384, 24.018425, 15.225344>,  <19.032244, 23.657946, 15.147410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877384, 24.018425, 15.225344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029618, 0.199046, -0.979542,
		-0.921542, -0.384997, -0.050369,
		-0.387147, 0.901198, 0.194832,
		18.761240, 24.288784, 15.283793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423115, 23.702358, 14.597857>,  <19.032244, 23.657946, 15.147410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423115, 23.702358, 14.597857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526539, 24.070293, 14.715870>,  <18.588593, 24.291054, 14.786677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.526539, 24.070293, 14.715870>,  <18.423115, 23.702358, 14.597857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.526539, 24.070293, 14.715870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012314, 0.302255, -0.953148,
		-0.965917, 0.250078, 0.066824,
		0.258559, 0.919839, 0.295032,
		18.604107, 24.346245, 14.804379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054306, 24.111460, 14.240438>,  <18.423115, 23.702358, 14.597857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054306, 24.111460, 14.240438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343224, 24.365871, 14.349070>,  <18.516575, 24.518518, 14.414248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.343224, 24.365871, 14.349070>,  <18.054306, 24.111460, 14.240438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343224, 24.365871, 14.349070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002942, 0.389858, -0.920870,
		-0.691578, 0.665939, 0.279722,
		0.722295, 0.636031, 0.271577,
		18.559912, 24.556681, 14.430543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926342, 24.655087, 13.770574>,  <18.054306, 24.111460, 14.240438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926342, 24.655087, 13.770574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.289810, 24.734859, 13.917295>,  <18.507891, 24.782722, 14.005329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.289810, 24.734859, 13.917295>,  <17.926342, 24.655087, 13.770574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289810, 24.734859, 13.917295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301221, 0.295209, -0.906707,
		-0.289111, 0.934387, 0.208174,
		0.908670, 0.199433, 0.366805,
		18.562410, 24.794689, 14.027337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131456, 25.207270, 13.447881>,  <17.926342, 24.655087, 13.770574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131456, 25.207270, 13.447881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.459839, 25.009007, 13.561268>,  <18.656868, 24.890049, 13.629300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.459839, 25.009007, 13.561268>,  <18.131456, 25.207270, 13.447881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459839, 25.009007, 13.561268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352278, 0.048972, -0.934613,
		0.449365, 0.867137, 0.214813,
		0.820958, -0.495656, 0.283467,
		18.706125, 24.860310, 13.646308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.699862, 25.621891, 13.139360>,  <18.131456, 25.207270, 13.447881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.699862, 25.621891, 13.139360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.833031, 25.251350, 13.209822>,  <18.912933, 25.029026, 13.252099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.833031, 25.251350, 13.209822>,  <18.699862, 25.621891, 13.139360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833031, 25.251350, 13.209822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411523, -0.025345, -0.911047,
		0.848416, 0.375801, 0.372778,
		0.332925, -0.926354, 0.176154,
		18.932909, 24.973444, 13.262668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393641, 25.618010, 12.910873>,  <18.699862, 25.621891, 13.139360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.393641, 25.618010, 12.910873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292477, 25.231182, 12.922297>,  <19.231779, 24.999086, 12.929151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292477, 25.231182, 12.922297>,  <19.393641, 25.618010, 12.910873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292477, 25.231182, 12.922297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444598, -0.142387, -0.884341,
		0.859285, -0.210960, 0.465968,
		-0.252908, -0.967069, 0.028558,
		19.216604, 24.941061, 12.930864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.032438, 25.315338, 12.719307>,  <19.393641, 25.618010, 12.910873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.032438, 25.315338, 12.719307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736080, 25.059536, 12.637227>,  <19.558266, 24.906055, 12.587979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736080, 25.059536, 12.637227>,  <20.032438, 25.315338, 12.719307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736080, 25.059536, 12.637227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465933, -0.269366, -0.842822,
		0.483715, -0.720052, 0.497538,
		-0.740896, -0.639506, -0.205200,
		19.513811, 24.867685, 12.575667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396006, 24.733406, 12.534474>,  <20.032438, 25.315338, 12.719307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396006, 24.733406, 12.534474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027828, 24.654240, 12.399648>,  <19.806921, 24.606739, 12.318752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027828, 24.654240, 12.399648>,  <20.396006, 24.733406, 12.534474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027828, 24.654240, 12.399648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388753, -0.373761, -0.842124,
		0.040690, -0.906163, 0.420967,
		-0.920443, -0.197918, -0.337065,
		19.751696, 24.594864, 12.298528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361258, 23.959196, 12.341964>,  <20.396006, 24.733406, 12.534474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361258, 23.959196, 12.341964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084984, 24.177082, 12.151706>,  <19.919220, 24.307814, 12.037551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084984, 24.177082, 12.151706>,  <20.361258, 23.959196, 12.341964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.084984, 24.177082, 12.151706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271775, -0.413998, -0.868760,
		-0.670144, -0.729308, 0.137902,
		-0.690685, 0.544716, -0.475646,
		19.877779, 24.340496, 12.009012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943985, 23.464502, 11.930380>,  <20.361258, 23.959196, 12.341964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943985, 23.464502, 11.930380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.883457, 23.828709, 11.776464>,  <19.847141, 24.047232, 11.684114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.883457, 23.828709, 11.776464>,  <19.943985, 23.464502, 11.930380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883457, 23.828709, 11.776464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197642, -0.353545, -0.914299,
		-0.968525, -0.214401, -0.126458,
		-0.151318, 0.910515, -0.384791,
		19.838062, 24.101864, 11.661026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610107, 23.333960, 11.282942>,  <19.943985, 23.464502, 11.930380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610107, 23.333960, 11.282942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725574, 23.714397, 11.238960>,  <19.794855, 23.942659, 11.212571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.725574, 23.714397, 11.238960>,  <19.610107, 23.333960, 11.282942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725574, 23.714397, 11.238960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237305, -0.182334, -0.954170,
		-0.927554, 0.249347, -0.278333,
		0.288669, 0.951094, -0.109954,
		19.812176, 23.999725, 11.205975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350460, 23.494429, 10.656274>,  <19.610107, 23.333960, 11.282942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350460, 23.494429, 10.656274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.647354, 23.759945, 10.693087>,  <19.825491, 23.919254, 10.715174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.647354, 23.759945, 10.693087>,  <19.350460, 23.494429, 10.656274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647354, 23.759945, 10.693087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275311, -0.176834, -0.944952,
		-0.610977, 0.726712, -0.314002,
		0.742234, 0.663792, 0.092031,
		19.870024, 23.959082, 10.720695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309717, 23.745045, 10.082235>,  <19.350460, 23.494429, 10.656274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309717, 23.745045, 10.082235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656502, 23.890594, 10.218453>,  <19.864573, 23.977924, 10.300184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656502, 23.890594, 10.218453>,  <19.309717, 23.745045, 10.082235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656502, 23.890594, 10.218453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431036, -0.204468, -0.878864,
		-0.250164, 0.908729, -0.334109,
		0.866964, 0.363873, 0.340544,
		19.916592, 23.999756, 10.320617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632195, 24.184696, 9.516469>,  <19.309717, 23.745045, 10.082235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632195, 24.184696, 9.516469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935062, 24.093250, 9.761230>,  <20.116783, 24.038383, 9.908088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935062, 24.093250, 9.761230>,  <19.632195, 24.184696, 9.516469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935062, 24.093250, 9.761230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567313, -0.234206, -0.789496,
		0.323801, 0.944925, -0.047639,
		0.757172, -0.228613, 0.611905,
		20.162214, 24.024666, 9.944801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261951, 24.385946, 9.204371>,  <19.632195, 24.184696, 9.516469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261951, 24.385946, 9.204371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.406086, 24.126259, 9.472304>,  <20.492567, 23.970448, 9.633064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.406086, 24.126259, 9.472304>,  <20.261951, 24.385946, 9.204371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406086, 24.126259, 9.472304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573026, -0.412559, -0.708121,
		0.736069, 0.638994, 0.223358,
		0.360337, -0.649216, 0.669832,
		20.514187, 23.931494, 9.673254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956789, 24.451668, 9.254887>,  <20.261951, 24.385946, 9.204371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956789, 24.451668, 9.254887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.851372, 24.075718, 9.341767>,  <20.788120, 23.850147, 9.393896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.851372, 24.075718, 9.341767>,  <20.956789, 24.451668, 9.254887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851372, 24.075718, 9.341767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619753, -0.337516, -0.708511,
		0.739222, -0.052113, 0.671442,
		-0.263545, -0.939876, 0.217202,
		20.772308, 23.793755, 9.406928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631254, 23.987925, 9.221608>,  <20.956789, 24.451668, 9.254887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631254, 23.987925, 9.221608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333042, 23.721386, 9.216440>,  <21.154116, 23.561462, 9.213340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333042, 23.721386, 9.216440>,  <21.631254, 23.987925, 9.221608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.333042, 23.721386, 9.216440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520231, -0.569713, -0.636228,
		0.416589, -0.481048, 0.771393,
		-0.745529, -0.666349, -0.012920,
		21.109383, 23.521481, 9.212564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868706, 23.264448, 9.333988>,  <21.631254, 23.987925, 9.221608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868706, 23.264448, 9.333988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527313, 23.216991, 9.131011>,  <21.322477, 23.188517, 9.009225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.527313, 23.216991, 9.131011>,  <21.868706, 23.264448, 9.333988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.527313, 23.216991, 9.131011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434411, -0.699840, -0.567019,
		-0.287855, -0.704377, 0.648839,
		-0.853479, -0.118644, -0.507442,
		21.271269, 23.181398, 8.978779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.908953, 22.584345, 9.036568>,  <21.868706, 23.264448, 9.333988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.908953, 22.584345, 9.036568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.607525, 22.743786, 8.827475>,  <21.426668, 22.839451, 8.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.607525, 22.743786, 8.827475>,  <21.908953, 22.584345, 9.036568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607525, 22.743786, 8.827475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235143, -0.579129, -0.780588,
		-0.613883, -0.711139, 0.342679,
		-0.753562, 0.398611, -0.522737,
		21.381454, 22.863367, 8.670654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.586243, 22.032104, 8.701796>,  <21.908953, 22.584345, 9.036568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.586243, 22.032104, 8.701796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.520733, 22.357677, 8.478838>,  <21.481426, 22.553022, 8.345063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.520733, 22.357677, 8.478838>,  <21.586243, 22.032104, 8.701796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.520733, 22.357677, 8.478838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082897, -0.551670, -0.829933,
		-0.983008, -0.182130, 0.022878,
		-0.163777, 0.813934, -0.557395,
		21.471600, 22.601858, 8.311620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.093182, 21.801352, 8.170966>,  <21.586243, 22.032104, 8.701796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.093182, 21.801352, 8.170966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.232655, 22.141518, 8.013376>,  <21.316338, 22.345617, 7.918822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.232655, 22.141518, 8.013376>,  <21.093182, 21.801352, 8.170966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.232655, 22.141518, 8.013376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089155, -0.448546, -0.889302,
		-0.932991, 0.274959, -0.232218,
		0.348682, 0.850414, -0.393975,
		21.337259, 22.396643, 7.895184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227163, 22.084488, 7.501356>,  <21.093182, 21.801352, 8.170966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227163, 22.084488, 7.501356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.254498, 21.701801, 7.388201>,  <21.270899, 21.472189, 7.320308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.254498, 21.701801, 7.388201>,  <21.227163, 22.084488, 7.501356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.254498, 21.701801, 7.388201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812114, -0.218041, 0.541230,
		-0.579484, 0.192751, -0.791862,
		0.068336, -0.956716, -0.282887,
		21.274998, 21.414787, 7.303335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.588297, 21.955244, 7.332282>,  <21.227163, 22.084488, 7.501356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.588297, 21.955244, 7.332282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.722012, 21.598820, 7.455092>,  <20.802240, 21.384966, 7.528779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.722012, 21.598820, 7.455092>,  <20.588297, 21.955244, 7.332282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722012, 21.598820, 7.455092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738828, -0.045508, 0.672356,
		-0.585136, -0.451601, -0.673552,
		0.334289, -0.891059, 0.307027,
		20.822298, 21.331503, 7.547201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988091, 21.630182, 7.567109>,  <20.588297, 21.955244, 7.332282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.988091, 21.630182, 7.567109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.270370, 21.392067, 7.720792>,  <20.439739, 21.249197, 7.813002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.270370, 21.392067, 7.720792>,  <19.988091, 21.630182, 7.567109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270370, 21.392067, 7.720792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569640, -0.154258, 0.807289,
		-0.421305, -0.788564, -0.447961,
		0.705700, -0.595292, 0.384208,
		20.482080, 21.213480, 7.836054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703590, 20.968210, 7.850684>,  <19.988091, 21.630182, 7.567109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703590, 20.968210, 7.850684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.053135, 20.987709, 8.044172>,  <20.262861, 20.999409, 8.160265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.053135, 20.987709, 8.044172>,  <19.703590, 20.968210, 7.850684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.053135, 20.987709, 8.044172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443945, -0.325569, 0.834816,
		0.198183, -0.944261, -0.262861,
		0.873863, 0.048750, 0.483722,
		20.315294, 21.002335, 8.189289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733061, 20.417067, 8.200229>,  <19.703590, 20.968210, 7.850684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733061, 20.417067, 8.200229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990837, 20.644955, 8.404235>,  <20.145504, 20.781687, 8.526639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.990837, 20.644955, 8.404235>,  <19.733061, 20.417067, 8.200229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990837, 20.644955, 8.404235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521273, -0.160657, 0.838131,
		0.559437, -0.805984, 0.193445,
		0.644441, 0.569719, 0.510015,
		20.184170, 20.815870, 8.557240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916187, 20.017954, 8.747530>,  <19.733061, 20.417067, 8.200229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916187, 20.017954, 8.747530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989857, 20.390072, 8.874422>,  <20.034060, 20.613342, 8.950557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989857, 20.390072, 8.874422>,  <19.916187, 20.017954, 8.747530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989857, 20.390072, 8.874422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604142, -0.147438, 0.783118,
		0.775301, -0.335882, 0.534875,
		0.184174, 0.930293, 0.317230,
		20.045109, 20.669159, 8.969591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643381, 19.909327, 9.383301>,  <19.916187, 20.017954, 8.747530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.643381, 19.909327, 9.383301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736507, 20.298332, 9.382006>,  <19.792383, 20.531736, 9.381228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736507, 20.298332, 9.382006>,  <19.643381, 19.909327, 9.383301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736507, 20.298332, 9.382006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262676, 0.066090, 0.962618,
		0.936374, -0.223264, 0.270843,
		0.232818, 0.972515, -0.003239,
		19.806353, 20.590086, 9.381034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161472, 20.125031, 9.934486>,  <19.643381, 19.909327, 9.383301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161472, 20.125031, 9.934486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.954300, 20.458580, 9.858165>,  <19.829996, 20.658709, 9.812372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.954300, 20.458580, 9.858165>,  <20.161472, 20.125031, 9.934486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.954300, 20.458580, 9.858165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127495, 0.145311, 0.981137,
		0.845869, 0.532487, 0.031053,
		-0.517930, 0.833872, -0.190804,
		19.798922, 20.708742, 9.800923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386969, 20.650892, 10.424557>,  <20.161472, 20.125031, 9.934486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386969, 20.650892, 10.424557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026726, 20.759289, 10.288632>,  <19.810581, 20.824327, 10.207078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026726, 20.759289, 10.288632>,  <20.386969, 20.650892, 10.424557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026726, 20.759289, 10.288632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289914, 0.207940, 0.934190,
		0.323819, 0.939853, -0.108707,
		-0.900606, 0.270993, -0.339812,
		19.756544, 20.840586, 10.186689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.315775, 21.343861, 10.696142>,  <20.386969, 20.650892, 10.424557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.315775, 21.343861, 10.696142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.956642, 21.177170, 10.639240>,  <19.741163, 21.077156, 10.605100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.956642, 21.177170, 10.639240>,  <20.315775, 21.343861, 10.696142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956642, 21.177170, 10.639240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238509, 0.188674, 0.952636,
		-0.370149, 0.889237, -0.268791,
		-0.897832, -0.416726, -0.142254,
		19.687292, 21.052153, 10.596564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849310, 21.753649, 11.145203>,  <20.315775, 21.343861, 10.696142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849310, 21.753649, 11.145203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590034, 21.459633, 11.065634>,  <19.434469, 21.283224, 11.017893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590034, 21.459633, 11.065634>,  <19.849310, 21.753649, 11.145203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.590034, 21.459633, 11.065634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302040, 0.008374, 0.953259,
		-0.699016, 0.677973, -0.227439,
		-0.648188, -0.735039, -0.198922,
		19.395578, 21.239120, 11.005958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184515, 21.945616, 11.431968>,  <19.849310, 21.753649, 11.145203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184515, 21.945616, 11.431968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.166912, 21.548851, 11.384346>,  <19.156351, 21.310793, 11.355773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.166912, 21.548851, 11.384346>,  <19.184515, 21.945616, 11.431968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.166912, 21.548851, 11.384346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499161, -0.081396, 0.862678,
		-0.865391, 0.097391, -0.491541,
		-0.044007, -0.991912, -0.119053,
		19.153709, 21.251278, 11.348630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469627, 21.732313, 11.466796>,  <19.184515, 21.945616, 11.431968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469627, 21.732313, 11.466796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.714043, 21.432980, 11.570044>,  <18.860691, 21.253380, 11.631992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.714043, 21.432980, 11.570044>,  <18.469627, 21.732313, 11.466796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.714043, 21.432980, 11.570044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502302, -0.114518, 0.857076,
		-0.611822, -0.653360, -0.445865,
		0.611038, -0.748336, 0.258119,
		18.897354, 21.208479, 11.647479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048410, 21.212191, 11.655185>,  <18.469627, 21.732313, 11.466796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048410, 21.212191, 11.655185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399342, 21.126831, 11.827117>,  <18.609901, 21.075615, 11.930277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399342, 21.126831, 11.827117>,  <18.048410, 21.212191, 11.655185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399342, 21.126831, 11.827117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439310, 0.003330, 0.898329,
		-0.193135, -0.976959, -0.090827,
		0.877328, -0.213400, 0.429831,
		18.662540, 21.062811, 11.956066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849079, 20.560965, 12.156582>,  <18.048410, 21.212191, 11.655185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849079, 20.560965, 12.156582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186436, 20.737625, 12.278979>,  <18.388849, 20.843622, 12.352418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.186436, 20.737625, 12.278979>,  <17.849079, 20.560965, 12.156582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186436, 20.737625, 12.278979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308243, -0.068747, 0.948820,
		0.440086, -0.894548, 0.078156,
		0.843392, 0.441654, 0.305993,
		18.439453, 20.870121, 12.370777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127537, 20.091637, 12.709538>,  <17.849079, 20.560965, 12.156582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.127537, 20.091637, 12.709538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316494, 20.440300, 12.761778>,  <18.429869, 20.649498, 12.793121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316494, 20.440300, 12.761778>,  <18.127537, 20.091637, 12.709538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316494, 20.440300, 12.761778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263349, -0.001818, 0.964699,
		0.841127, -0.490109, 0.228692,
		0.472391, 0.871660, 0.130599,
		18.458212, 20.701797, 12.800958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.504005, 20.048191, 13.328415>,  <18.127537, 20.091637, 12.709538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.504005, 20.048191, 13.328415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469406, 20.444416, 13.285891>,  <18.448647, 20.682152, 13.260376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469406, 20.444416, 13.285891>,  <18.504005, 20.048191, 13.328415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469406, 20.444416, 13.285891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200452, 0.087224, 0.975813,
		0.975878, 0.105715, 0.191016,
		-0.086497, 0.990564, -0.106310,
		18.443457, 20.741585, 13.253998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.848434, 20.245527, 13.808234>,  <18.504005, 20.048191, 13.328415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.848434, 20.245527, 13.808234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.635780, 20.571693, 13.716616>,  <18.508188, 20.767393, 13.661645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.635780, 20.571693, 13.716616>,  <18.848434, 20.245527, 13.808234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635780, 20.571693, 13.716616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197622, 0.143541, 0.969712,
		0.823596, 0.560796, 0.084832,
		-0.531634, 0.815416, -0.229046,
		18.476290, 20.816319, 13.647902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993713, 20.663349, 14.333085>,  <18.848434, 20.245527, 13.808234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993713, 20.663349, 14.333085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.655048, 20.806301, 14.175379>,  <18.451849, 20.892073, 14.080755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.655048, 20.806301, 14.175379>,  <18.993713, 20.663349, 14.333085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.655048, 20.806301, 14.175379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272159, 0.345862, 0.897947,
		0.457270, 0.867559, -0.195564,
		-0.846660, 0.357379, -0.394267,
		18.401051, 20.913515, 14.057098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998545, 21.297583, 14.471117>,  <18.993713, 20.663349, 14.333085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998545, 21.297583, 14.471117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613510, 21.201958, 14.420086>,  <18.382490, 21.144583, 14.389467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.613510, 21.201958, 14.420086>,  <18.998545, 21.297583, 14.471117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613510, 21.201958, 14.420086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223453, 0.433976, 0.872773,
		-0.153281, 0.868628, -0.471159,
		-0.962587, -0.239061, -0.127577,
		18.324734, 21.130239, 14.381813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704268, 21.820463, 14.696026>,  <18.998545, 21.297583, 14.471117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704268, 21.820463, 14.696026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406731, 21.553253, 14.704422>,  <18.228209, 21.392927, 14.709460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406731, 21.553253, 14.704422>,  <18.704268, 21.820463, 14.696026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406731, 21.553253, 14.704422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306256, 0.368595, 0.877693,
		-0.594057, 0.646438, -0.478763,
		-0.743844, -0.668023, 0.020991,
		18.183577, 21.352846, 14.710719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150318, 22.280672, 14.896584>,  <18.704268, 21.820463, 14.696026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150318, 22.280672, 14.896584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001110, 21.915386, 14.962185>,  <17.911585, 21.696215, 15.001546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.001110, 21.915386, 14.962185>,  <18.150318, 22.280672, 14.896584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001110, 21.915386, 14.962185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468124, 0.337854, 0.816526,
		-0.801072, 0.227807, -0.553523,
		-0.373020, -0.913214, 0.164003,
		17.889204, 21.641422, 15.011386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.428343, 22.315081, 15.156663>,  <18.150318, 22.280672, 14.896584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.428343, 22.315081, 15.156663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.575092, 21.975586, 15.309002>,  <17.663143, 21.771889, 15.400406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.575092, 21.975586, 15.309002>,  <17.428343, 22.315081, 15.156663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.575092, 21.975586, 15.309002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380386, 0.236738, 0.894014,
		-0.848945, -0.472861, -0.235995,
		0.366875, -0.848738, 0.380848,
		17.685156, 21.720964, 15.423256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889208, 21.938959, 15.585106>,  <17.428343, 22.315081, 15.156663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889208, 21.938959, 15.585106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244968, 21.806274, 15.710920>,  <17.458424, 21.726664, 15.786409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244968, 21.806274, 15.710920>,  <16.889208, 21.938959, 15.585106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244968, 21.806274, 15.710920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259819, 0.199304, 0.944866,
		-0.376114, -0.922087, 0.091076,
		0.889400, -0.331714, 0.314536,
		17.511789, 21.706760, 15.805282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712496, 21.659180, 16.164877>,  <16.889208, 21.938959, 15.585106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712496, 21.659180, 16.164877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.110363, 21.655624, 16.205971>,  <17.349083, 21.653490, 16.230627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.110363, 21.655624, 16.205971>,  <16.712496, 21.659180, 16.164877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110363, 21.655624, 16.205971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102821, -0.161360, 0.981525,
		0.007853, -0.986856, -0.161413,
		0.994669, -0.008889, 0.102737,
		17.408764, 21.652958, 16.236792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900738, 21.046885, 16.638140>,  <16.712496, 21.659180, 16.164877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.900738, 21.046885, 16.638140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235172, 21.264896, 16.663124>,  <17.435833, 21.395704, 16.678116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235172, 21.264896, 16.663124>,  <16.900738, 21.046885, 16.638140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235172, 21.264896, 16.663124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051592, -0.191471, 0.980142,
		0.546168, -0.816259, -0.188205,
		0.836085, 0.545032, 0.062463,
		17.485998, 21.428406, 16.681864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.346302, 20.642742, 16.975725>,  <16.900738, 21.046885, 16.638140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.346302, 20.642742, 16.975725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.485306, 21.008514, 17.058720>,  <17.568708, 21.227978, 17.108517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.485306, 21.008514, 17.058720>,  <17.346302, 20.642742, 16.975725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485306, 21.008514, 17.058720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022418, -0.213109, 0.976771,
		0.937408, -0.344088, -0.053558,
		0.347509, 0.914433, 0.207484,
		17.589560, 21.282845, 17.120964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893362, 20.508335, 17.414524>,  <17.346302, 20.642742, 16.975725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893362, 20.508335, 17.414524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812977, 20.895489, 17.474937>,  <17.764746, 21.127781, 17.511185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812977, 20.895489, 17.474937>,  <17.893362, 20.508335, 17.414524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812977, 20.895489, 17.474937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315924, -0.209976, 0.925258,
		0.927257, 0.138228, 0.347976,
		-0.200963, 0.967886, 0.151032,
		17.752687, 21.185854, 17.520247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222576, 20.763607, 18.067144>,  <17.893362, 20.508335, 17.414524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222576, 20.763607, 18.067144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896187, 20.976692, 17.977345>,  <17.700354, 21.104544, 17.923464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896187, 20.976692, 17.977345>,  <18.222576, 20.763607, 18.067144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896187, 20.976692, 17.977345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421511, -0.282500, 0.861697,
		0.395617, 0.797753, 0.455057,
		-0.815975, 0.532714, -0.224500,
		17.651394, 21.136507, 17.909994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021431, 21.089432, 18.721945>,  <18.222576, 20.763607, 18.067144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021431, 21.089432, 18.721945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.700871, 21.094894, 18.482758>,  <17.508533, 21.098173, 18.339245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.700871, 21.094894, 18.482758>,  <18.021431, 21.089432, 18.721945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700871, 21.094894, 18.482758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542576, -0.437345, 0.717175,
		-0.251724, 0.899190, 0.357900,
		-0.801403, 0.013658, -0.597969,
		17.460449, 21.098991, 18.303368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487572, 21.317503, 19.199743>,  <18.021431, 21.089432, 18.721945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487572, 21.317503, 19.199743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289349, 21.173477, 18.883572>,  <17.170416, 21.087061, 18.693869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289349, 21.173477, 18.883572>,  <17.487572, 21.317503, 19.199743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289349, 21.173477, 18.883572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625404, -0.483588, 0.612383,
		-0.602739, 0.797807, 0.014460,
		-0.495556, -0.360064, -0.790429,
		17.140682, 21.065458, 18.646442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741417, 21.365149, 19.469294>,  <17.487572, 21.317503, 19.199743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741417, 21.365149, 19.469294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736465, 21.118313, 19.154575>,  <16.733496, 20.970211, 18.965744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736465, 21.118313, 19.154575>,  <16.741417, 21.365149, 19.469294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736465, 21.118313, 19.154575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623401, -0.610454, 0.488588,
		-0.781805, 0.496537, -0.377137,
		-0.012377, -0.617088, -0.786797,
		16.732752, 20.933186, 18.918537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099194, 21.240870, 19.375536>,  <16.741417, 21.365149, 19.469294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099194, 21.240870, 19.375536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282864, 20.920746, 19.221310>,  <16.393066, 20.728672, 19.128775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282864, 20.920746, 19.221310>,  <16.099194, 21.240870, 19.375536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282864, 20.920746, 19.221310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660320, -0.597828, 0.454510,
		-0.594230, 0.045859, -0.802987,
		0.459205, -0.800312, -0.385529,
		16.420616, 20.680653, 19.105640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580197, 20.850533, 18.903885>,  <16.099194, 21.240870, 19.375536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580197, 20.850533, 18.903885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871007, 20.603382, 19.023661>,  <16.045492, 20.455091, 19.095526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871007, 20.603382, 19.023661>,  <15.580197, 20.850533, 18.903885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871007, 20.603382, 19.023661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684838, -0.621229, 0.380883,
		-0.049316, -0.481980, -0.874793,
		0.727024, -0.617875, 0.299441,
		16.089115, 20.418020, 19.113493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204087, 20.267168, 18.913609>,  <15.580197, 20.850533, 18.903885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204087, 20.267168, 18.913609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522958, 20.132778, 19.114260>,  <15.714280, 20.052145, 19.234650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522958, 20.132778, 19.114260>,  <15.204087, 20.267168, 18.913609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522958, 20.132778, 19.114260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593165, -0.590715, 0.547001,
		0.112541, -0.733605, -0.670193,
		0.797176, -0.335975, 0.501629,
		15.762111, 20.031986, 19.264748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073563, 19.595451, 18.986177>,  <15.204087, 20.267168, 18.913609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073563, 19.595451, 18.986177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.353875, 19.671528, 19.261200>,  <15.522062, 19.717175, 19.426212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.353875, 19.671528, 19.261200>,  <15.073563, 19.595451, 18.986177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.353875, 19.671528, 19.261200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518411, -0.526317, 0.673974,
		0.490057, -0.828744, -0.270235,
		0.700781, 0.190193, 0.687555,
		15.564110, 19.728586, 19.467466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191974, 18.937893, 19.420120>,  <15.073563, 19.595451, 18.986177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191974, 18.937893, 19.420120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.310004, 19.243652, 19.649424>,  <15.380823, 19.427109, 19.787006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.310004, 19.243652, 19.649424>,  <15.191974, 18.937893, 19.420120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310004, 19.243652, 19.649424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430677, -0.429159, 0.793939,
		0.852905, -0.481162, 0.202573,
		0.295077, 0.764399, 0.573258,
		15.398527, 19.472973, 19.821402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379762, 18.567965, 20.041893>,  <15.191974, 18.937893, 19.420120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379762, 18.567965, 20.041893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327992, 18.948727, 20.152981>,  <15.296931, 19.177183, 20.219633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.327992, 18.948727, 20.152981>,  <15.379762, 18.567965, 20.041893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327992, 18.948727, 20.152981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444475, -0.306055, 0.841886,
		0.886393, -0.014481, 0.462708,
		-0.129423, 0.951904, 0.277721,
		15.289165, 19.234299, 20.236298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747087, 18.354149, 20.582056>,  <15.379762, 18.567965, 20.041893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747087, 18.354149, 20.582056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924090, 18.015694, 20.700878>,  <16.030293, 17.812620, 20.772171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924090, 18.015694, 20.700878>,  <15.747087, 18.354149, 20.582056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924090, 18.015694, 20.700878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504541, -0.038941, -0.862509,
		0.741368, 0.531543, 0.409678,
		0.442507, -0.846136, 0.297055,
		16.056843, 17.761852, 20.789995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508186, 18.462744, 20.471853>,  <15.747087, 18.354149, 20.582056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508186, 18.462744, 20.471853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427757, 18.070930, 20.475481>,  <16.379499, 17.835842, 20.477657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427757, 18.070930, 20.475481>,  <16.508186, 18.462744, 20.471853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427757, 18.070930, 20.475481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692633, -0.148712, -0.705793,
		0.692697, -0.135635, 0.708360,
		-0.201072, -0.979535, 0.009067,
		16.367435, 17.777071, 20.478201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202669, 18.093395, 20.428328>,  <16.508186, 18.462744, 20.471853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202669, 18.093395, 20.428328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917923, 17.829567, 20.331816>,  <16.747076, 17.671270, 20.273909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.917923, 17.829567, 20.331816>,  <17.202669, 18.093395, 20.428328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917923, 17.829567, 20.331816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508497, -0.247068, -0.824856,
		0.484440, -0.709875, 0.511269,
		-0.711863, -0.659572, -0.241279,
		16.704365, 17.631695, 20.259432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507109, 17.504929, 20.337658>,  <17.202669, 18.093395, 20.428328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507109, 17.504929, 20.337658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.159172, 17.454834, 20.146790>,  <16.950411, 17.424776, 20.032269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.159172, 17.454834, 20.146790>,  <17.507109, 17.504929, 20.337658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159172, 17.454834, 20.146790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492823, -0.264575, -0.828930,
		-0.022433, -0.956198, 0.291859,
		-0.869841, -0.125239, -0.477172,
		16.898220, 17.417263, 20.003637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726435, 17.048956, 19.829203>,  <17.507109, 17.504929, 20.337658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726435, 17.048956, 19.829203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385281, 17.184402, 19.670242>,  <17.180588, 17.265671, 19.574865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.385281, 17.184402, 19.670242>,  <17.726435, 17.048956, 19.829203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385281, 17.184402, 19.670242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368220, -0.149502, -0.917640,
		-0.370140, -0.928972, 0.002823,
		-0.852883, 0.338616, -0.397403,
		17.129416, 17.285988, 19.551022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559195, 16.610708, 19.231859>,  <17.726435, 17.048956, 19.829203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559195, 16.610708, 19.231859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350700, 16.947182, 19.174269>,  <17.225605, 17.149065, 19.139715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350700, 16.947182, 19.174269>,  <17.559195, 16.610708, 19.231859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350700, 16.947182, 19.174269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473412, 0.144630, -0.868886,
		-0.710068, -0.521052, -0.473612,
		-0.521233, 0.841182, -0.143975,
		17.194330, 17.199535, 19.131077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243805, 16.625565, 18.496531>,  <17.559195, 16.610708, 19.231859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243805, 16.625565, 18.496531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233524, 17.010441, 18.604994>,  <17.227356, 17.241367, 18.670073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233524, 17.010441, 18.604994>,  <17.243805, 16.625565, 18.496531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233524, 17.010441, 18.604994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322742, 0.264710, -0.908717,
		-0.946138, 0.064158, -0.317343,
		-0.025703, 0.962192, 0.271158,
		17.225813, 17.299099, 18.686340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887577, 17.024099, 17.924799>,  <17.243805, 16.625565, 18.496531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887577, 17.024099, 17.924799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143436, 17.241066, 18.142654>,  <17.296953, 17.371246, 18.273367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143436, 17.241066, 18.142654>,  <16.887577, 17.024099, 17.924799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.143436, 17.241066, 18.142654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339062, 0.436787, -0.833219,
		-0.689844, 0.717634, 0.095478,
		0.639650, 0.542419, 0.544637,
		17.335331, 17.403791, 18.306046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772163, 17.631367, 17.556427>,  <16.887577, 17.024099, 17.924799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772163, 17.631367, 17.556427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084492, 17.685368, 17.800425>,  <17.271889, 17.717768, 17.946823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084492, 17.685368, 17.800425>,  <16.772163, 17.631367, 17.556427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084492, 17.685368, 17.800425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518793, 0.403902, -0.753470,
		-0.348100, 0.904786, 0.245336,
		0.780820, 0.135004, 0.609995,
		17.318737, 17.725868, 17.983423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122646, 18.275316, 17.362564>,  <16.772163, 17.631367, 17.556427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122646, 18.275316, 17.362564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.401703, 18.053326, 17.543806>,  <17.569136, 17.920132, 17.652552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.401703, 18.053326, 17.543806>,  <17.122646, 18.275316, 17.362564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401703, 18.053326, 17.543806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679376, 0.311639, -0.664326,
		0.227480, 0.771288, 0.594448,
		0.697640, -0.554974, 0.453103,
		17.610994, 17.886833, 17.679737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587341, 18.740982, 17.652512>,  <17.122646, 18.275316, 17.362564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587341, 18.740982, 17.652512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745052, 18.381767, 17.574459>,  <17.839680, 18.166239, 17.527628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.745052, 18.381767, 17.574459>,  <17.587341, 18.740982, 17.652512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.745052, 18.381767, 17.574459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576431, 0.407036, -0.708554,
		0.715732, 0.166887, 0.678142,
		0.394277, -0.898037, -0.195130,
		17.863335, 18.112356, 17.515921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211836, 18.921396, 17.403490>,  <17.587341, 18.740982, 17.652512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.211836, 18.921396, 17.403490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.216099, 18.532925, 17.308249>,  <18.218657, 18.299841, 17.251104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.216099, 18.532925, 17.308249>,  <18.211836, 18.921396, 17.403490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.216099, 18.532925, 17.308249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468733, 0.215188, -0.856729,
		0.883276, -0.102476, 0.457518,
		0.010658, -0.971181, -0.238104,
		18.219296, 18.241570, 17.236816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882341, 18.786489, 17.098993>,  <18.211836, 18.921396, 17.403490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882341, 18.786489, 17.098993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.628689, 18.502693, 16.976030>,  <18.476498, 18.332417, 16.902252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.628689, 18.502693, 16.976030>,  <18.882341, 18.786489, 17.098993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628689, 18.502693, 16.976030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435601, 0.000680, -0.900140,
		0.638849, -0.704716, 0.308623,
		-0.634132, -0.709489, -0.307409,
		18.438450, 18.289846, 16.883808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303732, 18.239681, 16.865183>,  <18.882341, 18.786489, 17.098993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303732, 18.239681, 16.865183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.957317, 18.220055, 16.666157>,  <18.749468, 18.208279, 16.546741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.957317, 18.220055, 16.666157>,  <19.303732, 18.239681, 16.865183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.957317, 18.220055, 16.666157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490661, 0.107827, -0.864653,
		0.096081, -0.992958, -0.069304,
		-0.866037, -0.049072, -0.497566,
		18.697506, 18.205336, 16.516888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320528, 17.726873, 16.334064>,  <19.303732, 18.239681, 16.865183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320528, 17.726873, 16.334064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024368, 17.971504, 16.222506>,  <18.846672, 18.118282, 16.155571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024368, 17.971504, 16.222506>,  <19.320528, 17.726873, 16.334064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024368, 17.971504, 16.222506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377375, 0.034857, -0.925404,
		-0.556233, -0.790419, -0.256601,
		-0.740401, 0.611575, -0.278895,
		18.802248, 18.154976, 16.138838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066322, 17.368299, 15.617563>,  <19.320528, 17.726873, 16.334064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066322, 17.368299, 15.617563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.907261, 17.734222, 15.645855>,  <18.811823, 17.953775, 15.662830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.907261, 17.734222, 15.645855>,  <19.066322, 17.368299, 15.617563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.907261, 17.734222, 15.645855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195855, 0.159939, -0.967502,
		-0.896388, -0.370879, -0.242770,
		-0.397654, 0.914805, 0.070729,
		18.787964, 18.008663, 15.667073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501776, 17.394199, 15.112769>,  <19.066322, 17.368299, 15.617563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501776, 17.394199, 15.112769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.609798, 17.769470, 15.199390>,  <18.674612, 17.994633, 15.251363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.609798, 17.769470, 15.199390>,  <18.501776, 17.394199, 15.112769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.609798, 17.769470, 15.199390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128051, 0.187916, -0.973802,
		-0.954292, 0.290710, -0.069387,
		0.270055, 0.938177, 0.216552,
		18.690815, 18.050922, 15.264356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073746, 17.778133, 14.694229>,  <18.501776, 17.394199, 15.112769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073746, 17.778133, 14.694229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369026, 18.024155, 14.805061>,  <18.546194, 18.171766, 14.871561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369026, 18.024155, 14.805061>,  <18.073746, 17.778133, 14.694229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369026, 18.024155, 14.805061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009352, 0.401375, -0.915866,
		-0.674518, 0.678683, 0.290543,
		0.738199, 0.615051, 0.277082,
		18.590487, 18.208670, 14.888186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971048, 18.450638, 14.378504>,  <18.073746, 17.778133, 14.694229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971048, 18.450638, 14.378504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362503, 18.435177, 14.459278>,  <18.597376, 18.425901, 14.507743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362503, 18.435177, 14.459278>,  <17.971048, 18.450638, 14.378504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362503, 18.435177, 14.459278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199110, 0.423017, -0.883975,
		-0.051256, 0.905297, 0.421675,
		0.978636, -0.038651, 0.201936,
		18.656094, 18.423582, 14.519859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359774, 19.116644, 14.080563>,  <17.971048, 18.450638, 14.378504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359774, 19.116644, 14.080563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642639, 18.839355, 14.136229>,  <18.812359, 18.672983, 14.169628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642639, 18.839355, 14.136229>,  <18.359774, 19.116644, 14.080563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642639, 18.839355, 14.136229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413668, 0.246020, -0.876557,
		0.573409, 0.677438, 0.460739,
		0.707164, -0.693219, 0.139165,
		18.854788, 18.631390, 14.177978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980062, 19.476593, 13.849243>,  <18.359774, 19.116644, 14.080563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980062, 19.476593, 13.849243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024960, 19.079269, 13.860102>,  <19.051897, 18.840876, 13.866617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024960, 19.079269, 13.860102>,  <18.980062, 19.476593, 13.849243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024960, 19.079269, 13.860102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438663, 0.025017, -0.898303,
		0.891615, 0.112736, 0.438537,
		0.112242, -0.993310, 0.027148,
		19.058632, 18.781277, 13.868246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666275, 19.389387, 13.575352>,  <18.980062, 19.476593, 13.849243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666275, 19.389387, 13.575352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.519432, 19.019047, 13.539501>,  <19.431326, 18.796843, 13.517991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.519432, 19.019047, 13.539501>,  <19.666275, 19.389387, 13.575352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519432, 19.019047, 13.539501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320169, -0.035306, -0.946702,
		0.873341, -0.376236, 0.309390,
		-0.367107, -0.925851, -0.089625,
		19.409300, 18.741291, 13.512613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274710, 18.962936, 13.282972>,  <19.666275, 19.389387, 13.575352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274710, 18.962936, 13.282972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910942, 18.812302, 13.212389>,  <19.692680, 18.721922, 13.170039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910942, 18.812302, 13.212389>,  <20.274710, 18.962936, 13.282972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910942, 18.812302, 13.212389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263331, -0.193024, -0.945198,
		0.321886, -0.906049, 0.274707,
		-0.909421, -0.376585, -0.176459,
		19.638115, 18.699326, 13.159451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328588, 18.391062, 12.751388>,  <20.274710, 18.962936, 13.282972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.328588, 18.391062, 12.751388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.929394, 18.416275, 12.748549>,  <19.689877, 18.431402, 12.746846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.929394, 18.416275, 12.748549>,  <20.328588, 18.391062, 12.751388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.929394, 18.416275, 12.748549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007528, -0.228785, -0.973448,
		-0.062981, -0.971434, 0.228799,
		-0.997986, 0.063031, -0.007096,
		19.629997, 18.435184, 12.746421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057888, 17.787054, 12.437364>,  <20.328588, 18.391062, 12.751388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057888, 17.787054, 12.437364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786369, 18.080116, 12.417549>,  <19.623459, 18.255953, 12.405661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786369, 18.080116, 12.417549>,  <20.057888, 17.787054, 12.437364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786369, 18.080116, 12.417549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075455, -0.136690, -0.987736,
		-0.730441, -0.666732, 0.148067,
		-0.678795, 0.732656, -0.049536,
		19.582731, 18.299913, 12.402688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549173, 17.554182, 12.003963>,  <20.057888, 17.787054, 12.437364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549173, 17.554182, 12.003963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469372, 17.946102, 12.009450>,  <19.421492, 18.181255, 12.012742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469372, 17.946102, 12.009450>,  <19.549173, 17.554182, 12.003963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469372, 17.946102, 12.009450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208915, -0.028854, -0.977508,
		-0.957368, -0.197881, 0.210452,
		-0.199503, 0.979801, 0.013716,
		19.409521, 18.240042, 12.013565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043163, 17.565716, 11.679170>,  <19.549173, 17.554182, 12.003963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043163, 17.565716, 11.679170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164845, 17.945580, 11.649209>,  <19.237854, 18.173498, 11.631232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.164845, 17.945580, 11.649209>,  <19.043163, 17.565716, 11.679170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164845, 17.945580, 11.649209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143353, -0.032096, -0.989151,
		-0.941758, 0.311642, 0.126372,
		0.304205, 0.949657, -0.074901,
		19.256105, 18.230476, 11.626739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535019, 17.969151, 11.268541>,  <19.043163, 17.565716, 11.679170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535019, 17.969151, 11.268541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.867825, 18.189583, 11.243044>,  <19.067507, 18.321842, 11.227745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.867825, 18.189583, 11.243044>,  <18.535019, 17.969151, 11.268541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867825, 18.189583, 11.243044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074919, -0.002235, -0.997187,
		-0.549675, 0.834448, 0.039427,
		0.832012, 0.551083, -0.063744,
		19.117428, 18.354908, 11.223921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356876, 18.499426, 10.784568>,  <18.535019, 17.969151, 11.268541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356876, 18.499426, 10.784568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754765, 18.466129, 10.808574>,  <18.993498, 18.446152, 10.822977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754765, 18.466129, 10.808574>,  <18.356876, 18.499426, 10.784568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754765, 18.466129, 10.808574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054576, -0.066133, -0.996317,
		0.086902, 0.994333, -0.061241,
		0.994721, -0.083239, 0.060014,
		19.053181, 18.441158, 10.826578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583853, 19.104643, 10.337098>,  <18.356876, 18.499426, 10.784568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583853, 19.104643, 10.337098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853539, 18.811352, 10.372442>,  <19.015350, 18.635376, 10.393649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853539, 18.811352, 10.372442>,  <18.583853, 19.104643, 10.337098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853539, 18.811352, 10.372442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188486, 0.055154, -0.980526,
		0.714077, 0.677741, 0.175388,
		0.674216, -0.733229, 0.088361,
		19.055803, 18.591383, 10.398951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081026, 19.207018, 9.757514>,  <18.583853, 19.104643, 10.337098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081026, 19.207018, 9.757514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155365, 18.832600, 9.877034>,  <19.199968, 18.607948, 9.948746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155365, 18.832600, 9.877034>,  <19.081026, 19.207018, 9.757514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155365, 18.832600, 9.877034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402580, -0.204863, -0.892166,
		0.896320, 0.286097, 0.338760,
		0.185847, -0.936044, 0.298800,
		19.211119, 18.551786, 9.966674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.658201, 19.010803, 9.284745>,  <19.081026, 19.207018, 9.757514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.658201, 19.010803, 9.284745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.532478, 18.657585, 9.424142>,  <19.457045, 18.445654, 9.507780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.532478, 18.657585, 9.424142>,  <19.658201, 19.010803, 9.284745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.532478, 18.657585, 9.424142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179458, -0.415744, -0.891601,
		0.932205, -0.217696, 0.289140,
		-0.314306, -0.883044, 0.348491,
		19.438187, 18.392672, 9.528689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168386, 18.484264, 9.140904>,  <19.658201, 19.010803, 9.284745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168386, 18.484264, 9.140904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.826130, 18.282013, 9.185115>,  <19.620775, 18.160662, 9.211641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.826130, 18.282013, 9.185115>,  <20.168386, 18.484264, 9.140904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.826130, 18.282013, 9.185115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053035, -0.298081, -0.953066,
		0.514845, -0.809621, 0.281866,
		-0.855641, -0.505630, 0.110527,
		19.569437, 18.130323, 9.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438564, 17.817347, 8.976265>,  <20.168386, 18.484264, 9.140904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438564, 17.817347, 8.976265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045261, 17.763817, 8.926794>,  <19.809280, 17.731699, 8.897112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045261, 17.763817, 8.926794>,  <20.438564, 17.817347, 8.976265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.045261, 17.763817, 8.926794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172856, -0.470198, -0.865468,
		0.057667, -0.872356, 0.485458,
		-0.983258, -0.133823, -0.123677,
		19.750284, 17.723669, 8.889691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351107, 17.145964, 8.739682>,  <20.438564, 17.817347, 8.976265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351107, 17.145964, 8.739682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026520, 17.350544, 8.626587>,  <19.831768, 17.473291, 8.558730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026520, 17.350544, 8.626587>,  <20.351107, 17.145964, 8.739682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026520, 17.350544, 8.626587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044741, -0.536759, -0.842548,
		-0.582687, -0.671048, 0.458444,
		-0.811464, 0.511453, -0.282739,
		19.783079, 17.503979, 8.541765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767248, 16.623596, 8.506117>,  <20.351107, 17.145964, 8.739682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767248, 16.623596, 8.506117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650681, 16.959393, 8.322670>,  <19.580740, 17.160870, 8.212602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650681, 16.959393, 8.322670>,  <19.767248, 16.623596, 8.506117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650681, 16.959393, 8.322670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135762, -0.510871, -0.848870,
		-0.946912, -0.185114, 0.262849,
		-0.291420, 0.839490, -0.458618,
		19.563255, 17.211239, 8.185084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115643, 16.431513, 8.132046>,  <19.767248, 16.623596, 8.506117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115643, 16.431513, 8.132046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.225262, 16.769215, 7.947815>,  <19.291033, 16.971836, 7.837276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.225262, 16.769215, 7.947815>,  <19.115643, 16.431513, 8.132046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.225262, 16.769215, 7.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004896, -0.477682, -0.878519,
		-0.961703, 0.243012, -0.126774,
		0.274049, 0.844254, -0.460578,
		19.307476, 17.022491, 7.809641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.675772, 16.399601, 7.562003>,  <19.115643, 16.431513, 8.132046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.675772, 16.399601, 7.562003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973431, 16.654999, 7.483445>,  <19.152025, 16.808237, 7.436311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.973431, 16.654999, 7.483445>,  <18.675772, 16.399601, 7.562003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973431, 16.654999, 7.483445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041836, -0.248873, -0.967632,
		-0.666705, 0.728276, -0.158486,
		0.744146, 0.638495, -0.196393,
		19.196674, 16.846548, 7.424527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450600, 16.828537, 6.924919>,  <18.675772, 16.399601, 7.562003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450600, 16.828537, 6.924919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849533, 16.855419, 6.936297>,  <19.088894, 16.871548, 6.943125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849533, 16.855419, 6.936297>,  <18.450600, 16.828537, 6.924919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849533, 16.855419, 6.936297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027795, 0.010616, -0.999557,
		-0.067477, 0.997683, 0.008720,
		0.997334, 0.067204, 0.028447,
		19.148733, 16.875580, 6.944832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714443, 17.404274, 6.450161>,  <18.450600, 16.828537, 6.924919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.714443, 17.404274, 6.450161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.035191, 17.166012, 6.468933>,  <19.227638, 17.023054, 6.480196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.035191, 17.166012, 6.468933>,  <18.714443, 17.404274, 6.450161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035191, 17.166012, 6.468933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037931, -0.027638, -0.998898,
		0.596298, 0.802763, 0.000432,
		0.801866, -0.595657, 0.046930,
		19.275751, 16.987314, 6.483012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986902, 17.453035, 5.773868>,  <18.714443, 17.404274, 6.450161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986902, 17.453035, 5.773868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.143593, 17.116291, 5.922365>,  <19.237606, 16.914244, 6.011464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.143593, 17.116291, 5.922365>,  <18.986902, 17.453035, 5.773868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143593, 17.116291, 5.922365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049587, -0.383586, -0.922173,
		0.918745, 0.379648, -0.108515,
		0.391726, -0.841860, 0.371244,
		19.261110, 16.863733, 6.033738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.658642, 17.186190, 5.461879>,  <18.986902, 17.453035, 5.773868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.658642, 17.186190, 5.461879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.495586, 16.851849, 5.608946>,  <19.397753, 16.651243, 5.697186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.495586, 16.851849, 5.608946>,  <19.658642, 17.186190, 5.461879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495586, 16.851849, 5.608946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286793, -0.499456, -0.817492,
		0.866938, -0.227795, 0.443314,
		-0.407637, -0.835854, 0.367668,
		19.373295, 16.601091, 5.719246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162895, 16.604359, 5.468087>,  <19.658642, 17.186190, 5.461879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162895, 16.604359, 5.468087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774090, 16.544601, 5.395562>,  <19.540808, 16.508747, 5.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774090, 16.544601, 5.395562>,  <20.162895, 16.604359, 5.468087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774090, 16.544601, 5.395562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232719, -0.506643, -0.830154,
		0.032158, -0.849114, 0.527229,
		-0.972012, -0.149392, -0.181312,
		19.482487, 16.499784, 5.341168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.894075, 15.817547, 5.507144>,  <20.162895, 16.604359, 5.468087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.894075, 15.817547, 5.507144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.689217, 16.050362, 5.254498>,  <19.566301, 16.190050, 5.102911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.689217, 16.050362, 5.254498>,  <19.894075, 15.817547, 5.507144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.689217, 16.050362, 5.254498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200745, -0.633893, -0.746914,
		-0.835108, -0.509324, 0.207806,
		-0.512148, 0.582038, -0.631613,
		19.535572, 16.224974, 5.065014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541502, 15.228048, 5.164686>,  <19.894075, 15.817547, 5.507144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541502, 15.228048, 5.164686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591999, 15.540985, 4.920717>,  <19.622297, 15.728747, 4.774336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591999, 15.540985, 4.920717>,  <19.541502, 15.228048, 5.164686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591999, 15.540985, 4.920717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103398, -0.621870, -0.776265,
		-0.986596, 0.034931, -0.159398,
		0.126241, 0.782341, -0.609922,
		19.629871, 15.775687, 4.737741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199945, 15.430568, 4.422832>,  <19.541502, 15.228048, 5.164686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199945, 15.430568, 4.422832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559612, 15.602009, 4.387502>,  <19.775412, 15.704873, 4.366303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559612, 15.602009, 4.387502>,  <19.199945, 15.430568, 4.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559612, 15.602009, 4.387502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182130, -0.550053, -0.815028,
		-0.397907, 0.716758, -0.572650,
		0.899165, 0.428602, -0.088327,
		19.829361, 15.730590, 4.361004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252790, 14.823496, 4.133166>,  <19.199945, 15.430568, 4.422832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252790, 14.823496, 4.133166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476372, 14.696472, 3.826774>,  <19.610521, 14.620258, 3.642939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.476372, 14.696472, 3.826774>,  <19.252790, 14.823496, 4.133166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476372, 14.696472, 3.826774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335378, -0.931410, 0.141409,
		-0.758347, 0.177852, -0.627119,
		0.558955, -0.317559, -0.765980,
		19.644058, 14.601205, 3.596980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846729, 14.286317, 3.646447>,  <19.252790, 14.823496, 4.133166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846729, 14.286317, 3.646447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242405, 14.229645, 3.631335>,  <19.479811, 14.195642, 3.622268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242405, 14.229645, 3.631335>,  <18.846729, 14.286317, 3.646447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242405, 14.229645, 3.631335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136846, -0.984555, 0.109202,
		-0.052669, -0.102852, -0.993301,
		0.989191, -0.141681, -0.037780,
		19.539162, 14.187140, 3.620001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241032, 14.265995, 3.877978>,  <18.846729, 14.286317, 3.646447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241032, 14.265995, 3.877978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492691, 13.975723, 3.989376>,  <18.643686, 13.801560, 4.056214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492691, 13.975723, 3.989376>,  <18.241032, 14.265995, 3.877978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492691, 13.975723, 3.989376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705877, 0.683430, 0.186175,
		-0.325435, 0.079451, 0.942221,
		0.629150, -0.725680, 0.278495,
		18.681437, 13.758019, 4.072924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508190, 14.458983, 4.580457>,  <18.241032, 14.265995, 3.877978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508190, 14.458983, 4.580457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771397, 14.244835, 4.368648>,  <18.929319, 14.116346, 4.241562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771397, 14.244835, 4.368648>,  <18.508190, 14.458983, 4.580457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771397, 14.244835, 4.368648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675206, 0.730795, 0.100182,
		0.333338, -0.423459, 0.842359,
		0.658014, -0.535371, -0.529524,
		18.968801, 14.084224, 4.209790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100538, 14.322653, 4.917084>,  <18.508190, 14.458983, 4.580457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.100538, 14.322653, 4.917084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237682, 14.271229, 4.544865>,  <19.319969, 14.240375, 4.321533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237682, 14.271229, 4.544865>,  <19.100538, 14.322653, 4.917084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.237682, 14.271229, 4.544865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674895, 0.722752, 0.148814,
		0.653424, -0.679045, 0.334567,
		0.342861, -0.128559, -0.930548,
		19.340540, 14.232661, 4.265700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836554, 14.330446, 5.038649>,  <19.100538, 14.322653, 4.917084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836554, 14.330446, 5.038649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734413, 14.414024, 4.661048>,  <19.673128, 14.464171, 4.434488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734413, 14.414024, 4.661048>,  <19.836554, 14.330446, 5.038649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734413, 14.414024, 4.661048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646704, 0.762717, -0.006113,
		0.718728, -0.612050, -0.329887,
		-0.255351, 0.208946, -0.944001,
		19.657808, 14.476708, 4.377848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416855, 14.289777, 4.518250>,  <19.836554, 14.330446, 5.038649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416855, 14.289777, 4.518250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.129349, 14.549866, 4.419789>,  <19.956846, 14.705919, 4.360713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.129349, 14.549866, 4.419789>,  <20.416855, 14.289777, 4.518250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129349, 14.549866, 4.419789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657811, 0.750627, 0.062006,
		0.225085, -0.117352, -0.967246,
		-0.718764, 0.650222, -0.246150,
		19.913719, 14.744932, 4.345944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603596, 14.687725, 3.937604>,  <20.416855, 14.289777, 4.518250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603596, 14.687725, 3.937604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.384144, 14.942429, 4.154323>,  <20.252472, 15.095251, 4.284354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.384144, 14.942429, 4.154323>,  <20.603596, 14.687725, 3.937604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.384144, 14.942429, 4.154323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781529, 0.620804, 0.061771,
		-0.297016, 0.457319, -0.838237,
		-0.548629, 0.636759, 0.541797,
		20.219555, 15.133456, 4.316862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655210, 15.481022, 3.652769>,  <20.603596, 14.687725, 3.937604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655210, 15.481022, 3.652769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635815, 15.516075, 4.050758>,  <20.624176, 15.537107, 4.289551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635815, 15.516075, 4.050758>,  <20.655210, 15.481022, 3.652769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635815, 15.516075, 4.050758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729752, 0.683269, -0.024614,
		-0.681990, 0.724889, -0.097082,
		-0.048491, 0.087632, 0.994972,
		20.621267, 15.542365, 4.349249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523552, 16.125290, 3.885257>,  <20.655210, 15.481022, 3.652769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523552, 16.125290, 3.885257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712860, 15.967594, 4.200368>,  <20.826445, 15.872977, 4.389434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712860, 15.967594, 4.200368>,  <20.523552, 16.125290, 3.885257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712860, 15.967594, 4.200368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582188, 0.811112, 0.056157,
		-0.661114, 0.432057, 0.613396,
		0.473270, -0.394239, 0.787776,
		20.854841, 15.849322, 4.436701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.668674, 16.573027, 4.557722>,  <20.523552, 16.125290, 3.885257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.668674, 16.573027, 4.557722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.948303, 16.288124, 4.532476>,  <21.116081, 16.117182, 4.517329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.948303, 16.288124, 4.532476>,  <20.668674, 16.573027, 4.557722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.948303, 16.288124, 4.532476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714327, 0.699609, 0.016878,
		0.032134, -0.056883, 0.997863,
		0.699074, -0.712258, -0.063114,
		21.158026, 16.074446, 4.513542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262224, 16.626392, 5.169992>,  <20.668674, 16.573027, 4.557722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262224, 16.626392, 5.169992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370892, 16.470680, 4.817934>,  <21.436092, 16.377253, 4.606699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370892, 16.470680, 4.817934>,  <21.262224, 16.626392, 5.169992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370892, 16.470680, 4.817934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687213, 0.718715, -0.105764,
		0.673746, -0.576115, 0.462771,
		0.271669, -0.389281, -0.880146,
		21.452393, 16.353895, 4.553890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968475, 16.643290, 5.307425>,  <21.262224, 16.626392, 5.169992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968475, 16.643290, 5.307425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.860882, 16.656384, 4.922390>,  <21.796326, 16.664240, 4.691369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.860882, 16.656384, 4.922390>,  <21.968475, 16.643290, 5.307425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860882, 16.656384, 4.922390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565280, 0.814549, -0.130262,
		0.779811, -0.579170, -0.237606,
		-0.268986, 0.032734, -0.962588,
		21.780186, 16.666204, 4.633614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.484316, 16.770851, 4.907087>,  <21.968475, 16.643290, 5.307425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.484316, 16.770851, 4.907087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191368, 16.902889, 4.668871>,  <22.015598, 16.982113, 4.525941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191368, 16.902889, 4.668871>,  <22.484316, 16.770851, 4.907087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.191368, 16.902889, 4.668871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542124, 0.811884, -0.216671,
		0.411988, -0.481541, -0.773553,
		-0.732371, 0.330095, -0.595541,
		21.971657, 17.001919, 4.490209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.953232, 16.704231, 4.273520>,  <22.484316, 16.770851, 4.907087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.953232, 16.704231, 4.273520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.910049, 16.767174, 3.880871>,  <22.884140, 16.804939, 3.645281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.910049, 16.767174, 3.880871>,  <22.953232, 16.704231, 4.273520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.910049, 16.767174, 3.880871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858699, 0.482814, 0.171833,
		0.500980, 0.861469, 0.083001,
		-0.107955, 0.157358, -0.981623,
		22.877663, 16.814381, 3.586384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.046402, 17.442644, 3.920144>,  <22.953232, 16.704231, 4.273520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.046402, 17.442644, 3.920144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743137, 17.240501, 3.755314>,  <22.561178, 17.119215, 3.656416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743137, 17.240501, 3.755314>,  <23.046402, 17.442644, 3.920144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.743137, 17.240501, 3.755314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635852, 0.713026, 0.295442,
		0.144516, 0.486011, -0.861921,
		-0.758160, -0.505358, -0.412075,
		22.515690, 17.088894, 3.631691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.668560, 17.808472, 3.295993>,  <23.046402, 17.442644, 3.920144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.668560, 17.808472, 3.295993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.441841, 17.592419, 3.544830>,  <22.305809, 17.462788, 3.694132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.441841, 17.592419, 3.544830>,  <22.668560, 17.808472, 3.295993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.441841, 17.592419, 3.544830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555505, 0.808185, 0.195580,
		-0.608404, -0.234721, -0.758123,
		-0.566797, -0.540133, 0.622091,
		22.271803, 17.430378, 3.731457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963753, 17.682766, 2.983557>,  <22.668560, 17.808472, 3.295993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963753, 17.682766, 2.983557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949757, 17.698124, 3.383017>,  <21.941359, 17.707338, 3.622693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.949757, 17.698124, 3.383017>,  <21.963753, 17.682766, 2.983557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.949757, 17.698124, 3.383017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740331, 0.670250, -0.051710,
		-0.671331, -0.741141, 0.004972,
		-0.034992, 0.038395, 0.998650,
		21.939259, 17.709642, 3.682611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328682, 18.115637, 3.128267>,  <21.963753, 17.682766, 2.983557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328682, 18.115637, 3.128267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492996, 18.092018, 3.492194>,  <21.591585, 18.077847, 3.710550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492996, 18.092018, 3.492194>,  <21.328682, 18.115637, 3.128267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492996, 18.092018, 3.492194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531985, 0.794894, 0.291781,
		-0.740436, -0.603869, 0.295120,
		0.410786, -0.059045, 0.909818,
		21.616232, 18.074305, 3.765139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.862782, 18.159641, 3.714905>,  <21.328682, 18.115637, 3.128267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.862782, 18.159641, 3.714905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.208824, 18.284462, 3.871987>,  <21.416449, 18.359354, 3.966237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.208824, 18.284462, 3.871987>,  <20.862782, 18.159641, 3.714905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.208824, 18.284462, 3.871987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450543, 0.827544, 0.334937,
		-0.220463, -0.466686, 0.856504,
		0.865105, 0.312050, 0.392705,
		21.468355, 18.378077, 3.989799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.791416, 18.317194, 4.392343>,  <20.862782, 18.159641, 3.714905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.791416, 18.317194, 4.392343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106987, 18.527061, 4.264396>,  <21.296329, 18.652983, 4.187628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106987, 18.527061, 4.264396>,  <20.791416, 18.317194, 4.392343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.106987, 18.527061, 4.264396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363316, 0.818088, 0.445796,
		0.495574, -0.235489, 0.836033,
		0.788929, 0.524669, -0.319866,
		21.343666, 18.684462, 4.168436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244337, 18.616739, 4.969472>,  <20.791416, 18.317194, 4.392343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244337, 18.616739, 4.969472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.240540, 18.866383, 4.656960>,  <21.238262, 19.016169, 4.469452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.240540, 18.866383, 4.656960>,  <21.244337, 18.616739, 4.969472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240540, 18.866383, 4.656960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375831, 0.721804, 0.581162,
		0.926640, 0.299146, 0.227707,
		-0.009492, 0.624108, -0.781280,
		21.237692, 19.053616, 4.422575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.168041, 19.189007, 5.307655>,  <21.244337, 18.616739, 4.969472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.168041, 19.189007, 5.307655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168922, 19.311127, 4.926754>,  <21.169451, 19.384399, 4.698213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168922, 19.311127, 4.926754>,  <21.168041, 19.189007, 5.307655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168922, 19.311127, 4.926754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134850, 0.943649, 0.302229,
		0.990864, 0.127746, 0.043247,
		0.002201, 0.305299, -0.952254,
		21.169582, 19.402716, 4.641078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513004, 19.805014, 5.268822>,  <21.168041, 19.189007, 5.307655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513004, 19.805014, 5.268822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245911, 19.841457, 4.973300>,  <21.085655, 19.863323, 4.795987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245911, 19.841457, 4.973300>,  <21.513004, 19.805014, 5.268822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245911, 19.841457, 4.973300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153694, 0.954223, 0.256587,
		0.728361, 0.284882, -0.623163,
		-0.667733, 0.091111, -0.738804,
		21.045591, 19.868792, 4.751659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.725927, 20.376219, 4.829961>,  <21.513004, 19.805014, 5.268822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.725927, 20.376219, 4.829961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.330524, 20.315826, 4.833001>,  <21.093283, 20.279591, 4.834824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.330524, 20.315826, 4.833001>,  <21.725927, 20.376219, 4.829961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330524, 20.315826, 4.833001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141758, 0.943238, 0.300345,
		-0.052514, 0.295816, -0.953801,
		-0.988508, -0.150981, 0.007599,
		21.033972, 20.270533, 4.835280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.383799, 21.013590, 4.545673>,  <21.725927, 20.376219, 4.829961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.383799, 21.013590, 4.545673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136768, 20.795990, 4.772887>,  <20.988550, 20.665430, 4.909215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136768, 20.795990, 4.772887>,  <21.383799, 21.013590, 4.545673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136768, 20.795990, 4.772887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495502, 0.829980, 0.256147,
		-0.610801, -0.123272, -0.782129,
		-0.617576, -0.544001, 0.568034,
		20.951496, 20.632790, 4.943297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736746, 20.890974, 4.171494>,  <21.383799, 21.013590, 4.545673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736746, 20.890974, 4.171494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701981, 20.602135, 3.896971>,  <20.681122, 20.428831, 3.732257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701981, 20.602135, 3.896971>,  <20.736746, 20.890974, 4.171494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701981, 20.602135, 3.896971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129022, 0.691271, -0.710984,
		0.987826, 0.026756, -0.153247,
		-0.086912, -0.722100, -0.686307,
		20.675907, 20.385504, 3.691079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121639, 21.074064, 3.660721>,  <20.736746, 20.890974, 4.171494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121639, 21.074064, 3.660721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846237, 20.830143, 3.503698>,  <20.680996, 20.683790, 3.409484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846237, 20.830143, 3.503698>,  <21.121639, 21.074064, 3.660721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846237, 20.830143, 3.503698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171476, 0.662819, -0.728880,
		0.704668, -0.434523, -0.560921,
		-0.688505, -0.609803, -0.392558,
		20.639685, 20.647202, 3.385931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732868, 20.716122, 3.374039>,  <21.121639, 21.074064, 3.660721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732868, 20.716122, 3.374039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861599, 20.371910, 3.531985>,  <21.938837, 20.165382, 3.626753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861599, 20.371910, 3.531985>,  <21.732868, 20.716122, 3.374039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.861599, 20.371910, 3.531985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098040, -0.384523, -0.917894,
		0.941709, 0.334115, -0.039384,
		0.321826, -0.860529, 0.394866,
		21.958147, 20.113752, 3.650445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.621864, 16.710981, 16.135195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.905571, 16.966213, 16.255058>,  <22.075794, 17.119352, 16.326977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.905571, 16.966213, 16.255058>,  <21.621864, 16.710981, 16.135195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.905571, 16.966213, 16.255058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173115, 0.254412, -0.951476,
		-0.683354, 0.726725, 0.069985,
		0.709266, 0.638079, 0.299661,
		22.118351, 17.157637, 16.344957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521677, 17.254541, 15.858668>,  <21.621864, 16.710981, 16.135195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521677, 17.254541, 15.858668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.913036, 17.291256, 15.932764>,  <22.147852, 17.313284, 15.977221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.913036, 17.291256, 15.932764>,  <21.521677, 17.254541, 15.858668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913036, 17.291256, 15.932764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145647, 0.329869, -0.932724,
		-0.146716, 0.939554, 0.309375,
		0.978397, 0.091786, 0.185240,
		22.206556, 17.318792, 15.988336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656406, 17.755926, 15.442299>,  <21.521677, 17.254541, 15.858668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656406, 17.755926, 15.442299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.027641, 17.641724, 15.537914>,  <22.250381, 17.573202, 15.595284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.027641, 17.641724, 15.537914>,  <21.656406, 17.755926, 15.442299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.027641, 17.641724, 15.537914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327639, 0.321105, -0.888563,
		0.176935, 0.902982, 0.391557,
		0.928087, -0.285508, 0.239038,
		22.306068, 17.556072, 15.609626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.119921, 18.308937, 15.225505>,  <21.656406, 17.755926, 15.442299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.119921, 18.308937, 15.225505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.402008, 18.025352, 15.228127>,  <22.571260, 17.855202, 15.229700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.402008, 18.025352, 15.228127>,  <22.119921, 18.308937, 15.225505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402008, 18.025352, 15.228127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309986, 0.300008, -0.902166,
		0.637634, 0.638256, 0.431338,
		0.705218, -0.708961, 0.006555,
		22.613573, 17.812664, 15.230093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.728182, 18.602804, 14.963842>,  <22.119921, 18.308937, 15.225505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.728182, 18.602804, 14.963842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.785683, 18.210529, 14.910791>,  <22.820183, 17.975164, 14.878961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.785683, 18.210529, 14.910791>,  <22.728182, 18.602804, 14.963842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.785683, 18.210529, 14.910791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357705, 0.176449, -0.917013,
		0.922704, 0.084383, 0.376162,
		0.143753, -0.980686, -0.132626,
		22.828808, 17.916323, 14.871003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.337540, 18.519857, 14.697503>,  <22.728182, 18.602804, 14.963842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.337540, 18.519857, 14.697503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.160278, 18.178978, 14.586241>,  <23.053921, 17.974449, 14.519484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.160278, 18.178978, 14.586241>,  <23.337540, 18.519857, 14.697503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.160278, 18.178978, 14.586241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252187, 0.179241, -0.950933,
		0.860242, -0.491556, 0.135483,
		-0.443153, -0.852200, -0.278155,
		23.027332, 17.923317, 14.502794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.724817, 18.359407, 14.087457>,  <23.337540, 18.519857, 14.697503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.724817, 18.359407, 14.087457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.413143, 18.109947, 14.062386>,  <23.226139, 17.960272, 14.047343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.413143, 18.109947, 14.062386>,  <23.724817, 18.359407, 14.087457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.413143, 18.109947, 14.062386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060441, 0.024771, -0.997864,
		0.623871, -0.781311, 0.018393,
		-0.779187, -0.623650, -0.062677,
		23.179386, 17.922852, 14.043582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.039465, 17.937967, 13.604605>,  <23.724817, 18.359407, 14.087457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.039465, 17.937967, 13.604605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.643909, 17.881691, 13.623806>,  <23.406576, 17.847925, 13.635327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.643909, 17.881691, 13.623806>,  <24.039465, 17.937967, 13.604605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.643909, 17.881691, 13.623806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030184, -0.126156, -0.991551,
		0.145561, -0.981983, 0.120508,
		-0.988889, -0.140694, 0.048004,
		23.347242, 17.839483, 13.638207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.860405, 17.234207, 13.271590>,  <24.039465, 17.937967, 13.604605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.860405, 17.234207, 13.271590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.537533, 17.469658, 13.253792>,  <23.343809, 17.610928, 13.243113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.537533, 17.469658, 13.253792>,  <23.860405, 17.234207, 13.271590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.537533, 17.469658, 13.253792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023781, -0.042891, -0.998797,
		-0.589827, -0.807266, 0.020623,
		-0.807179, 0.588627, -0.044496,
		23.295380, 17.646246, 13.240443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.435007, 16.898836, 12.761484>,  <23.860405, 17.234207, 13.271590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.435007, 16.898836, 12.761484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.266026, 17.260067, 12.792439>,  <23.164637, 17.476805, 12.811011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.266026, 17.260067, 12.792439>,  <23.435007, 16.898836, 12.761484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.266026, 17.260067, 12.792439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197919, -0.008591, -0.980181,
		-0.884512, -0.429396, 0.182365,
		-0.422453, 0.903076, 0.077387,
		23.139290, 17.530989, 12.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.746284, 16.842594, 12.475793>,  <23.435007, 16.898836, 12.761484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.746284, 16.842594, 12.475793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.854794, 17.226509, 12.446881>,  <22.919899, 17.456858, 12.429534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.854794, 17.226509, 12.446881>,  <22.746284, 16.842594, 12.475793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.854794, 17.226509, 12.446881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080194, -0.052296, -0.995407,
		-0.959156, 0.275822, 0.062783,
		0.271272, 0.959785, -0.072279,
		22.936174, 17.514444, 12.425198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240963, 17.236216, 12.063737>,  <22.746284, 16.842594, 12.475793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240963, 17.236216, 12.063737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.596516, 17.415947, 12.027964>,  <22.809847, 17.523785, 12.006499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.596516, 17.415947, 12.027964>,  <22.240963, 17.236216, 12.063737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596516, 17.415947, 12.027964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052424, -0.094171, -0.994175,
		-0.455132, 0.888390, -0.060151,
		0.888879, 0.449327, -0.089433,
		22.863180, 17.550745, 12.001134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.207428, 17.583046, 11.450777>,  <22.240963, 17.236216, 12.063737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.207428, 17.583046, 11.450777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.601856, 17.606434, 11.513062>,  <22.838512, 17.620466, 11.550432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.601856, 17.606434, 11.513062>,  <22.207428, 17.583046, 11.450777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601856, 17.606434, 11.513062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161960, -0.124415, -0.978923,
		-0.037867, 0.990506, -0.132152,
		0.986071, 0.058472, 0.155711,
		22.897678, 17.623976, 11.559774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.433252, 18.065477, 10.969299>,  <22.207428, 17.583046, 11.450777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.433252, 18.065477, 10.969299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.768871, 17.866856, 11.058231>,  <22.970243, 17.747683, 11.111590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.768871, 17.866856, 11.058231>,  <22.433252, 18.065477, 10.969299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.768871, 17.866856, 11.058231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223439, -0.058097, -0.972985,
		0.496057, 0.866059, 0.062204,
		0.839048, -0.496555, 0.222331,
		23.020586, 17.717890, 11.124930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038336, 18.379478, 10.676494>,  <22.433252, 18.065477, 10.969299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038336, 18.379478, 10.676494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.162003, 18.003368, 10.733480>,  <23.236202, 17.777702, 10.767673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.162003, 18.003368, 10.733480>,  <23.038336, 18.379478, 10.676494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.162003, 18.003368, 10.733480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112986, -0.112429, -0.987215,
		0.944273, 0.321310, 0.071479,
		0.309166, -0.940276, 0.142467,
		23.254753, 17.721285, 10.776220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.714113, 18.278324, 10.342730>,  <23.038336, 18.379478, 10.676494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.714113, 18.278324, 10.342730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.509937, 17.935738, 10.373502>,  <23.387432, 17.730186, 10.391965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.509937, 17.935738, 10.373502>,  <23.714113, 18.278324, 10.342730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509937, 17.935738, 10.373502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241955, -0.228896, -0.942902,
		0.825172, -0.462681, 0.324064,
		-0.510440, -0.856466, 0.076931,
		23.356806, 17.678799, 10.396581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.165035, 17.707336, 10.051353>,  <23.714113, 18.278324, 10.342730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.165035, 17.707336, 10.051353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.800182, 17.544369, 10.033334>,  <23.581270, 17.446589, 10.022522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.800182, 17.544369, 10.033334>,  <24.165035, 17.707336, 10.051353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.800182, 17.544369, 10.033334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180296, -0.300071, -0.936724,
		0.368119, -0.862536, 0.347160,
		-0.912131, -0.407418, -0.045050,
		23.526543, 17.422144, 10.019819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290592, 17.216303, 9.552086>,  <24.165035, 17.707336, 10.051353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290592, 17.216303, 9.552086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.890865, 17.209133, 9.565028>,  <23.651030, 17.204832, 9.572794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.890865, 17.209133, 9.565028>,  <24.290592, 17.216303, 9.552086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.890865, 17.209133, 9.565028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026754, -0.253809, -0.966884,
		0.025544, -0.967088, 0.253156,
		-0.999316, -0.017925, 0.032356,
		23.591070, 17.203756, 9.574735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991327, 16.616564, 9.096480>,  <24.290592, 17.216303, 9.552086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991327, 16.616564, 9.096480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.659595, 16.838139, 9.125796>,  <23.460556, 16.971083, 9.143386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.659595, 16.838139, 9.125796>,  <23.991327, 16.616564, 9.096480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.659595, 16.838139, 9.125796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243428, -0.240118, -0.939727,
		-0.502951, -0.797181, 0.333980,
		-0.829327, 0.553936, 0.073289,
		23.410797, 17.004320, 9.147783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.428198, 16.203651, 8.800313>,  <23.991327, 16.616564, 9.096480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.428198, 16.203651, 8.800313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.322777, 16.589092, 8.782390>,  <23.259523, 16.820356, 8.771635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.322777, 16.589092, 8.782390>,  <23.428198, 16.203651, 8.800313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322777, 16.589092, 8.782390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187351, -0.096698, -0.977522,
		-0.946277, -0.249234, 0.206017,
		-0.263553, 0.963604, -0.044809,
		23.243711, 16.878174, 8.768947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.782013, 16.183958, 8.426126>,  <23.428198, 16.203651, 8.800313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.782013, 16.183958, 8.426126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.918690, 16.555313, 8.367695>,  <23.000696, 16.778126, 8.332636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.918690, 16.555313, 8.367695>,  <22.782013, 16.183958, 8.426126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.918690, 16.555313, 8.367695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091834, -0.121708, -0.988308,
		-0.935314, 0.351113, 0.043671,
		0.341693, 0.928389, -0.146079,
		23.021198, 16.833830, 8.323871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221426, 16.668961, 8.100490>,  <22.782013, 16.183958, 8.426126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221426, 16.668961, 8.100490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.587845, 16.799877, 8.007765>,  <22.807695, 16.878428, 7.952130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.587845, 16.799877, 8.007765>,  <22.221426, 16.668961, 8.100490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.587845, 16.799877, 8.007765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164763, -0.219866, -0.961516,
		-0.365665, 0.918988, -0.147482,
		0.916047, 0.327293, -0.231812,
		22.862659, 16.898066, 7.938221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118784, 15.970010, 7.791202>,  <22.221426, 16.668961, 8.100490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.118784, 15.970010, 7.791202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.782513, 15.769814, 7.708480>,  <21.580750, 15.649695, 7.658847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.782513, 15.769814, 7.708480>,  <22.118784, 15.970010, 7.791202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.782513, 15.769814, 7.708480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210416, -0.049989, 0.976333,
		-0.498985, 0.864297, -0.063287,
		-0.840678, -0.500492, -0.206805,
		21.530310, 15.619666, 7.646438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450970, 16.361731, 8.051537>,  <22.118784, 15.970010, 7.791202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450970, 16.361731, 8.051537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.402138, 15.964966, 8.037630>,  <21.372839, 15.726907, 8.029286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.402138, 15.964966, 8.037630>,  <21.450970, 16.361731, 8.051537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402138, 15.964966, 8.037630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166641, -0.014047, 0.985918,
		-0.978431, 0.126154, -0.163579,
		-0.122080, -0.991911, -0.034766,
		21.365513, 15.667393, 8.027200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707609, 16.314913, 8.366824>,  <21.450970, 16.361731, 8.051537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707609, 16.314913, 8.366824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.967373, 16.012924, 8.403234>,  <21.123232, 15.831731, 8.425079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.967373, 16.012924, 8.403234>,  <20.707609, 16.314913, 8.366824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.967373, 16.012924, 8.403234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326699, -0.168904, 0.929914,
		-0.686684, -0.633632, -0.356336,
		0.649409, -0.754972, 0.091023,
		21.162195, 15.786433, 8.430540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333597, 15.909112, 8.856495>,  <20.707609, 16.314913, 8.366824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333597, 15.909112, 8.856495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.687237, 15.722267, 8.851137>,  <20.899420, 15.610161, 8.847922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.687237, 15.722267, 8.851137>,  <20.333597, 15.909112, 8.856495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687237, 15.722267, 8.851137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024446, 0.017604, 0.999546,
		-0.466664, -0.884023, 0.026983,
		0.884097, -0.467112, -0.013395,
		20.952465, 15.582133, 8.847118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.287077, 15.245432, 9.149283>,  <20.333597, 15.909112, 8.856495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.287077, 15.245432, 9.149283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.676327, 15.331676, 9.181627>,  <20.909878, 15.383423, 9.201034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.676327, 15.331676, 9.181627>,  <20.287077, 15.245432, 9.149283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676327, 15.331676, 9.181627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033929, -0.213059, 0.976450,
		0.227761, -0.952952, -0.200018,
		0.973126, 0.215611, 0.080859,
		20.968264, 15.396359, 9.205885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540560, 14.775955, 9.590202>,  <20.287077, 15.245432, 9.149283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540560, 14.775955, 9.590202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.835938, 15.045681, 9.589917>,  <21.013165, 15.207517, 9.589746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.835938, 15.045681, 9.589917>,  <20.540560, 14.775955, 9.590202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835938, 15.045681, 9.589917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032225, -0.034234, 0.998894,
		0.673545, -0.737650, -0.047009,
		0.738444, 0.674315, -0.000713,
		21.057470, 15.247975, 9.589704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964819, 14.474617, 10.003227>,  <20.540560, 14.775955, 9.590202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964819, 14.474617, 10.003227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.073051, 14.859577, 9.993653>,  <21.137991, 15.090553, 9.987909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.073051, 14.859577, 9.993653>,  <20.964819, 14.474617, 10.003227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073051, 14.859577, 9.993653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068695, 0.044101, 0.996663,
		0.960244, -0.268033, 0.078045,
		0.270580, 0.962400, -0.023935,
		21.154226, 15.148297, 9.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.461086, 14.580330, 10.524383>,  <20.964819, 14.474617, 10.003227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.461086, 14.580330, 10.524383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.273479, 14.926262, 10.452725>,  <21.160915, 15.133821, 10.409731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.273479, 14.926262, 10.452725>,  <21.461086, 14.580330, 10.524383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.273479, 14.926262, 10.452725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242762, 0.068784, 0.967644,
		0.849170, 0.497330, 0.177687,
		-0.469017, 0.864830, -0.179142,
		21.132774, 15.185711, 10.398983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523188, 14.901281, 11.141746>,  <21.461086, 14.580330, 10.524383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523188, 14.901281, 11.141746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.249969, 15.135815, 10.967545>,  <21.086039, 15.276534, 10.863024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.249969, 15.135815, 10.967545>,  <21.523188, 14.901281, 11.141746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.249969, 15.135815, 10.967545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369744, 0.236632, 0.898496,
		0.629871, 0.774739, 0.055162,
		-0.683046, 0.586332, -0.435503,
		21.045055, 15.311714, 10.836894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471798, 15.548020, 11.534669>,  <21.523188, 14.901281, 11.141746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471798, 15.548020, 11.534669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.126812, 15.525948, 11.333428>,  <20.919821, 15.512704, 11.212684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.126812, 15.525948, 11.333428>,  <21.471798, 15.548020, 11.534669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126812, 15.525948, 11.333428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505369, 0.147952, 0.850125,
		0.027524, 0.987454, -0.155490,
		-0.862464, -0.055181, -0.503101,
		20.868073, 15.509394, 11.182498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.130747, 16.122473, 11.705875>,  <21.471798, 15.548020, 11.534669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.130747, 16.122473, 11.705875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.842739, 15.868900, 11.592951>,  <20.669933, 15.716757, 11.525196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.842739, 15.868900, 11.592951>,  <21.130747, 16.122473, 11.705875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.842739, 15.868900, 11.592951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365527, 0.000650, 0.930801,
		-0.589881, 0.773388, -0.232187,
		-0.720021, -0.633933, -0.282311,
		20.626732, 15.678720, 11.508258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361446, 16.392294, 11.893017>,  <21.130747, 16.122473, 11.705875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361446, 16.392294, 11.893017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.303635, 16.003937, 11.816618>,  <20.268948, 15.770923, 11.770779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.303635, 16.003937, 11.816618>,  <20.361446, 16.392294, 11.893017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303635, 16.003937, 11.816618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564788, -0.077551, 0.821584,
		-0.812481, 0.226615, -0.537140,
		-0.144528, -0.970892, -0.190998,
		20.260277, 15.712669, 11.759318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641327, 16.236620, 11.966837>,  <20.361446, 16.392294, 11.893017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641327, 16.236620, 11.966837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.845879, 15.899544, 12.034201>,  <19.968611, 15.697298, 12.074619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.845879, 15.899544, 12.034201>,  <19.641327, 16.236620, 11.966837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.845879, 15.899544, 12.034201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575158, -0.190017, 0.795667,
		-0.638501, -0.503751, -0.581852,
		0.511380, -0.842691, 0.168410,
		19.999292, 15.646736, 12.084723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095774, 15.854254, 12.281701>,  <19.641327, 16.236620, 11.966837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095774, 15.854254, 12.281701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.440571, 15.686104, 12.395015>,  <19.647449, 15.585214, 12.463003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.440571, 15.686104, 12.395015>,  <19.095774, 15.854254, 12.281701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440571, 15.686104, 12.395015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374644, -0.151851, 0.914649,
		-0.341478, -0.894554, -0.288386,
		0.861995, -0.420375, 0.283285,
		19.699169, 15.559992, 12.480000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899815, 15.130014, 12.655396>,  <19.095774, 15.854254, 12.281701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899815, 15.130014, 12.655396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.267780, 15.256836, 12.747685>,  <19.488560, 15.332929, 12.803060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.267780, 15.256836, 12.747685>,  <18.899815, 15.130014, 12.655396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267780, 15.256836, 12.747685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240658, -0.008050, 0.970577,
		0.309584, -0.948373, 0.068897,
		0.919914, 0.317056, 0.230726,
		19.543755, 15.351953, 12.816903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031467, 14.764894, 13.290742>,  <18.899815, 15.130014, 12.655396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031467, 14.764894, 13.290742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.327946, 15.033077, 13.304111>,  <19.505833, 15.193987, 13.312134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.327946, 15.033077, 13.304111>,  <19.031467, 14.764894, 13.290742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327946, 15.033077, 13.304111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140885, 0.106681, 0.984261,
		0.656340, -0.734238, 0.173529,
		0.741194, 0.670458, 0.033424,
		19.550304, 15.234215, 13.314138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509020, 14.555662, 13.786459>,  <19.031467, 14.764894, 13.290742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509020, 14.555662, 13.786459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.573746, 14.949841, 13.765633>,  <19.612581, 15.186348, 13.753137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.573746, 14.949841, 13.765633>,  <19.509020, 14.555662, 13.786459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.573746, 14.949841, 13.765633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059942, 0.042848, 0.997282,
		0.984999, -0.164495, -0.052136,
		0.161814, 0.985447, -0.052065,
		19.622290, 15.245475, 13.750013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056185, 14.672818, 14.284398>,  <19.509020, 14.555662, 13.786459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056185, 14.672818, 14.284398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.928913, 15.046124, 14.217728>,  <19.852551, 15.270107, 14.177725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.928913, 15.046124, 14.217728>,  <20.056185, 14.672818, 14.284398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928913, 15.046124, 14.217728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042865, 0.189796, 0.980887,
		0.947062, 0.304951, -0.100393,
		-0.318177, 0.933264, -0.166677,
		19.833460, 15.326103, 14.167725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.554087, 15.089856, 14.596445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.234039, 15.327282, 14.561827>,  <20.042011, 15.469737, 14.541056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.234039, 15.327282, 14.561827>,  <20.554087, 15.089856, 14.596445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.234039, 15.327282, 14.561827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138910, 0.323710, 0.935904,
		0.583535, 0.736813, -0.341458,
		-0.800119, 0.593565, -0.086546,
		19.994003, 15.505351, 14.535863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704269, 15.670084, 14.891463>,  <20.554087, 15.089856, 14.596445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704269, 15.670084, 14.891463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.305668, 15.675846, 14.924383>,  <20.066507, 15.679303, 14.944135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.305668, 15.675846, 14.924383>,  <20.704269, 15.670084, 14.891463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.305668, 15.675846, 14.924383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082201, 0.345367, 0.934861,
		-0.014956, 0.938357, -0.345344,
		-0.996504, 0.014406, 0.082299,
		20.006718, 15.680168, 14.949073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605030, 16.324186, 15.161243>,  <20.704269, 15.670084, 14.891463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605030, 16.324186, 15.161243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.291351, 16.089447, 15.241884>,  <20.103144, 15.948604, 15.290269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.291351, 16.089447, 15.241884>,  <20.605030, 16.324186, 15.161243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291351, 16.089447, 15.241884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036041, 0.367427, 0.929354,
		-0.619464, 0.721531, -0.309286,
		-0.784198, -0.586848, 0.201603,
		20.056091, 15.913393, 15.302365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275339, 16.656118, 15.788258>,  <20.605030, 16.324186, 15.161243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275339, 16.656118, 15.788258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.095230, 16.299065, 15.796831>,  <19.987164, 16.084833, 15.801975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.095230, 16.299065, 15.796831>,  <20.275339, 16.656118, 15.788258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095230, 16.299065, 15.796831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182399, 0.115455, 0.976422,
		-0.874061, 0.435749, -0.214802,
		-0.450275, -0.892633, 0.021435,
		19.960148, 16.031275, 15.803262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728083, 16.766806, 16.211025>,  <20.275339, 16.656118, 15.788258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728083, 16.766806, 16.211025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.786163, 16.371120, 16.203325>,  <19.821012, 16.133709, 16.198706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.786163, 16.371120, 16.203325>,  <19.728083, 16.766806, 16.211025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786163, 16.371120, 16.203325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162730, -0.043068, 0.985730,
		-0.975928, -0.139997, -0.167229,
		0.145201, -0.989215, -0.019250,
		19.829723, 16.074356, 16.197550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122206, 16.424761, 16.452444>,  <19.728083, 16.766806, 16.211025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122206, 16.424761, 16.452444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.409481, 16.152145, 16.508608>,  <19.581846, 15.988577, 16.542307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.409481, 16.152145, 16.508608>,  <19.122206, 16.424761, 16.452444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409481, 16.152145, 16.508608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239287, -0.052412, 0.969533,
		-0.653414, -0.729904, -0.200724,
		0.718187, -0.681537, 0.140410,
		19.624937, 15.947684, 16.550732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.845421, 15.762475, 16.814054>,  <19.122206, 16.424761, 16.452444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.845421, 15.762475, 16.814054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.240124, 15.803677, 16.864168>,  <19.476946, 15.828398, 16.894238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.240124, 15.803677, 16.864168>,  <18.845421, 15.762475, 16.814054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240124, 15.803677, 16.864168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123999, -0.018832, 0.992104,
		0.104552, -0.994502, -0.005810,
		0.986759, 0.103006, 0.125286,
		19.536152, 15.834578, 16.901754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019663, 15.195330, 17.187471>,  <18.845421, 15.762475, 16.814054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019663, 15.195330, 17.187471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.339760, 15.423191, 17.262419>,  <19.531818, 15.559908, 17.307388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.339760, 15.423191, 17.262419>,  <19.019663, 15.195330, 17.187471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.339760, 15.423191, 17.262419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206348, -0.031794, 0.977962,
		0.563056, -0.821270, 0.092104,
		0.800243, 0.569653, 0.187369,
		19.579832, 15.594087, 17.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309973, 14.917232, 17.715895>,  <19.019663, 15.195330, 17.187471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309973, 14.917232, 17.715895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.444210, 15.294010, 17.720171>,  <19.524754, 15.520077, 17.722736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.444210, 15.294010, 17.720171>,  <19.309973, 14.917232, 17.715895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444210, 15.294010, 17.720171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012721, -0.006817, 0.999896,
		0.941921, -0.335696, 0.009694,
		0.335595, 0.941946, 0.010692,
		19.544888, 15.576594, 17.723379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915428, 14.885695, 18.133818>,  <19.309973, 14.917232, 17.715895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.915428, 14.885695, 18.133818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.755947, 15.252525, 18.134935>,  <19.660259, 15.472624, 18.135607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.755947, 15.252525, 18.134935>,  <19.915428, 14.885695, 18.133818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755947, 15.252525, 18.134935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148934, 0.061741, 0.986918,
		0.904906, 0.393902, -0.161200,
		-0.398702, 0.917076, 0.002796,
		19.636337, 15.527648, 18.135775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.169624, 15.146985, 18.758141>,  <19.915428, 14.885695, 18.133818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.169624, 15.146985, 18.758141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.883965, 15.404003, 18.647053>,  <19.712568, 15.558214, 18.580400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.883965, 15.404003, 18.647053>,  <20.169624, 15.146985, 18.758141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883965, 15.404003, 18.647053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044989, 0.353793, 0.934241,
		0.698547, 0.679681, -0.223753,
		-0.714148, 0.642545, -0.277720,
		19.669720, 15.596766, 18.563736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369280, 15.874978, 18.923290>,  <20.169624, 15.146985, 18.758141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369280, 15.874978, 18.923290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.969395, 15.865379, 18.923758>,  <19.729464, 15.859620, 18.924038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.969395, 15.865379, 18.923758>,  <20.369280, 15.874978, 18.923290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969395, 15.865379, 18.923758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007037, 0.339045, 0.940744,
		-0.022972, 0.940464, -0.339116,
		-0.999711, -0.023998, 0.001170,
		19.669481, 15.858180, 18.924109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.174124, 16.569952, 19.227892>,  <20.369280, 15.874978, 18.923290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.174124, 16.569952, 19.227892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.853981, 16.330616, 19.242956>,  <19.661896, 16.187014, 19.251995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.853981, 16.330616, 19.242956>,  <20.174124, 16.569952, 19.227892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.853981, 16.330616, 19.242956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242678, 0.380775, 0.892254,
		-0.548212, 0.704982, -0.449959,
		-0.800356, -0.598340, 0.037662,
		19.613874, 16.151114, 19.254255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.644897, 16.995640, 19.460375>,  <20.174124, 16.569952, 19.227892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.644897, 16.995640, 19.460375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.483280, 16.637196, 19.533846>,  <19.386311, 16.422129, 19.577929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.483280, 16.637196, 19.533846>,  <19.644897, 16.995640, 19.460375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483280, 16.637196, 19.533846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405138, 0.355332, 0.842379,
		-0.820130, 0.265942, -0.506617,
		-0.404041, -0.896110, 0.183675,
		19.362068, 16.368362, 19.588949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962984, 17.081646, 19.752905>,  <19.644897, 16.995640, 19.460375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962984, 17.081646, 19.752905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.060810, 16.714199, 19.877054>,  <19.119505, 16.493731, 19.951544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.060810, 16.714199, 19.877054>,  <18.962984, 17.081646, 19.752905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060810, 16.714199, 19.877054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290567, 0.235951, 0.927307,
		-0.925072, -0.316971, -0.209215,
		0.244565, -0.918617, 0.310373,
		19.134180, 16.438614, 19.970165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.422403, 16.981630, 20.213875>,  <18.962984, 17.081646, 19.752905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.422403, 16.981630, 20.213875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.718246, 16.732044, 20.314789>,  <18.895752, 16.582293, 20.375338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.718246, 16.732044, 20.314789>,  <18.422403, 16.981630, 20.213875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.718246, 16.732044, 20.314789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118032, 0.248787, 0.961339,
		-0.662607, -0.740793, 0.110358,
		0.739609, -0.623964, 0.252285,
		18.940128, 16.544855, 20.390474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158236, 16.611038, 20.788788>,  <18.422403, 16.981630, 20.213875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158236, 16.611038, 20.788788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.548843, 16.542301, 20.840752>,  <18.783209, 16.501059, 20.871931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.548843, 16.542301, 20.840752>,  <18.158236, 16.611038, 20.788788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548843, 16.542301, 20.840752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093121, 0.207071, 0.973884,
		-0.194259, -0.963115, 0.186206,
		0.976520, -0.171846, 0.129911,
		18.841799, 16.490747, 20.879725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222370, 16.051903, 21.320122>,  <18.158236, 16.611038, 20.788788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222370, 16.051903, 21.320122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.573860, 16.242817, 21.317595>,  <18.784754, 16.357365, 21.316078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.573860, 16.242817, 21.317595>,  <18.222370, 16.051903, 21.320122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573860, 16.242817, 21.317595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082429, 0.164767, 0.982882,
		0.470155, -0.863164, 0.184127,
		0.878726, 0.477285, -0.006317,
		18.837479, 16.386002, 21.315701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619745, 15.649056, 21.859772>,  <18.222370, 16.051903, 21.320122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619745, 15.649056, 21.859772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.802345, 16.003746, 21.830564>,  <18.911905, 16.216560, 21.813040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.802345, 16.003746, 21.830564>,  <18.619745, 15.649056, 21.859772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802345, 16.003746, 21.830564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077673, 0.121472, 0.989551,
		0.886328, -0.446057, 0.124326,
		0.456498, 0.886723, -0.073018,
		18.939295, 16.269764, 21.808659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121977, 15.761174, 22.396805>,  <18.619745, 15.649056, 21.859772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121977, 15.761174, 22.396805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.059757, 16.138042, 22.278067>,  <19.022425, 16.364162, 22.206823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.059757, 16.138042, 22.278067>,  <19.121977, 15.761174, 22.396805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059757, 16.138042, 22.278067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155084, 0.273487, 0.949291,
		0.975578, 0.193699, 0.103574,
		-0.155551, 0.942171, -0.296848,
		19.013092, 16.420694, 22.189013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363529, 16.028009, 23.001417>,  <19.121977, 15.761174, 22.396805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363529, 16.028009, 23.001417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.172985, 16.321693, 22.807917>,  <19.058659, 16.497904, 22.691816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.172985, 16.321693, 22.807917>,  <19.363529, 16.028009, 23.001417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172985, 16.321693, 22.807917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297655, 0.383041, 0.874461,
		0.827334, 0.560551, 0.036076,
		-0.476361, 0.734209, -0.483754,
		19.030077, 16.541956, 22.662790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500919, 16.593607, 23.461872>,  <19.363529, 16.028009, 23.001417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500919, 16.593607, 23.461872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.170414, 16.633553, 23.240129>,  <18.972111, 16.657520, 23.107084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.170414, 16.633553, 23.240129>,  <19.500919, 16.593607, 23.461872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.170414, 16.633553, 23.240129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503071, 0.311888, 0.806006,
		0.253390, 0.944856, -0.207463,
		-0.826265, 0.099865, -0.554359,
		18.922535, 16.663511, 23.073822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839878, 17.048374, 23.007040>,  <19.500919, 16.593607, 23.461872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839878, 17.048374, 23.007040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.705246, 17.133076, 23.374054>,  <19.624466, 17.183897, 23.594263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.705246, 17.133076, 23.374054>,  <19.839878, 17.048374, 23.007040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705246, 17.133076, 23.374054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900013, -0.214214, 0.379589,
		0.276929, 0.953558, -0.118480,
		-0.336580, 0.211753, 0.917537,
		19.604273, 17.196602, 23.649315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255920, 17.608721, 23.270384>,  <19.839878, 17.048374, 23.007040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255920, 17.608721, 23.270384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.102222, 17.377674, 23.558472>,  <20.010004, 17.239046, 23.731323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.102222, 17.377674, 23.558472>,  <20.255920, 17.608721, 23.270384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102222, 17.377674, 23.558472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846662, 0.090595, 0.524363,
		-0.368129, 0.811265, 0.454235,
		-0.384247, -0.577617, 0.720218,
		19.986948, 17.204390, 23.774536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277056, 18.256975, 23.682215>,  <20.255920, 17.608721, 23.270384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277056, 18.256975, 23.682215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.535023, 18.552685, 23.759733>,  <20.689802, 18.730110, 23.806244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.535023, 18.552685, 23.759733>,  <20.277056, 18.256975, 23.682215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.535023, 18.552685, 23.759733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147026, 0.128826, -0.980707,
		-0.749978, 0.660966, -0.025611,
		0.644915, 0.739275, 0.193796,
		20.728497, 18.774467, 23.817871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.069056, 18.897747, 23.253922>,  <20.277056, 18.256975, 23.682215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.069056, 18.897747, 23.253922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.461475, 18.931324, 23.323774>,  <20.696928, 18.951469, 23.365686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.461475, 18.931324, 23.323774>,  <20.069056, 18.897747, 23.253922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.461475, 18.931324, 23.323774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168275, 0.077684, -0.982674,
		-0.096052, 0.993438, 0.062087,
		0.981049, 0.083940, 0.174632,
		20.755791, 18.956507, 23.376163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263128, 19.420370, 22.738184>,  <20.069056, 18.897747, 23.253922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263128, 19.420370, 22.738184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.587341, 19.221020, 22.861250>,  <20.781870, 19.101410, 22.935089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.587341, 19.221020, 22.861250>,  <20.263128, 19.420370, 22.738184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.587341, 19.221020, 22.861250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386667, 0.060771, -0.920215,
		0.439916, 0.864828, 0.241963,
		0.810532, -0.498377, 0.307666,
		20.830502, 19.071507, 22.953550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.877838, 19.798401, 22.403143>,  <20.263128, 19.420370, 22.738184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.877838, 19.798401, 22.403143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.020954, 19.431499, 22.473156>,  <21.106823, 19.211359, 22.515163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.020954, 19.431499, 22.473156>,  <20.877838, 19.798401, 22.403143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.020954, 19.431499, 22.473156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389819, -0.023615, -0.920589,
		0.848545, 0.397607, 0.349113,
		0.357789, -0.917252, 0.175033,
		21.128290, 19.156324, 22.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498903, 19.727255, 22.110008>,  <20.877838, 19.798401, 22.403143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498903, 19.727255, 22.110008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.416828, 19.338757, 22.158302>,  <21.367582, 19.105658, 22.187279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.416828, 19.338757, 22.158302>,  <21.498903, 19.727255, 22.110008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.416828, 19.338757, 22.158302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232327, -0.168170, -0.957989,
		0.950748, -0.168519, 0.260154,
		-0.205189, -0.971247, 0.120736,
		21.355272, 19.047382, 22.194523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.960966, 19.213581, 21.665525>,  <21.498903, 19.727255, 22.110008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.960966, 19.213581, 21.665525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.659035, 18.963078, 21.743534>,  <21.477875, 18.812777, 21.790339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.659035, 18.963078, 21.743534>,  <21.960966, 19.213581, 21.665525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659035, 18.963078, 21.743534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003964, -0.292962, -0.956116,
		0.655908, -0.722478, 0.218654,
		-0.754830, -0.626257, 0.195020,
		21.432585, 18.775200, 21.802040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115168, 18.679600, 21.308889>,  <21.960966, 19.213581, 21.665525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115168, 18.679600, 21.308889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.723667, 18.636730, 21.378819>,  <21.488768, 18.611010, 21.420776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.723667, 18.636730, 21.378819>,  <22.115168, 18.679600, 21.308889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723667, 18.636730, 21.378819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131775, -0.324498, -0.936662,
		0.157115, -0.939795, 0.303480,
		-0.978749, -0.107172, 0.174825,
		21.430042, 18.604578, 21.431267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875135, 18.077496, 21.089911>,  <22.115168, 18.679600, 21.308889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875135, 18.077496, 21.089911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.543343, 18.300552, 21.102549>,  <21.344267, 18.434385, 21.110132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.543343, 18.300552, 21.102549>,  <21.875135, 18.077496, 21.089911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543343, 18.300552, 21.102549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227224, -0.285231, -0.931135,
		-0.510227, -0.779538, 0.363303,
		-0.829480, 0.557642, 0.031597,
		21.294498, 18.467844, 21.112028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.301825, 17.634792, 20.833723>,  <21.875135, 18.077496, 21.089911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.301825, 17.634792, 20.833723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.176624, 18.013992, 20.810654>,  <21.101505, 18.241512, 20.796812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.176624, 18.013992, 20.810654>,  <21.301825, 17.634792, 20.833723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.176624, 18.013992, 20.810654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258546, -0.143481, -0.955283,
		-0.913885, -0.284092, 0.290012,
		-0.313000, 0.948000, -0.057674,
		21.082724, 18.298393, 20.793352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660196, 17.543013, 20.675592>,  <21.301825, 17.634792, 20.833723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660196, 17.543013, 20.675592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.840149, 17.881035, 20.560013>,  <20.948120, 18.083847, 20.490665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.840149, 17.881035, 20.560013>,  <20.660196, 17.543013, 20.675592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840149, 17.881035, 20.560013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166845, -0.238318, -0.956748,
		-0.877365, 0.478632, 0.033778,
		0.449881, 0.845054, -0.288949,
		20.975113, 18.134550, 20.473328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294455, 17.799229, 20.133238>,  <20.660196, 17.543013, 20.675592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294455, 17.799229, 20.133238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.639080, 17.988968, 20.060898>,  <20.845856, 18.102812, 20.017494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.639080, 17.988968, 20.060898>,  <20.294455, 17.799229, 20.133238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639080, 17.988968, 20.060898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026700, -0.313411, -0.949242,
		-0.506951, 0.822659, -0.257358,
		0.861562, 0.474347, -0.180849,
		20.897549, 18.131271, 20.006643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234869, 18.079370, 19.507227>,  <20.294455, 17.799229, 20.133238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234869, 18.079370, 19.507227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.625591, 18.056866, 19.589865>,  <20.860025, 18.043364, 19.639448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.625591, 18.056866, 19.589865>,  <20.234869, 18.079370, 19.507227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.625591, 18.056866, 19.589865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177552, -0.326451, -0.928388,
		0.119675, 0.943538, -0.308890,
		0.976808, -0.056261, 0.206595,
		20.918634, 18.039988, 19.651844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445707, 18.447416, 18.968407>,  <20.234869, 18.079370, 19.507227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445707, 18.447416, 18.968407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.781731, 18.265526, 19.086746>,  <20.983345, 18.156391, 19.157749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.781731, 18.265526, 19.086746>,  <20.445707, 18.447416, 18.968407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.781731, 18.265526, 19.086746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136843, -0.350091, -0.926666,
		0.524951, 0.818939, -0.231871,
		0.840060, -0.454725, 0.295847,
		21.033749, 18.129108, 19.175501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.001806, 18.707121, 18.606951>,  <20.445707, 18.447416, 18.968407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.001806, 18.707121, 18.606951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.116032, 18.346497, 18.736959>,  <21.184566, 18.130121, 18.814964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.116032, 18.346497, 18.736959>,  <21.001806, 18.707121, 18.606951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116032, 18.346497, 18.736959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182940, -0.281627, -0.941923,
		0.940738, 0.328437, 0.084510,
		0.285562, -0.901563, 0.325021,
		21.201700, 18.076027, 18.834465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.625547, 18.510025, 18.178745>,  <21.001806, 18.707121, 18.606951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.625547, 18.510025, 18.178745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.537361, 18.159660, 18.350407>,  <21.484449, 17.949442, 18.453403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.537361, 18.159660, 18.350407>,  <21.625547, 18.510025, 18.178745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537361, 18.159660, 18.350407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368362, -0.482167, -0.794874,
		0.903163, -0.017159, 0.428954,
		-0.220467, -0.875911, 0.429155,
		21.471222, 17.896887, 18.479153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.283222, 18.089031, 18.249287>,  <21.625547, 18.510025, 18.178745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.283222, 18.089031, 18.249287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.962757, 17.849667, 18.246637>,  <21.770477, 17.706049, 18.245047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.962757, 17.849667, 18.246637>,  <22.283222, 18.089031, 18.249287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962757, 17.849667, 18.246637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377783, -0.497135, -0.781113,
		0.464133, -0.628301, 0.624355,
		-0.801162, -0.598411, -0.006625,
		21.722408, 17.670143, 18.244650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585155, 17.473259, 18.088989>,  <22.283222, 18.089031, 18.249287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585155, 17.473259, 18.088989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.196716, 17.407299, 18.019962>,  <21.963654, 17.367723, 17.978546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.196716, 17.407299, 18.019962>,  <22.585155, 17.473259, 18.088989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196716, 17.407299, 18.019962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231824, -0.479458, -0.846391,
		0.056830, -0.861932, 0.503828,
		-0.971097, -0.164900, -0.172569,
		21.905388, 17.357830, 17.968191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.464066, 16.700270, 17.995270>,  <22.585155, 17.473259, 18.088989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.464066, 16.700270, 17.995270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.201824, 16.934757, 17.804890>,  <22.044479, 17.075451, 17.690662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.201824, 16.934757, 17.804890>,  <22.464066, 16.700270, 17.995270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.201824, 16.934757, 17.804890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428679, -0.229940, -0.873706,
		-0.621623, -0.776836, -0.100551,
		-0.655605, 0.586220, -0.475949,
		22.005142, 17.110622, 17.662106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.353277, 16.390808, 17.377037>,  <22.464066, 16.700270, 17.995270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.353277, 16.390808, 17.377037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.213848, 16.758137, 17.302008>,  <22.130190, 16.978535, 17.256990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.213848, 16.758137, 17.302008>,  <22.353277, 16.390808, 17.377037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213848, 16.758137, 17.302008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310509, -0.075680, -0.947553,
		-0.884353, -0.388535, -0.258766,
		-0.348574, 0.918321, -0.187572,
		22.109276, 17.033632, 17.245737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079079, 16.371788, 16.670481>,  <22.353277, 16.390808, 17.377037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079079, 16.371788, 16.670481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.101372, 16.764412, 16.743620>,  <22.114748, 16.999987, 16.787504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.101372, 16.764412, 16.743620>,  <22.079079, 16.371788, 16.670481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.101372, 16.764412, 16.743620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574749, 0.118209, -0.809747,
		-0.816430, 0.150221, -0.557563,
		0.055732, 0.981560, 0.182848,
		22.118092, 17.058880, 16.798475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.217676, 14.417425, 11.526281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.240891, 14.809853, 11.600185>,  <20.254818, 15.045309, 11.644528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.240891, 14.809853, 11.600185>,  <20.217676, 14.417425, 11.526281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240891, 14.809853, 11.600185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327493, 0.156122, -0.931866,
		-0.943070, 0.114589, -0.312232,
		0.058035, 0.981068, 0.184761,
		20.258301, 15.104173, 11.655614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836296, 14.812518, 10.948173>,  <20.217676, 14.417425, 11.526281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836296, 14.812518, 10.948173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.068348, 15.081768, 11.131629>,  <20.207579, 15.243319, 11.241703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.068348, 15.081768, 11.131629>,  <19.836296, 14.812518, 10.948173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.068348, 15.081768, 11.131629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295286, 0.350973, -0.888608,
		-0.759115, 0.650938, 0.004845,
		0.580129, 0.673125, 0.458642,
		20.242386, 15.283706, 11.269221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747955, 15.451397, 10.522264>,  <19.836296, 14.812518, 10.948173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747955, 15.451397, 10.522264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.093105, 15.463047, 10.724096>,  <20.300196, 15.470037, 10.845196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.093105, 15.463047, 10.724096>,  <19.747955, 15.451397, 10.522264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093105, 15.463047, 10.724096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477825, 0.278361, -0.833186,
		-0.164723, 0.960035, 0.226273,
		0.862873, 0.029126, 0.504581,
		20.351967, 15.471785, 10.875470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116766, 16.129028, 10.338562>,  <19.747955, 15.451397, 10.522264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116766, 16.129028, 10.338562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.394577, 15.883839, 10.489238>,  <20.561264, 15.736725, 10.579643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.394577, 15.883839, 10.489238>,  <20.116766, 16.129028, 10.338562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394577, 15.883839, 10.489238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622673, 0.249828, -0.741528,
		0.360430, 0.749566, 0.555195,
		0.694527, -0.612974, 0.376690,
		20.602936, 15.699946, 10.602244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824062, 16.423759, 10.206704>,  <20.116766, 16.129028, 10.338562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824062, 16.423759, 10.206704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.912395, 16.037815, 10.263658>,  <20.965395, 15.806248, 10.297830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.912395, 16.037815, 10.263658>,  <20.824062, 16.423759, 10.206704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.912395, 16.037815, 10.263658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634537, 0.031268, -0.772260,
		0.740673, 0.260889, 0.619145,
		0.220834, -0.964862, 0.142384,
		20.978645, 15.748357, 10.306373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491961, 16.356224, 10.056819>,  <20.824062, 16.423759, 10.206704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491961, 16.356224, 10.056819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.395866, 15.969055, 10.027399>,  <21.338209, 15.736753, 10.009748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.395866, 15.969055, 10.027399>,  <21.491961, 16.356224, 10.056819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395866, 15.969055, 10.027399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432326, -0.038847, -0.900880,
		0.869127, -0.248221, 0.427792,
		-0.240236, -0.967924, -0.073549,
		21.323795, 15.678678, 10.005334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007284, 16.127375, 9.608364>,  <21.491961, 16.356224, 10.056819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007284, 16.127375, 9.608364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.721691, 15.847900, 9.590156>,  <21.550335, 15.680216, 9.579230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.721691, 15.847900, 9.590156>,  <22.007284, 16.127375, 9.608364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.721691, 15.847900, 9.590156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164800, -0.104509, -0.980775,
		0.680494, -0.707756, 0.189760,
		-0.713981, -0.698684, -0.045520,
		21.507498, 15.638295, 9.576500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.255556, 15.661681, 9.145887>,  <22.007284, 16.127375, 9.608364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.255556, 15.661681, 9.145887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865025, 15.575710, 9.155615>,  <21.630707, 15.524128, 9.161451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865025, 15.575710, 9.155615>,  <22.255556, 15.661681, 9.145887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865025, 15.575710, 9.155615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036531, -0.274669, -0.960845,
		0.213192, -0.937210, 0.276019,
		-0.976327, -0.214928, 0.024320,
		21.572126, 15.511232, 9.162910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154993, 15.105202, 8.649933>,  <22.255556, 15.661681, 9.145887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154993, 15.105202, 8.649933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.778111, 15.218285, 8.721852>,  <21.551981, 15.286135, 8.765004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.778111, 15.218285, 8.721852>,  <22.154993, 15.105202, 8.649933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.778111, 15.218285, 8.721852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227810, -0.147082, -0.962533,
		-0.245674, -0.947861, 0.202986,
		-0.942203, 0.282711, 0.179798,
		21.495449, 15.303097, 8.775792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.747662, 14.570947, 8.521900>,  <22.154993, 15.105202, 8.649933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.747662, 14.570947, 8.521900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.537197, 14.907879, 8.475189>,  <21.410919, 15.110038, 8.447163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.537197, 14.907879, 8.475189>,  <21.747662, 14.570947, 8.521900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537197, 14.907879, 8.475189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199993, -0.256042, -0.945751,
		-0.826534, -0.474261, 0.303179,
		-0.526159, 0.842329, -0.116778,
		21.379349, 15.160578, 8.440156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210703, 14.404895, 7.985385>,  <21.747662, 14.570947, 8.521900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210703, 14.404895, 7.985385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264309, 14.800251, 8.014020>,  <21.296473, 15.037465, 8.031200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264309, 14.800251, 8.014020>,  <21.210703, 14.404895, 7.985385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264309, 14.800251, 8.014020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032926, 0.067757, -0.997158,
		-0.990432, 0.135990, -0.023464,
		0.134014, 0.988390, 0.071586,
		21.304514, 15.096768, 8.035496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.658182, 14.643122, 7.460975>,  <21.210703, 14.404895, 7.985385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.658182, 14.643122, 7.460975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.933571, 14.926014, 7.525264>,  <21.098804, 15.095750, 7.563837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.933571, 14.926014, 7.525264>,  <20.658182, 14.643122, 7.460975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933571, 14.926014, 7.525264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047383, 0.177270, -0.983021,
		-0.723714, 0.684397, 0.088534,
		0.688471, 0.707231, 0.160722,
		21.140112, 15.138184, 7.573480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414530, 15.295479, 7.145947>,  <20.658182, 14.643122, 7.460975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414530, 15.295479, 7.145947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.810886, 15.242424, 7.155265>,  <21.048700, 15.210591, 7.160856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.810886, 15.242424, 7.155265>,  <20.414530, 15.295479, 7.145947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.810886, 15.242424, 7.155265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029228, 0.042962, -0.998649,
		0.131457, 0.990233, 0.046447,
		0.990891, -0.132637, 0.023295,
		21.108154, 15.202633, 7.162253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665276, 15.739182, 6.626334>,  <20.414530, 15.295479, 7.145947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665276, 15.739182, 6.626334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.939018, 15.456600, 6.698531>,  <21.103264, 15.287051, 6.741849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.939018, 15.456600, 6.698531>,  <20.665276, 15.739182, 6.626334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939018, 15.456600, 6.698531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213050, -0.042997, -0.976095,
		0.697328, 0.706450, 0.121085,
		0.684356, -0.706455, 0.180492,
		21.144325, 15.244663, 6.752679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444731, 16.419147, 6.570923>,  <20.665276, 15.739182, 6.626334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444731, 16.419147, 6.570923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.082985, 16.586739, 6.538466>,  <19.865938, 16.687294, 6.518992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.082985, 16.586739, 6.538466>,  <20.444731, 16.419147, 6.570923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082985, 16.586739, 6.538466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017871, 0.227147, 0.973696,
		0.426389, 0.879125, -0.212911,
		-0.904363, 0.418979, -0.081142,
		19.811676, 16.712433, 6.514124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416550, 16.947624, 7.047779>,  <20.444731, 16.419147, 6.570923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416550, 16.947624, 7.047779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.020603, 16.956951, 6.991752>,  <19.783035, 16.962547, 6.958136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.020603, 16.956951, 6.991752>,  <20.416550, 16.947624, 7.047779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020603, 16.956951, 6.991752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128620, 0.270704, 0.954032,
		0.060162, 0.962380, -0.264962,
		-0.989867, 0.023317, -0.140067,
		19.723642, 16.963945, 6.949731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206993, 17.654863, 7.022130>,  <20.416550, 16.947624, 7.047779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206993, 17.654863, 7.022130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916000, 17.406063, 7.137985>,  <19.741405, 17.256783, 7.207498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916000, 17.406063, 7.137985>,  <20.206993, 17.654863, 7.022130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916000, 17.406063, 7.137985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137624, 0.545834, 0.826514,
		-0.672184, 0.561412, -0.482686,
		-0.727481, -0.621999, 0.289637,
		19.697756, 17.219463, 7.224876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.881868, 18.171011, 7.256765>,  <20.206993, 17.654863, 7.022130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.881868, 18.171011, 7.256765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.729713, 17.834694, 7.410843>,  <19.638420, 17.632904, 7.503290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.729713, 17.834694, 7.410843>,  <19.881868, 18.171011, 7.256765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729713, 17.834694, 7.410843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288722, 0.503650, 0.814233,
		-0.878605, 0.198509, -0.434337,
		-0.380386, -0.840792, 0.385195,
		19.615597, 17.582457, 7.526402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160349, 18.244884, 7.507704>,  <19.881868, 18.171011, 7.256765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160349, 18.244884, 7.507704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.310547, 17.935513, 7.711983>,  <19.400665, 17.749889, 7.834550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.310547, 17.935513, 7.711983>,  <19.160349, 18.244884, 7.507704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310547, 17.935513, 7.711983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236056, 0.453039, 0.859670,
		-0.896259, -0.443356, -0.012457,
		0.375497, -0.773428, 0.510697,
		19.423197, 17.703484, 7.865192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733353, 18.086031, 8.033741>,  <19.160349, 18.244884, 7.507704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.733353, 18.086031, 8.033741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.082577, 17.940639, 8.163755>,  <19.292110, 17.853405, 8.241764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.082577, 17.940639, 8.163755>,  <18.733353, 18.086031, 8.033741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.082577, 17.940639, 8.163755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248928, 0.240946, 0.938072,
		-0.419284, -0.899905, 0.119881,
		0.873061, -0.363477, 0.325037,
		19.344496, 17.831596, 8.261267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486635, 17.825096, 8.691584>,  <18.733353, 18.086031, 8.033741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486635, 17.825096, 8.691584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.879230, 17.797947, 8.763220>,  <19.114788, 17.781658, 8.806201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.879230, 17.797947, 8.763220>,  <18.486635, 17.825096, 8.691584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.879230, 17.797947, 8.763220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161818, 0.206297, 0.965016,
		-0.102443, -0.976133, 0.191496,
		0.981489, -0.067872, 0.179090,
		19.173677, 17.777586, 8.816947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507511, 17.450491, 9.328855>,  <18.486635, 17.825096, 8.691584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507511, 17.450491, 9.328855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.851120, 17.651855, 9.291631>,  <19.057285, 17.772675, 9.269297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.851120, 17.651855, 9.291631>,  <18.507511, 17.450491, 9.328855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851120, 17.651855, 9.291631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015866, 0.207870, 0.978028,
		0.511694, -0.838670, 0.186552,
		0.859021, 0.503411, -0.093060,
		19.108826, 17.802879, 9.263713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899984, 17.282013, 9.946132>,  <18.507511, 17.450491, 9.328855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899984, 17.282013, 9.946132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.103001, 17.599232, 9.811387>,  <19.224810, 17.789564, 9.730540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.103001, 17.599232, 9.811387>,  <18.899984, 17.282013, 9.946132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103001, 17.599232, 9.811387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043861, 0.366672, 0.929316,
		0.860511, -0.486441, 0.151317,
		0.507541, 0.793049, -0.336861,
		19.255262, 17.837147, 9.710329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.510031, 17.360252, 10.335840>,  <18.899984, 17.282013, 9.946132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.510031, 17.360252, 10.335840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.419350, 17.731926, 10.219067>,  <19.364941, 17.954929, 10.149003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.419350, 17.731926, 10.219067>,  <19.510031, 17.360252, 10.335840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419350, 17.731926, 10.219067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276040, 0.348744, 0.895645,
		0.934028, 0.122459, -0.335552,
		-0.226702, 0.929183, -0.291934,
		19.351339, 18.010681, 10.131487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110170, 17.755930, 10.568647>,  <19.510031, 17.360252, 10.335840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.110170, 17.755930, 10.568647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.804810, 18.010323, 10.523494>,  <19.621593, 18.162958, 10.496402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.804810, 18.010323, 10.523494>,  <20.110170, 17.755930, 10.568647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.804810, 18.010323, 10.523494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201245, 0.400252, 0.894035,
		0.613773, 0.659791, -0.433542,
		-0.763402, 0.635983, -0.112884,
		19.575788, 18.201118, 10.489629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336611, 18.428144, 10.852557>,  <20.110170, 17.755930, 10.568647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336611, 18.428144, 10.852557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.936775, 18.429752, 10.841180>,  <19.696875, 18.430717, 10.834353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.936775, 18.429752, 10.841180>,  <20.336611, 18.428144, 10.852557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936775, 18.429752, 10.841180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025380, 0.340235, 0.939998,
		0.013454, 0.940332, -0.339993,
		-0.999587, 0.004018, -0.028444,
		19.636898, 18.430958, 10.832646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148251, 19.104588, 11.095329>,  <20.336611, 18.428144, 10.852557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148251, 19.104588, 11.095329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.828438, 18.868717, 11.140991>,  <19.636551, 18.727196, 11.168388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.828438, 18.868717, 11.140991>,  <20.148251, 19.104588, 11.095329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.828438, 18.868717, 11.140991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082084, 0.295553, 0.951793,
		-0.594989, 0.751618, -0.284707,
		-0.799531, -0.589677, 0.114155,
		19.588579, 18.691814, 11.175238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743536, 19.510000, 11.480540>,  <20.148251, 19.104588, 11.095329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743536, 19.510000, 11.480540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.588654, 19.143738, 11.523707>,  <19.495724, 18.923981, 11.549608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.588654, 19.143738, 11.523707>,  <19.743536, 19.510000, 11.480540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.588654, 19.143738, 11.523707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257936, 0.219954, 0.940792,
		-0.885179, 0.336443, -0.321348,
		-0.387205, -0.915656, 0.107918,
		19.472492, 18.869041, 11.556083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256466, 19.944923, 11.242940>,  <19.743536, 19.510000, 11.480540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256466, 19.944923, 11.242940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.206535, 20.340164, 11.278873>,  <19.176577, 20.577309, 11.300434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.206535, 20.340164, 11.278873>,  <19.256466, 19.944923, 11.242940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206535, 20.340164, 11.278873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174360, 0.110981, -0.978408,
		-0.976738, -0.106470, -0.186139,
		-0.124829, 0.988103, 0.089835,
		19.169086, 20.636595, 11.305824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.679693, 20.180548, 10.845040>,  <19.256466, 19.944923, 11.242940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.679693, 20.180548, 10.845040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.918350, 20.499519, 10.881096>,  <19.061544, 20.690903, 10.902729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.918350, 20.499519, 10.881096>,  <18.679693, 20.180548, 10.845040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918350, 20.499519, 10.881096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018607, 0.098545, -0.994959,
		-0.802293, 0.595310, 0.043958,
		0.596641, 0.797430, 0.090139,
		19.097342, 20.738749, 10.908137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419552, 20.597202, 10.326571>,  <18.679693, 20.180548, 10.845040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419552, 20.597202, 10.326571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.784069, 20.735695, 10.415715>,  <19.002779, 20.818790, 10.469202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.784069, 20.735695, 10.415715>,  <18.419552, 20.597202, 10.326571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.784069, 20.735695, 10.415715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185338, 0.138400, -0.972880,
		-0.367685, 0.927884, 0.061953,
		0.911294, 0.346231, 0.222860,
		19.057457, 20.839565, 10.482574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574476, 21.208162, 9.817623>,  <18.419552, 20.597202, 10.326571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574476, 21.208162, 9.817623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932976, 21.091282, 9.951104>,  <19.148075, 21.021154, 10.031193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.932976, 21.091282, 9.951104>,  <18.574476, 21.208162, 9.817623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932976, 21.091282, 9.951104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404406, 0.229286, -0.885372,
		0.182194, 0.928464, 0.323665,
		0.896249, -0.292201, 0.333702,
		19.201851, 21.003622, 10.051215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001719, 21.639196, 9.463690>,  <18.574476, 21.208162, 9.817623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001719, 21.639196, 9.463690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.251648, 21.342724, 9.561873>,  <19.401606, 21.164841, 9.620784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.251648, 21.342724, 9.561873>,  <19.001719, 21.639196, 9.463690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251648, 21.342724, 9.561873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573731, 0.222627, -0.788207,
		0.529557, 0.633317, 0.564340,
		0.624822, -0.741179, 0.245460,
		19.439095, 21.120371, 9.635511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618484, 21.892378, 9.181927>,  <19.001719, 21.639196, 9.463690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618484, 21.892378, 9.181927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.717129, 21.514236, 9.267237>,  <19.776316, 21.287352, 9.318423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.717129, 21.514236, 9.267237>,  <19.618484, 21.892378, 9.181927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717129, 21.514236, 9.267237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593638, -0.026593, -0.804293,
		0.766014, 0.324955, 0.554641,
		0.246610, -0.945356, 0.213276,
		19.791111, 21.230629, 9.331220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396486, 21.865381, 9.246925>,  <19.618484, 21.892378, 9.181927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396486, 21.865381, 9.246925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.296200, 21.484287, 9.178298>,  <20.236027, 21.255630, 9.137121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.296200, 21.484287, 9.178298>,  <20.396486, 21.865381, 9.246925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296200, 21.484287, 9.178298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680628, -0.047456, -0.731090,
		0.688394, -0.300071, 0.660357,
		-0.250717, -0.952736, -0.171568,
		20.220985, 21.198467, 9.126827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058374, 21.434374, 9.229078>,  <20.396486, 21.865381, 9.246925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058374, 21.434374, 9.229078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.784775, 21.241608, 9.010025>,  <20.620615, 21.125948, 8.878593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.784775, 21.241608, 9.010025>,  <21.058374, 21.434374, 9.229078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784775, 21.241608, 9.010025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648663, -0.058354, -0.758835,
		0.333739, -0.874272, 0.352515,
		-0.683999, -0.481916, -0.547633,
		20.579575, 21.097033, 8.845735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.458237, 21.088703, 8.804059>,  <21.058374, 21.434374, 9.229078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.458237, 21.088703, 8.804059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103683, 21.074100, 8.619454>,  <20.890951, 21.065338, 8.508692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.103683, 21.074100, 8.619454>,  <21.458237, 21.088703, 8.804059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103683, 21.074100, 8.619454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462611, -0.108213, -0.879932,
		-0.017817, -0.993457, 0.112808,
		-0.886382, -0.036509, -0.461512,
		20.837769, 21.063148, 8.481001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390371, 20.477270, 8.356188>,  <21.458237, 21.088703, 8.804059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390371, 20.477270, 8.356188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.133720, 20.747299, 8.210534>,  <20.979731, 20.909317, 8.123142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.133720, 20.747299, 8.210534>,  <21.390371, 20.477270, 8.356188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133720, 20.747299, 8.210534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401596, -0.108792, -0.909332,
		-0.653478, -0.729687, -0.201302,
		-0.641628, 0.675071, -0.364133,
		20.941233, 20.949820, 8.101295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065424, 20.141981, 7.897604>,  <21.390371, 20.477270, 8.356188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065424, 20.141981, 7.897604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.061501, 20.532204, 7.809792>,  <21.059147, 20.766336, 7.757104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.061501, 20.532204, 7.809792>,  <21.065424, 20.141981, 7.897604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.061501, 20.532204, 7.809792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407234, -0.196612, -0.891910,
		-0.913271, -0.098148, -0.395351,
		-0.009808, 0.975557, -0.219530,
		21.058558, 20.824871, 7.743933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048351, 20.198946, 7.225684>,  <21.065424, 20.141981, 7.897604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048351, 20.198946, 7.225684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140732, 20.579224, 7.308475>,  <21.196159, 20.807390, 7.358149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140732, 20.579224, 7.308475>,  <21.048351, 20.198946, 7.225684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140732, 20.579224, 7.308475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504544, 0.064870, -0.860945,
		-0.831924, 0.303264, -0.464687,
		0.230950, 0.950696, 0.206977,
		21.210016, 20.864433, 7.370568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.339127, 20.366682, 14.764336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586678, 20.679897, 14.739536>,  <17.735209, 20.867826, 14.724657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586678, 20.679897, 14.739536>,  <17.339127, 20.366682, 14.764336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.586678, 20.679897, 14.739536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080535, -0.141768, -0.986619,
		-0.781350, 0.605601, -0.150799,
		0.618875, 0.783039, -0.061998,
		17.772341, 20.914808, 14.720937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121374, 20.815784, 14.179256>,  <17.339127, 20.366682, 14.764336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121374, 20.815784, 14.179256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500801, 20.914589, 14.258461>,  <17.728456, 20.973871, 14.305984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500801, 20.914589, 14.258461>,  <17.121374, 20.815784, 14.179256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500801, 20.914589, 14.258461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218393, -0.057763, -0.974150,
		-0.229187, 0.967290, -0.108738,
		0.948566, 0.247010, 0.198011,
		17.785372, 20.988691, 14.317864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219450, 21.352177, 13.637750>,  <17.121374, 20.815784, 14.179256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219450, 21.352177, 13.637750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.573730, 21.215034, 13.762960>,  <17.786299, 21.132750, 13.838087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.573730, 21.215034, 13.762960>,  <17.219450, 21.352177, 13.637750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573730, 21.215034, 13.762960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339896, 0.019603, -0.940259,
		0.316238, 0.939183, 0.133898,
		0.885700, -0.342856, 0.313026,
		17.839441, 21.112177, 13.856868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699673, 21.800894, 13.277270>,  <17.219450, 21.352177, 13.637750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699673, 21.800894, 13.277270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919220, 21.482040, 13.377928>,  <18.050947, 21.290728, 13.438322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919220, 21.482040, 13.377928>,  <17.699673, 21.800894, 13.277270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.919220, 21.482040, 13.377928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472542, 0.047558, -0.880024,
		0.689528, 0.601928, 0.402782,
		0.548867, -0.797133, 0.251644,
		18.083879, 21.242901, 13.453421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467787, 22.005766, 13.164409>,  <17.699673, 21.800894, 13.277270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467787, 22.005766, 13.164409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465519, 21.606026, 13.178627>,  <18.464157, 21.366180, 13.187159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465519, 21.606026, 13.178627>,  <18.467787, 22.005766, 13.164409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.465519, 21.606026, 13.178627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591311, -0.032017, -0.805808,
		0.806424, 0.016450, 0.591109,
		-0.005670, -0.999352, 0.035546,
		18.463818, 21.306221, 13.189291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056208, 21.825310, 12.959616>,  <18.467787, 22.005766, 13.164409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056208, 21.825310, 12.959616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878876, 21.469414, 12.916119>,  <18.772476, 21.255877, 12.890020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878876, 21.469414, 12.916119>,  <19.056208, 21.825310, 12.959616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878876, 21.469414, 12.916119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572952, -0.187987, -0.797739,
		0.689336, -0.415965, 0.593118,
		-0.443330, -0.889738, -0.108742,
		18.745876, 21.202492, 12.883496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584499, 21.409184, 12.714913>,  <19.056208, 21.825310, 12.959616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584499, 21.409184, 12.714913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241047, 21.236946, 12.603673>,  <19.034975, 21.133604, 12.536929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241047, 21.236946, 12.603673>,  <19.584499, 21.409184, 12.714913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.241047, 21.236946, 12.603673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418250, -0.274871, -0.865744,
		0.296344, -0.859670, 0.416110,
		-0.858631, -0.430596, -0.278101,
		18.983458, 21.107767, 12.520243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766651, 20.633026, 12.439661>,  <19.584499, 21.409184, 12.714913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766651, 20.633026, 12.439661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422291, 20.760487, 12.281010>,  <19.215675, 20.836962, 12.185819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422291, 20.760487, 12.281010>,  <19.766651, 20.633026, 12.439661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.422291, 20.760487, 12.281010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289531, -0.334194, -0.896932,
		-0.418359, -0.887004, 0.195448,
		-0.860900, 0.318651, -0.396628,
		19.164021, 20.856081, 12.162022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587439, 20.122581, 11.957611>,  <19.766651, 20.633026, 12.439661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587439, 20.122581, 11.957611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379063, 20.450272, 11.861702>,  <19.254036, 20.646885, 11.804156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379063, 20.450272, 11.861702>,  <19.587439, 20.122581, 11.957611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379063, 20.450272, 11.861702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136423, -0.197381, -0.970788,
		-0.842621, -0.538434, -0.008937,
		-0.520941, 0.819225, -0.239772,
		19.222780, 20.696039, 11.789770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184610, 19.515003, 11.952329>,  <19.587439, 20.122581, 11.957611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184610, 19.515003, 11.952329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261406, 19.122814, 11.969353>,  <19.307484, 18.887501, 11.979567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261406, 19.122814, 11.969353>,  <19.184610, 19.515003, 11.952329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261406, 19.122814, 11.969353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305723, -0.018543, 0.951940,
		-0.932563, -0.195771, -0.303314,
		0.191987, -0.980474, 0.042559,
		19.319002, 18.828672, 11.982121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.701599, 19.228739, 12.332378>,  <19.184610, 19.515003, 11.952329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.701599, 19.228739, 12.332378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969372, 18.932739, 12.358503>,  <19.130035, 18.755140, 12.374179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969372, 18.932739, 12.358503>,  <18.701599, 19.228739, 12.332378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.969372, 18.932739, 12.358503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262799, -0.153665, 0.952535,
		-0.694838, -0.654820, -0.297339,
		0.669430, -0.739998, 0.065313,
		19.170200, 18.710739, 12.378098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371540, 18.609062, 12.688804>,  <18.701599, 19.228739, 12.332378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371540, 18.609062, 12.688804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769238, 18.580139, 12.720423>,  <19.007856, 18.562784, 12.739394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769238, 18.580139, 12.720423>,  <18.371540, 18.609062, 12.688804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.769238, 18.580139, 12.720423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090328, -0.169097, 0.981452,
		-0.057602, -0.982943, -0.174655,
		0.994245, -0.072309, 0.079047,
		19.067511, 18.558447, 12.744137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565275, 17.910709, 12.892958>,  <18.371540, 18.609062, 12.688804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565275, 17.910709, 12.892958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888664, 18.130810, 12.976479>,  <19.082697, 18.262869, 13.026591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888664, 18.130810, 12.976479>,  <18.565275, 17.910709, 12.892958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.888664, 18.130810, 12.976479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083875, -0.243439, 0.966283,
		0.582527, -0.798726, -0.150661,
		0.808472, 0.550249, 0.208803,
		19.131207, 18.295885, 13.039120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919760, 17.539024, 13.367176>,  <18.565275, 17.910709, 12.892958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919760, 17.539024, 13.367176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107632, 17.888920, 13.414902>,  <19.220354, 18.098856, 13.443538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107632, 17.888920, 13.414902>,  <18.919760, 17.539024, 13.367176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107632, 17.888920, 13.414902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093667, -0.085012, 0.991967,
		0.877854, -0.477084, 0.042006,
		0.469680, 0.874737, 0.119315,
		19.248535, 18.151340, 13.450696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372074, 17.438976, 14.012179>,  <18.919760, 17.539024, 13.367176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372074, 17.438976, 14.012179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293694, 17.827747, 13.960087>,  <19.246666, 18.061010, 13.928831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293694, 17.827747, 13.960087>,  <19.372074, 17.438976, 14.012179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293694, 17.827747, 13.960087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106682, 0.110889, 0.988090,
		0.974793, 0.207511, 0.081958,
		-0.195951, 0.971927, -0.130232,
		19.234909, 18.119326, 13.921018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755545, 17.734344, 14.396630>,  <19.372074, 17.438976, 14.012179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.755545, 17.734344, 14.396630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475021, 18.011883, 14.331215>,  <19.306707, 18.178406, 14.291965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475021, 18.011883, 14.331215>,  <19.755545, 17.734344, 14.396630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.475021, 18.011883, 14.331215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126879, 0.104257, 0.986424,
		0.701474, 0.712538, 0.014918,
		-0.701310, 0.693844, -0.163539,
		19.264629, 18.220036, 14.282153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932747, 18.421129, 14.727252>,  <19.755545, 17.734344, 14.396630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932747, 18.421129, 14.727252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536961, 18.406303, 14.671274>,  <19.299488, 18.397408, 14.637688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536961, 18.406303, 14.671274>,  <19.932747, 18.421129, 14.727252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536961, 18.406303, 14.671274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144755, 0.266973, 0.952770,
		0.002049, 0.962991, -0.269526,
		-0.989465, -0.037063, -0.139945,
		19.240122, 18.395185, 14.629291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623627, 18.979303, 15.112679>,  <19.932747, 18.421129, 14.727252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623627, 18.979303, 15.112679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303394, 18.744843, 15.062885>,  <19.111256, 18.604166, 15.033009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303394, 18.744843, 15.062885>,  <19.623627, 18.979303, 15.112679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303394, 18.744843, 15.062885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321665, 0.245103, 0.914580,
		-0.505572, 0.772237, -0.384769,
		-0.800580, -0.586153, -0.124485,
		19.063221, 18.568996, 15.025539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.918028, 19.303562, 15.483908>,  <19.623627, 18.979303, 15.112679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.918028, 19.303562, 15.483908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889290, 18.906651, 15.443464>,  <18.872047, 18.668505, 15.419198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889290, 18.906651, 15.443464>,  <18.918028, 19.303562, 15.483908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889290, 18.906651, 15.443464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400641, -0.064124, 0.913988,
		-0.913414, 0.106172, -0.392941,
		-0.071843, -0.992278, -0.101109,
		18.867737, 18.608967, 15.413132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169262, 19.137018, 15.725593>,  <18.918028, 19.303562, 15.483908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169262, 19.137018, 15.725593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378300, 18.797501, 15.693487>,  <18.503723, 18.593790, 15.674224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378300, 18.797501, 15.693487>,  <18.169262, 19.137018, 15.725593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378300, 18.797501, 15.693487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462773, -0.361465, 0.809434,
		-0.716056, -0.385862, -0.581699,
		0.522594, -0.848795, -0.080263,
		18.535078, 18.542862, 15.669409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666918, 18.768774, 15.847768>,  <18.169262, 19.137018, 15.725593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666918, 18.768774, 15.847768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017719, 18.589073, 15.915926>,  <18.228201, 18.481253, 15.956821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017719, 18.589073, 15.915926>,  <17.666918, 18.768774, 15.847768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017719, 18.589073, 15.915926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359411, -0.378016, 0.853186,
		-0.318880, -0.809493, -0.492988,
		0.877006, -0.449250, 0.170399,
		18.280821, 18.454296, 15.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585884, 17.948879, 15.849685>,  <17.666918, 18.768774, 15.847768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.585884, 17.948879, 15.849685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896049, 18.057854, 16.077549>,  <18.082150, 18.123238, 16.214268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896049, 18.057854, 16.077549>,  <17.585884, 17.948879, 15.849685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896049, 18.057854, 16.077549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468281, -0.357109, 0.808199,
		0.423613, -0.893450, -0.149331,
		0.775413, 0.272434, 0.569662,
		18.128674, 18.139584, 16.248447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640652, 17.429976, 16.379990>,  <17.585884, 17.948879, 15.849685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640652, 17.429976, 16.379990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875996, 17.711475, 16.539274>,  <18.017202, 17.880375, 16.634846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875996, 17.711475, 16.539274>,  <17.640652, 17.429976, 16.379990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875996, 17.711475, 16.539274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364359, -0.208900, 0.907526,
		0.721856, -0.679043, 0.133509,
		0.588359, 0.703748, 0.398211,
		18.052504, 17.922600, 16.658737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.713404, 20.783228, 18.131680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.318558, 20.754292, 18.074585>,  <23.081650, 20.736929, 18.040327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.318558, 20.754292, 18.074585>,  <23.713404, 20.783228, 18.131680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318558, 20.754292, 18.074585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149614, -0.100758, -0.983597,
		0.056773, -0.992278, 0.110283,
		-0.987113, -0.072342, -0.142738,
		23.022423, 20.732590, 18.031763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.625237, 20.186798, 17.594334>,  <23.713404, 20.783228, 18.131680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.625237, 20.186798, 17.594334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.268517, 20.367420, 17.605555>,  <23.054483, 20.475794, 17.612288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.268517, 20.367420, 17.605555>,  <23.625237, 20.186798, 17.594334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268517, 20.367420, 17.605555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152274, -0.241193, -0.958456,
		-0.426032, -0.859024, 0.283856,
		-0.891801, 0.451558, 0.028051,
		23.000977, 20.502888, 17.613970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.140875, 19.682909, 17.248516>,  <23.625237, 20.186798, 17.594334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.140875, 19.682909, 17.248516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.003960, 20.058636, 17.239340>,  <22.921810, 20.284071, 17.233833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.003960, 20.058636, 17.239340>,  <23.140875, 19.682909, 17.248516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.003960, 20.058636, 17.239340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032860, -0.036369, -0.998798,
		-0.939020, -0.341123, 0.043315,
		-0.342289, 0.939315, -0.022941,
		22.901274, 20.340429, 17.232458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.660889, 19.643648, 16.610649>,  <23.140875, 19.682909, 17.248516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.660889, 19.643648, 16.610649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.725128, 20.027824, 16.701653>,  <22.763672, 20.258331, 16.756254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.725128, 20.027824, 16.701653>,  <22.660889, 19.643648, 16.610649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.725128, 20.027824, 16.701653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007724, 0.231717, -0.972753,
		-0.986990, 0.154465, 0.044632,
		0.160598, 0.960441, 0.227509,
		22.773308, 20.315956, 16.769905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154846, 20.082458, 16.322815>,  <22.660889, 19.643648, 16.610649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154846, 20.082458, 16.322815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.425705, 20.370750, 16.382170>,  <22.588221, 20.543726, 16.417784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.425705, 20.370750, 16.382170>,  <22.154846, 20.082458, 16.322815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.425705, 20.370750, 16.382170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059835, 0.254919, -0.965109,
		-0.733410, 0.644643, 0.215743,
		0.677148, 0.720730, 0.148388,
		22.628849, 20.586969, 16.426685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954121, 20.646730, 15.955163>,  <22.154846, 20.082458, 16.322815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954121, 20.646730, 15.955163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.351505, 20.663071, 15.997803>,  <22.589935, 20.672874, 16.023386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.351505, 20.663071, 15.997803>,  <21.954121, 20.646730, 15.955163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.351505, 20.663071, 15.997803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106961, -0.006754, -0.994240,
		-0.039896, 0.999142, -0.011080,
		0.993462, 0.040852, 0.106600,
		22.649544, 20.675325, 16.029783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200241, 21.151342, 15.579318>,  <21.954121, 20.646730, 15.955163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200241, 21.151342, 15.579318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.524521, 20.920620, 15.619450>,  <22.719088, 20.782187, 15.643528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.524521, 20.920620, 15.619450>,  <22.200241, 21.151342, 15.579318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.524521, 20.920620, 15.619450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081460, -0.058568, -0.994954,
		0.579770, 0.814780, -0.000494,
		0.810698, -0.576804, 0.100328,
		22.767731, 20.747580, 15.649548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.691645, 21.491289, 15.173744>,  <22.200241, 21.151342, 15.579318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.691645, 21.491289, 15.173744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.825840, 21.117504, 15.221451>,  <22.906357, 20.893232, 15.250074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.825840, 21.117504, 15.221451>,  <22.691645, 21.491289, 15.173744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825840, 21.117504, 15.221451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261692, -0.029175, -0.964710,
		0.904967, 0.354859, 0.234754,
		0.335487, -0.934465, 0.119266,
		22.926487, 20.837164, 15.257231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.448044, 21.443121, 14.873313>,  <22.691645, 21.491289, 15.173744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.448044, 21.443121, 14.873313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.334282, 21.059654, 14.876720>,  <23.266024, 20.829575, 14.878765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.334282, 21.059654, 14.876720>,  <23.448044, 21.443121, 14.873313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334282, 21.059654, 14.876720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189325, -0.064873, -0.979769,
		0.939824, -0.277040, 0.199949,
		-0.284407, -0.958666, 0.008519,
		23.248960, 20.772055, 14.879276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933325, 21.047178, 14.575171>,  <23.448044, 21.443121, 14.873313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933325, 21.047178, 14.575171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.629189, 20.790089, 14.537676>,  <23.446707, 20.635836, 14.515179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.629189, 20.790089, 14.537676>,  <23.933325, 21.047178, 14.575171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.629189, 20.790089, 14.537676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285246, -0.200760, -0.937193,
		0.583536, -0.739326, 0.335980,
		-0.760342, -0.642722, -0.093739,
		23.401085, 20.597271, 14.509554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.190052, 20.351744, 14.341396>,  <23.933325, 21.047178, 14.575171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.190052, 20.351744, 14.341396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.802586, 20.401356, 14.255323>,  <23.570107, 20.431124, 14.203680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.802586, 20.401356, 14.255323>,  <24.190052, 20.351744, 14.341396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.802586, 20.401356, 14.255323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167990, -0.310956, -0.935460,
		-0.182936, -0.942297, 0.280377,
		-0.968666, 0.124029, -0.215182,
		23.511986, 20.438564, 14.190768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.123615, 19.793591, 13.921183>,  <24.190052, 20.351744, 14.341396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.123615, 19.793591, 13.921183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.801151, 20.022007, 13.859192>,  <23.607674, 20.159058, 13.821998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.801151, 20.022007, 13.859192>,  <24.123615, 19.793591, 13.921183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.801151, 20.022007, 13.859192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075314, -0.160759, -0.984116,
		-0.586887, -0.805026, 0.086590,
		-0.806159, 0.571043, -0.154977,
		23.559303, 20.193319, 13.812698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.720776, 19.431662, 13.449493>,  <24.123615, 19.793591, 13.921183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.720776, 19.431662, 13.449493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.596249, 19.809750, 13.410223>,  <23.521532, 20.036602, 13.386661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.596249, 19.809750, 13.410223>,  <23.720776, 19.431662, 13.449493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.596249, 19.809750, 13.410223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014325, -0.107967, -0.994051,
		-0.950198, -0.308058, 0.047152,
		-0.311316, 0.945221, -0.098177,
		23.502853, 20.093315, 13.380770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.125334, 19.393705, 13.080294>,  <23.720776, 19.431662, 13.449493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.125334, 19.393705, 13.080294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.243607, 19.771915, 13.025803>,  <23.314569, 19.998840, 12.993108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.243607, 19.771915, 13.025803>,  <23.125334, 19.393705, 13.080294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.243607, 19.771915, 13.025803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122575, -0.103872, -0.987009,
		-0.947390, 0.308539, 0.085185,
		0.295683, 0.945523, -0.136226,
		23.332312, 20.055573, 12.984935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.805058, 18.729813, 12.757685>,  <23.125334, 19.393705, 13.080294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.805058, 18.729813, 12.757685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.902725, 18.342331, 12.775550>,  <22.961327, 18.109842, 12.786269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.902725, 18.342331, 12.775550>,  <22.805058, 18.729813, 12.757685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.902725, 18.342331, 12.775550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185637, -0.001486, 0.982617,
		-0.951798, -0.248216, -0.180190,
		0.244169, -0.968703, 0.044664,
		22.975977, 18.051720, 12.788949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.275442, 18.401655, 13.144753>,  <22.805058, 18.729813, 12.757685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.275442, 18.401655, 13.144753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.600147, 18.170883, 13.180965>,  <22.794970, 18.032421, 13.202693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.600147, 18.170883, 13.180965>,  <22.275442, 18.401655, 13.144753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.600147, 18.170883, 13.180965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186511, -0.109219, 0.976363,
		-0.553403, -0.809460, -0.196264,
		0.811762, -0.576928, 0.090531,
		22.843676, 17.997805, 13.208125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.059435, 17.891096, 13.550955>,  <22.275442, 18.401655, 13.144753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.059435, 17.891096, 13.550955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.457401, 17.857296, 13.572872>,  <22.696180, 17.837017, 13.586022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.457401, 17.857296, 13.572872>,  <22.059435, 17.891096, 13.550955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.457401, 17.857296, 13.572872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083654, -0.390465, 0.916809,
		-0.056074, -0.916732, -0.395549,
		0.994916, -0.084498, 0.054793,
		22.755877, 17.831947, 13.589310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144411, 17.210705, 13.918510>,  <22.059435, 17.891096, 13.550955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144411, 17.210705, 13.918510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.477577, 17.427860, 13.961452>,  <22.677477, 17.558153, 13.987218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.477577, 17.427860, 13.961452>,  <22.144411, 17.210705, 13.918510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.477577, 17.427860, 13.961452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063715, -0.286776, 0.955877,
		0.549719, -0.789325, -0.273450,
		0.832916, 0.542887, 0.107355,
		22.727451, 17.590727, 13.993659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641705, 16.752781, 14.131140>,  <22.144411, 17.210705, 13.918510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641705, 16.752781, 14.131140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.742821, 17.119308, 14.255369>,  <22.803492, 17.339226, 14.329906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.742821, 17.119308, 14.255369>,  <22.641705, 16.752781, 14.131140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.742821, 17.119308, 14.255369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020103, -0.325904, 0.945189,
		0.967312, -0.232693, -0.100806,
		0.252792, 0.916319, 0.310573,
		22.818659, 17.394205, 14.348541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003052, 16.605925, 14.713975>,  <22.641705, 16.752781, 14.131140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003052, 16.605925, 14.713975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.953476, 17.000843, 14.753748>,  <22.923731, 17.237793, 14.777612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.953476, 17.000843, 14.753748>,  <23.003052, 16.605925, 14.713975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953476, 17.000843, 14.753748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174565, -0.120337, 0.977265,
		0.976814, 0.103766, 0.187262,
		-0.123941, 0.987295, 0.099433,
		22.916294, 17.297031, 14.783578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.489214, 16.867201, 15.192719>,  <23.003052, 16.605925, 14.713975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.489214, 16.867201, 15.192719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.204369, 17.147949, 15.199310>,  <23.033461, 17.316399, 15.203264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.204369, 17.147949, 15.199310>,  <23.489214, 16.867201, 15.192719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.204369, 17.147949, 15.199310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034593, -0.058519, 0.997687,
		0.701213, 0.709895, 0.065952,
		-0.712113, 0.701872, 0.016477,
		22.990734, 17.358511, 15.204253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.557058, 17.152113, 15.921448>,  <23.489214, 16.867201, 15.192719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.557058, 17.152113, 15.921448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.187893, 17.273201, 15.826290>,  <22.966394, 17.345854, 15.769196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.187893, 17.273201, 15.826290>,  <23.557058, 17.152113, 15.921448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.187893, 17.273201, 15.826290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279390, -0.101446, 0.954803,
		0.264905, 0.947665, 0.178203,
		-0.922912, 0.302720, -0.237895,
		22.911018, 17.364017, 15.754922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.383024, 17.660275, 16.346432>,  <23.557058, 17.152113, 15.921448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.383024, 17.660275, 16.346432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.017391, 17.552956, 16.224798>,  <22.798012, 17.488564, 16.151819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.017391, 17.552956, 16.224798>,  <23.383024, 17.660275, 16.346432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.017391, 17.552956, 16.224798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291995, -0.084883, 0.952646,
		-0.281406, 0.959589, -0.000752,
		-0.914084, -0.268299, -0.304082,
		22.743166, 17.472466, 16.133574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.853275, 18.125872, 16.713501>,  <23.383024, 17.660275, 16.346432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.853275, 18.125872, 16.713501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.620155, 17.815353, 16.617413>,  <22.480284, 17.629042, 16.559759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.620155, 17.815353, 16.617413>,  <22.853275, 18.125872, 16.713501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.620155, 17.815353, 16.617413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382463, 0.001213, 0.923970,
		-0.716985, 0.630365, -0.297612,
		-0.582800, -0.776298, -0.240222,
		22.445316, 17.582464, 16.545345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231848, 18.333168, 17.061846>,  <22.853275, 18.125872, 16.713501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231848, 18.333168, 17.061846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.208954, 17.943981, 16.972347>,  <22.195217, 17.710470, 16.918648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.208954, 17.943981, 16.972347>,  <22.231848, 18.333168, 17.061846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.208954, 17.943981, 16.972347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554676, -0.155351, 0.817436,
		-0.830096, 0.170894, -0.530788,
		-0.057236, -0.972965, -0.223747,
		22.191784, 17.652092, 16.905224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530378, 18.154140, 16.972773>,  <22.231848, 18.333168, 17.061846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530378, 18.154140, 16.972773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.732483, 17.824150, 17.074062>,  <21.853746, 17.626156, 17.134836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.732483, 17.824150, 17.074062>,  <21.530378, 18.154140, 16.972773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.732483, 17.824150, 17.074062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613500, -0.137022, 0.777716,
		-0.606901, -0.548304, -0.575356,
		0.505261, -0.824978, 0.253226,
		21.884062, 17.576656, 17.150030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992460, 17.731220, 17.117363>,  <21.530378, 18.154140, 16.972773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992460, 17.731220, 17.117363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.318394, 17.581100, 17.294086>,  <21.513954, 17.491030, 17.400122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.318394, 17.581100, 17.294086>,  <20.992460, 17.731220, 17.117363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.318394, 17.581100, 17.294086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458104, 0.050146, 0.887483,
		-0.355225, -0.925547, -0.131065,
		0.814835, -0.375298, 0.441810,
		21.562843, 17.468512, 17.426630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.716360, 17.087492, 17.575666>,  <20.992460, 17.731220, 17.117363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.716360, 17.087492, 17.575666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.075504, 17.193562, 17.716253>,  <21.290991, 17.257204, 17.800606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.075504, 17.193562, 17.716253>,  <20.716360, 17.087492, 17.575666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075504, 17.193562, 17.716253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380640, 0.066337, 0.922341,
		0.221265, -0.961916, 0.160497,
		0.897861, 0.265173, 0.351466,
		21.344862, 17.273113, 17.821693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.624575, 16.316591, 17.379198>,  <20.716360, 17.087492, 17.575666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.624575, 16.316591, 17.379198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.298168, 16.085926, 17.363300>,  <20.102324, 15.947527, 17.353762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.298168, 16.085926, 17.363300>,  <20.624575, 16.316591, 17.379198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.298168, 16.085926, 17.363300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212520, -0.235369, -0.948386,
		0.537543, -0.782345, 0.314617,
		-0.816016, -0.576661, -0.039743,
		20.053364, 15.912928, 17.351377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842073, 15.700770, 17.001902>,  <20.624575, 16.316591, 17.379198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842073, 15.700770, 17.001902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.444885, 15.746513, 16.989679>,  <20.206572, 15.773959, 16.982346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.444885, 15.746513, 16.989679>,  <20.842073, 15.700770, 17.001902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444885, 15.746513, 16.989679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008264, -0.190537, -0.981645,
		-0.118078, -0.974997, 0.188253,
		-0.992970, 0.114355, -0.030556,
		20.146994, 15.780821, 16.980513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513575, 15.030519, 16.682289>,  <20.842073, 15.700770, 17.001902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513575, 15.030519, 16.682289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.266315, 15.341217, 16.634016>,  <20.117960, 15.527636, 16.605051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.266315, 15.341217, 16.634016>,  <20.513575, 15.030519, 16.682289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266315, 15.341217, 16.634016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034375, -0.126673, -0.991349,
		-0.785311, -0.616948, 0.051602,
		-0.618147, 0.776743, -0.120685,
		20.080872, 15.574240, 16.597811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041840, 14.759480, 16.181734>,  <20.513575, 15.030519, 16.682289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041840, 14.759480, 16.181734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.015755, 15.158627, 16.182671>,  <20.000103, 15.398115, 16.183233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.015755, 15.158627, 16.182671>,  <20.041840, 14.759480, 16.181734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015755, 15.158627, 16.182671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235803, -0.013129, -0.971712,
		-0.969610, -0.063920, 0.236157,
		-0.065213, 0.997868, 0.002343,
		19.996191, 15.457987, 16.183374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592985, 14.804097, 15.757111>,  <20.041840, 14.759480, 16.181734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592985, 14.804097, 15.757111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.691486, 15.191288, 15.776623>,  <19.750587, 15.423602, 15.788330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.691486, 15.191288, 15.776623>,  <19.592985, 14.804097, 15.757111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691486, 15.191288, 15.776623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244866, 0.110834, -0.963201,
		-0.937763, 0.225248, 0.264318,
		0.246254, 0.967977, 0.048781,
		19.765362, 15.481681, 15.791257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011225, 15.237579, 15.572819>,  <19.592985, 14.804097, 15.757111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011225, 15.237579, 15.572819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.336464, 15.456177, 15.492599>,  <19.531607, 15.587335, 15.444468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.336464, 15.456177, 15.492599>,  <19.011225, 15.237579, 15.572819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336464, 15.456177, 15.492599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287844, 0.077994, -0.954496,
		-0.505984, 0.833824, 0.220721,
		0.813097, 0.546493, -0.200548,
		19.580393, 15.620125, 15.432435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.743710, 15.735662, 14.975245>,  <19.011225, 15.237579, 15.572819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.743710, 15.735662, 14.975245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.143677, 15.731068, 14.977385>,  <19.383657, 15.728312, 14.978668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.143677, 15.731068, 14.977385>,  <18.743710, 15.735662, 14.975245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143677, 15.731068, 14.977385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005116, -0.020286, -0.999781,
		0.011590, 0.999728, -0.020225,
		0.999920, -0.011484, 0.005350,
		19.443653, 15.727622, 14.978990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.022890, 16.307922, 14.589551>,  <18.743710, 15.735662, 14.975245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.022890, 16.307922, 14.589551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.287521, 16.008133, 14.579733>,  <19.446301, 15.828259, 14.573842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.287521, 16.008133, 14.579733>,  <19.022890, 16.307922, 14.589551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287521, 16.008133, 14.579733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009350, 0.040975, -0.999116,
		0.749817, 0.660765, 0.034115,
		0.661579, -0.749474, -0.024546,
		19.485994, 15.783291, 14.572370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331251, 16.502996, 13.946415>,  <19.022890, 16.307922, 14.589551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.331251, 16.502996, 13.946415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.505989, 16.150948, 14.020769>,  <19.610832, 15.939719, 14.065382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.505989, 16.150948, 14.020769>,  <19.331251, 16.502996, 13.946415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505989, 16.150948, 14.020769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149022, -0.132983, -0.979851,
		0.887106, 0.455746, 0.073063,
		0.436847, -0.880120, 0.185886,
		19.637043, 15.886911, 14.076535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811148, 16.488787, 13.466658>,  <19.331251, 16.502996, 13.946415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811148, 16.488787, 13.466658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.767746, 16.103836, 13.566301>,  <19.741705, 15.872866, 13.626087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.767746, 16.103836, 13.566301>,  <19.811148, 16.488787, 13.466658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767746, 16.103836, 13.566301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322160, -0.271106, -0.907036,
		0.940447, -0.018165, 0.339456,
		-0.108504, -0.962378, 0.249109,
		19.735195, 15.815123, 13.641034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.503716, 16.175642, 13.318399>,  <19.811148, 16.488787, 13.466658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.503716, 16.175642, 13.318399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.218227, 15.895485, 13.321293>,  <20.046934, 15.727391, 13.323029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.218227, 15.895485, 13.321293>,  <20.503716, 16.175642, 13.318399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218227, 15.895485, 13.321293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334068, -0.349466, -0.875370,
		0.615629, -0.622355, 0.483400,
		-0.713722, -0.700392, 0.007233,
		20.004110, 15.685368, 13.323462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785460, 15.526124, 13.249832>,  <20.503716, 16.175642, 13.318399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785460, 15.526124, 13.249832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.413647, 15.485847, 13.107943>,  <20.190559, 15.461681, 13.022809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.413647, 15.485847, 13.107943>,  <20.785460, 15.526124, 13.249832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413647, 15.485847, 13.107943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366715, -0.151780, -0.917869,
		0.038582, -0.983272, 0.178010,
		-0.929533, -0.100692, -0.354725,
		20.134787, 15.455640, 13.001525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712698, 14.918372, 12.917056>,  <20.785460, 15.526124, 13.249832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712698, 14.918372, 12.917056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.403980, 15.116634, 12.757726>,  <20.218750, 15.235592, 12.662127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.403980, 15.116634, 12.757726>,  <20.712698, 14.918372, 12.917056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403980, 15.116634, 12.757726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324392, -0.231867, -0.917064,
		-0.546906, -0.836997, 0.018166,
		-0.771792, 0.495655, -0.398325,
		20.172443, 15.265331, 12.638228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.611715, 14.526675, 12.395669>,  <20.712698, 14.918372, 12.917056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.611715, 14.526675, 12.395669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.408039, 14.855553, 12.293905>,  <20.285833, 15.052879, 12.232847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.408039, 14.855553, 12.293905>,  <20.611715, 14.526675, 12.395669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.408039, 14.855553, 12.293905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254558, -0.138499, -0.957088,
		-0.822147, -0.552102, -0.138773,
		-0.509190, 0.822193, -0.254409,
		20.255281, 15.102211, 12.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.324310, 17.030556, 16.849047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.308929, 17.399006, 17.003990>,  <18.299700, 17.620077, 17.096956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.308929, 17.399006, 17.003990>,  <18.324310, 17.030556, 16.849047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308929, 17.399006, 17.003990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500793, -0.353214, 0.790219,
		0.864712, -0.163599, 0.474877,
		-0.038454, 0.921127, 0.387357,
		18.297394, 17.675344, 17.120197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.638023, 17.005751, 17.569426>,  <18.324310, 17.030556, 16.849047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.638023, 17.005751, 17.569426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.395119, 17.322155, 17.539667>,  <18.249376, 17.511997, 17.521812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.395119, 17.322155, 17.539667>,  <18.638023, 17.005751, 17.569426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395119, 17.322155, 17.539667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456929, -0.271107, 0.847182,
		0.649961, 0.548455, 0.526069,
		-0.607262, 0.791011, -0.074397,
		18.212940, 17.559458, 17.517347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661844, 17.354820, 18.252619>,  <18.638023, 17.005751, 17.569426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661844, 17.354820, 18.252619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.332108, 17.538330, 18.119961>,  <18.134266, 17.648436, 18.040365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.332108, 17.538330, 18.119961>,  <18.661844, 17.354820, 18.252619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332108, 17.538330, 18.119961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438045, -0.145855, 0.887042,
		0.358581, 0.876499, 0.321199,
		-0.824340, 0.458775, -0.331645,
		18.084806, 17.675962, 18.020468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449017, 17.890888, 18.685270>,  <18.661844, 17.354820, 18.252619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449017, 17.890888, 18.685270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.107559, 17.838459, 18.483631>,  <17.902685, 17.807001, 18.362648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.107559, 17.838459, 18.483631>,  <18.449017, 17.890888, 18.685270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.107559, 17.838459, 18.483631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487134, -0.141694, 0.861756,
		-0.184381, 0.981194, 0.057106,
		-0.853642, -0.131073, -0.504099,
		17.851467, 17.799137, 18.332401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967098, 18.301834, 19.073494>,  <18.449017, 17.890888, 18.685270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967098, 18.301834, 19.073494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.776630, 18.022110, 18.860243>,  <17.662350, 17.854275, 18.732292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.776630, 18.022110, 18.860243>,  <17.967098, 18.301834, 19.073494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776630, 18.022110, 18.860243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673607, -0.099644, 0.732342,
		-0.565258, 0.707838, -0.423614,
		-0.476169, -0.699311, -0.533130,
		17.633780, 17.812317, 18.700304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256197, 18.503036, 19.072218>,  <17.967098, 18.301834, 19.073494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256197, 18.503036, 19.072218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.232059, 18.119514, 18.961185>,  <17.217577, 17.889400, 18.894566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.232059, 18.119514, 18.961185>,  <17.256197, 18.503036, 19.072218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232059, 18.119514, 18.961185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693949, -0.159592, 0.702115,
		-0.717491, 0.234993, -0.655732,
		-0.060343, -0.958806, -0.277579,
		17.213957, 17.831873, 18.877913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530401, 18.283831, 19.107027>,  <17.256197, 18.503036, 19.072218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530401, 18.283831, 19.107027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.762234, 17.958290, 19.123671>,  <16.901333, 17.762966, 19.133657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.762234, 17.958290, 19.123671>,  <16.530401, 18.283831, 19.107027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762234, 17.958290, 19.123671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592953, -0.386140, 0.706613,
		-0.559012, -0.434211, -0.706376,
		0.579579, -0.813853, 0.041610,
		16.936108, 17.714134, 19.136154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033241, 17.804564, 19.176653>,  <16.530401, 18.283831, 19.107027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033241, 17.804564, 19.176653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.379280, 17.644768, 19.297989>,  <16.586903, 17.548889, 19.370790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.379280, 17.644768, 19.297989>,  <16.033241, 17.804564, 19.176653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.379280, 17.644768, 19.297989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473778, -0.452133, 0.755718,
		-0.164751, -0.797486, -0.580408,
		0.865096, -0.399490, 0.303342,
		16.638809, 17.524921, 19.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791556, 17.143690, 19.482677>,  <16.033241, 17.804564, 19.176653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791556, 17.143690, 19.482677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.154415, 17.235260, 19.623917>,  <16.372131, 17.290201, 19.708660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.154415, 17.235260, 19.623917>,  <15.791556, 17.143690, 19.482677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154415, 17.235260, 19.623917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365576, 0.013133, 0.930689,
		0.208418, -0.973356, 0.095602,
		0.907147, 0.228922, 0.353098,
		16.426559, 17.303936, 19.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.858992, 16.677444, 20.021366>,  <15.791556, 17.143690, 19.482677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.858992, 16.677444, 20.021366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.115730, 16.976711, 20.088634>,  <16.269773, 17.156271, 20.128994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.115730, 16.976711, 20.088634>,  <15.858992, 16.677444, 20.021366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115730, 16.976711, 20.088634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170606, -0.074484, 0.982520,
		0.747613, -0.659319, 0.079834,
		0.641847, 0.748165, 0.168169,
		16.308285, 17.201160, 20.139086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210245, 16.486864, 20.644104>,  <15.858992, 16.677444, 20.021366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.210245, 16.486864, 20.644104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.231400, 16.883606, 20.597757>,  <16.244093, 17.121651, 20.569950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.231400, 16.883606, 20.597757>,  <16.210245, 16.486864, 20.644104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231400, 16.883606, 20.597757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237597, 0.125195, 0.963262,
		0.969923, -0.023415, 0.242283,
		0.052887, 0.991856, -0.115866,
		16.247265, 17.181162, 20.562998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751822, 16.758440, 21.203508>,  <16.210245, 16.486864, 20.644104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751822, 16.758440, 21.203508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.510666, 17.053001, 21.080717>,  <16.365973, 17.229738, 21.007042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.510666, 17.053001, 21.080717>,  <16.751822, 16.758440, 21.203508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.510666, 17.053001, 21.080717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348719, 0.102842, 0.931568,
		0.717579, 0.668682, 0.194795,
		-0.602890, 0.736402, -0.306979,
		16.329800, 17.273922, 20.988623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917433, 17.373228, 21.613699>,  <16.751822, 16.758440, 21.203508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917433, 17.373228, 21.613699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.535072, 17.387936, 21.497149>,  <16.305656, 17.396761, 21.427217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.535072, 17.387936, 21.497149>,  <16.917433, 17.373228, 21.613699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535072, 17.387936, 21.497149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290746, 0.021619, 0.956556,
		0.041472, 0.999090, -0.009974,
		-0.955901, 0.036770, -0.291378,
		16.248302, 17.398966, 21.409735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381792, 16.801413, 21.768581>,  <16.917433, 17.373228, 21.613699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381792, 16.801413, 21.768581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.241325, 17.101421, 21.992779>,  <17.157045, 17.281425, 22.127296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.241325, 17.101421, 21.992779>,  <17.381792, 16.801413, 21.768581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241325, 17.101421, 21.992779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916328, -0.152272, -0.370346,
		-0.192421, -0.643643, 0.740741,
		-0.351165, 0.750024, 0.560488,
		17.135975, 17.326427, 22.160927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842821, 16.880562, 22.420546>,  <17.381792, 16.801413, 21.768581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842821, 16.880562, 22.420546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.178947, 16.845627, 22.634552>,  <18.380623, 16.824665, 22.762957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.178947, 16.845627, 22.634552>,  <17.842821, 16.880562, 22.420546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178947, 16.845627, 22.634552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540941, 0.199562, -0.817042,
		-0.035409, 0.975985, 0.214941,
		0.840315, -0.087340, 0.535016,
		18.431042, 16.819426, 22.795057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265915, 17.466297, 22.133533>,  <17.842821, 16.880562, 22.420546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265915, 17.466297, 22.133533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.515850, 17.199867, 22.296469>,  <18.665812, 17.040009, 22.394230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.515850, 17.199867, 22.296469>,  <18.265915, 17.466297, 22.133533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515850, 17.199867, 22.296469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571462, 0.034676, -0.819896,
		0.531988, 0.745078, 0.402304,
		0.624836, -0.666076, 0.407336,
		18.703300, 17.000044, 22.418669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894913, 17.620436, 21.826824>,  <18.265915, 17.466297, 22.133533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894913, 17.620436, 21.826824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.918354, 17.248177, 21.971302>,  <18.932419, 17.024820, 22.057989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.918354, 17.248177, 21.971302>,  <18.894913, 17.620436, 21.826824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918354, 17.248177, 21.971302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496402, -0.286744, -0.819367,
		0.866112, 0.227316, 0.445171,
		0.058605, -0.930648, 0.361193,
		18.935936, 16.968983, 22.079660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524683, 17.428688, 21.702206>,  <18.894913, 17.620436, 21.826824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524683, 17.428688, 21.702206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.322231, 17.083958, 21.715397>,  <19.200760, 16.877119, 21.723312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.322231, 17.083958, 21.715397>,  <19.524683, 17.428688, 21.702206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322231, 17.083958, 21.715397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414301, -0.276490, -0.867126,
		0.756431, -0.425215, 0.496995,
		-0.506130, -0.861827, 0.032978,
		19.170393, 16.825409, 21.725290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996677, 16.914652, 21.365807>,  <19.524683, 17.428688, 21.702206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996677, 16.914652, 21.365807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.628483, 16.758919, 21.352417>,  <19.407566, 16.665480, 21.344383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.628483, 16.758919, 21.352417>,  <19.996677, 16.914652, 21.365807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628483, 16.758919, 21.352417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217352, -0.438920, -0.871841,
		0.324745, -0.809795, 0.488643,
		-0.920488, -0.389334, -0.033473,
		19.352337, 16.642118, 21.342375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088171, 16.343702, 20.941479>,  <19.996677, 16.914652, 21.365807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088171, 16.343702, 20.941479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.689037, 16.366035, 20.927568>,  <19.449556, 16.379435, 20.919222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.689037, 16.366035, 20.927568>,  <20.088171, 16.343702, 20.941479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.689037, 16.366035, 20.927568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006495, -0.442452, -0.896769,
		-0.065454, -0.895053, 0.441131,
		-0.997835, 0.055831, -0.034774,
		19.389687, 16.382786, 20.917137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843281, 15.672174, 20.631493>,  <20.088171, 16.343702, 20.941479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843281, 15.672174, 20.631493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.564919, 15.952614, 20.569296>,  <19.397902, 16.120878, 20.531979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.564919, 15.952614, 20.569296>,  <19.843281, 15.672174, 20.631493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564919, 15.952614, 20.569296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185851, -0.384972, -0.904022,
		-0.693669, -0.600214, 0.398203,
		-0.695904, 0.701099, -0.155492,
		19.356148, 16.162943, 20.522648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229290, 15.237127, 20.423363>,  <19.843281, 15.672174, 20.631493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229290, 15.237127, 20.423363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.210007, 15.608437, 20.275860>,  <19.198437, 15.831223, 20.187357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.210007, 15.608437, 20.275860>,  <19.229290, 15.237127, 20.423363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210007, 15.608437, 20.275860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119727, -0.371896, -0.920521,
		-0.991636, -0.000227, 0.129068,
		-0.048209, 0.928274, -0.368758,
		19.195543, 15.886919, 20.165232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851643, 15.202094, 19.781399>,  <19.229290, 15.237127, 20.423363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851643, 15.202094, 19.781399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.033653, 15.554436, 19.729170>,  <19.142860, 15.765841, 19.697832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.033653, 15.554436, 19.729170>,  <18.851643, 15.202094, 19.781399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033653, 15.554436, 19.729170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140180, -0.215660, -0.966354,
		-0.879375, 0.421413, -0.221609,
		0.455026, 0.880853, -0.130572,
		19.170160, 15.818691, 19.689999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586252, 15.434012, 19.266369>,  <18.851643, 15.202094, 19.781399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586252, 15.434012, 19.266369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.889301, 15.694580, 19.250078>,  <19.071131, 15.850921, 19.240305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.889301, 15.694580, 19.250078>,  <18.586252, 15.434012, 19.266369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889301, 15.694580, 19.250078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020476, -0.086086, -0.996077,
		-0.652369, 0.753819, -0.078559,
		0.757625, 0.651418, -0.040725,
		19.116589, 15.890005, 19.237862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450771, 15.861186, 18.677374>,  <18.586252, 15.434012, 19.266369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450771, 15.861186, 18.677374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.839409, 15.909485, 18.758787>,  <19.072592, 15.938464, 18.807634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.839409, 15.909485, 18.758787>,  <18.450771, 15.861186, 18.677374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839409, 15.909485, 18.758787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214071, -0.081787, -0.973388,
		-0.100888, 0.989308, -0.105312,
		0.971594, 0.120747, 0.203531,
		19.130888, 15.945709, 18.819847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742041, 16.455908, 18.214663>,  <18.450771, 15.861186, 18.677374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742041, 16.455908, 18.214663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.020248, 16.190388, 18.324663>,  <19.187172, 16.031076, 18.390663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.020248, 16.190388, 18.324663>,  <18.742041, 16.455908, 18.214663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020248, 16.190388, 18.324663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298645, -0.081033, -0.950918,
		0.653503, 0.743508, 0.141880,
		0.695518, -0.663800, 0.275000,
		19.228905, 15.991248, 18.407164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399357, 16.810186, 18.098274>,  <18.742041, 16.455908, 18.214663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399357, 16.810186, 18.098274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.447006, 16.413052, 18.101952>,  <19.475595, 16.174770, 18.104158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.447006, 16.413052, 18.101952>,  <19.399357, 16.810186, 18.098274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.447006, 16.413052, 18.101952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391884, 0.038506, -0.919209,
		0.912270, 0.113103, 0.393664,
		0.119123, -0.992837, 0.009195,
		19.482742, 16.115200, 18.104710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.104195, 16.726160, 17.735582>,  <19.399357, 16.810186, 18.098274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.104195, 16.726160, 17.735582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.945366, 16.359085, 17.730139>,  <19.850069, 16.138840, 17.726873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.945366, 16.359085, 17.730139>,  <20.104195, 16.726160, 17.735582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945366, 16.359085, 17.730139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413265, -0.165535, -0.895439,
		0.819480, -0.361176, 0.444977,
		-0.397071, -0.917687, -0.013609,
		19.826244, 16.083778, 17.726055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707560, 16.900345, 18.277363>,  <20.104195, 16.726160, 17.735582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707560, 16.900345, 18.277363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.022224, 17.146713, 18.260366>,  <21.211023, 17.294535, 18.250168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.022224, 17.146713, 18.260366>,  <20.707560, 16.900345, 18.277363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022224, 17.146713, 18.260366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153470, 0.261750, 0.952856,
		0.598008, -0.743052, 0.300434,
		0.786660, 0.615923, -0.042493,
		21.258223, 17.331490, 18.247618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950066, 16.775799, 18.932697>,  <20.707560, 16.900345, 18.277363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950066, 16.775799, 18.932697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.109398, 17.109921, 18.781120>,  <21.204998, 17.310394, 18.690174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.109398, 17.109921, 18.781120>,  <20.950066, 16.775799, 18.932697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109398, 17.109921, 18.781120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019021, 0.405520, 0.913888,
		0.917044, -0.371238, 0.145642,
		0.398331, 0.835306, -0.378941,
		21.228897, 17.360512, 18.667439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.462902, 16.911299, 19.319622>,  <20.950066, 16.775799, 18.932697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.462902, 16.911299, 19.319622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.426273, 17.282326, 19.174719>,  <21.404297, 17.504942, 19.087776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.426273, 17.282326, 19.174719>,  <21.462902, 16.911299, 19.319622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426273, 17.282326, 19.174719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201532, 0.373523, 0.905464,
		0.975192, 0.009907, -0.221139,
		-0.091571, 0.927568, -0.362260,
		21.398802, 17.560596, 19.066040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967607, 17.397532, 19.691498>,  <21.462902, 16.911299, 19.319622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967607, 17.397532, 19.691498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.671299, 17.615089, 19.533794>,  <21.493513, 17.745625, 19.439173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.671299, 17.615089, 19.533794>,  <21.967607, 17.397532, 19.691498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671299, 17.615089, 19.533794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003537, 0.583737, 0.811935,
		0.671749, 0.602852, -0.430492,
		-0.740771, 0.543894, -0.394257,
		21.449068, 17.778257, 19.415518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.177319, 18.062273, 19.854872>,  <21.967607, 17.397532, 19.691498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.177319, 18.062273, 19.854872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.783058, 18.044231, 19.789804>,  <21.546503, 18.033407, 19.750765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.783058, 18.044231, 19.789804>,  <22.177319, 18.062273, 19.854872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783058, 18.044231, 19.789804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162326, 0.517672, 0.840039,
		0.046320, 0.854389, -0.517565,
		-0.985649, -0.045104, -0.162668,
		21.487364, 18.030701, 19.741005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.014549, 18.717928, 20.020542>,  <22.177319, 18.062273, 19.854872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.014549, 18.717928, 20.020542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.669746, 18.516724, 19.995483>,  <21.462866, 18.396000, 19.980448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.669746, 18.516724, 19.995483>,  <22.014549, 18.717928, 20.020542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669746, 18.516724, 19.995483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301369, 0.409193, 0.861242,
		-0.407582, 0.761275, -0.504319,
		-0.862006, -0.503012, -0.062645,
		21.411144, 18.365820, 19.976690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414007, 19.232794, 20.033823>,  <22.014549, 18.717928, 20.020542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414007, 19.232794, 20.033823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.293251, 18.878468, 20.174788>,  <21.220797, 18.665873, 20.259365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.293251, 18.878468, 20.174788>,  <21.414007, 19.232794, 20.033823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293251, 18.878468, 20.174788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340443, 0.445453, 0.828052,
		-0.890483, 0.130005, -0.436048,
		-0.301890, -0.885816, 0.352409,
		21.202684, 18.612722, 20.280510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419159, 20.006752, 20.227087>,  <21.414007, 19.232794, 20.033823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419159, 20.006752, 20.227087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.443993, 20.395157, 20.319414>,  <21.458893, 20.628201, 20.374811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.443993, 20.395157, 20.319414>,  <21.419159, 20.006752, 20.227087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443993, 20.395157, 20.319414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570082, 0.155327, -0.806771,
		-0.819238, 0.181673, -0.543915,
		0.062084, 0.971014, 0.230818,
		21.462618, 20.686460, 20.388660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.196831, 20.375559, 19.657679>,  <21.419159, 20.006752, 20.227087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.196831, 20.375559, 19.657679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.425499, 20.648609, 19.839760>,  <21.562700, 20.812439, 19.949009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.425499, 20.648609, 19.839760>,  <21.196831, 20.375559, 19.657679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425499, 20.648609, 19.839760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482885, 0.168619, -0.859296,
		-0.663336, 0.711046, -0.233236,
		0.571671, 0.682628, 0.455204,
		21.597000, 20.853397, 19.976320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.276300, 20.876787, 19.203596>,  <21.196831, 20.375559, 19.657679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.276300, 20.876787, 19.203596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.565205, 20.957726, 19.468140>,  <21.738548, 21.006289, 19.626865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.565205, 20.957726, 19.468140>,  <21.276300, 20.876787, 19.203596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.565205, 20.957726, 19.468140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623684, 0.222746, -0.749268,
		-0.298925, 0.953646, 0.034683,
		0.722262, 0.202344, 0.661358,
		21.781883, 21.018429, 19.666548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.528616, 21.573860, 19.032032>,  <21.276300, 20.876787, 19.203596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.528616, 21.573860, 19.032032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.792507, 21.359192, 19.242458>,  <21.950842, 21.230391, 19.368715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.792507, 21.359192, 19.242458>,  <21.528616, 21.573860, 19.032032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792507, 21.359192, 19.242458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619662, -0.007579, -0.784832,
		0.425183, 0.843758, 0.327554,
		0.659726, -0.536670, 0.526068,
		21.990425, 21.198191, 19.400278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079515, 21.821959, 18.733929>,  <21.528616, 21.573860, 19.032032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079515, 21.821959, 18.733929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.179195, 21.487709, 18.929737>,  <22.239004, 21.287159, 19.047222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.179195, 21.487709, 18.929737>,  <22.079515, 21.821959, 18.733929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.179195, 21.487709, 18.929737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556844, -0.289925, -0.778375,
		0.792353, 0.466559, 0.393063,
		0.249199, -0.835624, 0.489523,
		22.253956, 21.237022, 19.076593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.827105, 21.780537, 18.683294>,  <22.079515, 21.821959, 18.733929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.827105, 21.780537, 18.683294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.683426, 21.412903, 18.748119>,  <22.597219, 21.192324, 18.787014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.683426, 21.412903, 18.748119>,  <22.827105, 21.780537, 18.683294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.683426, 21.412903, 18.748119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511139, -0.339031, -0.789807,
		0.780843, -0.200857, 0.591558,
		-0.359195, -0.919083, 0.162064,
		22.575668, 21.137178, 18.796738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.376972, 21.422951, 18.414684>,  <22.827105, 21.780537, 18.683294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.376972, 21.422951, 18.414684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.111309, 21.124519, 18.433693>,  <22.951910, 20.945461, 18.445099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.111309, 21.124519, 18.433693>,  <23.376972, 21.422951, 18.414684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111309, 21.124519, 18.433693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402241, -0.410209, -0.818493,
		0.630155, -0.524494, 0.572548,
		-0.664159, -0.746079, 0.047523,
		22.912062, 20.900696, 18.447950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.103586, 20.455910, 20.393322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.165635, 20.065441, 20.332626>,  <15.202865, 19.831160, 20.296209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.165635, 20.065441, 20.332626>,  <15.103586, 20.455910, 20.393322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165635, 20.065441, 20.332626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536372, 0.212210, -0.816867,
		0.829604, 0.045325, 0.556510,
		0.155122, -0.976172, -0.151739,
		15.212172, 19.772589, 20.287104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.872212, 20.411758, 20.565672>,  <15.103586, 20.455910, 20.393322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.872212, 20.411758, 20.565672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.714660, 20.127651, 20.332306>,  <15.620128, 19.957186, 20.192286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.714660, 20.127651, 20.332306>,  <15.872212, 20.411758, 20.565672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714660, 20.127651, 20.332306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605487, 0.277053, -0.746074,
		0.691551, -0.647116, 0.320933,
		-0.393881, -0.710269, -0.583416,
		15.596496, 19.914570, 20.157280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441263, 20.022293, 20.384262>,  <15.872212, 20.411758, 20.565672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441263, 20.022293, 20.384262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.166332, 19.935757, 20.106911>,  <16.001373, 19.883835, 19.940500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.166332, 19.935757, 20.106911>,  <16.441263, 20.022293, 20.384262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166332, 19.935757, 20.106911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696885, 0.072698, -0.713488,
		0.204767, -0.973607, 0.100800,
		-0.687329, -0.216344, -0.693379,
		15.960134, 19.870853, 19.898897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800930, 19.671610, 19.898378>,  <16.441263, 20.022293, 20.384262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800930, 19.671610, 19.898378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.471340, 19.777882, 19.698187>,  <16.273586, 19.841644, 19.578072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.471340, 19.777882, 19.698187>,  <16.800930, 19.671610, 19.898378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471340, 19.777882, 19.698187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555093, 0.201192, -0.807089,
		-0.113734, -0.942834, -0.313253,
		-0.823976, 0.265678, -0.500479,
		16.224148, 19.857586, 19.548042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044220, 19.618698, 19.272329>,  <16.800930, 19.671610, 19.898378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044220, 19.618698, 19.272329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.715477, 19.838604, 19.212585>,  <16.518230, 19.970547, 19.176739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.715477, 19.838604, 19.212585>,  <17.044220, 19.618698, 19.272329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715477, 19.838604, 19.212585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473451, 0.513312, -0.715789,
		-0.316847, -0.658992, -0.682156,
		-0.821859, 0.549763, -0.149359,
		16.468920, 20.003532, 19.167778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968441, 19.669254, 18.502926>,  <17.044220, 19.618698, 19.272329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968441, 19.669254, 18.502926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.789680, 19.985455, 18.670444>,  <16.682425, 20.175175, 18.770956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.789680, 19.985455, 18.670444>,  <16.968441, 19.669254, 18.502926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789680, 19.985455, 18.670444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413360, 0.597646, -0.686988,
		-0.793355, -0.133904, -0.593850,
		-0.446903, 0.790499, 0.418795,
		16.655609, 20.222605, 18.796083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854038, 20.100513, 17.958445>,  <16.968441, 19.669254, 18.502926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854038, 20.100513, 17.958445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.802464, 20.352837, 18.264505>,  <16.771519, 20.504230, 18.448141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.802464, 20.352837, 18.264505>,  <16.854038, 20.100513, 17.958445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802464, 20.352837, 18.264505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460223, 0.721528, -0.517293,
		-0.878391, 0.285442, -0.383344,
		-0.128937, 0.630809, 0.765151,
		16.763783, 20.542080, 18.494051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380228, 20.635056, 17.741320>,  <16.854038, 20.100513, 17.958445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380228, 20.635056, 17.741320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.619827, 20.767185, 18.033096>,  <16.763586, 20.846464, 18.208162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.619827, 20.767185, 18.033096>,  <16.380228, 20.635056, 17.741320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619827, 20.767185, 18.033096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387034, 0.678044, -0.624869,
		-0.701005, 0.656614, 0.278299,
		0.598997, 0.330325, 0.729444,
		16.799526, 20.866283, 18.251930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402775, 21.331558, 17.605446>,  <16.380228, 20.635056, 17.741320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402775, 21.331558, 17.605446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.728420, 21.253876, 17.824352>,  <16.923807, 21.207266, 17.955696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.728420, 21.253876, 17.824352>,  <16.402775, 21.331558, 17.605446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728420, 21.253876, 17.824352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539736, 0.600759, -0.589724,
		-0.214249, 0.775483, 0.593906,
		0.814115, -0.194204, 0.547268,
		16.972654, 21.195614, 17.988533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703959, 21.866077, 17.630680>,  <16.402775, 21.331558, 17.605446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703959, 21.866077, 17.630680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.993164, 21.598721, 17.700544>,  <17.166687, 21.438307, 17.742462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.993164, 21.598721, 17.700544>,  <16.703959, 21.866077, 17.630680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993164, 21.598721, 17.700544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572931, 0.438872, -0.692201,
		0.386007, 0.600538, 0.700252,
		0.723014, -0.668390, 0.174659,
		17.210068, 21.398203, 17.752941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278826, 22.416189, 17.528969>,  <16.703959, 21.866077, 17.630680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278826, 22.416189, 17.528969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.429367, 22.045650, 17.535170>,  <17.519691, 21.823328, 17.538891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.429367, 22.045650, 17.535170>,  <17.278826, 22.416189, 17.528969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429367, 22.045650, 17.535170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539918, 0.205696, -0.816197,
		0.752892, 0.315549, 0.577566,
		0.376353, -0.926347, 0.015504,
		17.542273, 21.767746, 17.539822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030058, 22.513752, 17.358746>,  <17.278826, 22.416189, 17.528969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030058, 22.513752, 17.358746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.879745, 22.156216, 17.260897>,  <17.789558, 21.941694, 17.202188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.879745, 22.156216, 17.260897>,  <18.030058, 22.513752, 17.358746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879745, 22.156216, 17.260897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490253, 0.032257, -0.870983,
		0.786410, -0.447224, 0.426086,
		-0.375780, -0.893840, -0.244621,
		17.767012, 21.888063, 17.187510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539158, 22.962887, 17.245068>,  <18.030058, 22.513752, 17.358746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539158, 22.962887, 17.245068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.479794, 23.358356, 17.254011>,  <18.444176, 23.595638, 17.259378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.479794, 23.358356, 17.254011>,  <18.539158, 22.962887, 17.245068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479794, 23.358356, 17.254011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171849, -0.048050, 0.983951,
		0.973880, 0.142186, 0.177034,
		-0.148410, 0.988673, 0.022360,
		18.435270, 23.654959, 17.260719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042025, 23.268175, 17.626152>,  <18.539158, 22.962887, 17.245068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042025, 23.268175, 17.626152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.718609, 23.503223, 17.638592>,  <18.524559, 23.644253, 17.646055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.718609, 23.503223, 17.638592>,  <19.042025, 23.268175, 17.626152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.718609, 23.503223, 17.638592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111516, 0.101117, 0.988605,
		0.577779, 0.802794, -0.147286,
		-0.808539, 0.587620, 0.031101,
		18.476048, 23.679510, 17.647923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200573, 23.746180, 18.016415>,  <19.042025, 23.268175, 17.626152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200573, 23.746180, 18.016415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.803181, 23.743607, 18.061949>,  <18.564745, 23.742064, 18.089270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.803181, 23.743607, 18.061949>,  <19.200573, 23.746180, 18.016415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803181, 23.743607, 18.061949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113208, 0.063270, 0.991555,
		-0.013581, 0.997976, -0.062129,
		-0.993478, -0.006433, 0.113838,
		18.505136, 23.741676, 18.096100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.102825, 24.213585, 18.544338>,  <19.200573, 23.746180, 18.016415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.102825, 24.213585, 18.544338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.753918, 24.018986, 18.524479>,  <18.544573, 23.902227, 18.512564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.753918, 24.018986, 18.524479>,  <19.102825, 24.213585, 18.544338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753918, 24.018986, 18.524479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046121, -0.019234, 0.998751,
		-0.486844, 0.873470, -0.005661,
		-0.872270, -0.486497, -0.049649,
		18.492237, 23.873037, 18.509584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665865, 24.588545, 18.966656>,  <19.102825, 24.213585, 18.544338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665865, 24.588545, 18.966656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.499187, 24.225807, 18.941370>,  <18.399181, 24.008163, 18.926199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.499187, 24.225807, 18.941370>,  <18.665865, 24.588545, 18.966656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499187, 24.225807, 18.941370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006496, -0.066569, 0.997761,
		-0.909024, 0.416172, 0.021848,
		-0.416694, -0.906846, -0.063216,
		18.374180, 23.953753, 18.922405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138802, 24.587318, 19.483639>,  <18.665865, 24.588545, 18.966656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138802, 24.587318, 19.483639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.197701, 24.201614, 19.395529>,  <18.233040, 23.970192, 19.342663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.197701, 24.201614, 19.395529>,  <18.138802, 24.587318, 19.483639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197701, 24.201614, 19.395529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022100, -0.219441, 0.975375,
		-0.988852, -0.148491, -0.011002,
		0.147249, -0.964259, -0.220277,
		18.241875, 23.912336, 19.329445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.775318, 24.266388, 19.963348>,  <18.138802, 24.587318, 19.483639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.775318, 24.266388, 19.963348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.013268, 23.976799, 19.823639>,  <18.156036, 23.803045, 19.739813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.013268, 23.976799, 19.823639>,  <17.775318, 24.266388, 19.963348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013268, 23.976799, 19.823639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048715, -0.401249, 0.914673,
		-0.802343, -0.561128, -0.203424,
		0.594872, -0.723972, -0.349275,
		18.191729, 23.759607, 19.718857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561005, 23.637238, 20.189978>,  <17.775318, 24.266388, 19.963348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561005, 23.637238, 20.189978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.947132, 23.566368, 20.113281>,  <18.178808, 23.523846, 20.067263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.947132, 23.566368, 20.113281>,  <17.561005, 23.637238, 20.189978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947132, 23.566368, 20.113281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083534, -0.486226, 0.869831,
		-0.247341, -0.855684, -0.454564,
		0.965321, -0.177174, -0.191742,
		18.236729, 23.513216, 20.055758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587257, 22.932066, 20.347063>,  <17.561005, 23.637238, 20.189978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587257, 22.932066, 20.347063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.972141, 23.040989, 20.346777>,  <18.203072, 23.106342, 20.346605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.972141, 23.040989, 20.346777>,  <17.587257, 22.932066, 20.347063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972141, 23.040989, 20.346777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138878, -0.488468, 0.861459,
		0.234230, -0.829005, -0.507827,
		0.962211, 0.272306, -0.000717,
		18.260805, 23.122681, 20.346561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006842, 22.351706, 20.294649>,  <17.587257, 22.932066, 20.347063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006842, 22.351706, 20.294649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.245068, 22.623096, 20.466682>,  <18.388002, 22.785931, 20.569902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.245068, 22.623096, 20.466682>,  <18.006842, 22.351706, 20.294649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.245068, 22.623096, 20.466682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086923, -0.586676, 0.805143,
		0.798590, -0.442131, -0.408379,
		0.595565, 0.678477, 0.430082,
		18.423737, 22.826639, 20.595707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535992, 21.955585, 20.539951>,  <18.006842, 22.351706, 20.294649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535992, 21.955585, 20.539951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.592743, 22.305733, 20.724819>,  <18.626795, 22.515821, 20.835739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.592743, 22.305733, 20.724819>,  <18.535992, 21.955585, 20.539951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.592743, 22.305733, 20.724819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189295, -0.482269, 0.855327,
		0.971616, -0.033868, -0.234127,
		0.141880, 0.875368, 0.462169,
		18.635307, 22.568344, 20.863470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263266, 21.885036, 20.904049>,  <18.535992, 21.955585, 20.539951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263266, 21.885036, 20.904049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.010349, 22.153835, 21.058258>,  <18.858599, 22.315115, 21.150784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.010349, 22.153835, 21.058258>,  <19.263266, 21.885036, 20.904049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010349, 22.153835, 21.058258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144383, -0.386689, 0.910837,
		0.761159, 0.631576, 0.147475,
		-0.632290, 0.671999, 0.385521,
		18.820662, 22.355434, 21.173914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590570, 22.022255, 21.556015>,  <19.263266, 21.885036, 20.904049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590570, 22.022255, 21.556015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.215740, 22.150433, 21.611450>,  <18.990843, 22.227339, 21.644711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.215740, 22.150433, 21.611450>,  <19.590570, 22.022255, 21.556015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215740, 22.150433, 21.611450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022261, -0.341304, 0.939689,
		0.348418, 0.883645, 0.312694,
		-0.937075, 0.320444, 0.138587,
		18.934618, 22.246565, 21.653027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545313, 22.450504, 22.160183>,  <19.590570, 22.022255, 21.556015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545313, 22.450504, 22.160183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.179890, 22.294140, 22.115278>,  <18.960636, 22.200321, 22.088335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.179890, 22.294140, 22.115278>,  <19.545313, 22.450504, 22.160183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179890, 22.294140, 22.115278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018572, -0.315827, 0.948635,
		-0.406288, 0.864547, 0.295786,
		-0.913556, -0.390912, -0.112260,
		18.905823, 22.176867, 22.081600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578476, 21.737734, 22.243841>,  <19.545313, 22.450504, 22.160183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578476, 21.737734, 22.243841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.755665, 21.484550, 22.497812>,  <19.861979, 21.332640, 22.650196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.755665, 21.484550, 22.497812>,  <19.578476, 21.737734, 22.243841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755665, 21.484550, 22.497812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826992, 0.015004, -0.562014,
		0.346206, 0.774039, 0.530099,
		0.442974, -0.632960, 0.634930,
		19.888557, 21.294662, 22.688292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226368, 22.148773, 22.446770>,  <19.578476, 21.737734, 22.243841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226368, 22.148773, 22.446770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.240658, 21.749382, 22.463583>,  <20.249231, 21.509747, 22.473671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.240658, 21.749382, 22.463583>,  <20.226368, 22.148773, 22.446770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.240658, 21.749382, 22.463583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680886, -0.006469, -0.732361,
		0.731517, 0.054786, 0.679618,
		0.035727, -0.998477, 0.042035,
		20.251375, 21.449839, 22.476194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881939, 22.010071, 22.262629>,  <20.226368, 22.148773, 22.446770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881939, 22.010071, 22.262629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.698616, 21.657028, 22.220760>,  <20.588623, 21.445202, 22.195639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.698616, 21.657028, 22.220760>,  <20.881939, 22.010071, 22.262629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.698616, 21.657028, 22.220760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633672, -0.241900, -0.734809,
		0.623228, -0.403096, 0.670149,
		-0.458308, -0.882609, -0.104671,
		20.561123, 21.392246, 22.189360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374180, 21.601807, 22.188122>,  <20.881939, 22.010071, 22.262629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374180, 21.601807, 22.188122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.085747, 21.364185, 22.045494>,  <20.912687, 21.221613, 21.959917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.085747, 21.364185, 22.045494>,  <21.374180, 21.601807, 22.188122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.085747, 21.364185, 22.045494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591167, -0.259133, -0.763787,
		0.361331, -0.761546, 0.538040,
		-0.721084, -0.594052, -0.356568,
		20.869421, 21.185970, 21.938524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722496, 20.875860, 22.111660>,  <21.374180, 21.601807, 22.188122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722496, 20.875860, 22.111660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.392689, 20.919521, 21.889576>,  <21.194805, 20.945719, 21.756325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.392689, 20.919521, 21.889576>,  <21.722496, 20.875860, 22.111660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392689, 20.919521, 21.889576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455747, -0.453442, -0.765953,
		-0.335362, -0.884577, 0.324125,
		-0.824517, 0.109152, -0.555210,
		21.145334, 20.952267, 21.723013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697668, 20.263258, 21.606232>,  <21.722496, 20.875860, 22.111660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697668, 20.263258, 21.606232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.455242, 20.526283, 21.427214>,  <21.309786, 20.684099, 21.319803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.455242, 20.526283, 21.427214>,  <21.697668, 20.263258, 21.606232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455242, 20.526283, 21.427214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496020, -0.127414, -0.858912,
		-0.621812, -0.742548, -0.248943,
		-0.606064, 0.657562, -0.447546,
		21.273422, 20.723553, 21.292950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.405390, 19.950735, 20.959669>,  <21.697668, 20.263258, 21.606232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.405390, 19.950735, 20.959669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.340885, 20.336582, 20.876238>,  <21.302183, 20.568090, 20.826180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.340885, 20.336582, 20.876238>,  <21.405390, 19.950735, 20.959669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340885, 20.336582, 20.876238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293624, -0.154881, -0.943291,
		-0.942221, -0.213358, -0.258259,
		-0.161260, 0.964619, -0.208579,
		21.292507, 20.625967, 20.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778111, 19.533335, 20.656605>,  <21.405390, 19.950735, 20.959669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778111, 19.533335, 20.656605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.850559, 19.140160, 20.669428>,  <20.894028, 18.904255, 20.677122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.850559, 19.140160, 20.669428>,  <20.778111, 19.533335, 20.656605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850559, 19.140160, 20.669428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033902, 0.026335, 0.999078,
		-0.982877, -0.182040, -0.028554,
		0.181120, -0.982938, 0.032056,
		20.904896, 18.845278, 20.679045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219170, 19.166134, 21.079369>,  <20.778111, 19.533335, 20.656605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219170, 19.166134, 21.079369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.557880, 18.953999, 21.095907>,  <20.761106, 18.826717, 21.105829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.557880, 18.953999, 21.095907>,  <20.219170, 19.166134, 21.079369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557880, 18.953999, 21.095907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037982, 0.017248, 0.999130,
		-0.530592, -0.847609, -0.005538,
		0.846776, -0.530341, 0.041346,
		20.811913, 18.794897, 21.108311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138409, 18.547211, 21.468365>,  <20.219170, 19.166134, 21.079369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138409, 18.547211, 21.468365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.537086, 18.579212, 21.462669>,  <20.776293, 18.598413, 21.459251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.537086, 18.579212, 21.462669>,  <20.138409, 18.547211, 21.468365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537086, 18.579212, 21.462669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022580, -0.104330, 0.994286,
		0.078062, -0.991320, -0.105791,
		0.996693, 0.080005, -0.014240,
		20.836094, 18.603214, 21.458397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345781, 18.152651, 22.019724>,  <20.138409, 18.547211, 21.468365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345781, 18.152651, 22.019724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.685883, 18.355164, 21.962112>,  <20.889944, 18.476671, 21.927546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.685883, 18.355164, 21.962112>,  <20.345781, 18.152651, 22.019724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.685883, 18.355164, 21.962112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148996, 0.030941, 0.988354,
		0.504844, -0.861811, -0.049126,
		0.850255, 0.506285, -0.144027,
		20.940958, 18.507050, 21.918905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891891, 17.874611, 22.449535>,  <20.345781, 18.152651, 22.019724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891891, 17.874611, 22.449535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.043236, 18.232006, 22.352772>,  <21.134043, 18.446444, 22.294714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.043236, 18.232006, 22.352772>,  <20.891891, 17.874611, 22.449535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043236, 18.232006, 22.352772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134883, 0.205331, 0.969353,
		0.915777, -0.399397, -0.042827,
		0.378363, 0.893489, -0.241909,
		21.156744, 18.500053, 22.280199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331646, 17.949291, 22.902887>,  <20.891891, 17.874611, 22.449535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331646, 17.949291, 22.902887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.307514, 18.329369, 22.780579>,  <21.293036, 18.557415, 22.707193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.307514, 18.329369, 22.780579>,  <21.331646, 17.949291, 22.902887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307514, 18.329369, 22.780579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180472, 0.311666, 0.932896,
		0.981728, 0.001100, -0.190287,
		-0.060332, 0.950191, -0.305772,
		21.289415, 18.614426, 22.688847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.912399, 18.391775, 23.215090>,  <21.331646, 17.949291, 22.902887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.912399, 18.391775, 23.215090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.578915, 18.600994, 23.144270>,  <21.378824, 18.726526, 23.101778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.578915, 18.600994, 23.144270>,  <21.912399, 18.391775, 23.215090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.578915, 18.600994, 23.144270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078378, 0.205295, 0.975557,
		0.546611, 0.827209, -0.130161,
		-0.833711, 0.523048, -0.177052,
		21.328802, 18.757908, 23.091154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.017796, 19.032345, 23.540531>,  <21.912399, 18.391775, 23.215090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.017796, 19.032345, 23.540531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.625168, 18.978821, 23.485960>,  <21.389591, 18.946707, 23.453217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.625168, 18.978821, 23.485960>,  <22.017796, 19.032345, 23.540531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.625168, 18.978821, 23.485960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172191, 0.309703, 0.935112,
		-0.082875, 0.941371, -0.327036,
		-0.981571, -0.133810, -0.136429,
		21.330696, 18.938677, 23.445032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758905, 19.565439, 23.803715>,  <22.017796, 19.032345, 23.540531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758905, 19.565439, 23.803715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.451763, 19.309555, 23.790033>,  <21.267477, 19.156025, 23.781824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.451763, 19.309555, 23.790033>,  <21.758905, 19.565439, 23.803715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.451763, 19.309555, 23.790033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386837, 0.420443, 0.820722,
		-0.510643, 0.643427, -0.570302,
		-0.767855, -0.639710, -0.034205,
		21.221407, 19.117641, 23.779772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<23.902620, 17.560713, 7.797563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.540894, 17.390961, 7.815926>,  <23.323856, 17.289108, 7.826943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.540894, 17.390961, 7.815926>,  <23.902620, 17.560713, 7.797563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.540894, 17.390961, 7.815926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094008, 0.302911, 0.948371,
		-0.416377, 0.853314, -0.313824,
		-0.904319, -0.424382, 0.045907,
		23.269598, 17.263647, 7.829698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445669, 18.050457, 8.148613>,  <23.902620, 17.560713, 7.797563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445669, 18.050457, 8.148613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.314369, 17.677937, 8.211768>,  <23.235590, 17.454424, 8.249661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.314369, 17.677937, 8.211768>,  <23.445669, 18.050457, 8.148613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.314369, 17.677937, 8.211768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075636, 0.192527, 0.978373,
		-0.941558, 0.309209, -0.133637,
		-0.328250, -0.931302, 0.157888,
		23.215895, 17.398546, 8.259134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809366, 18.064419, 8.597495>,  <23.445669, 18.050457, 8.148613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809366, 18.064419, 8.597495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.954594, 17.697163, 8.660995>,  <23.041731, 17.476809, 8.699094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.954594, 17.697163, 8.660995>,  <22.809366, 18.064419, 8.597495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954594, 17.697163, 8.660995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082272, 0.138120, 0.986992,
		-0.928123, -0.371407, -0.025390,
		0.363069, -0.918139, 0.158749,
		23.063515, 17.421721, 8.708619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.459412, 17.879414, 9.147210>,  <22.809366, 18.064419, 8.597495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.459412, 17.879414, 9.147210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.761826, 17.617630, 9.143356>,  <22.943274, 17.460560, 9.141044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.761826, 17.617630, 9.143356>,  <22.459412, 17.879414, 9.147210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.761826, 17.617630, 9.143356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066796, -0.091790, 0.993536,
		-0.651114, -0.750504, -0.113112,
		0.756036, -0.654460, -0.009636,
		22.988636, 17.421291, 9.140466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321157, 17.299017, 9.637630>,  <22.459412, 17.879414, 9.147210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321157, 17.299017, 9.637630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.717262, 17.245499, 9.622270>,  <22.954926, 17.213387, 9.613053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.717262, 17.245499, 9.622270>,  <22.321157, 17.299017, 9.637630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.717262, 17.245499, 9.622270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037352, -0.010360, 0.999249,
		-0.134098, -0.990954, -0.005261,
		0.990264, -0.133800, -0.038403,
		23.014341, 17.205359, 9.610748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504881, 16.636154, 10.000961>,  <22.321157, 17.299017, 9.637630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504881, 16.636154, 10.000961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.815838, 16.887711, 10.006015>,  <23.002413, 17.038645, 10.009047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.815838, 16.887711, 10.006015>,  <22.504881, 16.636154, 10.000961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.815838, 16.887711, 10.006015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054455, -0.087295, 0.994693,
		0.626655, -0.772578, -0.102109,
		0.777392, 0.628890, 0.012633,
		23.049055, 17.076378, 10.009805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864613, 16.507299, 10.582747>,  <22.504881, 16.636154, 10.000961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864613, 16.507299, 10.582747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.053917, 16.854576, 10.523061>,  <23.167500, 17.062943, 10.487248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.053917, 16.854576, 10.523061>,  <22.864613, 16.507299, 10.582747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.053917, 16.854576, 10.523061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284915, 0.009430, 0.958506,
		0.833576, -0.496137, -0.242898,
		0.473260, 0.868193, -0.149217,
		23.195894, 17.115034, 10.478295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543434, 16.489857, 11.001894>,  <22.864613, 16.507299, 10.582747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543434, 16.489857, 11.001894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.457512, 16.875889, 10.941917>,  <23.405958, 17.107508, 10.905931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.457512, 16.875889, 10.941917>,  <23.543434, 16.489857, 11.001894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457512, 16.875889, 10.941917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213382, 0.196191, 0.957067,
		0.953061, 0.173590, -0.248073,
		-0.214807, 0.965078, -0.149941,
		23.393070, 17.165413, 10.896935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.100100, 17.023132, 11.393750>,  <23.543434, 16.489857, 11.001894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.100100, 17.023132, 11.393750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.773823, 17.241501, 11.317211>,  <23.578056, 17.372522, 11.271288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.773823, 17.241501, 11.317211>,  <24.100100, 17.023132, 11.393750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.773823, 17.241501, 11.317211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069355, 0.236101, 0.969250,
		0.574311, 0.803883, -0.154724,
		-0.815694, 0.545920, -0.191348,
		23.529114, 17.405277, 11.259807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.157240, 17.615555, 11.829820>,  <24.100100, 17.023132, 11.393750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.157240, 17.615555, 11.829820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.768505, 17.605770, 11.736071>,  <23.535263, 17.599899, 11.679821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.768505, 17.605770, 11.736071>,  <24.157240, 17.615555, 11.829820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768505, 17.605770, 11.736071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225638, 0.383369, 0.895609,
		0.067943, 0.923271, -0.378093,
		-0.971839, -0.024462, -0.234372,
		23.476954, 17.598431, 11.665759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904482, 18.319128, 11.941881>,  <24.157240, 17.615555, 11.829820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904482, 18.319128, 11.941881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.589485, 18.073532, 11.963321>,  <23.400488, 17.926174, 11.976184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.589485, 18.073532, 11.963321>,  <23.904482, 18.319128, 11.941881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.589485, 18.073532, 11.963321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110071, 0.225673, 0.967965,
		-0.606418, 0.756364, -0.245298,
		-0.787491, -0.613991, 0.053598,
		23.353237, 17.889336, 11.979401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.399893, 18.711706, 12.215709>,  <23.904482, 18.319128, 11.941881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.399893, 18.711706, 12.215709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.288494, 18.334232, 12.287154>,  <23.221655, 18.107748, 12.330022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.288494, 18.334232, 12.287154>,  <23.399893, 18.711706, 12.215709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.288494, 18.334232, 12.287154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276258, 0.256821, 0.926134,
		-0.919849, 0.208581, -0.332224,
		-0.278496, -0.943682, 0.178615,
		23.204945, 18.051128, 12.340738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.044661, 19.370609, 12.364570>,  <23.399893, 18.711706, 12.215709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.044661, 19.370609, 12.364570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.212650, 19.722305, 12.454509>,  <23.313444, 19.933323, 12.508472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.212650, 19.722305, 12.454509>,  <23.044661, 19.370609, 12.364570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212650, 19.722305, 12.454509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071698, 0.279127, -0.957574,
		-0.904700, 0.386035, 0.180266,
		0.419974, 0.879241, 0.224848,
		23.338642, 19.986078, 12.521963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554426, 19.980371, 12.053832>,  <23.044661, 19.370609, 12.364570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554426, 19.980371, 12.053832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.947231, 20.053284, 12.073514>,  <23.182915, 20.097031, 12.085323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.947231, 20.053284, 12.073514>,  <22.554426, 19.980371, 12.053832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947231, 20.053284, 12.073514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010953, 0.205176, -0.978664,
		-0.188485, 0.961601, 0.199490,
		0.982015, 0.182278, 0.049205,
		23.241837, 20.107967, 12.088275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670902, 20.542585, 11.676185>,  <22.554426, 19.980371, 12.053832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.670902, 20.542585, 11.676185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.042156, 20.396290, 11.703899>,  <23.264908, 20.308512, 11.720529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.042156, 20.396290, 11.703899>,  <22.670902, 20.542585, 11.676185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042156, 20.396290, 11.703899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201189, 0.336261, -0.920028,
		0.313192, 0.867850, 0.385678,
		0.928135, -0.365739, 0.069288,
		23.320597, 20.286568, 11.724686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.236195, 21.086006, 11.423623>,  <22.670902, 20.542585, 11.676185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.236195, 21.086006, 11.423623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.418076, 20.731045, 11.393268>,  <23.527205, 20.518068, 11.375054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.418076, 20.731045, 11.393268>,  <23.236195, 21.086006, 11.423623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.418076, 20.731045, 11.393268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354524, 0.258503, -0.898604,
		0.817043, 0.381692, 0.432148,
		0.454701, -0.887405, -0.075889,
		23.554485, 20.464823, 11.370501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906315, 21.184258, 11.329034>,  <23.236195, 21.086006, 11.423623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906315, 21.184258, 11.329034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.890862, 20.814396, 11.177496>,  <23.881590, 20.592480, 11.086574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.890862, 20.814396, 11.177496>,  <23.906315, 21.184258, 11.329034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.890862, 20.814396, 11.177496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114631, 0.372523, -0.920916,
		0.992657, -0.079006, 0.091601,
		-0.038635, -0.924654, -0.378844,
		23.879271, 20.537001, 11.063843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501278, 21.097225, 10.898044>,  <23.906315, 21.184258, 11.329034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501278, 21.097225, 10.898044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.224281, 20.837250, 10.772802>,  <24.058083, 20.681265, 10.697658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.224281, 20.837250, 10.772802>,  <24.501278, 21.097225, 10.898044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224281, 20.837250, 10.772802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112337, 0.331564, -0.936720,
		0.712627, -0.683843, -0.156593,
		-0.692491, -0.649941, -0.313102,
		24.016535, 20.642267, 10.678871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868382, 20.807188, 10.201443>,  <24.501278, 21.097225, 10.898044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868382, 20.807188, 10.201443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.499836, 20.652309, 10.187774>,  <24.278709, 20.559383, 10.179572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.499836, 20.652309, 10.187774>,  <24.868382, 20.807188, 10.201443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499836, 20.652309, 10.187774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053506, 0.213417, -0.975495,
		0.385000, -0.896958, -0.217352,
		-0.921364, -0.387195, -0.034172,
		24.223427, 20.536152, 10.177522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893784, 20.265804, 9.738231>,  <24.868382, 20.807188, 10.201443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893784, 20.265804, 9.738231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.518890, 20.404346, 9.754396>,  <24.293955, 20.487473, 9.764095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.518890, 20.404346, 9.754396>,  <24.893784, 20.265804, 9.738231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518890, 20.404346, 9.754396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029605, 0.194513, -0.980453,
		-0.347447, -0.917716, -0.192558,
		-0.937232, 0.346356, 0.040414,
		24.237720, 20.508253, 9.766521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567448, 20.048073, 9.218591>,  <24.893784, 20.265804, 9.738231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567448, 20.048073, 9.218591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.315125, 20.343338, 9.314258>,  <24.163731, 20.520496, 9.371658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.315125, 20.343338, 9.314258>,  <24.567448, 20.048073, 9.218591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315125, 20.343338, 9.314258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116831, 0.214362, -0.969742,
		-0.767094, -0.639662, -0.048981,
		-0.630806, 0.738161, 0.239168,
		24.125883, 20.564787, 9.386008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997272, 19.906300, 8.837112>,  <24.567448, 20.048073, 9.218591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997272, 19.906300, 8.837112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.978336, 20.295101, 8.929168>,  <23.966974, 20.528383, 8.984401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.978336, 20.295101, 8.929168>,  <23.997272, 19.906300, 8.837112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.978336, 20.295101, 8.929168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196593, 0.216825, -0.956210,
		-0.979341, -0.090512, 0.180825,
		-0.047342, 0.972005, 0.230139,
		23.964134, 20.586702, 8.998210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.507751, 20.025377, 8.423140>,  <23.997272, 19.906300, 8.837112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.507751, 20.025377, 8.423140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.647003, 20.375343, 8.557797>,  <23.730555, 20.585323, 8.638593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.647003, 20.375343, 8.557797>,  <23.507751, 20.025377, 8.423140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.647003, 20.375343, 8.557797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212338, 0.423369, -0.880722,
		-0.913082, 0.235122, 0.333165,
		0.348129, 0.874915, 0.336645,
		23.751442, 20.637817, 8.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.885775, 20.492090, 8.369031>,  <23.507751, 20.025377, 8.423140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.885775, 20.492090, 8.369031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.236576, 20.683285, 8.349458>,  <23.447058, 20.798002, 8.337714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.236576, 20.683285, 8.349458>,  <22.885775, 20.492090, 8.369031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.236576, 20.683285, 8.349458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280226, 0.426098, -0.860182,
		-0.390305, 0.768095, 0.507634,
		0.877004, 0.477986, -0.048932,
		23.499678, 20.826681, 8.334778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.756678, 21.150139, 8.291480>,  <22.885775, 20.492090, 8.369031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.756678, 21.150139, 8.291480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.130508, 21.112839, 8.154154>,  <23.354807, 21.090458, 8.071758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.130508, 21.112839, 8.154154>,  <22.756678, 21.150139, 8.291480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.130508, 21.112839, 8.154154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287984, 0.368283, -0.883987,
		0.208871, 0.925025, 0.317335,
		0.934579, -0.093252, -0.343316,
		23.410883, 21.084864, 8.051159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894806, 21.750443, 8.029938>,  <22.756678, 21.150139, 8.291480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894806, 21.750443, 8.029938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.126583, 21.487473, 7.837255>,  <23.265648, 21.329691, 7.721644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.126583, 21.487473, 7.837255>,  <22.894806, 21.750443, 8.029938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126583, 21.487473, 7.837255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303726, 0.374286, -0.876162,
		0.756306, 0.653992, 0.017200,
		0.579441, -0.657423, -0.481709,
		23.300415, 21.290245, 7.692742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.521837, 22.391258, 7.690301>,  <22.894806, 21.750443, 8.029938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.521837, 22.391258, 7.690301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.254501, 22.480244, 7.406378>,  <22.094099, 22.533634, 7.236023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.254501, 22.480244, 7.406378>,  <22.521837, 22.391258, 7.690301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.254501, 22.480244, 7.406378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614865, 0.371823, 0.695478,
		0.418642, 0.901254, -0.111719,
		-0.668342, 0.222464, -0.709809,
		22.053999, 22.546984, 7.193435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.391117, 23.144615, 7.565430>,  <22.521837, 22.391258, 7.690301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.391117, 23.144615, 7.565430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.077690, 22.911049, 7.480518>,  <21.889633, 22.770908, 7.429571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.077690, 22.911049, 7.480518>,  <22.391117, 23.144615, 7.565430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.077690, 22.911049, 7.480518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527191, 0.444066, 0.724482,
		-0.328772, 0.679593, -0.655792,
		-0.783568, -0.583917, -0.212279,
		21.842619, 22.735874, 7.416835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.831940, 23.558727, 7.486413>,  <22.391117, 23.144615, 7.565430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.831940, 23.558727, 7.486413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.683746, 23.203167, 7.594192>,  <21.594831, 22.989832, 7.658859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.683746, 23.203167, 7.594192>,  <21.831940, 23.558727, 7.486413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683746, 23.203167, 7.594192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417422, 0.418482, 0.806617,
		-0.829760, 0.186364, -0.526086,
		-0.370482, -0.888899, 0.269447,
		21.572601, 22.936497, 7.675025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151031, 23.572407, 7.537446>,  <21.831940, 23.558727, 7.486413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151031, 23.572407, 7.537446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.251648, 23.284935, 7.796747>,  <21.312017, 23.112452, 7.952328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.251648, 23.284935, 7.796747>,  <21.151031, 23.572407, 7.537446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251648, 23.284935, 7.796747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591823, 0.415760, 0.690572,
		-0.765816, -0.557355, -0.320750,
		0.251539, -0.718678, 0.648251,
		21.327110, 23.069332, 7.991223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583544, 23.506618, 7.992668>,  <21.151031, 23.572407, 7.537446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583544, 23.506618, 7.992668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.823032, 23.260601, 8.197901>,  <20.966726, 23.112991, 8.321040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.823032, 23.260601, 8.197901>,  <20.583544, 23.506618, 7.992668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.823032, 23.260601, 8.197901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481869, 0.235097, 0.844116,
		-0.639791, -0.752630, -0.155612,
		0.598723, -0.615043, 0.513082,
		21.002649, 23.076088, 8.351826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166395, 23.213734, 8.419554>,  <20.583544, 23.506618, 7.992668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166395, 23.213734, 8.419554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.517159, 23.175854, 8.608047>,  <20.727617, 23.153126, 8.721143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.517159, 23.175854, 8.608047>,  <20.166395, 23.213734, 8.419554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517159, 23.175854, 8.608047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447082, 0.199272, 0.872014,
		-0.176483, -0.975358, 0.132405,
		0.876910, -0.094700, 0.471233,
		20.780231, 23.147444, 8.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105074, 22.749292, 9.042093>,  <20.166395, 23.213734, 8.419554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105074, 22.749292, 9.042093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.406235, 23.006691, 9.097311>,  <20.586931, 23.161129, 9.130442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.406235, 23.006691, 9.097311>,  <20.105074, 22.749292, 9.042093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406235, 23.006691, 9.097311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349594, 0.213325, 0.912292,
		0.557607, -0.735124, 0.385574,
		0.752900, 0.643495, 0.138044,
		20.632105, 23.199739, 9.138724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443892, 22.613571, 9.806662>,  <20.105074, 22.749292, 9.042093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443892, 22.613571, 9.806662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.542999, 22.978710, 9.676848>,  <20.602465, 23.197794, 9.598960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.542999, 22.978710, 9.676848>,  <20.443892, 22.613571, 9.806662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542999, 22.978710, 9.676848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282467, 0.388491, 0.877090,
		0.926727, -0.125647, 0.354105,
		0.247770, 0.912846, -0.324533,
		20.617331, 23.252563, 9.579489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824488, 22.920670, 10.394241>,  <20.443892, 22.613571, 9.806662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824488, 22.920670, 10.394241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.734421, 23.243088, 10.175302>,  <20.680382, 23.436539, 10.043938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.734421, 23.243088, 10.175302>,  <20.824488, 22.920670, 10.394241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.734421, 23.243088, 10.175302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253567, 0.493938, 0.831702,
		0.940747, 0.326060, 0.093169,
		-0.225165, 0.806046, -0.547349,
		20.666872, 23.484901, 10.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.158188, 23.551172, 10.701648>,  <20.824488, 22.920670, 10.394241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.158188, 23.551172, 10.701648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.849449, 23.677258, 10.480779>,  <20.664206, 23.752909, 10.348257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.849449, 23.677258, 10.480779>,  <21.158188, 23.551172, 10.701648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849449, 23.677258, 10.480779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384481, 0.460283, 0.800197,
		0.506387, 0.829928, -0.234074,
		-0.771846, 0.315212, -0.552173,
		20.617895, 23.771822, 10.315126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121344, 24.257311, 10.630866>,  <21.158188, 23.551172, 10.701648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121344, 24.257311, 10.630866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.733284, 24.191311, 10.559773>,  <20.500448, 24.151711, 10.517118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.733284, 24.191311, 10.559773>,  <21.121344, 24.257311, 10.630866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733284, 24.191311, 10.559773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234933, 0.457604, 0.857557,
		-0.060164, 0.873713, -0.482707,
		-0.970148, -0.164998, -0.177732,
		20.442240, 24.141811, 10.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713499, 24.898733, 10.833490>,  <21.121344, 24.257311, 10.630866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713499, 24.898733, 10.833490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.440243, 24.608124, 10.803863>,  <20.276289, 24.433758, 10.786086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.440243, 24.608124, 10.803863>,  <20.713499, 24.898733, 10.833490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.440243, 24.608124, 10.803863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443534, 0.332182, 0.832426,
		-0.580172, 0.601515, -0.549164,
		-0.683139, -0.726523, -0.074070,
		20.235302, 24.390167, 10.781642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.210661, 25.271009, 11.169514>,  <20.713499, 24.898733, 10.833490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.210661, 25.271009, 11.169514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.105247, 24.885151, 11.170722>,  <20.042000, 24.653637, 11.171447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.105247, 24.885151, 11.170722>,  <20.210661, 25.271009, 11.169514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105247, 24.885151, 11.170722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522881, 0.145478, 0.839900,
		-0.810645, 0.219763, -0.542733,
		-0.263534, -0.964645, 0.003022,
		20.026188, 24.595757, 11.171629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475212, 25.252483, 11.104817>,  <20.210661, 25.271009, 11.169514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.475212, 25.252483, 11.104817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.610683, 24.915699, 11.272817>,  <19.691965, 24.713629, 11.373616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.610683, 24.915699, 11.272817>,  <19.475212, 25.252483, 11.104817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610683, 24.915699, 11.272817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668220, 0.099023, 0.737344,
		-0.662405, -0.530372, -0.529079,
		0.338676, -0.841962, 0.419998,
		19.712286, 24.663111, 11.398816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842590, 24.874027, 11.418303>,  <19.475212, 25.252483, 11.104817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842590, 24.874027, 11.418303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.156933, 24.686821, 11.579988>,  <19.345539, 24.574497, 11.677000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.156933, 24.686821, 11.579988>,  <18.842590, 24.874027, 11.418303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156933, 24.686821, 11.579988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482418, -0.055003, 0.874213,
		-0.386910, -0.882008, -0.269003,
		0.785858, -0.468013, 0.404215,
		19.392691, 24.546417, 11.701253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570005, 24.411865, 11.884380>,  <18.842590, 24.874027, 11.418303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570005, 24.411865, 11.884380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.946796, 24.432163, 12.017109>,  <19.172871, 24.444342, 12.096746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.946796, 24.432163, 12.017109>,  <18.570005, 24.411865, 11.884380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946796, 24.432163, 12.017109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333994, 0.042757, 0.941605,
		0.033551, -0.997798, 0.057209,
		0.941977, 0.050700, 0.331824,
		19.229389, 24.447388, 12.116655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623325, 23.882692, 12.468518>,  <18.570005, 24.411865, 11.884380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623325, 23.882692, 12.468518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.884399, 24.184948, 12.490479>,  <19.041044, 24.366301, 12.503654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.884399, 24.184948, 12.490479>,  <18.623325, 23.882692, 12.468518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884399, 24.184948, 12.490479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199725, 0.101705, 0.974559,
		0.730831, -0.647044, 0.217301,
		0.652684, 0.755639, 0.054901,
		19.080204, 24.411640, 12.506948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949551, 23.695349, 12.984881>,  <18.623325, 23.882692, 12.468518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949551, 23.695349, 12.984881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.031715, 24.086674, 12.974251>,  <19.081015, 24.321468, 12.967873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.031715, 24.086674, 12.974251>,  <18.949551, 23.695349, 12.984881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031715, 24.086674, 12.974251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004976, 0.028199, 0.999590,
		0.978663, -0.205195, 0.010660,
		0.205411, 0.978315, -0.026576,
		19.093338, 24.380169, 12.966278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489880, 23.768036, 13.603460>,  <18.949551, 23.695349, 12.984881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489880, 23.768036, 13.603460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.329697, 24.116531, 13.489914>,  <19.233587, 24.325628, 13.421786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.329697, 24.116531, 13.489914>,  <19.489880, 23.768036, 13.603460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.329697, 24.116531, 13.489914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226059, 0.206281, 0.952022,
		0.887994, 0.445412, 0.114345,
		-0.400455, 0.871238, -0.283866,
		19.209560, 24.377903, 13.404755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859671, 24.356441, 13.990715>,  <19.489880, 23.768036, 13.603460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859671, 24.356441, 13.990715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.506390, 24.506863, 13.878614>,  <19.294422, 24.597115, 13.811354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.506390, 24.506863, 13.878614>,  <19.859671, 24.356441, 13.990715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506390, 24.506863, 13.878614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236878, 0.158055, 0.958597,
		0.404779, 0.913018, -0.050516,
		-0.883201, 0.376053, -0.280251,
		19.241430, 24.619678, 13.794539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.810514, 25.054298, 14.341125>,  <19.859671, 24.356441, 13.990715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.810514, 25.054298, 14.341125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.423538, 24.989681, 14.263191>,  <19.191353, 24.950911, 14.216431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.423538, 24.989681, 14.263191>,  <19.810514, 25.054298, 14.341125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423538, 24.989681, 14.263191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190212, -0.043763, 0.980767,
		-0.166964, 0.985895, 0.011610,
		-0.967441, -0.161545, -0.194836,
		19.133307, 24.941217, 14.204741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425718, 25.489260, 14.825377>,  <19.810514, 25.054298, 14.341125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425718, 25.489260, 14.825377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.173923, 25.204052, 14.701860>,  <19.022846, 25.032928, 14.627750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.173923, 25.204052, 14.701860>,  <19.425718, 25.489260, 14.825377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.173923, 25.204052, 14.701860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279852, -0.162694, 0.946158,
		-0.724865, 0.682009, -0.097126,
		-0.629487, -0.713018, -0.308792,
		18.985077, 24.990147, 14.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.752905, 25.581444, 15.217356>,  <19.425718, 25.489260, 14.825377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.752905, 25.581444, 15.217356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.728024, 25.201069, 15.096128>,  <18.713095, 24.972843, 15.023392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.728024, 25.201069, 15.096128>,  <18.752905, 25.581444, 15.217356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728024, 25.201069, 15.096128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289655, -0.273388, 0.917256,
		-0.955108, 0.144840, -0.258438,
		-0.062201, -0.950937, -0.303069,
		18.709364, 24.915789, 15.005208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204100, 25.393950, 15.551223>,  <18.752905, 25.581444, 15.217356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204100, 25.393950, 15.551223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.364529, 25.041103, 15.452415>,  <18.460785, 24.829395, 15.393131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.364529, 25.041103, 15.452415>,  <18.204100, 25.393950, 15.551223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.364529, 25.041103, 15.452415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264271, -0.369611, 0.890814,
		-0.877099, -0.291999, -0.381357,
		0.401071, -0.882114, -0.247018,
		18.484850, 24.776470, 15.378310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662790, 24.851418, 15.785314>,  <18.204100, 25.393950, 15.551223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662790, 24.851418, 15.785314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.020847, 24.674057, 15.766893>,  <18.235682, 24.567640, 15.755841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.020847, 24.674057, 15.766893>,  <17.662790, 24.851418, 15.785314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020847, 24.674057, 15.766893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140587, -0.378823, 0.914728,
		-0.423036, -0.812336, -0.401436,
		0.895140, -0.443400, -0.046052,
		18.289389, 24.541037, 15.753078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538486, 24.092505, 15.913691>,  <17.662790, 24.851418, 15.785314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.538486, 24.092505, 15.913691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.916855, 24.181927, 16.007719>,  <18.143875, 24.235580, 16.064137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.916855, 24.181927, 16.007719>,  <17.538486, 24.092505, 15.913691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916855, 24.181927, 16.007719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135865, -0.385000, 0.912862,
		0.294577, -0.895432, -0.333805,
		0.945920, 0.223556, 0.235070,
		18.200630, 24.248993, 16.078239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.838427, 23.487881, 16.024607>,  <17.538486, 24.092505, 15.913691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.838427, 23.487881, 16.024607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.075081, 23.748585, 16.214418>,  <18.217073, 23.905006, 16.328306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.075081, 23.748585, 16.214418>,  <17.838427, 23.487881, 16.024607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075081, 23.748585, 16.214418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229528, -0.428066, 0.874115,
		0.772842, -0.626075, -0.103662,
		0.591635, 0.651759, 0.474529,
		18.252571, 23.944113, 16.356777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.125330, 23.062780, 16.568296>,  <17.838427, 23.487881, 16.024607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.125330, 23.062780, 16.568296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.195004, 23.436852, 16.691650>,  <18.236807, 23.661295, 16.765663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.195004, 23.436852, 16.691650>,  <18.125330, 23.062780, 16.568296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195004, 23.436852, 16.691650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030221, -0.307948, 0.950923,
		0.984249, -0.174955, -0.025378,
		0.174184, 0.935178, 0.308385,
		18.247259, 23.717405, 16.784166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393093, 22.354767, 16.761799>,  <18.125330, 23.062780, 16.568296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393093, 22.354767, 16.761799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.129101, 22.054470, 16.750389>,  <17.970705, 21.874292, 16.743544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.129101, 22.054470, 16.750389>,  <18.393093, 22.354767, 16.761799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.129101, 22.054470, 16.750389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150653, -0.095052, -0.984007,
		0.736022, -0.653723, 0.175834,
		-0.659981, -0.750741, -0.028525,
		17.931107, 21.829248, 16.741831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648098, 21.734280, 16.468403>,  <18.393093, 22.354767, 16.761799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648098, 21.734280, 16.468403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.253948, 21.700176, 16.409393>,  <18.017458, 21.679714, 16.373987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.253948, 21.700176, 16.409393>,  <18.648098, 21.734280, 16.468403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253948, 21.700176, 16.409393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170004, -0.433799, -0.884826,
		0.011445, -0.896967, 0.441950,
		-0.985377, -0.085260, -0.147523,
		17.958336, 21.674599, 16.365137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.559736, 21.061083, 16.181709>,  <18.648098, 21.734280, 16.468403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.559736, 21.061083, 16.181709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.232235, 21.257652, 16.062952>,  <18.035734, 21.375595, 15.991697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.232235, 21.257652, 16.062952>,  <18.559736, 21.061083, 16.181709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.232235, 21.257652, 16.062952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082790, -0.410651, -0.908026,
		-0.568149, -0.768027, 0.295536,
		-0.818751, 0.491427, -0.296896,
		17.986610, 21.405081, 15.973884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137518, 20.598066, 15.950214>,  <18.559736, 21.061083, 16.181709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137518, 20.598066, 15.950214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.997227, 20.930214, 15.777020>,  <17.913052, 21.129503, 15.673102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.997227, 20.930214, 15.777020>,  <18.137518, 20.598066, 15.950214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997227, 20.930214, 15.777020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057097, -0.442537, -0.894931,
		-0.934736, -0.338598, 0.107798,
		-0.350727, 0.830369, -0.432988,
		17.892008, 21.179325, 15.647123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648029, 20.339273, 15.433449>,  <18.137518, 20.598066, 15.950214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648029, 20.339273, 15.433449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.723259, 20.712448, 15.310642>,  <17.768396, 20.936352, 15.236959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.723259, 20.712448, 15.310642>,  <17.648029, 20.339273, 15.433449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.723259, 20.712448, 15.310642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093481, -0.328180, -0.939978,
		-0.977696, 0.148084, -0.148934,
		0.188073, 0.932936, -0.307018,
		17.779680, 20.992329, 15.218537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
