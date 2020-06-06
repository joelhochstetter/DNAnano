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
	<23.121866, 17.277130, -1.962031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.816845, 17.096336, -1.776894>,  <22.633833, 16.987860, -1.665812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.816845, 17.096336, -1.776894>,  <23.121866, 17.277130, -1.962031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.816845, 17.096336, -1.776894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646474, -0.559129, 0.519082,
		0.024173, 0.695043, 0.718561,
		-0.762553, -0.451984, 0.462843,
		22.588079, 16.960741, -1.638041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225965, 17.051065, -1.235928>,  <23.121866, 17.277130, -1.962031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225965, 17.051065, -1.235928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.948898, 16.788017, -1.354415>,  <22.782658, 16.630188, -1.425507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.948898, 16.788017, -1.354415>,  <23.225965, 17.051065, -1.235928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.948898, 16.788017, -1.354415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520276, -0.740008, 0.426264,
		-0.499524, 0.141145, 0.854725,
		-0.692668, -0.657622, -0.296217,
		22.741098, 16.590731, -1.443280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.918308, 16.653904, -0.708758>,  <23.225965, 17.051065, -1.235928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.918308, 16.653904, -0.708758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901268, 16.437916, -1.045000>,  <22.891045, 16.308323, -1.246745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901268, 16.437916, -1.045000>,  <22.918308, 16.653904, -0.708758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901268, 16.437916, -1.045000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619837, -0.674158, 0.401640,
		-0.783574, -0.503928, 0.363413,
		-0.042600, -0.539971, -0.840605,
		22.888489, 16.275925, -1.297182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.601902, 16.037632, -0.608725>,  <22.918308, 16.653904, -0.708758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.601902, 16.037632, -0.608725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.866665, 16.006481, -0.906936>,  <23.025522, 15.987790, -1.085863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.866665, 16.006481, -0.906936>,  <22.601902, 16.037632, -0.608725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866665, 16.006481, -0.906936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586425, -0.565690, 0.579742,
		-0.466888, -0.820932, -0.328764,
		0.661908, -0.077879, -0.745529,
		23.065237, 15.983117, -1.130595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.250624, 15.654537, -0.259296>,  <22.601902, 16.037632, -0.608725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.250624, 15.654537, -0.259296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573093, 15.685402, -0.493948>,  <23.766575, 15.703921, -0.634739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.573093, 15.685402, -0.493948>,  <23.250624, 15.654537, -0.259296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.573093, 15.685402, -0.493948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540596, 0.306949, 0.783287,
		0.240503, -0.948593, 0.205742,
		0.806173, 0.077159, -0.586627,
		23.814945, 15.708550, -0.669936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614630, 16.114206, 0.051732>,  <23.250624, 15.654537, -0.259296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614630, 16.114206, 0.051732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.686569, 15.809475, 0.300658>,  <23.729733, 15.626637, 0.450013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.686569, 15.809475, 0.300658>,  <23.614630, 16.114206, 0.051732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.686569, 15.809475, 0.300658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963940, 0.262634, 0.042934,
		-0.196149, 0.592151, 0.781590,
		0.179848, -0.761827, 0.622313,
		23.740524, 15.580927, 0.487352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984467, 16.391460, 0.636297>,  <23.614630, 16.114206, 0.051732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984467, 16.391460, 0.636297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063019, 16.000397, 0.606319>,  <24.110149, 15.765759, 0.588332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.063019, 16.000397, 0.606319>,  <23.984467, 16.391460, 0.636297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063019, 16.000397, 0.606319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979547, 0.192192, 0.059588,
		-0.043853, -0.085113, 0.995406,
		0.196381, -0.977659, -0.074944,
		24.121933, 15.707099, 0.583835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447100, 16.314892, 1.051282>,  <23.984467, 16.391460, 0.636297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447100, 16.314892, 1.051282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485336, 16.015541, 0.788743>,  <24.508278, 15.835931, 0.631219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485336, 16.015541, 0.788743>,  <24.447100, 16.314892, 1.051282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485336, 16.015541, 0.788743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980291, 0.185299, -0.068513,
		0.172894, -0.636863, 0.751340,
		0.095590, -0.748378, -0.656349,
		24.514013, 15.791028, 0.591838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.341843, 15.859594, 1.580817>,  <24.447100, 16.314892, 1.051282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.341843, 15.859594, 1.580817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.092422, 15.906895, 1.889933>,  <23.942770, 15.935275, 2.075403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.092422, 15.906895, 1.889933>,  <24.341843, 15.859594, 1.580817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.092422, 15.906895, 1.889933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464093, 0.739488, -0.487622,
		-0.629130, -0.662703, -0.406227,
		-0.623549, 0.118251, 0.772790,
		23.905357, 15.942369, 2.121770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516260, 15.799522, 1.375890>,  <24.341843, 15.859594, 1.580817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516260, 15.799522, 1.375890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.606579, 16.067493, 1.658793>,  <23.660770, 16.228275, 1.828535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.606579, 16.067493, 1.658793>,  <23.516260, 15.799522, 1.375890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.606579, 16.067493, 1.658793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506561, 0.700877, -0.502163,
		-0.832114, -0.244882, 0.497614,
		0.225796, 0.669928, 0.707257,
		23.674318, 16.268473, 1.870970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.919903, 16.102940, 1.699135>,  <23.516260, 15.799522, 1.375890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.919903, 16.102940, 1.699135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207249, 16.380669, 1.716409>,  <23.379656, 16.547306, 1.726774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207249, 16.380669, 1.716409>,  <22.919903, 16.102940, 1.699135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207249, 16.380669, 1.716409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657484, 0.697911, -0.283962,
		-0.227301, 0.175595, 0.957862,
		0.718366, 0.694324, 0.043185,
		23.422758, 16.588966, 1.729365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.772057, 16.688053, 2.176253>,  <22.919903, 16.102940, 1.699135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.772057, 16.688053, 2.176253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.010395, 16.800949, 1.875505>,  <23.153399, 16.868687, 1.695056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.010395, 16.800949, 1.875505>,  <22.772057, 16.688053, 2.176253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.010395, 16.800949, 1.875505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618059, 0.758959, -0.204900,
		0.512808, 0.586789, 0.626663,
		0.595845, 0.282240, -0.751871,
		23.189148, 16.885622, 1.649943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.871086, 17.411209, 2.239475>,  <22.772057, 16.688053, 2.176253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.871086, 17.411209, 2.239475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.902405, 17.276306, 1.864215>,  <22.921196, 17.195364, 1.639059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.902405, 17.276306, 1.864215>,  <22.871086, 17.411209, 2.239475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.902405, 17.276306, 1.864215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599550, 0.735916, -0.314593,
		0.796499, 0.587099, -0.144584,
		0.078295, -0.337258, -0.938151,
		22.925894, 17.175129, 1.582770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.090410, 17.984005, 1.813514>,  <22.871086, 17.411209, 2.239475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.090410, 17.984005, 1.813514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909760, 17.710815, 1.583878>,  <22.801369, 17.546902, 1.446096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.909760, 17.710815, 1.583878>,  <23.090410, 17.984005, 1.813514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.909760, 17.710815, 1.583878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594840, 0.710066, -0.376791,
		0.664980, 0.171322, -0.726946,
		-0.451627, -0.682975, -0.574088,
		22.774271, 17.505922, 1.411651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221500, 18.138527, 1.120048>,  <23.090410, 17.984005, 1.813514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221500, 18.138527, 1.120048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.871391, 17.971169, 1.217077>,  <22.661325, 17.870752, 1.275295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.871391, 17.971169, 1.217077>,  <23.221500, 18.138527, 1.120048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.871391, 17.971169, 1.217077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483605, 0.762287, -0.430167,
		-0.004930, -0.493823, -0.869548,
		-0.875272, -0.418397, 0.242573,
		22.608810, 17.845650, 1.289849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684717, 18.093672, 0.512022>,  <23.221500, 18.138527, 1.120048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684717, 18.093672, 0.512022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.565277, 18.195843, 0.879847>,  <22.493612, 18.257145, 1.100542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.565277, 18.195843, 0.879847>,  <22.684717, 18.093672, 0.512022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565277, 18.195843, 0.879847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353386, 0.865442, -0.355146,
		-0.886542, -0.431007, -0.168156,
		-0.298600, 0.255428, 0.919562,
		22.475697, 18.272470, 1.155716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939117, 18.198551, 0.491369>,  <22.684717, 18.093672, 0.512022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939117, 18.198551, 0.491369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.116947, 18.400578, 0.787278>,  <22.223644, 18.521793, 0.964824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.116947, 18.400578, 0.787278>,  <21.939117, 18.198551, 0.491369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.116947, 18.400578, 0.787278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487178, 0.829380, -0.273469,
		-0.751673, -0.238824, 0.614777,
		0.444573, 0.505065, 0.739772,
		22.250319, 18.552097, 1.009210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.447069, 18.528999, 0.967241>,  <21.939117, 18.198551, 0.491369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.447069, 18.528999, 0.967241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785683, 18.732010, 0.903000>,  <21.988852, 18.853817, 0.864455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.785683, 18.732010, 0.903000>,  <21.447069, 18.528999, 0.967241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785683, 18.732010, 0.903000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524821, 0.745204, -0.411380,
		-0.089103, 0.432536, 0.897203,
		0.846536, 0.507527, -0.160604,
		22.039644, 18.884268, 0.854818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362757, 19.168909, 1.240810>,  <21.447069, 18.528999, 0.967241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362757, 19.168909, 1.240810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.633030, 19.179352, 0.946118>,  <21.795195, 19.185617, 0.769303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.633030, 19.179352, 0.946118>,  <21.362757, 19.168909, 1.240810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.633030, 19.179352, 0.946118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517609, 0.728397, -0.448909,
		0.524912, 0.684658, 0.505678,
		0.675684, 0.026105, -0.736729,
		21.835735, 19.187183, 0.725100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.736649, 19.798878, 1.025059>,  <21.362757, 19.168909, 1.240810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.736649, 19.798878, 1.025059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690868, 19.572666, 0.698359>,  <21.663401, 19.436939, 0.502339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690868, 19.572666, 0.698359>,  <21.736649, 19.798878, 1.025059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690868, 19.572666, 0.698359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454054, 0.761032, -0.463320,
		0.883592, 0.317821, -0.343880,
		-0.114451, -0.565527, -0.816750,
		21.656532, 19.403008, 0.453334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045816, 20.020061, 1.023694>,  <21.736649, 19.798878, 1.025059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045816, 20.020061, 1.023694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831165, 20.340176, 1.130704>,  <20.702375, 20.532244, 1.194911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831165, 20.340176, 1.130704>,  <21.045816, 20.020061, 1.023694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831165, 20.340176, 1.130704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825519, 0.563576, -0.030000,
		-0.174780, 0.204749, -0.963083,
		-0.536628, 0.800287, 0.267526,
		20.670177, 20.580261, 1.210962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064850, 20.610067, 0.506634>,  <21.045816, 20.020061, 1.023694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064850, 20.610067, 0.506634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010120, 20.737648, 0.881771>,  <20.977283, 20.814196, 1.106853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010120, 20.737648, 0.881771>,  <21.064850, 20.610067, 0.506634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010120, 20.737648, 0.881771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801050, 0.592580, -0.084665,
		-0.582751, 0.739676, -0.336573,
		-0.136822, 0.318951, 0.937843,
		20.969074, 20.833334, 1.163124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023308, 21.258646, 0.499928>,  <21.064850, 20.610067, 0.506634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023308, 21.258646, 0.499928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153282, 21.167747, 0.867139>,  <21.231266, 21.113209, 1.087466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153282, 21.167747, 0.867139>,  <21.023308, 21.258646, 0.499928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153282, 21.167747, 0.867139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728687, 0.678926, -0.089859,
		-0.602854, 0.698155, 0.386196,
		0.324934, -0.227244, 0.918029,
		21.250763, 21.099575, 1.142548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.879587, 21.784126, 0.950843>,  <21.023308, 21.258646, 0.499928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.879587, 21.784126, 0.950843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.195194, 21.562668, 1.057374>,  <21.384558, 21.429792, 1.121293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.195194, 21.562668, 1.057374>,  <20.879587, 21.784126, 0.950843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.195194, 21.562668, 1.057374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541459, 0.831477, 0.124368,
		-0.290302, 0.046077, 0.955825,
		0.789016, -0.553644, 0.266328,
		21.431900, 21.396574, 1.137273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173721, 21.719709, 1.705673>,  <20.879587, 21.784126, 0.950843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173721, 21.719709, 1.705673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471752, 21.702538, 1.439435>,  <21.650570, 21.692234, 1.279692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471752, 21.702538, 1.439435>,  <21.173721, 21.719709, 1.705673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471752, 21.702538, 1.439435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317572, 0.900382, 0.297424,
		0.586522, -0.432978, 0.684487,
		0.745078, -0.042928, -0.665595,
		21.695276, 21.689659, 1.239757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.728397, 21.836927, 2.042681>,  <21.173721, 21.719709, 1.705673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.728397, 21.836927, 2.042681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793007, 21.957478, 1.666791>,  <21.831772, 22.029808, 1.441257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793007, 21.957478, 1.666791>,  <21.728397, 21.836927, 2.042681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793007, 21.957478, 1.666791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419022, 0.841188, 0.341795,
		0.893494, -0.448973, 0.009588,
		0.161522, 0.301374, -0.939726,
		21.841463, 22.047890, 1.384874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.575811, 22.051470, 1.842521>,  <21.728397, 21.836927, 2.042681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.575811, 22.051470, 1.842521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284355, 22.227894, 1.632931>,  <22.109482, 22.333748, 1.507177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284355, 22.227894, 1.632931>,  <22.575811, 22.051470, 1.842521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284355, 22.227894, 1.632931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316847, 0.895328, 0.313043,
		0.607200, 0.062076, -0.792120,
		-0.728640, 0.441061, -0.523975,
		22.065763, 22.360212, 1.475739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708164, 22.536848, 1.288571>,  <22.575811, 22.051470, 1.842521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708164, 22.536848, 1.288571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374710, 22.673252, 1.462360>,  <22.174639, 22.755095, 1.566633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374710, 22.673252, 1.462360>,  <22.708164, 22.536848, 1.288571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.374710, 22.673252, 1.462360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527990, 0.722916, 0.445666,
		-0.162111, 0.600920, -0.782698,
		-0.833634, 0.341009, 0.434473,
		22.124620, 22.775555, 1.592701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.486704, 23.226313, 1.082545>,  <22.708164, 22.536848, 1.288571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.486704, 23.226313, 1.082545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.369404, 23.153976, 1.458056>,  <22.299025, 23.110575, 1.683362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.369404, 23.153976, 1.458056>,  <22.486704, 23.226313, 1.082545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.369404, 23.153976, 1.458056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454601, 0.837454, 0.303328,
		-0.841036, 0.515720, -0.163374,
		-0.293251, -0.180840, 0.938776,
		22.281429, 23.099724, 1.739689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118757, 23.792210, 1.403221>,  <22.486704, 23.226313, 1.082545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.118757, 23.792210, 1.403221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.322292, 23.591385, 1.682941>,  <22.444412, 23.470890, 1.850773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.322292, 23.591385, 1.682941>,  <22.118757, 23.792210, 1.403221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.322292, 23.591385, 1.682941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499804, 0.833686, 0.234870,
		-0.700915, 0.230002, 0.675142,
		0.508836, -0.502063, 0.699299,
		22.474943, 23.440765, 1.892730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026606, 23.949650, 2.165472>,  <22.118757, 23.792210, 1.403221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026606, 23.949650, 2.165472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384819, 23.855232, 2.014578>,  <22.599747, 23.798582, 1.924041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384819, 23.855232, 2.014578>,  <22.026606, 23.949650, 2.165472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384819, 23.855232, 2.014578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358971, 0.884186, 0.298924,
		0.262988, -0.403112, 0.876549,
		0.895532, -0.236042, -0.377236,
		22.653479, 23.784420, 1.901407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507410, 24.127439, 2.680535>,  <22.026606, 23.949650, 2.165472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507410, 24.127439, 2.680535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.684498, 24.146282, 2.322366>,  <22.790751, 24.157587, 2.107465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.684498, 24.146282, 2.322366>,  <22.507410, 24.127439, 2.680535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684498, 24.146282, 2.322366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384278, 0.892295, 0.236937,
		0.810141, -0.448988, 0.376936,
		0.442720, 0.047105, -0.895422,
		22.817314, 24.160414, 2.053739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079487, 24.481228, 3.205751>,  <22.507410, 24.127439, 2.680535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079487, 24.481228, 3.205751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971096, 24.104015, 3.282965>,  <21.906061, 23.877687, 3.329293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971096, 24.104015, 3.282965>,  <22.079487, 24.481228, 3.205751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971096, 24.104015, 3.282965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702431, -0.056608, 0.709497,
		-0.658152, 0.327850, 0.677754,
		-0.270975, -0.943032, 0.193035,
		21.889803, 23.821106, 3.340875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.064854, 24.408941, 3.956806>,  <22.079487, 24.481228, 3.205751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.064854, 24.408941, 3.956806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093582, 24.043564, 3.796575>,  <22.110819, 23.824337, 3.700436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.093582, 24.043564, 3.796575>,  <22.064854, 24.408941, 3.956806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093582, 24.043564, 3.796575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652102, -0.260891, 0.711828,
		-0.754722, -0.312340, 0.576922,
		0.071819, -0.913444, -0.400577,
		22.115128, 23.769531, 3.676402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814201, 25.073442, 4.089951>,  <22.064854, 24.408941, 3.956806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814201, 25.073442, 4.089951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497063, 25.279408, 4.220339>,  <21.306780, 25.402987, 4.298572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.497063, 25.279408, 4.220339>,  <21.814201, 25.073442, 4.089951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.497063, 25.279408, 4.220339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362512, -0.031475, 0.931447,
		0.489875, 0.856664, -0.161707,
		-0.792848, 0.514913, 0.325970,
		21.259209, 25.433882, 4.318130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939280, 25.648964, 4.518445>,  <21.814201, 25.073442, 4.089951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939280, 25.648964, 4.518445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574100, 25.540737, 4.640636>,  <21.354992, 25.475801, 4.713951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574100, 25.540737, 4.640636>,  <21.939280, 25.648964, 4.518445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574100, 25.540737, 4.640636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348810, -0.128901, 0.928287,
		-0.211787, 0.954033, 0.212056,
		-0.912950, -0.270567, 0.305477,
		21.300215, 25.459568, 4.732280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.899197, 25.934927, 5.148306>,  <21.939280, 25.648964, 4.518445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.899197, 25.934927, 5.148306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.603283, 25.665863, 5.141965>,  <21.425735, 25.504425, 5.138160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.603283, 25.665863, 5.141965>,  <21.899197, 25.934927, 5.148306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.603283, 25.665863, 5.141965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189741, -0.231165, 0.954233,
		-0.645538, 0.702917, 0.298643,
		-0.739783, -0.672659, -0.015853,
		21.381348, 25.464066, 5.137209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.480682, 26.068842, 5.708823>,  <21.899197, 25.934927, 5.148306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.480682, 26.068842, 5.708823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.413555, 25.686607, 5.611918>,  <21.373278, 25.457266, 5.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.413555, 25.686607, 5.611918>,  <21.480682, 26.068842, 5.708823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.413555, 25.686607, 5.611918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301730, -0.283743, 0.910192,
		-0.938507, 0.079650, 0.335947,
		-0.167819, -0.955587, -0.242262,
		21.363209, 25.399931, 5.539240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.049076, 25.858469, 6.302583>,  <21.480682, 26.068842, 5.708823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.049076, 25.858469, 6.302583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218071, 25.552326, 6.108374>,  <21.319468, 25.368641, 5.991848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218071, 25.552326, 6.108374>,  <21.049076, 25.858469, 6.302583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218071, 25.552326, 6.108374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241036, -0.421515, 0.874200,
		-0.873732, -0.486366, 0.006395,
		0.422486, -0.765358, -0.485523,
		21.344816, 25.322720, 5.962717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731709, 25.164490, 6.549831>,  <21.049076, 25.858469, 6.302583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731709, 25.164490, 6.549831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094875, 25.070946, 6.410691>,  <21.312775, 25.014820, 6.327208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094875, 25.070946, 6.410691>,  <20.731709, 25.164490, 6.549831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094875, 25.070946, 6.410691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280414, -0.277935, 0.918760,
		-0.311546, -0.931697, -0.186762,
		0.907914, -0.233865, -0.347850,
		21.367250, 25.000788, 6.306336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857246, 24.533104, 6.853126>,  <20.731709, 25.164490, 6.549831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857246, 24.533104, 6.853126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.220612, 24.666721, 6.752565>,  <21.438631, 24.746893, 6.692229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.220612, 24.666721, 6.752565>,  <20.857246, 24.533104, 6.853126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.220612, 24.666721, 6.752565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399217, -0.514514, 0.758881,
		0.124151, -0.789740, -0.600747,
		0.908412, 0.334045, -0.251400,
		21.493135, 24.766935, 6.677145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235876, 23.936291, 6.923318>,  <20.857246, 24.533104, 6.853126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235876, 23.936291, 6.923318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511669, 24.225780, 6.911748>,  <21.677145, 24.399475, 6.904806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.511669, 24.225780, 6.911748>,  <21.235876, 23.936291, 6.923318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511669, 24.225780, 6.911748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449799, -0.396532, 0.800277,
		0.567710, -0.564789, -0.598932,
		0.689483, 0.723724, -0.028926,
		21.718513, 24.442898, 6.903070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.873865, 23.588295, 7.016585>,  <21.235876, 23.936291, 6.923318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.873865, 23.588295, 7.016585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937077, 23.959293, 7.152102>,  <21.975004, 24.181892, 7.233413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.937077, 23.959293, 7.152102>,  <21.873865, 23.588295, 7.016585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937077, 23.959293, 7.152102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430993, -0.373486, 0.821434,
		0.888410, 0.016207, -0.458765,
		0.158030, 0.927494, 0.338793,
		21.984486, 24.237541, 7.253740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471325, 23.410463, 7.348068>,  <21.873865, 23.588295, 7.016585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471325, 23.410463, 7.348068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.375935, 23.770485, 7.493965>,  <22.318701, 23.986498, 7.581503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.375935, 23.770485, 7.493965>,  <22.471325, 23.410463, 7.348068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375935, 23.770485, 7.493965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503104, -0.206753, 0.839130,
		0.830672, 0.383614, -0.403515,
		-0.238474, 0.900052, 0.364742,
		22.304392, 24.040501, 7.603388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.968149, 23.545462, 7.879238>,  <22.471325, 23.410463, 7.348068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.968149, 23.545462, 7.879238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703926, 23.829666, 7.976264>,  <22.545393, 24.000189, 8.034480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703926, 23.829666, 7.976264>,  <22.968149, 23.545462, 7.879238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.703926, 23.829666, 7.976264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341516, -0.003363, 0.939870,
		0.668604, 0.703678, -0.240429,
		-0.660557, 0.710511, 0.242566,
		22.505758, 24.042820, 8.049034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.390415, 24.082228, 8.194536>,  <22.968149, 23.545462, 7.879238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.390415, 24.082228, 8.194536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.015129, 24.092442, 8.332578>,  <22.789957, 24.098570, 8.415402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.015129, 24.092442, 8.332578>,  <23.390415, 24.082228, 8.194536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.015129, 24.092442, 8.332578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336747, -0.162277, 0.927506,
		0.079684, 0.986415, 0.143653,
		-0.938218, 0.025532, 0.345103,
		22.733664, 24.100101, 8.436109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477348, 24.415592, 8.823306>,  <23.390415, 24.082228, 8.194536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477348, 24.415592, 8.823306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.125229, 24.229588, 8.860916>,  <22.913958, 24.117985, 8.883482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.125229, 24.229588, 8.860916>,  <23.477348, 24.415592, 8.823306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.125229, 24.229588, 8.860916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099826, 0.012198, 0.994930,
		-0.463800, 0.885221, 0.035682,
		-0.880298, -0.465011, 0.094025,
		22.861139, 24.090084, 8.889124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.150116, 24.852823, 9.404573>,  <23.477348, 24.415592, 8.823306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.150116, 24.852823, 9.404573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980824, 24.492275, 9.367902>,  <22.879248, 24.275946, 9.345899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980824, 24.492275, 9.367902>,  <23.150116, 24.852823, 9.404573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.980824, 24.492275, 9.367902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180875, -0.015093, 0.983390,
		-0.887784, 0.432784, -0.156648,
		-0.423231, -0.901372, -0.091679,
		22.853855, 24.221865, 9.340398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.624502, 24.926790, 9.877724>,  <23.150116, 24.852823, 9.404573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.624502, 24.926790, 9.877724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664101, 24.531956, 9.827345>,  <22.687860, 24.295055, 9.797117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664101, 24.531956, 9.827345>,  <22.624502, 24.926790, 9.877724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664101, 24.531956, 9.827345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183755, -0.142527, 0.972584,
		-0.977974, -0.073139, -0.195491,
		0.098996, -0.987085, -0.125948,
		22.693800, 24.235830, 9.789560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136509, 24.640434, 10.332016>,  <22.624502, 24.926790, 9.877724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136509, 24.640434, 10.332016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.360977, 24.319954, 10.248911>,  <22.495659, 24.127666, 10.199048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.360977, 24.319954, 10.248911>,  <22.136509, 24.640434, 10.332016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.360977, 24.319954, 10.248911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182249, -0.364459, 0.913211,
		-0.807386, -0.474603, -0.350542,
		0.561171, -0.801200, -0.207763,
		22.529329, 24.079594, 10.186582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735909, 24.024244, 10.605597>,  <22.136509, 24.640434, 10.332016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735909, 24.024244, 10.605597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.122307, 23.923191, 10.583577>,  <22.354145, 23.862558, 10.570365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.122307, 23.923191, 10.583577>,  <21.735909, 24.024244, 10.605597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122307, 23.923191, 10.583577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026909, -0.309982, 0.950362,
		-0.257159, -0.916563, -0.306239,
		0.965994, -0.252635, -0.055050,
		22.412106, 23.847401, 10.567062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810888, 23.424128, 10.980217>,  <21.735909, 24.024244, 10.605597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810888, 23.424128, 10.980217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.170490, 23.596481, 10.948906>,  <22.386251, 23.699894, 10.930120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.170490, 23.596481, 10.948906>,  <21.810888, 23.424128, 10.980217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.170490, 23.596481, 10.948906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177854, -0.195886, 0.964363,
		0.400196, -0.880890, -0.252737,
		0.899006, 0.430885, -0.078277,
		22.440191, 23.725746, 10.925423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246719, 23.042624, 11.448321>,  <21.810888, 23.424128, 10.980217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246719, 23.042624, 11.448321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460213, 23.374538, 11.383104>,  <22.588308, 23.573689, 11.343974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.460213, 23.374538, 11.383104>,  <22.246719, 23.042624, 11.448321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460213, 23.374538, 11.383104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358818, -0.047633, 0.932191,
		0.765755, -0.556042, -0.323166,
		0.533731, 0.829788, -0.163042,
		22.620333, 23.623474, 11.334191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.845854, 22.946346, 11.807147>,  <22.246719, 23.042624, 11.448321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.845854, 22.946346, 11.807147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.882488, 23.340340, 11.748601>,  <22.904469, 23.576735, 11.713473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.882488, 23.340340, 11.748601>,  <22.845854, 22.946346, 11.807147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.882488, 23.340340, 11.748601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228802, 0.122236, 0.965768,
		0.969155, -0.121939, -0.214171,
		0.091586, 0.984982, -0.146366,
		22.909964, 23.635834, 11.704691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.580729, 23.188145, 11.934204>,  <22.845854, 22.946346, 11.807147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.580729, 23.188145, 11.934204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.327377, 23.493595, 11.984335>,  <23.175365, 23.676865, 12.014414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.327377, 23.493595, 11.984335>,  <23.580729, 23.188145, 11.934204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.327377, 23.493595, 11.984335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382722, 0.168357, 0.908394,
		0.672573, 0.623323, -0.398890,
		-0.633379, 0.763626, 0.125327,
		23.137363, 23.722683, 12.021933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991570, 23.665268, 12.221284>,  <23.580729, 23.188145, 11.934204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991570, 23.665268, 12.221284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622509, 23.804695, 12.287270>,  <23.401073, 23.888351, 12.326860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622509, 23.804695, 12.287270>,  <23.991570, 23.665268, 12.221284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.622509, 23.804695, 12.287270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338633, 0.527666, 0.779036,
		0.184502, 0.774641, -0.604889,
		-0.922652, 0.348569, 0.164964,
		23.345713, 23.909266, 12.336759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.026041, 24.350822, 12.485548>,  <23.991570, 23.665268, 12.221284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.026041, 24.350822, 12.485548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657059, 24.252029, 12.604261>,  <23.435669, 24.192755, 12.675489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657059, 24.252029, 12.604261>,  <24.026041, 24.350822, 12.485548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.657059, 24.252029, 12.604261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149788, 0.479544, 0.864639,
		-0.355870, 0.842044, -0.405362,
		-0.922453, -0.246981, 0.296783,
		23.380323, 24.177935, 12.693296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.826324, 24.925976, 12.847353>,  <24.026041, 24.350822, 12.485548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.826324, 24.925976, 12.847353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.555439, 24.652729, 12.956703>,  <23.392908, 24.488781, 13.022313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.555439, 24.652729, 12.956703>,  <23.826324, 24.925976, 12.847353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.555439, 24.652729, 12.956703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039215, 0.404522, 0.913687,
		-0.734741, 0.608040, -0.300736,
		-0.677213, -0.683117, 0.273375,
		23.352276, 24.447794, 13.038715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.381001, 25.280123, 13.254540>,  <23.826324, 24.925976, 12.847353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.381001, 25.280123, 13.254540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343582, 24.894146, 13.352630>,  <23.321131, 24.662560, 13.411483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343582, 24.894146, 13.352630>,  <23.381001, 25.280123, 13.254540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343582, 24.894146, 13.352630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085771, 0.253197, 0.963605,
		-0.991914, 0.069109, -0.106450,
		-0.093546, -0.964943, 0.245222,
		23.315517, 24.604664, 13.426196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.880726, 25.305513, 13.750441>,  <23.381001, 25.280123, 13.254540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.880726, 25.305513, 13.750441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052769, 24.947678, 13.798972>,  <23.155994, 24.732977, 13.828091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052769, 24.947678, 13.798972>,  <22.880726, 25.305513, 13.750441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052769, 24.947678, 13.798972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051549, 0.109839, 0.992612,
		-0.901306, -0.433183, 0.001127,
		0.430106, -0.894589, 0.121329,
		23.181801, 24.679300, 13.835371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422697, 24.841215, 14.229948>,  <22.880726, 25.305513, 13.750441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422697, 24.841215, 14.229948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799648, 24.707443, 14.233500>,  <23.025820, 24.627180, 14.235632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799648, 24.707443, 14.233500>,  <22.422697, 24.841215, 14.229948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.799648, 24.707443, 14.233500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022555, -0.037029, 0.999060,
		-0.333786, -0.941693, -0.042438,
		0.942379, -0.334430, 0.008880,
		23.082361, 24.607115, 14.236164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388617, 24.474121, 14.799564>,  <22.422697, 24.841215, 14.229948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388617, 24.474121, 14.799564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781040, 24.523689, 14.740010>,  <23.016495, 24.553431, 14.704278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781040, 24.523689, 14.740010>,  <22.388617, 24.474121, 14.799564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781040, 24.523689, 14.740010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116409, 0.237175, 0.964467,
		0.154825, -0.963531, 0.218258,
		0.981060, 0.123916, -0.148884,
		23.075357, 24.560865, 14.695345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.713079, 24.137512, 15.339736>,  <22.388617, 24.474121, 14.799564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.713079, 24.137512, 15.339736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.013489, 24.347649, 15.179744>,  <23.193733, 24.473730, 15.083748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.013489, 24.347649, 15.179744>,  <22.713079, 24.137512, 15.339736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013489, 24.347649, 15.179744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338113, 0.214341, 0.916372,
		0.567139, -0.823454, -0.016649,
		0.751021, 0.525339, -0.399982,
		23.238794, 24.505251, 15.059750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.308229, 23.874815, 15.602114>,  <22.713079, 24.137512, 15.339736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.308229, 23.874815, 15.602114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.388103, 24.255295, 15.508012>,  <23.436028, 24.483583, 15.451550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.388103, 24.255295, 15.508012>,  <23.308229, 23.874815, 15.602114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.388103, 24.255295, 15.508012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368860, 0.149458, 0.917390,
		0.907782, -0.269964, -0.321016,
		0.199684, 0.951200, -0.235254,
		23.448009, 24.540655, 15.437435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.007643, 23.915979, 15.815089>,  <23.308229, 23.874815, 15.602114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.007643, 23.915979, 15.815089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870934, 24.291073, 15.790282>,  <23.788908, 24.516129, 15.775398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870934, 24.291073, 15.790282>,  <24.007643, 23.915979, 15.815089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870934, 24.291073, 15.790282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301715, 0.171982, 0.937758,
		0.890034, 0.301787, -0.341707,
		-0.341771, 0.937735, -0.062017,
		23.768402, 24.572393, 15.771677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545490, 24.551504, 16.058514>,  <24.007643, 23.915979, 15.815089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545490, 24.551504, 16.058514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180386, 24.697922, 16.131044>,  <23.961323, 24.785772, 16.174562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.180386, 24.697922, 16.131044>,  <24.545490, 24.551504, 16.058514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.180386, 24.697922, 16.131044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259293, 0.176174, 0.949595,
		0.315649, 0.913769, -0.255717,
		-0.912761, 0.366044, 0.181325,
		23.906557, 24.807735, 16.185442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589108, 24.868109, 16.684523>,  <24.545490, 24.551504, 16.058514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589108, 24.868109, 16.684523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191353, 24.881378, 16.644325>,  <23.952700, 24.889339, 16.620207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191353, 24.881378, 16.644325>,  <24.589108, 24.868109, 16.684523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.191353, 24.881378, 16.644325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097672, 0.077864, 0.992168,
		0.040740, 0.996412, -0.074186,
		-0.994385, 0.033175, -0.100494,
		23.893038, 24.891331, 16.614178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333973, 25.411098, 17.146461>,  <24.589108, 24.868109, 16.684523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333973, 25.411098, 17.146461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022705, 25.169575, 17.077333>,  <23.835943, 25.024660, 17.035856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.022705, 25.169575, 17.077333>,  <24.333973, 25.411098, 17.146461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022705, 25.169575, 17.077333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188905, -0.037403, 0.981283,
		-0.598970, 0.796252, -0.084957,
		-0.778171, -0.603808, -0.172820,
		23.789253, 24.988432, 17.025488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.836639, 25.563124, 17.613071>,  <24.333973, 25.411098, 17.146461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.836639, 25.563124, 17.613071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.703896, 25.195210, 17.529299>,  <23.624250, 24.974461, 17.479034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.703896, 25.195210, 17.529299>,  <23.836639, 25.563124, 17.613071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.703896, 25.195210, 17.529299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223317, -0.139101, 0.964770,
		-0.916515, 0.366937, -0.159243,
		-0.331859, -0.919787, -0.209432,
		23.604338, 24.919273, 17.466469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.265085, 25.477272, 18.149948>,  <23.836639, 25.563124, 17.613071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.265085, 25.477272, 18.149948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335911, 25.112320, 18.002321>,  <23.378407, 24.893349, 17.913744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335911, 25.112320, 18.002321>,  <23.265085, 25.477272, 18.149948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.335911, 25.112320, 18.002321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246280, -0.404138, 0.880920,
		-0.952888, -0.065083, -0.296258,
		0.177062, -0.912380, -0.369069,
		23.389029, 24.838606, 17.891600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554874, 25.104137, 18.004620>,  <23.265085, 25.477272, 18.149948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554874, 25.104137, 18.004620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879387, 24.884220, 18.084175>,  <23.074095, 24.752270, 18.131908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879387, 24.884220, 18.084175>,  <22.554874, 25.104137, 18.004620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.879387, 24.884220, 18.084175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283719, -0.072776, 0.956142,
		-0.511205, -0.832125, -0.215028,
		0.811278, -0.549792, 0.198887,
		23.122770, 24.719282, 18.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347116, 24.748329, 18.604435>,  <22.554874, 25.104137, 18.004620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347116, 24.748329, 18.604435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.739998, 24.673199, 18.604885>,  <22.975727, 24.628120, 18.605156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.739998, 24.673199, 18.604885>,  <22.347116, 24.748329, 18.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.739998, 24.673199, 18.604885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020633, -0.101928, 0.994578,
		-0.186693, -0.976899, -0.103989,
		0.982201, -0.187826, 0.001127,
		23.034658, 24.616852, 18.605223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.463785, 24.305771, 19.036907>,  <22.347116, 24.748329, 18.604435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.463785, 24.305771, 19.036907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843899, 24.426987, 19.008257>,  <23.071966, 24.499716, 18.991068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843899, 24.426987, 19.008257>,  <22.463785, 24.305771, 19.036907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843899, 24.426987, 19.008257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178288, -0.340921, 0.923031,
		0.255297, -0.889910, -0.377999,
		0.950283, 0.303040, -0.071624,
		23.128984, 24.517899, 18.986769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932138, 23.751415, 19.256607>,  <22.463785, 24.305771, 19.036907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932138, 23.751415, 19.256607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.134483, 24.094082, 19.297060>,  <23.255890, 24.299683, 19.321331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.134483, 24.094082, 19.297060>,  <22.932138, 23.751415, 19.256607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.134483, 24.094082, 19.297060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220000, -0.241486, 0.945137,
		0.834090, -0.455858, -0.310625,
		0.505860, 0.856667, 0.101132,
		23.286242, 24.351082, 19.327400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585033, 23.549387, 19.528610>,  <22.932138, 23.751415, 19.256607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.585033, 23.549387, 19.528610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.541832, 23.937897, 19.613430>,  <23.515911, 24.171001, 19.664322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.541832, 23.937897, 19.613430>,  <23.585033, 23.549387, 19.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.541832, 23.937897, 19.613430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315003, -0.168873, 0.933946,
		0.942926, 0.167665, -0.287715,
		-0.108003, 0.971273, 0.212050,
		23.509432, 24.229279, 19.677046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174925, 23.752857, 19.812357>,  <23.585033, 23.549387, 19.528610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174925, 23.752857, 19.812357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.874283, 23.982544, 19.942198>,  <23.693897, 24.120356, 20.020102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.874283, 23.982544, 19.942198>,  <24.174925, 23.752857, 19.812357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874283, 23.982544, 19.942198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295659, -0.146626, 0.943974,
		0.589640, 0.805466, -0.059568,
		-0.751605, 0.574217, 0.324600,
		23.648802, 24.154810, 20.039577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548910, 24.108400, 20.192295>,  <24.174925, 23.752857, 19.812357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548910, 24.108400, 20.192295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175831, 24.169830, 20.322824>,  <23.951982, 24.206688, 20.401142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175831, 24.169830, 20.322824>,  <24.548910, 24.108400, 20.192295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175831, 24.169830, 20.322824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327919, -0.015543, 0.944578,
		0.150136, 0.988015, -0.035863,
		-0.932700, 0.153575, 0.326322,
		23.896021, 24.215902, 20.420721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.517372, 24.610579, 20.771708>,  <24.548910, 24.108400, 20.192295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.517372, 24.610579, 20.771708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194687, 24.374496, 20.783525>,  <24.001076, 24.232847, 20.790615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194687, 24.374496, 20.783525>,  <24.517372, 24.610579, 20.771708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.194687, 24.374496, 20.783525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244388, -0.287684, 0.926020,
		-0.538044, 0.754251, 0.376317,
		-0.806712, -0.590207, 0.029544,
		23.952673, 24.197435, 20.792389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.168003, 24.803482, 21.355600>,  <24.517372, 24.610579, 20.771708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.168003, 24.803482, 21.355600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147129, 24.425797, 21.225533>,  <24.134605, 24.199184, 21.147491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147129, 24.425797, 21.225533>,  <24.168003, 24.803482, 21.355600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.147129, 24.425797, 21.225533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498395, -0.306787, 0.810854,
		-0.865378, -0.119748, 0.486602,
		-0.052185, -0.944215, -0.325168,
		24.131474, 24.142532, 21.127981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778048, 24.333530, 21.719194>,  <24.168003, 24.803482, 21.355600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778048, 24.333530, 21.719194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.088223, 24.157219, 21.538347>,  <24.274328, 24.051432, 21.429840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.088223, 24.157219, 21.538347>,  <23.778048, 24.333530, 21.719194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.088223, 24.157219, 21.538347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398528, -0.213737, 0.891903,
		-0.489764, -0.871798, 0.009922,
		0.775439, -0.440777, -0.452117,
		24.320854, 24.024986, 21.402712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746069, 24.391895, 22.425066>,  <23.778048, 24.333530, 21.719194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746069, 24.391895, 22.425066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.566135, 24.409992, 22.781853>,  <23.458176, 24.420851, 22.995924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.566135, 24.409992, 22.781853>,  <23.746069, 24.391895, 22.425066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.566135, 24.409992, 22.781853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266147, 0.960131, 0.085524,
		-0.852534, 0.275866, -0.443940,
		-0.449834, 0.045241, 0.891966,
		23.431185, 24.423565, 23.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.296791, 24.923378, 22.405565>,  <23.746069, 24.391895, 22.425066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.296791, 24.923378, 22.405565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421188, 24.860107, 22.780428>,  <23.495827, 24.822145, 23.005346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421188, 24.860107, 22.780428>,  <23.296791, 24.923378, 22.405565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421188, 24.860107, 22.780428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298863, 0.952309, 0.061556,
		-0.902200, 0.260938, 0.343434,
		0.310993, -0.158176, 0.937157,
		23.514486, 24.812654, 23.061575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.016361, 24.306416, 22.556858>,  <23.296791, 24.923378, 22.405565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.016361, 24.306416, 22.556858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.823994, 24.423096, 22.887585>,  <22.708572, 24.493105, 23.086021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.823994, 24.423096, 22.887585>,  <23.016361, 24.306416, 22.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.823994, 24.423096, 22.887585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807431, 0.220195, -0.547330,
		-0.341719, -0.930818, 0.129634,
		-0.480920, 0.291703, 0.826816,
		22.679718, 24.510607, 23.135630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437126, 24.147135, 22.506516>,  <23.016361, 24.306416, 22.556858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437126, 24.147135, 22.506516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323761, 24.443283, 22.750328>,  <22.255743, 24.620972, 22.896616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323761, 24.443283, 22.750328>,  <22.437126, 24.147135, 22.506516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.323761, 24.443283, 22.750328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770130, 0.203042, -0.604710,
		-0.571470, -0.640800, 0.512637,
		-0.283412, 0.740371, 0.609531,
		22.238737, 24.665394, 22.933187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.765030, 23.993082, 22.855865>,  <22.437126, 24.147135, 22.506516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.765030, 23.993082, 22.855865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836212, 24.374672, 22.759314>,  <21.878922, 24.603626, 22.701384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836212, 24.374672, 22.759314>,  <21.765030, 23.993082, 22.855865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836212, 24.374672, 22.759314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621655, -0.081162, -0.779075,
		-0.762809, 0.288693, 0.578601,
		0.177953, 0.953975, -0.241379,
		21.889599, 24.660864, 22.686899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429089, 24.028746, 22.288965>,  <21.765030, 23.993082, 22.855865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429089, 24.028746, 22.288965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552486, 24.406265, 22.336418>,  <21.626526, 24.632776, 22.364889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.552486, 24.406265, 22.336418>,  <21.429089, 24.028746, 22.288965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.552486, 24.406265, 22.336418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547286, 0.278111, -0.789387,
		-0.778016, 0.178596, 0.602324,
		0.308494, 0.943800, 0.118632,
		21.645035, 24.689405, 22.372007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.871496, 24.587101, 22.082645>,  <21.429089, 24.028746, 22.288965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.871496, 24.587101, 22.082645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219189, 24.762718, 21.991709>,  <21.427803, 24.868088, 21.937147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219189, 24.762718, 21.991709>,  <20.871496, 24.587101, 22.082645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219189, 24.762718, 21.991709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328546, 0.169326, -0.929186,
		-0.369456, 0.882367, 0.291428,
		0.869230, 0.439041, -0.227340,
		21.479958, 24.894430, 21.923508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.823460, 25.353640, 21.841806>,  <20.871496, 24.587101, 22.082645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.823460, 25.353640, 21.841806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126049, 25.148781, 21.679102>,  <21.307602, 25.025866, 21.581480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126049, 25.148781, 21.679102>,  <20.823460, 25.353640, 21.841806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126049, 25.148781, 21.679102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334912, 0.230865, -0.913529,
		0.561769, 0.827288, 0.003119,
		0.756472, -0.512148, -0.406761,
		21.352991, 24.995136, 21.557074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993368, 25.766436, 21.294281>,  <20.823460, 25.353640, 21.841806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993368, 25.766436, 21.294281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129162, 25.395370, 21.232069>,  <21.210638, 25.172731, 21.194742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129162, 25.395370, 21.232069>,  <20.993368, 25.766436, 21.294281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129162, 25.395370, 21.232069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286674, 0.055443, -0.956423,
		0.895863, 0.369275, -0.247115,
		0.339482, -0.927665, -0.155531,
		21.231007, 25.117071, 21.185410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305861, 25.751369, 20.660563>,  <20.993368, 25.766436, 21.294281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305861, 25.751369, 20.660563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.248859, 25.358486, 20.709480>,  <21.214659, 25.122755, 20.738831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.248859, 25.358486, 20.709480>,  <21.305861, 25.751369, 20.660563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248859, 25.358486, 20.709480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374383, -0.060887, -0.925273,
		0.916259, -0.177640, -0.359046,
		-0.142504, -0.982211, 0.122294,
		21.206108, 25.063824, 20.746168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.481241, 25.482395, 20.003908>,  <21.305861, 25.751369, 20.660563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.481241, 25.482395, 20.003908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319885, 25.160805, 20.178677>,  <21.223072, 24.967852, 20.283537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319885, 25.160805, 20.178677>,  <21.481241, 25.482395, 20.003908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319885, 25.160805, 20.178677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332823, -0.315869, -0.888513,
		0.852352, -0.503836, -0.140163,
		-0.403392, -0.803975, 0.436920,
		21.198868, 24.919613, 20.309753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.704815, 24.835823, 19.702042>,  <21.481241, 25.482395, 20.003908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.704815, 24.835823, 19.702042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342937, 24.776768, 19.861908>,  <21.125811, 24.741335, 19.957829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342937, 24.776768, 19.861908>,  <21.704815, 24.835823, 19.702042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342937, 24.776768, 19.861908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388749, -0.097853, -0.916132,
		0.174365, -0.984189, 0.031133,
		-0.904694, -0.147639, 0.399665,
		21.071529, 24.732477, 19.981808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331396, 24.211643, 19.378609>,  <21.704815, 24.835823, 19.702042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331396, 24.211643, 19.378609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.036297, 24.432003, 19.534679>,  <20.859238, 24.564219, 19.628321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.036297, 24.432003, 19.534679>,  <21.331396, 24.211643, 19.378609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036297, 24.432003, 19.534679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417188, 0.082341, -0.905083,
		-0.530735, -0.830501, 0.169081,
		-0.737750, 0.550898, 0.390176,
		20.814972, 24.597273, 19.651731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712616, 23.954168, 19.180737>,  <21.331396, 24.211643, 19.378609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712616, 23.954168, 19.180737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.616463, 24.329514, 19.280088>,  <20.558771, 24.554720, 19.339699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.616463, 24.329514, 19.280088>,  <20.712616, 23.954168, 19.180737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616463, 24.329514, 19.280088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469721, 0.111476, -0.875748,
		-0.849457, -0.327184, 0.413972,
		-0.240383, 0.938362, 0.248380,
		20.544348, 24.611023, 19.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059864, 24.062727, 19.001976>,  <20.712616, 23.954168, 19.180737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059864, 24.062727, 19.001976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180553, 24.444035, 18.995764>,  <20.252968, 24.672819, 18.992037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180553, 24.444035, 18.995764>,  <20.059864, 24.062727, 19.001976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180553, 24.444035, 18.995764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455204, 0.129729, -0.880886,
		-0.837707, 0.272852, 0.473074,
		0.301723, 0.953269, -0.015529,
		20.271070, 24.730015, 18.991106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537897, 24.456589, 18.737417>,  <20.059864, 24.062727, 19.001976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537897, 24.456589, 18.737417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.844570, 24.712868, 18.720926>,  <20.028574, 24.866636, 18.711031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.844570, 24.712868, 18.720926>,  <19.537897, 24.456589, 18.737417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.844570, 24.712868, 18.720926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313597, 0.317678, -0.894839,
		-0.560225, 0.698988, 0.444480,
		0.766684, 0.640700, -0.041229,
		20.074575, 24.905077, 18.708557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314695, 25.042772, 18.506655>,  <19.537897, 24.456589, 18.737417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314695, 25.042772, 18.506655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700130, 25.098137, 18.415140>,  <19.931391, 25.131355, 18.360231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700130, 25.098137, 18.415140>,  <19.314695, 25.042772, 18.506655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700130, 25.098137, 18.415140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264708, 0.372758, -0.889371,
		-0.037818, 0.917548, 0.395824,
		0.963587, 0.138412, -0.228786,
		19.989206, 25.139660, 18.346504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286432, 25.557653, 17.993380>,  <19.314695, 25.042772, 18.506655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286432, 25.557653, 17.993380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.635689, 25.365490, 17.960312>,  <19.845242, 25.250191, 17.940472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.635689, 25.365490, 17.960312>,  <19.286432, 25.557653, 17.993380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.635689, 25.365490, 17.960312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017451, 0.138673, -0.990185,
		0.487158, 0.866012, 0.112697,
		0.873140, -0.480410, -0.082668,
		19.897631, 25.221367, 17.935511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692930, 26.014307, 17.696432>,  <19.286432, 25.557653, 17.993380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692930, 26.014307, 17.696432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850224, 25.653107, 17.627197>,  <19.944599, 25.436386, 17.585655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850224, 25.653107, 17.627197>,  <19.692930, 26.014307, 17.696432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850224, 25.653107, 17.627197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187001, 0.262868, -0.946536,
		0.900221, 0.339842, 0.272230,
		0.393233, -0.902999, -0.173088,
		19.968193, 25.382206, 17.575272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336193, 26.180683, 17.224848>,  <19.692930, 26.014307, 17.696432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336193, 26.180683, 17.224848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.223461, 25.799042, 17.184330>,  <20.155823, 25.570057, 17.160019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.223461, 25.799042, 17.184330>,  <20.336193, 26.180683, 17.224848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223461, 25.799042, 17.184330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051412, 0.090407, -0.994577,
		0.958086, -0.285509, 0.023573,
		-0.281830, -0.954102, -0.101297,
		20.138912, 25.512812, 17.153940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937794, 25.806763, 16.912827>,  <20.336193, 26.180683, 17.224848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937794, 25.806763, 16.912827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632706, 25.557854, 16.842360>,  <20.449654, 25.408508, 16.800079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632706, 25.557854, 16.842360>,  <20.937794, 25.806763, 16.912827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632706, 25.557854, 16.842360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356506, -0.177274, -0.917321,
		0.539596, -0.762462, 0.357054,
		-0.762719, -0.622275, -0.176166,
		20.403891, 25.371172, 16.789509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160076, 25.193913, 16.609701>,  <20.937794, 25.806763, 16.912827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160076, 25.193913, 16.609701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.771782, 25.214893, 16.515963>,  <20.538805, 25.227482, 16.459719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.771782, 25.214893, 16.515963>,  <21.160076, 25.193913, 16.609701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771782, 25.214893, 16.515963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219429, -0.202756, -0.954328,
		-0.097571, -0.977824, 0.185313,
		-0.970737, 0.052452, -0.234346,
		20.480560, 25.230629, 16.445660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999651, 24.631411, 16.228647>,  <21.160076, 25.193913, 16.609701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999651, 24.631411, 16.228647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710499, 24.893787, 16.141758>,  <20.537008, 25.051214, 16.089624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.710499, 24.893787, 16.141758>,  <20.999651, 24.631411, 16.228647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.710499, 24.893787, 16.141758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094931, -0.217113, -0.971519,
		-0.684423, -0.722912, 0.094678,
		-0.722879, 0.655942, -0.217224,
		20.493635, 25.090570, 16.076591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533094, 24.325539, 15.667203>,  <20.999651, 24.631411, 16.228647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533094, 24.325539, 15.667203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.440540, 24.714264, 15.649140>,  <20.385008, 24.947498, 15.638303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.440540, 24.714264, 15.649140>,  <20.533094, 24.325539, 15.667203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.440540, 24.714264, 15.649140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086135, -0.025768, -0.995950,
		-0.969041, -0.234340, -0.077745,
		-0.231387, 0.971813, -0.045155,
		20.371124, 25.005808, 15.635593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972267, 24.379232, 15.101265>,  <20.533094, 24.325539, 15.667203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972267, 24.379232, 15.101265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.130993, 24.744427, 15.139197>,  <20.226229, 24.963543, 15.161957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.130993, 24.744427, 15.139197>,  <19.972267, 24.379232, 15.101265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130993, 24.744427, 15.139197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036237, 0.118814, -0.992255,
		-0.917184, 0.390304, 0.080231,
		0.396814, 0.912987, 0.094831,
		20.250036, 25.018322, 15.167646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.512779, 24.855879, 14.702569>,  <19.972267, 24.379232, 15.101265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.512779, 24.855879, 14.702569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860123, 25.054134, 14.709380>,  <20.068529, 25.173088, 14.713467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860123, 25.054134, 14.709380>,  <19.512779, 24.855879, 14.702569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860123, 25.054134, 14.709380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206437, 0.392471, -0.896298,
		-0.450925, 0.774795, 0.443125,
		0.868361, 0.495640, 0.017029,
		20.120630, 25.202826, 14.714489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335047, 25.418802, 14.500295>,  <19.512779, 24.855879, 14.702569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335047, 25.418802, 14.500295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731506, 25.398544, 14.451211>,  <19.969381, 25.386389, 14.421761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731506, 25.398544, 14.451211>,  <19.335047, 25.418802, 14.500295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731506, 25.398544, 14.451211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095690, 0.368105, -0.924847,
		0.092010, 0.928404, 0.360001,
		0.991150, -0.050647, -0.122709,
		20.028851, 25.383350, 14.414398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587301, 26.063650, 14.194758>,  <19.335047, 25.418802, 14.500295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587301, 26.063650, 14.194758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860065, 25.778950, 14.127341>,  <20.023724, 25.608130, 14.086891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860065, 25.778950, 14.127341>,  <19.587301, 26.063650, 14.194758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860065, 25.778950, 14.127341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028984, 0.256540, -0.966099,
		0.730859, 0.653910, 0.195567,
		0.681913, -0.711750, -0.168542,
		20.064640, 25.565424, 14.076778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978067, 26.385187, 13.658952>,  <19.587301, 26.063650, 14.194758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978067, 26.385187, 13.658952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.063374, 25.994514, 13.649053>,  <20.114557, 25.760111, 13.643113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.063374, 25.994514, 13.649053>,  <19.978067, 26.385187, 13.658952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063374, 25.994514, 13.649053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046937, 0.035543, -0.998265,
		0.975866, 0.211733, 0.053422,
		0.213265, -0.976681, -0.024747,
		20.127354, 25.701509, 13.641628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586630, 26.278269, 13.224175>,  <19.978067, 26.385187, 13.658952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586630, 26.278269, 13.224175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.403515, 25.923145, 13.243025>,  <20.293646, 25.710072, 13.254334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.403515, 25.923145, 13.243025>,  <20.586630, 26.278269, 13.224175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403515, 25.923145, 13.243025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109724, -0.109018, -0.987965,
		0.882264, -0.447109, 0.147321,
		-0.457789, -0.887811, 0.047124,
		20.266178, 25.656801, 13.257162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003191, 25.776262, 12.795523>,  <20.586630, 26.278269, 13.224175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003191, 25.776262, 12.795523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635960, 25.622669, 12.834898>,  <20.415621, 25.530514, 12.858523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635960, 25.622669, 12.834898>,  <21.003191, 25.776262, 12.795523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635960, 25.622669, 12.834898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024104, -0.301951, -0.953018,
		0.395666, -0.872573, 0.286470,
		-0.918078, -0.383982, 0.098439,
		20.360537, 25.507475, 12.864429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095936, 25.195023, 12.397960>,  <21.003191, 25.776262, 12.795523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095936, 25.195023, 12.397960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705959, 25.262207, 12.456313>,  <20.471973, 25.302517, 12.491325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705959, 25.262207, 12.456313>,  <21.095936, 25.195023, 12.397960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705959, 25.262207, 12.456313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148396, -0.002436, -0.988925,
		-0.165745, -0.985791, 0.027300,
		-0.974940, 0.167960, 0.145883,
		20.413477, 25.312595, 12.500078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802841, 24.802967, 11.857225>,  <21.095936, 25.195023, 12.397960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802841, 24.802967, 11.857225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520161, 25.059368, 11.977018>,  <20.350554, 25.213209, 12.048894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520161, 25.059368, 11.977018>,  <20.802841, 24.802967, 11.857225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520161, 25.059368, 11.977018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376896, 0.017155, -0.926097,
		-0.598770, -0.767345, 0.229469,
		-0.706699, 0.641005, 0.299481,
		20.308151, 25.251669, 12.066863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219471, 24.524920, 11.645207>,  <20.802841, 24.802967, 11.857225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219471, 24.524920, 11.645207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180115, 24.922958, 11.649151>,  <20.156502, 25.161781, 11.651517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.180115, 24.922958, 11.649151>,  <20.219471, 24.524920, 11.645207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180115, 24.922958, 11.649151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361921, -0.026553, -0.931831,
		-0.927002, -0.095252, 0.362760,
		-0.098391, 0.995099, 0.009859,
		20.150597, 25.221489, 11.652108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618031, 24.582186, 11.221663>,  <20.219471, 24.524920, 11.645207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618031, 24.582186, 11.221663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.765923, 24.953773, 11.214576>,  <19.854658, 25.176727, 11.210323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.765923, 24.953773, 11.214576>,  <19.618031, 24.582186, 11.221663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.765923, 24.953773, 11.214576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098904, 0.020390, -0.994888,
		-0.923860, 0.369592, 0.099418,
		0.369730, 0.928970, -0.017717,
		19.876841, 25.232464, 11.209261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094851, 24.948366, 11.116508>,  <19.618031, 24.582186, 11.221663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094851, 24.948366, 11.116508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379143, 25.202957, 10.996668>,  <19.549717, 25.355713, 10.924764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379143, 25.202957, 10.996668>,  <19.094851, 24.948366, 11.116508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379143, 25.202957, 10.996668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398389, 0.013160, -0.917122,
		-0.579786, 0.771182, 0.262919,
		0.710728, 0.636479, -0.299600,
		19.592361, 25.393900, 10.906788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794266, 25.380114, 10.681020>,  <19.094851, 24.948366, 11.116508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794266, 25.380114, 10.681020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169025, 25.474449, 10.577796>,  <19.393881, 25.531052, 10.515862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169025, 25.474449, 10.577796>,  <18.794266, 25.380114, 10.681020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169025, 25.474449, 10.577796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258328, -0.030320, -0.965581,
		-0.235547, 0.971319, 0.032517,
		0.936901, 0.235840, -0.258061,
		19.450096, 25.545200, 10.500378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786242, 25.944798, 10.270583>,  <18.794266, 25.380114, 10.681020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.786242, 25.944798, 10.270583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.140606, 25.789406, 10.169193>,  <19.353224, 25.696171, 10.108359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.140606, 25.789406, 10.169193>,  <18.786242, 25.944798, 10.270583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140606, 25.789406, 10.169193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206379, 0.159279, -0.965421,
		0.415417, 0.907588, 0.060933,
		0.885910, -0.388477, -0.253475,
		19.406380, 25.672863, 10.093151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999874, 26.371222, 9.819487>,  <18.786242, 25.944798, 10.270583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999874, 26.371222, 9.819487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.202057, 26.032310, 9.754214>,  <19.323368, 25.828964, 9.715051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.202057, 26.032310, 9.754214>,  <18.999874, 26.371222, 9.819487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202057, 26.032310, 9.754214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195249, 0.071901, -0.978114,
		0.840469, 0.526258, -0.129088,
		0.505459, -0.847279, -0.163182,
		19.353695, 25.778126, 9.705259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229696, 26.406937, 9.143431>,  <18.999874, 26.371222, 9.819487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229696, 26.406937, 9.143431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.289299, 26.012871, 9.177484>,  <19.325060, 25.776432, 9.197915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.289299, 26.012871, 9.177484>,  <19.229696, 26.406937, 9.143431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289299, 26.012871, 9.177484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219587, -0.116909, -0.968563,
		0.964147, 0.125627, -0.233750,
		0.149005, -0.985165, 0.085131,
		19.334000, 25.717321, 9.203023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713989, 26.212942, 8.615047>,  <19.229696, 26.406937, 9.143431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713989, 26.212942, 8.615047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517452, 25.884090, 8.730066>,  <19.399530, 25.686779, 8.799078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517452, 25.884090, 8.730066>,  <19.713989, 26.212942, 8.615047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517452, 25.884090, 8.730066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166355, -0.235489, -0.957534,
		0.854932, -0.518312, -0.021060,
		-0.491342, -0.822130, 0.287551,
		19.370050, 25.637451, 8.816332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054186, 25.636358, 8.304509>,  <19.713989, 26.212942, 8.615047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.054186, 25.636358, 8.304509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679893, 25.518810, 8.382529>,  <19.455318, 25.448282, 8.429341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679893, 25.518810, 8.382529>,  <20.054186, 25.636358, 8.304509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679893, 25.518810, 8.382529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130741, -0.224618, -0.965636,
		0.327584, -0.929078, 0.171762,
		-0.935733, -0.293870, 0.195050,
		19.399174, 25.430649, 8.441044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106874, 25.164753, 7.857993>,  <20.054186, 25.636358, 8.304509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106874, 25.164753, 7.857993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724655, 25.240620, 7.948288>,  <19.495323, 25.286140, 8.002465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724655, 25.240620, 7.948288>,  <20.106874, 25.164753, 7.857993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724655, 25.240620, 7.948288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264043, -0.209796, -0.941417,
		-0.131197, -0.959172, 0.250550,
		-0.955546, 0.189667, 0.225738,
		19.437992, 25.297520, 8.016009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737206, 24.603621, 7.598925>,  <20.106874, 25.164753, 7.857993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737206, 24.603621, 7.598925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.481941, 24.911175, 7.614773>,  <19.328783, 25.095707, 7.624281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.481941, 24.911175, 7.614773>,  <19.737206, 24.603621, 7.598925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481941, 24.911175, 7.614773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297515, -0.198815, -0.933787,
		-0.710096, -0.607693, 0.355630,
		-0.638160, 0.768884, 0.039619,
		19.290493, 25.141840, 7.626658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.156830, 24.377619, 7.220703>,  <19.737206, 24.603621, 7.598925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.156830, 24.377619, 7.220703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.138153, 24.777180, 7.221933>,  <19.126947, 25.016916, 7.222672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.138153, 24.777180, 7.221933>,  <19.156830, 24.377619, 7.220703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138153, 24.777180, 7.221933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281640, -0.010211, -0.959466,
		-0.958383, -0.045667, 0.281808,
		-0.046693, 0.998905, 0.003076,
		19.124146, 25.076851, 7.222856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579325, 24.561321, 6.746866>,  <19.156830, 24.377619, 7.220703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579325, 24.561321, 6.746866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767258, 24.912365, 6.784929>,  <18.880018, 25.122992, 6.807767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.767258, 24.912365, 6.784929>,  <18.579325, 24.561321, 6.746866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767258, 24.912365, 6.784929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082853, 0.151162, -0.985031,
		-0.878858, 0.454917, 0.143734,
		0.469834, 0.877611, 0.095159,
		18.908209, 25.175648, 6.813477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160927, 25.121946, 6.488338>,  <18.579325, 24.561321, 6.746866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160927, 25.121946, 6.488338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514648, 25.304893, 6.450773>,  <18.726881, 25.414661, 6.428235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.514648, 25.304893, 6.450773>,  <18.160927, 25.121946, 6.488338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514648, 25.304893, 6.450773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079543, -0.050621, -0.995545,
		-0.460084, 0.887836, -0.008384,
		0.884305, 0.457368, -0.093911,
		18.779940, 25.442104, 6.422600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426750, 24.886465, 6.431226>,  <18.160927, 25.121946, 6.488338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.426750, 24.886465, 6.431226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.141167, 24.606564, 6.441098>,  <16.969816, 24.438623, 6.447021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.141167, 24.606564, 6.441098>,  <17.426750, 24.886465, 6.431226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.141167, 24.606564, 6.441098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052084, -0.017926, 0.998482,
		-0.698247, 0.714161, 0.049244,
		-0.713960, -0.699752, 0.024680,
		16.926979, 24.396639, 6.448502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920883, 25.059561, 6.929520>,  <17.426750, 24.886465, 6.431226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920883, 25.059561, 6.929520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.875576, 24.662174, 6.923965>,  <16.848392, 24.423742, 6.920631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.875576, 24.662174, 6.923965>,  <16.920883, 25.059561, 6.929520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.875576, 24.662174, 6.923965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139198, 0.002026, 0.990263,
		-0.983766, 0.114096, -0.138518,
		-0.113266, -0.993468, -0.013889,
		16.841597, 24.364134, 6.919798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349144, 24.767803, 7.510324>,  <16.920883, 25.059561, 6.929520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349144, 24.767803, 7.510324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567970, 24.446697, 7.415425>,  <16.699266, 24.254034, 7.358487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.567970, 24.446697, 7.415425>,  <16.349144, 24.767803, 7.510324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567970, 24.446697, 7.415425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045596, -0.254419, 0.966018,
		-0.835846, -0.539295, -0.102581,
		0.547068, -0.802765, -0.237245,
		16.732090, 24.205868, 7.344252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015806, 24.191303, 7.773457>,  <16.349144, 24.767803, 7.510324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015806, 24.191303, 7.773457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.403065, 24.102764, 7.726638>,  <16.635420, 24.049641, 7.698546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.403065, 24.102764, 7.726638>,  <16.015806, 24.191303, 7.773457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403065, 24.102764, 7.726638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006189, -0.446170, 0.894927,
		-0.250311, -0.867144, -0.430588,
		0.968146, -0.221345, -0.117047,
		16.693508, 24.036360, 7.691524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092773, 23.566759, 8.180125>,  <16.015806, 24.191303, 7.773457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092773, 23.566759, 8.180125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.459812, 23.713398, 8.118644>,  <16.680035, 23.801382, 8.081755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.459812, 23.713398, 8.118644>,  <16.092773, 23.566759, 8.180125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.459812, 23.713398, 8.118644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249266, -0.229440, 0.940863,
		0.309654, -0.901644, -0.301913,
		0.917595, 0.366599, -0.153703,
		16.735090, 23.823378, 8.072533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449389, 23.054100, 8.408264>,  <16.092773, 23.566759, 8.180125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449389, 23.054100, 8.408264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659142, 23.393669, 8.434667>,  <16.784992, 23.597410, 8.450508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659142, 23.393669, 8.434667>,  <16.449389, 23.054100, 8.408264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659142, 23.393669, 8.434667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344084, -0.282173, 0.895536,
		0.778864, -0.446891, -0.440067,
		0.524382, 0.848921, 0.066007,
		16.816456, 23.648346, 8.454469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168535, 22.885069, 8.621675>,  <16.449389, 23.054100, 8.408264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.168535, 22.885069, 8.621675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.109325, 23.259922, 8.748084>,  <17.073799, 23.484835, 8.823930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.109325, 23.259922, 8.748084>,  <17.168535, 22.885069, 8.621675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109325, 23.259922, 8.748084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133824, -0.297624, 0.945257,
		0.979888, 0.182211, -0.081356,
		-0.148023, 0.937134, 0.316022,
		17.064919, 23.541061, 8.842891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623573, 22.965149, 9.272566>,  <17.168535, 22.885069, 8.621675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623573, 22.965149, 9.272566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408295, 23.300568, 9.306458>,  <17.279127, 23.501820, 9.326793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.408295, 23.300568, 9.306458>,  <17.623573, 22.965149, 9.272566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408295, 23.300568, 9.306458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144775, -0.191018, 0.970851,
		0.830290, 0.510244, 0.224207,
		-0.538199, 0.838548, 0.084730,
		17.246836, 23.552132, 9.331877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922987, 23.336920, 9.802313>,  <17.623573, 22.965149, 9.272566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922987, 23.336920, 9.802313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554417, 23.484722, 9.754251>,  <17.333275, 23.573404, 9.725415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554417, 23.484722, 9.754251>,  <17.922987, 23.336920, 9.802313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554417, 23.484722, 9.754251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136426, -0.018124, 0.990485,
		0.363812, 0.929052, 0.067110,
		-0.921428, 0.369505, -0.120153,
		17.277988, 23.595573, 9.718205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808054, 24.081549, 10.172847>,  <17.922987, 23.336920, 9.802313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.808054, 24.081549, 10.172847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459415, 23.888859, 10.136497>,  <17.250233, 23.773245, 10.114688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459415, 23.888859, 10.136497>,  <17.808054, 24.081549, 10.172847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459415, 23.888859, 10.136497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173225, 0.129236, 0.976366,
		-0.458595, 0.866741, -0.196089,
		-0.871598, -0.481724, -0.090874,
		17.197935, 23.744341, 10.109235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.351158, 24.471527, 10.493141>,  <17.808054, 24.081549, 10.172847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.351158, 24.471527, 10.493141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148647, 24.126579, 10.493072>,  <17.027142, 23.919611, 10.493030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.148647, 24.126579, 10.493072>,  <17.351158, 24.471527, 10.493141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148647, 24.126579, 10.493072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282922, 0.165905, 0.944686,
		-0.814640, 0.478322, -0.327978,
		-0.506277, -0.862371, -0.000175,
		16.996763, 23.867868, 10.493019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748234, 24.535107, 10.952793>,  <17.351158, 24.471527, 10.493141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748234, 24.535107, 10.952793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767132, 24.136017, 10.933538>,  <16.778471, 23.896563, 10.921986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767132, 24.136017, 10.933538>,  <16.748234, 24.535107, 10.952793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767132, 24.136017, 10.933538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072200, -0.051476, 0.996061,
		-0.996271, -0.043584, -0.074468,
		0.047246, -0.997723, -0.048137,
		16.781305, 23.836700, 10.919097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196531, 24.276234, 11.408706>,  <16.748234, 24.535107, 10.952793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196531, 24.276234, 11.408706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438496, 23.958862, 11.381721>,  <16.583675, 23.768440, 11.365529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438496, 23.958862, 11.381721>,  <16.196531, 24.276234, 11.408706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.438496, 23.958862, 11.381721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154863, 0.034117, 0.987347,
		-0.781088, -0.607706, 0.143510,
		0.604913, -0.793429, -0.067462,
		16.619970, 23.720833, 11.361482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092421, 23.933710, 12.094679>,  <16.196531, 24.276234, 11.408706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092421, 23.933710, 12.094679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422878, 23.776230, 11.933442>,  <16.621153, 23.681742, 11.836700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422878, 23.776230, 11.933442>,  <16.092421, 23.933710, 12.094679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422878, 23.776230, 11.933442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386662, -0.124237, 0.913815,
		-0.409847, -0.910805, 0.049590,
		0.826146, -0.393699, -0.403092,
		16.670723, 23.658121, 11.812514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166452, 23.272465, 12.341108>,  <16.092421, 23.933710, 12.094679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166452, 23.272465, 12.341108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536831, 23.379368, 12.234378>,  <16.759058, 23.443510, 12.170340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536831, 23.379368, 12.234378>,  <16.166452, 23.272465, 12.341108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536831, 23.379368, 12.234378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340907, -0.287512, 0.895052,
		0.162493, -0.919734, -0.357331,
		0.925947, 0.267256, -0.266825,
		16.814615, 23.459545, 12.154330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620384, 22.738602, 12.568112>,  <16.166452, 23.272465, 12.341108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620384, 22.738602, 12.568112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847576, 23.065208, 12.526728>,  <16.983891, 23.261171, 12.501897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847576, 23.065208, 12.526728>,  <16.620384, 22.738602, 12.568112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847576, 23.065208, 12.526728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416694, -0.176872, 0.891674,
		0.709766, -0.549563, -0.440696,
		0.567977, 0.816515, -0.103462,
		17.017969, 23.310163, 12.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334438, 22.587231, 12.745873>,  <16.620384, 22.738602, 12.568112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334438, 22.587231, 12.745873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289536, 22.981873, 12.793225>,  <17.262594, 23.218657, 12.821636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289536, 22.981873, 12.793225>,  <17.334438, 22.587231, 12.745873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289536, 22.981873, 12.793225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438942, -0.057646, 0.896664,
		0.891475, 0.152617, -0.426590,
		-0.112255, 0.986603, 0.118380,
		17.255859, 23.277853, 12.828739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922819, 22.744175, 13.040689>,  <17.334438, 22.587231, 12.745873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922819, 22.744175, 13.040689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737961, 23.094563, 13.095966>,  <17.627047, 23.304796, 13.129132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737961, 23.094563, 13.095966>,  <17.922819, 22.744175, 13.040689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737961, 23.094563, 13.095966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504053, 0.131260, 0.853640,
		0.729625, 0.464161, -0.502197,
		-0.462145, 0.875971, 0.138192,
		17.599318, 23.357353, 13.137424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463724, 23.299822, 13.226954>,  <17.922819, 22.744175, 13.040689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463724, 23.299822, 13.226954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.103729, 23.414951, 13.357906>,  <17.887732, 23.484030, 13.436478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.103729, 23.414951, 13.357906>,  <18.463724, 23.299822, 13.226954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.103729, 23.414951, 13.357906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401171, 0.253063, 0.880353,
		0.170539, 0.923643, -0.343221,
		-0.899988, 0.287825, 0.327381,
		17.833733, 23.501299, 13.456120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576057, 23.851755, 13.579372>,  <18.463724, 23.299822, 13.226954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576057, 23.851755, 13.579372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212399, 23.776440, 13.727965>,  <17.994204, 23.731251, 13.817122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.212399, 23.776440, 13.727965>,  <18.576057, 23.851755, 13.579372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212399, 23.776440, 13.727965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311814, 0.283565, 0.906842,
		-0.276089, 0.940286, -0.199091,
		-0.909146, -0.188290, 0.371483,
		17.939655, 23.719954, 13.839411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282591, 24.472542, 13.933774>,  <18.576057, 23.851755, 13.579372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282591, 24.472542, 13.933774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.088242, 24.155819, 14.081811>,  <17.971632, 23.965786, 14.170633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.088242, 24.155819, 14.081811>,  <18.282591, 24.472542, 13.933774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088242, 24.155819, 14.081811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300555, 0.246248, 0.921427,
		-0.820727, 0.558931, 0.118336,
		-0.485875, -0.791807, 0.370092,
		17.942480, 23.918278, 14.192839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034941, 24.668068, 14.552459>,  <18.282591, 24.472542, 13.933774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034941, 24.668068, 14.552459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010429, 24.270103, 14.584462>,  <17.995722, 24.031324, 14.603664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010429, 24.270103, 14.584462>,  <18.034941, 24.668068, 14.552459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010429, 24.270103, 14.584462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221097, 0.064637, 0.973107,
		-0.973325, 0.077320, 0.216011,
		-0.061279, -0.994909, 0.080008,
		17.992046, 23.971630, 14.608464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504679, 24.388268, 15.039841>,  <18.034941, 24.668068, 14.552459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504679, 24.388268, 15.039841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.782494, 24.101460, 15.016177>,  <17.949183, 23.929375, 15.001979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.782494, 24.101460, 15.016177>,  <17.504679, 24.388268, 15.039841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.782494, 24.101460, 15.016177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049045, -0.034848, 0.998189,
		-0.717784, -0.696180, 0.010963,
		0.694537, -0.717021, -0.059158,
		17.990854, 23.886353, 14.998430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392412, 24.026409, 15.528085>,  <17.504679, 24.388268, 15.039841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392412, 24.026409, 15.528085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752441, 23.872074, 15.447087>,  <17.968458, 23.779474, 15.398489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752441, 23.872074, 15.447087>,  <17.392412, 24.026409, 15.528085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752441, 23.872074, 15.447087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191906, -0.066212, 0.979177,
		-0.391210, -0.920188, 0.014448,
		0.900071, -0.385836, -0.202493,
		18.022463, 23.756323, 15.386339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549463, 23.658491, 16.159142>,  <17.392412, 24.026409, 15.528085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549463, 23.658491, 16.159142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885147, 23.644604, 15.942061>,  <18.086557, 23.636271, 15.811813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885147, 23.644604, 15.942061>,  <17.549463, 23.658491, 16.159142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885147, 23.644604, 15.942061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520149, -0.239929, 0.819682,
		-0.158667, -0.970170, -0.183292,
		0.839208, -0.034717, -0.542701,
		18.136909, 23.634188, 15.779251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830687, 22.913528, 16.089886>,  <17.549463, 23.658491, 16.159142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830687, 22.913528, 16.089886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090374, 23.215443, 16.052338>,  <18.246185, 23.396591, 16.029808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090374, 23.215443, 16.052338>,  <17.830687, 22.913528, 16.089886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090374, 23.215443, 16.052338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328794, -0.167208, 0.929482,
		0.685865, -0.634300, -0.356724,
		0.649218, 0.754788, -0.093872,
		18.285139, 23.441879, 16.024176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497438, 22.619568, 16.267330>,  <17.830687, 22.913528, 16.089886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497438, 22.619568, 16.267330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.505669, 23.016876, 16.312920>,  <18.510607, 23.255260, 16.340273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.505669, 23.016876, 16.312920>,  <18.497438, 22.619568, 16.267330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.505669, 23.016876, 16.312920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355859, -0.113810, 0.927584,
		0.934313, 0.021474, -0.355806,
		0.020575, 0.993270, 0.113976,
		18.511841, 23.314857, 16.347113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180344, 22.825481, 16.608829>,  <18.497438, 22.619568, 16.267330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180344, 22.825481, 16.608829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924744, 23.127064, 16.669794>,  <18.771383, 23.308014, 16.706373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924744, 23.127064, 16.669794>,  <19.180344, 22.825481, 16.608829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.924744, 23.127064, 16.669794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134355, -0.085698, 0.987221,
		0.757383, 0.651311, -0.046536,
		-0.638999, 0.753957, 0.152413,
		18.733044, 23.353251, 16.715519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.614174, 23.341314, 16.965946>,  <19.180344, 22.825481, 16.608829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.614174, 23.341314, 16.965946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.224712, 23.379921, 17.048586>,  <18.991035, 23.403086, 17.098169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.224712, 23.379921, 17.048586>,  <19.614174, 23.341314, 16.965946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224712, 23.379921, 17.048586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178515, -0.241128, 0.953934,
		0.141888, 0.965682, 0.217546,
		-0.973653, 0.096517, 0.206602,
		18.932617, 23.408876, 17.110567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603226, 23.630091, 17.573385>,  <19.614174, 23.341314, 16.965946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603226, 23.630091, 17.573385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212227, 23.547157, 17.557821>,  <18.977627, 23.497398, 17.548483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212227, 23.547157, 17.557821>,  <19.603226, 23.630091, 17.573385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212227, 23.547157, 17.557821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052066, 0.058388, 0.996935,
		-0.204425, 0.976526, -0.067869,
		-0.977496, -0.207332, -0.038908,
		18.918978, 23.484959, 17.546148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.254265, 24.249390, 17.961477>,  <19.603226, 23.630091, 17.573385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.254265, 24.249390, 17.961477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054291, 23.902977, 17.964243>,  <18.934305, 23.695129, 17.965902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.054291, 23.902977, 17.964243>,  <19.254265, 24.249390, 17.961477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054291, 23.902977, 17.964243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046358, -0.018787, 0.998748,
		-0.864820, 0.499632, 0.049540,
		-0.499937, -0.866034, 0.006915,
		18.904310, 23.643167, 17.966318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728855, 24.311485, 18.526232>,  <19.254265, 24.249390, 17.961477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728855, 24.311485, 18.526232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796040, 23.922752, 18.460102>,  <18.836349, 23.689512, 18.420424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796040, 23.922752, 18.460102>,  <18.728855, 24.311485, 18.526232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796040, 23.922752, 18.460102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172166, -0.136212, 0.975605,
		-0.970643, -0.192326, 0.144438,
		0.167960, -0.971832, -0.165326,
		18.846428, 23.631203, 18.410505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397989, 24.097439, 19.117353>,  <18.728855, 24.311485, 18.526232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397989, 24.097439, 19.117353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.608303, 23.796101, 18.959352>,  <18.734491, 23.615299, 18.864552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.608303, 23.796101, 18.959352>,  <18.397989, 24.097439, 19.117353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.608303, 23.796101, 18.959352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135467, -0.384285, 0.913221,
		-0.839763, -0.533665, -0.099998,
		0.525782, -0.753343, -0.395003,
		18.766037, 23.570097, 18.840851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051916, 23.472261, 19.408266>,  <18.397989, 24.097439, 19.117353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051916, 23.472261, 19.408266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.407825, 23.352608, 19.270384>,  <18.621372, 23.280815, 19.187654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.407825, 23.352608, 19.270384>,  <18.051916, 23.472261, 19.408266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.407825, 23.352608, 19.270384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113305, -0.586845, 0.801732,
		-0.442111, -0.752418, -0.488267,
		0.889775, -0.299132, -0.344704,
		18.674757, 23.262869, 19.166973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087225, 22.753698, 19.612234>,  <18.051916, 23.472261, 19.408266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087225, 22.753698, 19.612234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.467850, 22.857121, 19.545689>,  <18.696224, 22.919174, 19.505762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.467850, 22.857121, 19.545689>,  <18.087225, 22.753698, 19.612234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.467850, 22.857121, 19.545689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256872, -0.371222, 0.892307,
		0.168955, -0.891820, -0.419657,
		0.951563, 0.258558, -0.166364,
		18.753319, 22.934689, 19.495779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427324, 22.145655, 19.705324>,  <18.087225, 22.753698, 19.612234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427324, 22.145655, 19.705324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702713, 22.433323, 19.742846>,  <18.867947, 22.605925, 19.765358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.702713, 22.433323, 19.742846>,  <18.427324, 22.145655, 19.705324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702713, 22.433323, 19.742846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395656, -0.480828, 0.782471,
		0.607833, -0.501597, -0.615581,
		0.688473, 0.719170, 0.093803,
		18.909254, 22.649075, 19.770987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.974913, 21.856184, 19.917326>,  <18.427324, 22.145655, 19.705324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.974913, 21.856184, 19.917326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044746, 22.235321, 20.023994>,  <19.086647, 22.462803, 20.087996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044746, 22.235321, 20.023994>,  <18.974913, 21.856184, 19.917326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044746, 22.235321, 20.023994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432587, -0.317130, 0.843977,
		0.884527, -0.031987, -0.465390,
		0.174586, 0.947843, 0.266673,
		19.097122, 22.519674, 20.103996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722010, 21.899214, 20.009209>,  <18.974913, 21.856184, 19.917326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722010, 21.899214, 20.009209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553322, 22.188396, 20.228109>,  <19.452108, 22.361906, 20.359449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553322, 22.188396, 20.228109>,  <19.722010, 21.899214, 20.009209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553322, 22.188396, 20.228109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503711, -0.315054, 0.804373,
		0.753942, 0.614877, -0.231297,
		-0.421720, 0.722957, 0.547253,
		19.426805, 22.405283, 20.392284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.052319, 21.209234, 20.251719>,  <19.722010, 21.899214, 20.009209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.052319, 21.209234, 20.251719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111401, 20.831005, 20.367699>,  <20.146849, 20.604067, 20.437286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111401, 20.831005, 20.367699>,  <20.052319, 21.209234, 20.251719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111401, 20.831005, 20.367699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309045, -0.322613, -0.894657,
		0.939508, 0.042537, -0.339877,
		0.147704, -0.945575, 0.289952,
		20.155712, 20.547333, 20.454683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372490, 20.910696, 19.692722>,  <20.052319, 21.209234, 20.251719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372490, 20.910696, 19.692722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.230892, 20.600567, 19.901936>,  <20.145933, 20.414490, 20.027464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.230892, 20.600567, 19.901936>,  <20.372490, 20.910696, 19.692722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.230892, 20.600567, 19.901936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444842, -0.352351, -0.823386,
		0.822681, -0.524141, -0.220166,
		-0.353994, -0.775322, 0.523032,
		20.124693, 20.367970, 20.058846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.593040, 20.333866, 19.402500>,  <20.372490, 20.910696, 19.692722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.593040, 20.333866, 19.402500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276947, 20.195526, 19.604855>,  <20.087292, 20.112522, 19.726267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276947, 20.195526, 19.604855>,  <20.593040, 20.333866, 19.402500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276947, 20.195526, 19.604855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269709, -0.544981, -0.793885,
		0.550261, -0.763796, 0.337385,
		-0.790234, -0.345848, 0.505884,
		20.039877, 20.091772, 19.756620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533979, 19.601774, 19.451921>,  <20.593040, 20.333866, 19.402500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533979, 19.601774, 19.451921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155071, 19.721867, 19.496721>,  <19.927727, 19.793922, 19.523602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155071, 19.721867, 19.496721>,  <20.533979, 19.601774, 19.451921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155071, 19.721867, 19.496721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245768, -0.456424, -0.855146,
		-0.205623, -0.837579, 0.506144,
		-0.947268, 0.300232, 0.111999,
		19.870892, 19.811935, 19.530321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161951, 19.040865, 19.153225>,  <20.533979, 19.601774, 19.451921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161951, 19.040865, 19.153225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.902168, 19.342842, 19.189589>,  <19.746298, 19.524029, 19.211407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.902168, 19.342842, 19.189589>,  <20.161951, 19.040865, 19.153225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902168, 19.342842, 19.189589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414197, -0.250971, -0.874902,
		-0.637688, -0.605865, 0.475691,
		-0.649458, 0.754944, 0.090907,
		19.707331, 19.569324, 19.216860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597864, 18.823107, 18.834526>,  <20.161951, 19.040865, 19.153225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597864, 18.823107, 18.834526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524784, 19.216373, 18.834949>,  <19.480936, 19.452333, 18.835203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524784, 19.216373, 18.834949>,  <19.597864, 18.823107, 18.834526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524784, 19.216373, 18.834949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655358, -0.120982, -0.745566,
		-0.732889, -0.136909, 0.666431,
		-0.182701, 0.983168, 0.001058,
		19.469975, 19.511324, 18.835266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911161, 18.894848, 18.517696>,  <19.597864, 18.823107, 18.834526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911161, 18.894848, 18.517696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067062, 19.262707, 18.498339>,  <19.160603, 19.483423, 18.486723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.067062, 19.262707, 18.498339>,  <18.911161, 18.894848, 18.517696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067062, 19.262707, 18.498339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491717, 0.163383, -0.855290,
		-0.778658, 0.357146, 0.515885,
		0.389750, 0.919648, -0.048396,
		19.183987, 19.538601, 18.483820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344381, 19.280519, 18.504280>,  <18.911161, 18.894848, 18.517696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.344381, 19.280519, 18.504280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.653568, 19.462372, 18.327267>,  <18.839081, 19.571484, 18.221058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.653568, 19.462372, 18.327267>,  <18.344381, 19.280519, 18.504280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653568, 19.462372, 18.327267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558102, 0.155506, -0.815070,
		-0.301739, 0.877000, 0.373931,
		0.772965, 0.454630, -0.442534,
		18.885458, 19.598761, 18.194506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074877, 19.859110, 18.132524>,  <18.344381, 19.280519, 18.504280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074877, 19.859110, 18.132524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.445816, 19.870590, 17.983286>,  <18.668381, 19.877478, 17.893744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.445816, 19.870590, 17.983286>,  <18.074877, 19.859110, 18.132524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445816, 19.870590, 17.983286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366120, 0.275635, -0.888809,
		0.077328, 0.960834, 0.266118,
		0.927350, 0.028701, -0.373094,
		18.724020, 19.879200, 17.871357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.183105, 20.532993, 17.685314>,  <18.074877, 19.859110, 18.132524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.183105, 20.532993, 17.685314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.443493, 20.251770, 17.570807>,  <18.599726, 20.083036, 17.502102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.443493, 20.251770, 17.570807>,  <18.183105, 20.532993, 17.685314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443493, 20.251770, 17.570807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269625, 0.138377, -0.952971,
		0.709607, 0.697539, -0.099483,
		0.650969, -0.703058, -0.286267,
		18.638784, 20.040852, 17.484926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442406, 20.832497, 17.133926>,  <18.183105, 20.532993, 17.685314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442406, 20.832497, 17.133926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571102, 20.460979, 17.060362>,  <18.648319, 20.238070, 17.016222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571102, 20.460979, 17.060362>,  <18.442406, 20.832497, 17.133926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571102, 20.460979, 17.060362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071903, 0.169713, -0.982867,
		0.944094, 0.329452, -0.012180,
		0.321741, -0.928794, -0.183913,
		18.667624, 20.182341, 17.005188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935291, 20.874155, 16.523815>,  <18.442406, 20.832497, 17.133926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935291, 20.874155, 16.523815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.799252, 20.498798, 16.548321>,  <18.717628, 20.273584, 16.563025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.799252, 20.498798, 16.548321>,  <18.935291, 20.874155, 16.523815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799252, 20.498798, 16.548321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035240, -0.052384, -0.998005,
		0.939730, -0.341578, -0.015253,
		-0.340097, -0.938393, 0.061264,
		18.697222, 20.217281, 16.566700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240011, 20.509205, 16.046074>,  <18.935291, 20.874155, 16.523815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240011, 20.509205, 16.046074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.914928, 20.287365, 16.117544>,  <18.719879, 20.154261, 16.160425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.914928, 20.287365, 16.117544>,  <19.240011, 20.509205, 16.046074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914928, 20.287365, 16.117544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056292, -0.230477, -0.971448,
		0.579948, -0.799560, 0.156091,
		-0.812707, -0.554603, 0.178674,
		18.671116, 20.120985, 16.171146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380672, 19.934708, 15.644614>,  <19.240011, 20.509205, 16.046074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380672, 19.934708, 15.644614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990181, 19.972450, 15.722667>,  <18.755886, 19.995096, 15.769499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990181, 19.972450, 15.722667>,  <19.380672, 19.934708, 15.644614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990181, 19.972450, 15.722667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209360, -0.177453, -0.961602,
		-0.056106, -0.979596, 0.192989,
		-0.976228, 0.094356, 0.195132,
		18.697313, 20.000757, 15.781206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.071957, 19.551800, 15.160725>,  <19.380672, 19.934708, 15.644614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.071957, 19.551800, 15.160725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754589, 19.773975, 15.260301>,  <18.564169, 19.907282, 15.320046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754589, 19.773975, 15.260301>,  <19.071957, 19.551800, 15.160725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754589, 19.773975, 15.260301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211900, 0.131346, -0.968425,
		-0.570600, -0.821118, 0.013486,
		-0.793419, 0.555440, 0.248941,
		18.516563, 19.940607, 15.334983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554106, 19.374838, 14.647723>,  <19.071957, 19.551800, 15.160725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554106, 19.374838, 14.647723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.381496, 19.687260, 14.828273>,  <18.277931, 19.874714, 14.936603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.381496, 19.687260, 14.828273>,  <18.554106, 19.374838, 14.647723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381496, 19.687260, 14.828273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446832, 0.249604, -0.859092,
		-0.783664, -0.572407, 0.241291,
		-0.431524, 0.781055, 0.451375,
		18.252039, 19.921576, 14.963685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785982, 19.371212, 14.377413>,  <18.554106, 19.374838, 14.647723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785982, 19.371212, 14.377413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935986, 19.721092, 14.500224>,  <18.025988, 19.931021, 14.573911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.935986, 19.721092, 14.500224>,  <17.785982, 19.371212, 14.377413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935986, 19.721092, 14.500224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390478, 0.449427, -0.803456,
		-0.840771, 0.181414, 0.510091,
		0.375007, 0.874702, 0.307027,
		18.048487, 19.983503, 14.592332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198841, 19.887962, 14.346642>,  <17.785982, 19.371212, 14.377413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198841, 19.887962, 14.346642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.550793, 20.073380, 14.304799>,  <17.761963, 20.184629, 14.279694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.550793, 20.073380, 14.304799>,  <17.198841, 19.887962, 14.346642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550793, 20.073380, 14.304799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364792, 0.517801, -0.773827,
		-0.304538, 0.719032, 0.624699,
		0.879877, 0.463545, -0.104608,
		17.814756, 20.212442, 14.273417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008987, 20.620060, 14.360259>,  <17.198841, 19.887962, 14.346642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.008987, 20.620060, 14.360259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379333, 20.588612, 14.212424>,  <17.601542, 20.569742, 14.123723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379333, 20.588612, 14.212424>,  <17.008987, 20.620060, 14.360259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379333, 20.588612, 14.212424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236579, 0.642055, -0.729243,
		0.294630, 0.762616, 0.575856,
		0.925864, -0.078621, -0.369588,
		17.657093, 20.565025, 14.101548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179068, 21.286711, 14.133609>,  <17.008987, 20.620060, 14.360259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179068, 21.286711, 14.133609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436447, 21.068802, 13.918500>,  <17.590876, 20.938057, 13.789434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436447, 21.068802, 13.918500>,  <17.179068, 21.286711, 14.133609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436447, 21.068802, 13.918500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107370, 0.631345, -0.768033,
		0.757922, 0.551930, 0.347746,
		0.643448, -0.544772, -0.537771,
		17.629482, 20.905371, 13.757169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513674, 21.735941, 13.617946>,  <17.179068, 21.286711, 14.133609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513674, 21.735941, 13.617946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665314, 21.401897, 13.458508>,  <17.756298, 21.201471, 13.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665314, 21.401897, 13.458508>,  <17.513674, 21.735941, 13.617946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665314, 21.401897, 13.458508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095577, 0.463779, -0.880780,
		0.920406, 0.295808, 0.255636,
		0.379100, -0.835109, -0.398593,
		17.779043, 21.151365, 13.338931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177479, 21.900513, 13.286710>,  <17.513674, 21.735941, 13.617946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177479, 21.900513, 13.286710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.013027, 21.573826, 13.124747>,  <17.914356, 21.377813, 13.027570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.013027, 21.573826, 13.124747>,  <18.177479, 21.900513, 13.286710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013027, 21.573826, 13.124747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271116, 0.314530, -0.909707,
		0.870327, -0.483783, 0.092112,
		-0.411129, -0.816716, -0.404906,
		17.889688, 21.328812, 13.003276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603300, 21.760031, 12.790033>,  <18.177479, 21.900513, 13.286710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603300, 21.760031, 12.790033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303406, 21.518589, 12.681548>,  <18.123468, 21.373724, 12.616457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303406, 21.518589, 12.681548>,  <18.603300, 21.760031, 12.790033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303406, 21.518589, 12.681548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220447, 0.158619, -0.962415,
		0.623937, -0.781347, 0.014140,
		-0.749737, -0.603604, -0.271214,
		18.078485, 21.337507, 12.600183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832113, 21.374712, 12.098692>,  <18.603300, 21.760031, 12.790033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.832113, 21.374712, 12.098692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.436241, 21.323109, 12.123628>,  <18.198717, 21.292147, 12.138589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.436241, 21.323109, 12.123628>,  <18.832113, 21.374712, 12.098692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436241, 21.323109, 12.123628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078005, 0.120184, -0.989682,
		0.120184, -0.984334, -0.129008,
		0.989682, 0.129008, -0.062338,
		18.139336, 21.284407, 12.142329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608135, 20.853184, 11.539235>,  <18.832113, 21.374712, 12.098692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608135, 20.853184, 11.539235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251675, 21.010250, 11.630152>,  <18.037798, 21.104490, 11.684702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251675, 21.010250, 11.630152>,  <18.608135, 20.853184, 11.539235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251675, 21.010250, 11.630152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296425, -0.124634, -0.946889,
		-0.343484, -0.911197, 0.227464,
		-0.891152, 0.392667, 0.227292,
		17.984329, 21.128050, 11.698339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097202, 20.413462, 11.378524>,  <18.608135, 20.853184, 11.539235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.097202, 20.413462, 11.378524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898582, 20.760159, 11.359755>,  <17.779411, 20.968176, 11.348493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898582, 20.760159, 11.359755>,  <18.097202, 20.413462, 11.378524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898582, 20.760159, 11.359755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386361, -0.269104, -0.882218,
		-0.777281, -0.419934, 0.468497,
		-0.496548, 0.866740, -0.046923,
		17.749619, 21.020180, 11.345677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465483, 20.242594, 11.231828>,  <18.097202, 20.413462, 11.378524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465483, 20.242594, 11.231828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508919, 20.615135, 11.092809>,  <17.534981, 20.838659, 11.009398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508919, 20.615135, 11.092809>,  <17.465483, 20.242594, 11.231828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508919, 20.615135, 11.092809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173139, -0.326552, -0.929186,
		-0.978893, 0.161073, 0.125794,
		0.108589, 0.931353, -0.347547,
		17.541496, 20.894541, 10.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130577, 20.273172, 10.648598>,  <17.465483, 20.242594, 11.231828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130577, 20.273172, 10.648598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321110, 20.621777, 10.601985>,  <17.435431, 20.830938, 10.574018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321110, 20.621777, 10.601985>,  <17.130577, 20.273172, 10.648598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321110, 20.621777, 10.601985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044102, -0.156048, -0.986764,
		-0.878158, 0.464889, -0.112766,
		0.476333, 0.871508, -0.116532,
		17.464010, 20.883228, 10.567025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796766, 20.666580, 10.045927>,  <17.130577, 20.273172, 10.648598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796766, 20.666580, 10.045927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165012, 20.817448, 10.086356>,  <17.385960, 20.907969, 10.110614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165012, 20.817448, 10.086356>,  <16.796766, 20.666580, 10.045927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165012, 20.817448, 10.086356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123909, -0.036711, -0.991614,
		-0.370295, 0.925417, -0.080531,
		0.920613, 0.377168, 0.101074,
		17.441196, 20.930597, 10.116678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801367, 21.315006, 9.656306>,  <16.796766, 20.666580, 10.045927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801367, 21.315006, 9.656306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161545, 21.146080, 9.697976>,  <17.377651, 21.044724, 9.722978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161545, 21.146080, 9.697976>,  <16.801367, 21.315006, 9.656306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161545, 21.146080, 9.697976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069725, -0.096260, -0.992911,
		0.429350, 0.901323, -0.057231,
		0.900443, -0.422316, 0.104174,
		17.431677, 21.019384, 9.729228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179171, 21.535574, 9.129536>,  <16.801367, 21.315006, 9.656306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179171, 21.535574, 9.129536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407291, 21.225449, 9.238089>,  <17.544163, 21.039373, 9.303221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407291, 21.225449, 9.238089>,  <17.179171, 21.535574, 9.129536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.407291, 21.225449, 9.238089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237026, -0.161003, -0.958069,
		0.786496, 0.610712, 0.091949,
		0.570301, -0.775312, 0.271383,
		17.578382, 20.992855, 9.319504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508034, 21.446943, 8.596214>,  <17.179171, 21.535574, 9.129536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508034, 21.446943, 8.596214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673016, 21.113373, 8.742884>,  <17.772005, 20.913231, 8.830885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.673016, 21.113373, 8.742884>,  <17.508034, 21.446943, 8.596214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673016, 21.113373, 8.742884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113458, -0.352346, -0.928967,
		0.903885, 0.424759, -0.050712,
		0.412455, -0.833925, 0.366673,
		17.796753, 20.863195, 8.852885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134676, 21.315500, 8.208257>,  <17.508034, 21.446943, 8.596214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134676, 21.315500, 8.208257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041698, 20.957615, 8.360812>,  <17.985912, 20.742884, 8.452346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041698, 20.957615, 8.360812>,  <18.134676, 21.315500, 8.208257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041698, 20.957615, 8.360812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025942, -0.397694, -0.917151,
		0.972264, -0.203293, 0.115652,
		-0.232445, -0.894713, 0.381390,
		17.971966, 20.689201, 8.475229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662992, 20.834175, 7.954529>,  <18.134676, 21.315500, 8.208257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662992, 20.834175, 7.954529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337086, 20.627743, 8.060216>,  <18.141541, 20.503883, 8.123629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337086, 20.627743, 8.060216>,  <18.662992, 20.834175, 7.954529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337086, 20.627743, 8.060216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044476, -0.510008, -0.859019,
		0.578077, -0.688151, 0.438492,
		-0.814769, -0.516082, 0.264218,
		18.092655, 20.472918, 8.139482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860432, 20.244587, 7.758904>,  <18.662992, 20.834175, 7.954529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860432, 20.244587, 7.758904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463799, 20.195839, 7.776373>,  <18.225819, 20.166590, 7.786855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463799, 20.195839, 7.776373>,  <18.860432, 20.244587, 7.758904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463799, 20.195839, 7.776373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032304, -0.559611, -0.828126,
		0.125364, -0.819746, 0.558838,
		-0.991585, -0.121870, 0.043674,
		18.166323, 20.159277, 7.789475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694090, 19.605522, 7.422518>,  <18.860432, 20.244587, 7.758904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694090, 19.605522, 7.422518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307835, 19.708466, 7.437004>,  <18.076082, 19.770231, 7.445696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307835, 19.708466, 7.437004>,  <18.694090, 19.605522, 7.422518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307835, 19.708466, 7.437004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223884, -0.752966, -0.618804,
		-0.131984, -0.605649, 0.784710,
		-0.965638, 0.257357, 0.036216,
		18.018143, 19.785673, 7.447869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355167, 19.013264, 7.482522>,  <18.694090, 19.605522, 7.422518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355167, 19.013264, 7.482522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100334, 19.273884, 7.317788>,  <17.947433, 19.430256, 7.218948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100334, 19.273884, 7.317788>,  <18.355167, 19.013264, 7.482522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100334, 19.273884, 7.317788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219199, -0.665383, -0.713595,
		-0.738970, -0.364346, 0.566723,
		-0.637083, 0.651550, -0.411834,
		17.909208, 19.469349, 7.194238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620346, 18.647015, 7.285755>,  <18.355167, 19.013264, 7.482522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620346, 18.647015, 7.285755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624249, 18.988838, 7.078050>,  <17.626591, 19.193932, 6.953427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624249, 18.988838, 7.078050>,  <17.620346, 18.647015, 7.285755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624249, 18.988838, 7.078050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359771, -0.481512, -0.799194,
		-0.932990, 0.194615, 0.302747,
		0.009759, 0.854559, -0.519262,
		17.627176, 19.245207, 6.922271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903847, 18.804676, 6.818005>,  <17.620346, 18.647015, 7.285755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903847, 18.804676, 6.818005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237705, 18.964752, 6.666631>,  <17.438021, 19.060799, 6.575806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237705, 18.964752, 6.666631>,  <16.903847, 18.804676, 6.818005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237705, 18.964752, 6.666631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150512, -0.495209, -0.855637,
		-0.529824, 0.771112, -0.353090,
		0.834645, 0.400192, -0.378435,
		17.488098, 19.084810, 6.553100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623583, 18.966389, 6.205435>,  <16.903847, 18.804676, 6.818005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623583, 18.966389, 6.205435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017277, 19.007561, 6.147903>,  <17.253492, 19.032265, 6.113384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017277, 19.007561, 6.147903>,  <16.623583, 18.966389, 6.205435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.017277, 19.007561, 6.147903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089321, -0.412616, -0.906515,
		-0.152656, 0.905071, -0.396917,
		0.984235, 0.102932, -0.143830,
		17.312548, 19.038441, 6.104754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716549, 19.146723, 5.479900>,  <16.623583, 18.966389, 6.205435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716549, 19.146723, 5.479900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026058, 18.949215, 5.638631>,  <17.211763, 18.830711, 5.733869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.026058, 18.949215, 5.638631>,  <16.716549, 19.146723, 5.479900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026058, 18.949215, 5.638631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131660, -0.487402, -0.863195,
		0.619632, 0.720161, -0.312128,
		0.773771, -0.493768, 0.396826,
		17.258190, 18.801085, 5.757679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409508, 19.243988, 5.062779>,  <16.716549, 19.146723, 5.479900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409508, 19.243988, 5.062779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406170, 18.882065, 5.233073>,  <17.404167, 18.664911, 5.335249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.406170, 18.882065, 5.233073>,  <17.409508, 19.243988, 5.062779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406170, 18.882065, 5.233073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119187, -0.423615, -0.897967,
		0.992837, 0.043248, 0.111378,
		-0.008346, -0.904809, 0.425735,
		17.403666, 18.610622, 5.360794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627760, 18.800566, 4.607767>,  <17.409508, 19.243988, 5.062779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627760, 18.800566, 4.607767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513241, 18.514900, 4.863267>,  <17.444529, 18.343500, 5.016567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513241, 18.514900, 4.863267>,  <17.627760, 18.800566, 4.607767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513241, 18.514900, 4.863267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084059, -0.645364, -0.759236,
		0.954446, -0.271061, 0.124734,
		-0.286298, -0.714165, 0.638750,
		17.427351, 18.300652, 5.054892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084055, 18.091606, 4.780798>,  <17.627760, 18.800566, 4.607767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084055, 18.091606, 4.780798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.685097, 18.069523, 4.799381>,  <17.445723, 18.056273, 4.810531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.685097, 18.069523, 4.799381>,  <18.084055, 18.091606, 4.780798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685097, 18.069523, 4.799381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007408, -0.718830, -0.695147,
		0.071773, -0.692991, 0.717365,
		-0.997394, -0.055207, 0.046459,
		17.385880, 18.052961, 4.813319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857344, 17.423141, 4.902225>,  <18.084055, 18.091606, 4.780798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.857344, 17.423141, 4.902225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576088, 17.629543, 4.706538>,  <17.407335, 17.753386, 4.589126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576088, 17.629543, 4.706538>,  <17.857344, 17.423141, 4.902225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576088, 17.629543, 4.706538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020520, -0.673005, -0.739353,
		-0.710758, -0.529905, 0.462627,
		-0.703137, 0.516008, -0.489218,
		17.365147, 17.784346, 4.559773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456156, 16.829155, 4.609208>,  <17.857344, 17.423141, 4.902225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456156, 16.829155, 4.609208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396091, 17.167656, 4.404735>,  <17.360052, 17.370756, 4.282051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396091, 17.167656, 4.404735>,  <17.456156, 16.829155, 4.609208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396091, 17.167656, 4.404735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393739, -0.423085, -0.816069,
		-0.906875, -0.323814, -0.269672,
		-0.150160, 0.846253, -0.511183,
		17.351044, 17.421532, 4.251379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084875, 16.701374, 3.974475>,  <17.456156, 16.829155, 4.609208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084875, 16.701374, 3.974475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317173, 17.024601, 3.934950>,  <17.456553, 17.218536, 3.911234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317173, 17.024601, 3.934950>,  <17.084875, 16.701374, 3.974475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317173, 17.024601, 3.934950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451208, -0.420530, -0.787126,
		-0.677604, 0.412533, -0.608826,
		0.580745, 0.808066, -0.098814,
		17.491396, 17.267021, 3.905305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795816, 16.841555, 3.340182>,  <17.084875, 16.701374, 3.974475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795816, 16.841555, 3.340182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934536, 16.800610, 2.967247>,  <17.017767, 16.776043, 2.743486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934536, 16.800610, 2.967247>,  <16.795816, 16.841555, 3.340182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934536, 16.800610, 2.967247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372472, -0.927316, -0.036736,
		-0.860811, 0.360010, -0.359720,
		0.346799, -0.102363, -0.932337,
		17.038576, 16.769901, 2.687546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.220957, 16.690399, 2.849935>,  <16.795816, 16.841555, 3.340182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.220957, 16.690399, 2.849935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.541134, 16.570534, 2.642284>,  <16.733240, 16.498613, 2.517693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.541134, 16.570534, 2.642284>,  <16.220957, 16.690399, 2.849935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541134, 16.570534, 2.642284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499960, -0.811525, -0.302436,
		-0.330655, 0.501625, -0.799399,
		0.800442, -0.299666, -0.519127,
		16.781267, 16.480635, 2.486545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942642, 16.438591, 2.103710>,  <16.220957, 16.690399, 2.849935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942642, 16.438591, 2.103710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271523, 16.273010, 2.259982>,  <16.468851, 16.173662, 2.353745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.271523, 16.273010, 2.259982>,  <15.942642, 16.438591, 2.103710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271523, 16.273010, 2.259982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434448, -0.899846, -0.039137,
		0.367753, -0.137552, -0.919694,
		0.822200, -0.413952, 0.390681,
		16.518183, 16.148825, 2.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935369, 15.773692, 1.917499>,  <15.942642, 16.438591, 2.103710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935369, 15.773692, 1.917499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.205662, 15.749226, 2.211341>,  <16.367838, 15.734546, 2.387646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.205662, 15.749226, 2.211341>,  <15.935369, 15.773692, 1.917499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205662, 15.749226, 2.211341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319615, -0.922317, 0.217204,
		0.664253, -0.381562, -0.642790,
		0.675733, -0.061167, 0.734604,
		16.408382, 15.730876, 2.431722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085045, 15.346271, 1.297129>,  <15.935369, 15.773692, 1.917499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085045, 15.346271, 1.297129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.688115, 15.347191, 1.247670>,  <15.449958, 15.347743, 1.217994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.688115, 15.347191, 1.247670>,  <16.085045, 15.346271, 1.297129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688115, 15.347191, 1.247670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012242, -0.993088, -0.116734,
		-0.123062, -0.117352, 0.985436,
		-0.992323, 0.002302, -0.123648,
		15.390418, 15.347881, 1.210575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671268, 14.998372, 1.837060>,  <16.085045, 15.346271, 1.297129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671268, 14.998372, 1.837060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552859, 14.960400, 1.456879>,  <15.481814, 14.937616, 1.228770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552859, 14.960400, 1.456879>,  <15.671268, 14.998372, 1.837060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552859, 14.960400, 1.456879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270762, -0.962574, 0.011811,
		-0.916002, -0.253850, 0.310645,
		-0.296020, -0.094930, -0.950453,
		15.464053, 14.931921, 1.171743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116697, 14.481518, 1.744520>,  <15.671268, 14.998372, 1.837060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116697, 14.481518, 1.744520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.313933, 14.494347, 1.396765>,  <15.432275, 14.502044, 1.188112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.313933, 14.494347, 1.396765>,  <15.116697, 14.481518, 1.744520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313933, 14.494347, 1.396765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154882, -0.986593, 0.051449,
		-0.856081, -0.160021, -0.491446,
		0.493089, 0.032072, -0.869388,
		15.461860, 14.503968, 1.135949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800397, 14.054256, 1.298955>,  <15.116697, 14.481518, 1.744520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.800397, 14.054256, 1.298955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192338, 14.052269, 1.219089>,  <15.427503, 14.051077, 1.171170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192338, 14.052269, 1.219089>,  <14.800397, 14.054256, 1.298955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192338, 14.052269, 1.219089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006985, -0.999932, -0.009394,
		-0.199605, 0.010600, -0.979820,
		0.979852, -0.004969, -0.199665,
		15.486294, 14.050778, 1.159190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698723, 13.923450, 0.543614>,  <14.800397, 14.054256, 1.298955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698723, 13.923450, 0.543614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883069, 14.134209, 0.257962>,  <14.993677, 14.260664, 0.086571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.883069, 14.134209, 0.257962>,  <14.698723, 13.923450, 0.543614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883069, 14.134209, 0.257962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887238, -0.291950, 0.357176,
		-0.020294, -0.798212, -0.602035,
		0.460866, 0.526899, -0.714129,
		15.021329, 14.292278, 0.043724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106665, 13.526958, 0.079781>,  <14.698723, 13.923450, 0.543614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106665, 13.526958, 0.079781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224666, 13.896290, 0.178115>,  <15.295466, 14.117889, 0.237115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224666, 13.896290, 0.178115>,  <15.106665, 13.526958, 0.079781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224666, 13.896290, 0.178115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794004, -0.380015, 0.474495,
		0.531537, 0.055217, -0.845234,
		0.295002, 0.923331, 0.245835,
		15.313166, 14.173289, 0.251865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829668, 13.705535, -0.068827>,  <15.106665, 13.526958, 0.079781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.829668, 13.705535, -0.068827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678725, 13.884285, 0.255619>,  <15.588160, 13.991535, 0.450286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678725, 13.884285, 0.255619>,  <15.829668, 13.705535, -0.068827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678725, 13.884285, 0.255619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679619, -0.461329, 0.570346,
		0.629063, 0.766471, -0.129620,
		-0.377356, 0.446875, 0.811113,
		15.565518, 14.018348, 0.498953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160519, 14.135185, -0.506357>,  <15.829668, 13.705535, -0.068827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160519, 14.135185, -0.506357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337452, 14.179482, -0.862352>,  <16.443613, 14.206059, -1.075948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337452, 14.179482, -0.862352>,  <16.160519, 14.135185, -0.506357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337452, 14.179482, -0.862352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533560, 0.830123, -0.161894,
		0.720871, 0.546473, 0.426279,
		0.442334, 0.110741, -0.889987,
		16.470152, 14.212704, -1.129348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408491, 14.758570, -0.575837>,  <16.160519, 14.135185, -0.506357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408491, 14.758570, -0.575837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.363472, 14.628567, -0.951433>,  <16.336460, 14.550565, -1.176791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.363472, 14.628567, -0.951433>,  <16.408491, 14.758570, -0.575837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.363472, 14.628567, -0.951433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563981, 0.798921, -0.208928,
		0.818082, 0.506059, -0.273213,
		-0.112545, -0.325007, -0.938991,
		16.329708, 14.531064, -1.233130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822264, 15.161168, -1.051101>,  <16.408491, 14.758570, -0.575837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822264, 15.161168, -1.051101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509434, 15.000069, -1.241324>,  <16.321735, 14.903409, -1.355458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509434, 15.000069, -1.241324>,  <16.822264, 15.161168, -1.051101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509434, 15.000069, -1.241324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342903, 0.915308, -0.211255,
		0.520364, -0.002147, -0.853942,
		-0.782073, -0.402749, -0.475557,
		16.274813, 14.879244, -1.383991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851583, 15.553496, -1.630631>,  <16.822264, 15.161168, -1.051101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.851583, 15.553496, -1.630631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.507893, 15.386696, -1.512082>,  <16.301678, 15.286615, -1.440953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.507893, 15.386696, -1.512082>,  <16.851583, 15.553496, -1.630631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507893, 15.386696, -1.512082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476596, 0.863035, -0.167414,
		-0.185968, -0.285097, -0.940285,
		-0.859228, -0.417002, 0.296373,
		16.250124, 15.261595, -1.423170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290318, 15.849904, -2.100185>,  <16.851583, 15.553496, -1.630631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290318, 15.849904, -2.100185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.135288, 15.691032, -1.767430>,  <16.042271, 15.595710, -1.567776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.135288, 15.691032, -1.767430>,  <16.290318, 15.849904, -2.100185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.135288, 15.691032, -1.767430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645480, 0.761199, 0.062704,
		-0.658137, -0.512665, -0.551390,
		-0.387571, -0.397178, 0.831888,
		16.019016, 15.571878, -1.517863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531235, 15.614888, -2.181652>,  <16.290318, 15.849904, -2.100185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531235, 15.614888, -2.181652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657607, 15.766758, -1.833851>,  <15.733430, 15.857880, -1.625170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.657607, 15.766758, -1.833851>,  <15.531235, 15.614888, -2.181652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657607, 15.766758, -1.833851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714960, 0.697723, -0.044889,
		-0.623715, -0.607478, 0.491884,
		0.315930, 0.379675, 0.869503,
		15.752386, 15.880660, -1.573000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036312, 15.659033, -1.765579>,  <15.531235, 15.614888, -2.181652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036312, 15.659033, -1.765579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285272, 15.946987, -1.642691>,  <15.434648, 16.119761, -1.568958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285272, 15.946987, -1.642691>,  <15.036312, 15.659033, -1.765579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285272, 15.946987, -1.642691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732396, 0.674104, -0.095813,
		-0.276073, -0.165373, 0.946803,
		0.622398, 0.719886, 0.307221,
		15.471992, 16.162952, -1.550524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837703, 16.065784, -1.115731>,  <15.036312, 15.659033, -1.765579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.837703, 16.065784, -1.115731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060140, 16.300388, -1.351278>,  <15.193602, 16.441151, -1.492606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060140, 16.300388, -1.351278>,  <14.837703, 16.065784, -1.115731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060140, 16.300388, -1.351278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739114, 0.673012, -0.027659,
		0.380094, 0.450622, 0.807756,
		0.556093, 0.586510, -0.588868,
		15.226968, 16.476341, -1.527938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238194, 16.531343, -1.337606>,  <14.837703, 16.065784, -1.115731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238194, 16.531343, -1.337606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573781, 16.637287, -1.147456>,  <14.775133, 16.700853, -1.033366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573781, 16.637287, -1.147456>,  <14.238194, 16.531343, -1.337606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573781, 16.637287, -1.147456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020206, 0.888121, -0.459165,
		-0.543805, 0.375619, 0.750457,
		0.838968, 0.264860, 0.475375,
		14.825472, 16.716745, -1.004844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006584, 17.154394, -1.532145>,  <14.238194, 16.531343, -1.337606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006584, 17.154394, -1.532145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359624, 17.146767, -1.344250>,  <14.571448, 17.142191, -1.231513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359624, 17.146767, -1.344250>,  <14.006584, 17.154394, -1.532145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359624, 17.146767, -1.344250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040488, 0.998548, -0.035541,
		-0.468378, 0.050387, 0.882090,
		0.882600, -0.019067, 0.469738,
		14.624404, 17.141047, -1.203328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024114, 17.488487, -0.800083>,  <14.006584, 17.154394, -1.532145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024114, 17.488487, -0.800083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361300, 17.515289, -1.013594>,  <14.563613, 17.531370, -1.141700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361300, 17.515289, -1.013594>,  <14.024114, 17.488487, -0.800083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361300, 17.515289, -1.013594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048540, 0.997639, 0.048581,
		0.535771, -0.015042, 0.844229,
		0.842967, 0.067007, -0.533776,
		14.614191, 17.535391, -1.173726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468462, 18.076561, -0.493210>,  <14.024114, 17.488487, -0.800083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468462, 18.076561, -0.493210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578843, 18.019714, -0.873453>,  <14.645072, 17.985607, -1.101598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578843, 18.019714, -0.873453>,  <14.468462, 18.076561, -0.493210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578843, 18.019714, -0.873453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109373, 0.987228, -0.115839,
		0.954928, -0.072004, 0.287971,
		0.275952, -0.142114, -0.950607,
		14.661629, 17.977079, -1.158635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149220, 18.222479, -0.632989>,  <14.468462, 18.076561, -0.493210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149220, 18.222479, -0.632989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968310, 18.275318, -0.985805>,  <14.859764, 18.307022, -1.197495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968310, 18.275318, -0.985805>,  <15.149220, 18.222479, -0.632989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968310, 18.275318, -0.985805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258249, 0.966001, 0.012253,
		0.853671, -0.222245, -0.471012,
		-0.452275, 0.132098, -0.882042,
		14.832628, 18.314947, -1.250418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545598, 18.836983, -0.882381>,  <15.149220, 18.222479, -0.632989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545598, 18.836983, -0.882381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224069, 18.773842, -1.111798>,  <15.031151, 18.735958, -1.249448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.224069, 18.773842, -1.111798>,  <15.545598, 18.836983, -0.882381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224069, 18.773842, -1.111798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130140, 0.987459, -0.089378,
		0.580458, 0.002797, -0.814285,
		-0.803823, -0.157851, -0.573543,
		14.982922, 18.726486, -1.283861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534271, 19.276909, -1.566180>,  <15.545598, 18.836983, -0.882381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534271, 19.276909, -1.566180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161204, 19.196026, -1.446687>,  <14.937364, 19.147495, -1.374990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161204, 19.196026, -1.446687>,  <15.534271, 19.276909, -1.566180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161204, 19.196026, -1.446687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243122, 0.964139, -0.106431,
		-0.266500, -0.171893, -0.948383,
		-0.932668, -0.202209, 0.298734,
		14.881404, 19.135363, -1.357066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979920, 19.513103, -2.029620>,  <15.534271, 19.276909, -1.566180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979920, 19.513103, -2.029620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.830344, 19.523026, -1.658772>,  <14.740599, 19.528978, -1.436262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.830344, 19.523026, -1.658772>,  <14.979920, 19.513103, -2.029620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830344, 19.523026, -1.658772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250681, 0.959731, -0.126787,
		-0.892932, -0.279823, -0.352664,
		-0.373941, 0.024806, 0.927121,
		14.718162, 19.530468, -1.380635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371563, 19.903938, -2.108931>,  <14.979920, 19.513103, -2.029620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371563, 19.903938, -2.108931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477237, 19.935486, -1.724434>,  <14.540641, 19.954414, -1.493736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477237, 19.935486, -1.724434>,  <14.371563, 19.903938, -2.108931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477237, 19.935486, -1.724434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246101, 0.969171, -0.011882,
		-0.932545, -0.233424, 0.275450,
		0.264185, 0.078869, 0.961242,
		14.556492, 19.959146, -1.436062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.978315, 20.490540, 13.561025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.098785, 20.871262, 13.584220>,  <23.171066, 21.099695, 13.598137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.098785, 20.871262, 13.584220>,  <22.978315, 20.490540, 13.561025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098785, 20.871262, 13.584220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162633, 0.111191, -0.980401,
		-0.939598, 0.285841, 0.188283,
		0.301174, 0.951804, 0.057987,
		23.189138, 21.156803, 13.601616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.455467, 21.059523, 13.300241>,  <22.978315, 20.490540, 13.561025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.455467, 21.059523, 13.300241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.839043, 21.166073, 13.261293>,  <23.069187, 21.230003, 13.237926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.839043, 21.166073, 13.261293>,  <22.455467, 21.059523, 13.300241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.839043, 21.166073, 13.261293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164102, 0.241126, -0.956519,
		-0.231313, 0.933222, 0.274937,
		0.958939, 0.266373, -0.097368,
		23.126724, 21.245985, 13.232083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.444696, 21.663233, 12.970894>,  <22.455467, 21.059523, 13.300241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.444696, 21.663233, 12.970894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.828613, 21.555195, 12.940311>,  <23.058964, 21.490372, 12.921962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.828613, 21.555195, 12.940311>,  <22.444696, 21.663233, 12.970894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.828613, 21.555195, 12.940311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026146, 0.185165, -0.982360,
		0.279485, 0.944862, 0.170658,
		0.959794, -0.270093, -0.076455,
		23.116552, 21.474167, 12.917375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.824493, 22.237909, 12.549052>,  <22.444696, 21.663233, 12.970894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.824493, 22.237909, 12.549052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.034016, 21.898384, 12.520355>,  <23.159729, 21.694670, 12.503137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.034016, 21.898384, 12.520355>,  <22.824493, 22.237909, 12.549052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034016, 21.898384, 12.520355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004743, 0.087127, -0.996186,
		0.851825, 0.521467, 0.049664,
		0.523806, -0.848811, -0.071743,
		23.191156, 21.643742, 12.498833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340975, 22.353312, 12.054111>,  <22.824493, 22.237909, 12.549052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340975, 22.353312, 12.054111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.330742, 21.954304, 12.080354>,  <23.324602, 21.714899, 12.096100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.330742, 21.954304, 12.080354>,  <23.340975, 22.353312, 12.054111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.330742, 21.954304, 12.080354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157611, -0.060783, -0.985629,
		0.987170, -0.035553, -0.155665,
		-0.025580, -0.997518, 0.065607,
		23.323069, 21.655048, 12.100036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904253, 22.094923, 11.661555>,  <23.340975, 22.353312, 12.054111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904253, 22.094923, 11.661555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.625713, 21.808609, 11.682529>,  <23.458590, 21.636822, 11.695114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.625713, 21.808609, 11.682529>,  <23.904253, 22.094923, 11.661555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.625713, 21.808609, 11.682529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018592, -0.091028, -0.995675,
		0.717460, -0.692364, 0.076695,
		-0.696351, -0.715783, 0.052436,
		23.416807, 21.593874, 11.698260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133398, 21.640480, 11.201952>,  <23.904253, 22.094923, 11.661555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133398, 21.640480, 11.201952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.753086, 21.531120, 11.260294>,  <23.524899, 21.465504, 11.295299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.753086, 21.531120, 11.260294>,  <24.133398, 21.640480, 11.201952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.753086, 21.531120, 11.260294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136756, -0.052154, -0.989231,
		0.278065, -0.960485, 0.012197,
		-0.950777, -0.273402, 0.145854,
		23.467854, 21.449100, 11.304050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072546, 21.236650, 10.639997>,  <24.133398, 21.640480, 11.201952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072546, 21.236650, 10.639997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.690807, 21.273899, 10.753523>,  <23.461763, 21.296247, 10.821638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.690807, 21.273899, 10.753523>,  <24.072546, 21.236650, 10.639997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690807, 21.273899, 10.753523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275134, 0.095850, -0.956616,
		-0.116285, -0.991030, -0.065853,
		-0.954347, 0.093121, 0.283813,
		23.404503, 21.301836, 10.838667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.617220, 20.709995, 10.327331>,  <24.072546, 21.236650, 10.639997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.617220, 20.709995, 10.327331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.390854, 21.022675, 10.432162>,  <23.255035, 21.210283, 10.495062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.390854, 21.022675, 10.432162>,  <23.617220, 20.709995, 10.327331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390854, 21.022675, 10.432162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313672, 0.089837, -0.945272,
		-0.762464, -0.617149, 0.194358,
		-0.565913, 0.781700, 0.262080,
		23.221079, 21.257185, 10.510786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.925594, 20.575235, 10.133500>,  <23.617220, 20.709995, 10.327331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.925594, 20.575235, 10.133500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.941296, 20.974918, 10.136020>,  <22.950716, 21.214729, 10.137531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.941296, 20.974918, 10.136020>,  <22.925594, 20.575235, 10.133500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.941296, 20.974918, 10.136020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223742, 0.014932, -0.974534,
		-0.973858, 0.036845, 0.224151,
		0.039253, 0.999210, 0.006298,
		22.953072, 21.274681, 10.137909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309326, 20.843170, 9.802205>,  <22.925594, 20.575235, 10.133500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309326, 20.843170, 9.802205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.542080, 21.164318, 9.750342>,  <22.681732, 21.357006, 9.719225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.542080, 21.164318, 9.750342>,  <22.309326, 20.843170, 9.802205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.542080, 21.164318, 9.750342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355222, 0.107491, -0.928581,
		-0.731593, 0.586383, 0.347744,
		0.581884, 0.802870, -0.129656,
		22.716644, 21.405180, 9.711446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.876955, 21.342712, 9.622378>,  <22.309326, 20.843170, 9.802205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.876955, 21.342712, 9.622378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.232029, 21.473232, 9.492427>,  <22.445072, 21.551544, 9.414455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.232029, 21.473232, 9.492427>,  <21.876955, 21.342712, 9.622378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.232029, 21.473232, 9.492427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373913, 0.099069, -0.922158,
		-0.268714, 0.940061, 0.209949,
		0.887684, 0.326299, -0.324879,
		22.498335, 21.571121, 9.394963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732265, 21.956852, 9.192163>,  <21.876955, 21.342712, 9.622378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732265, 21.956852, 9.192163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.089142, 21.815590, 9.079536>,  <22.303267, 21.730833, 9.011961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.089142, 21.815590, 9.079536>,  <21.732265, 21.956852, 9.192163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.089142, 21.815590, 9.079536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280399, 0.055632, -0.958270,
		0.354082, 0.933909, -0.049389,
		0.892190, -0.353154, -0.281565,
		22.356798, 21.709644, 8.995067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.805109, 22.284510, 8.604807>,  <21.732265, 21.956852, 9.192163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.805109, 22.284510, 8.604807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.105759, 22.021412, 8.585067>,  <22.286148, 21.863554, 8.573223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.105759, 22.021412, 8.585067>,  <21.805109, 22.284510, 8.604807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.105759, 22.021412, 8.585067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194986, -0.150095, -0.969253,
		0.630114, 0.738135, -0.241066,
		0.751623, -0.657745, -0.049349,
		22.331245, 21.824089, 8.570262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.159882, 22.465279, 7.986234>,  <21.805109, 22.284510, 8.604807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.159882, 22.465279, 7.986234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.267933, 22.091045, 8.077199>,  <22.332764, 21.866505, 8.131778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.267933, 22.091045, 8.077199>,  <22.159882, 22.465279, 7.986234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.267933, 22.091045, 8.077199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037125, -0.225896, -0.973444,
		0.962109, 0.271397, -0.026287,
		0.270128, -0.935583, 0.227412,
		22.348970, 21.810371, 8.145423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.751822, 22.306875, 7.584976>,  <22.159882, 22.465279, 7.986234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.751822, 22.306875, 7.584976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.589828, 21.961239, 7.704535>,  <22.492632, 21.753857, 7.776270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.589828, 21.961239, 7.704535>,  <22.751822, 22.306875, 7.584976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.589828, 21.961239, 7.704535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046535, -0.307002, -0.950570,
		0.913140, -0.398873, 0.084120,
		-0.404982, -0.864089, 0.298897,
		22.468334, 21.702013, 7.794204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923183, 21.832150, 7.057313>,  <22.751822, 22.306875, 7.584976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923183, 21.832150, 7.057313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.668407, 21.594875, 7.254265>,  <22.515541, 21.452511, 7.372436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.668407, 21.594875, 7.254265>,  <22.923183, 21.832150, 7.057313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.668407, 21.594875, 7.254265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108237, -0.563561, -0.818953,
		0.763276, -0.574919, 0.294751,
		-0.636941, -0.593184, 0.492380,
		22.477325, 21.416920, 7.401979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.153702, 21.127558, 6.949342>,  <22.923183, 21.832150, 7.057313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.153702, 21.127558, 6.949342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.761486, 21.110001, 7.025886>,  <22.526157, 21.099466, 7.071812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.761486, 21.110001, 7.025886>,  <23.153702, 21.127558, 6.949342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.761486, 21.110001, 7.025886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138036, -0.538972, -0.830936,
		0.139611, -0.841179, 0.522424,
		-0.980538, -0.043894, 0.191359,
		22.467325, 21.096832, 7.083293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.961597, 20.550961, 6.844923>,  <23.153702, 21.127558, 6.949342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.961597, 20.550961, 6.844923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.620777, 20.753464, 6.791682>,  <22.416285, 20.874966, 6.759738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.620777, 20.753464, 6.791682>,  <22.961597, 20.550961, 6.844923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.620777, 20.753464, 6.791682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119579, -0.435791, -0.892069,
		-0.509622, -0.744170, 0.431853,
		-0.852049, 0.506259, -0.133102,
		22.365162, 20.905340, 6.751752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.457201, 20.058466, 6.335510>,  <22.961597, 20.550961, 6.844923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.457201, 20.058466, 6.335510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.250637, 20.400959, 6.340951>,  <22.126698, 20.606455, 6.344215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.250637, 20.400959, 6.340951>,  <22.457201, 20.058466, 6.335510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250637, 20.400959, 6.340951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347217, -0.194841, -0.917321,
		-0.782790, -0.478437, 0.397917,
		-0.516411, 0.856233, 0.013602,
		22.095715, 20.657829, 6.345032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739780, 19.863359, 6.061227>,  <22.457201, 20.058466, 6.335510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739780, 19.863359, 6.061227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.780598, 20.258610, 6.015273>,  <21.805088, 20.495760, 5.987700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.780598, 20.258610, 6.015273>,  <21.739780, 19.863359, 6.061227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.780598, 20.258610, 6.015273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410467, -0.063375, -0.909671,
		-0.906148, 0.139983, 0.399125,
		0.102043, 0.988124, -0.114885,
		21.811211, 20.555046, 5.980807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071745, 20.158009, 5.959489>,  <21.739780, 19.863359, 6.061227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071745, 20.158009, 5.959489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.359505, 20.382675, 5.796029>,  <21.532160, 20.517475, 5.697953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.359505, 20.382675, 5.796029>,  <21.071745, 20.158009, 5.959489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359505, 20.382675, 5.796029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426595, -0.107025, -0.898088,
		-0.548162, 0.820412, 0.162611,
		0.719399, 0.561666, -0.408651,
		21.575325, 20.551174, 5.673434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699598, 19.727615, 6.477628>,  <21.071745, 20.158009, 5.959489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699598, 19.727615, 6.477628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.495869, 19.435089, 6.296183>,  <20.373631, 19.259573, 6.187315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.495869, 19.435089, 6.296183>,  <20.699598, 19.727615, 6.477628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.495869, 19.435089, 6.296183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306437, -0.338435, 0.889696,
		-0.804168, 0.592147, -0.051729,
		-0.509324, -0.731316, -0.453614,
		20.343071, 19.215694, 6.160098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022688, 19.739372, 6.774609>,  <20.699598, 19.727615, 6.477628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022688, 19.739372, 6.774609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.069195, 19.375679, 6.614720>,  <20.097099, 19.157463, 6.518787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.069195, 19.375679, 6.614720>,  <20.022688, 19.739372, 6.774609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069195, 19.375679, 6.614720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247109, -0.416278, 0.875014,
		-0.961987, -0.002962, -0.273080,
		0.116269, -0.909233, -0.399722,
		20.104076, 19.102909, 6.494804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492706, 19.366621, 7.025910>,  <20.022688, 19.739372, 6.774609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492706, 19.366621, 7.025910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.771671, 19.103157, 6.912927>,  <19.939051, 18.945078, 6.845136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.771671, 19.103157, 6.912927>,  <19.492706, 19.366621, 7.025910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771671, 19.103157, 6.912927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108883, -0.486933, 0.866626,
		-0.708351, -0.573640, -0.411310,
		0.697412, -0.658660, -0.282460,
		19.980894, 18.905560, 6.828189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226179, 18.725195, 7.287792>,  <19.492706, 19.366621, 7.025910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226179, 18.725195, 7.287792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.611385, 18.656937, 7.204383>,  <19.842508, 18.615982, 7.154337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.611385, 18.656937, 7.204383>,  <19.226179, 18.725195, 7.287792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611385, 18.656937, 7.204383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132766, -0.372914, 0.918318,
		-0.234466, -0.912040, -0.336466,
		0.963015, -0.170643, -0.208523,
		19.900290, 18.605743, 7.141826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.439182, 18.017078, 7.505541>,  <19.226179, 18.725195, 7.287792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.439182, 18.017078, 7.505541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.790642, 18.206837, 7.483924>,  <20.001518, 18.320692, 7.470953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.790642, 18.206837, 7.483924>,  <19.439182, 18.017078, 7.505541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.790642, 18.206837, 7.483924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214526, -0.291123, 0.932323,
		0.426559, -0.830779, -0.357566,
		0.878650, 0.474398, -0.054043,
		20.054237, 18.349155, 7.467711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920036, 17.463430, 7.637309>,  <19.439182, 18.017078, 7.505541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920036, 17.463430, 7.637309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.070030, 17.826237, 7.713945>,  <20.160027, 18.043921, 7.759927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.070030, 17.826237, 7.713945>,  <19.920036, 17.463430, 7.637309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070030, 17.826237, 7.713945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207448, -0.283532, 0.936256,
		0.903521, -0.311338, -0.294480,
		0.374986, 0.907016, 0.191591,
		20.182526, 18.098341, 7.771422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552954, 17.378824, 8.046335>,  <19.920036, 17.463430, 7.637309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552954, 17.378824, 8.046335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.486248, 17.770561, 8.092073>,  <20.446224, 18.005604, 8.119516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.486248, 17.770561, 8.092073>,  <20.552954, 17.378824, 8.046335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.486248, 17.770561, 8.092073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141657, -0.090970, 0.985727,
		0.975768, 0.180583, -0.123560,
		-0.166765, 0.979344, 0.114346,
		20.436218, 18.064363, 8.126377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.094337, 17.595264, 8.417348>,  <20.552954, 17.378824, 8.046335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.094337, 17.595264, 8.417348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.802464, 17.858780, 8.490622>,  <20.627338, 18.016890, 8.534586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.802464, 17.858780, 8.490622>,  <21.094337, 17.595264, 8.417348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802464, 17.858780, 8.490622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197117, -0.053864, 0.978899,
		0.654753, 0.750399, -0.090554,
		-0.729687, 0.658787, 0.183183,
		20.583557, 18.056416, 8.545577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313023, 17.987867, 8.985180>,  <21.094337, 17.595264, 8.417348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313023, 17.987867, 8.985180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.920551, 18.060730, 9.010828>,  <20.685068, 18.104448, 9.026217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.920551, 18.060730, 9.010828>,  <21.313023, 17.987867, 8.985180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920551, 18.060730, 9.010828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074665, 0.051619, 0.995872,
		0.178095, 0.981914, -0.064248,
		-0.981177, 0.182157, 0.064121,
		20.626198, 18.115377, 9.030065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317068, 18.494287, 9.426043>,  <21.313023, 17.987867, 8.985180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317068, 18.494287, 9.426043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.941296, 18.358116, 9.410151>,  <20.715832, 18.276413, 9.400617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.941296, 18.358116, 9.410151>,  <21.317068, 18.494287, 9.426043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941296, 18.358116, 9.410151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072528, 0.084170, 0.993809,
		-0.334976, 0.936496, -0.103762,
		-0.939431, -0.340428, -0.039727,
		20.659466, 18.255987, 9.398233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967760, 18.973928, 9.798426>,  <21.317068, 18.494287, 9.426043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967760, 18.973928, 9.798426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.732227, 18.650925, 9.812316>,  <20.590908, 18.457123, 9.820650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.732227, 18.650925, 9.812316>,  <20.967760, 18.973928, 9.798426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732227, 18.650925, 9.812316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080874, 0.101612, 0.991531,
		-0.804199, 0.581037, -0.125139,
		-0.588832, -0.807509, 0.034726,
		20.555578, 18.408672, 9.822734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373884, 19.197762, 10.197909>,  <20.967760, 18.973928, 9.798426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373884, 19.197762, 10.197909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.410507, 18.799572, 10.208084>,  <20.432482, 18.560658, 10.214189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.410507, 18.799572, 10.208084>,  <20.373884, 19.197762, 10.197909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410507, 18.799572, 10.208084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040839, 0.029276, 0.998737,
		-0.994962, -0.090404, 0.043335,
		0.091558, -0.995475, 0.025437,
		20.437975, 18.500929, 10.215715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952183, 18.983047, 10.739796>,  <20.373884, 19.197762, 10.197909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952183, 18.983047, 10.739796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.232273, 18.705002, 10.674682>,  <20.400328, 18.538174, 10.635613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.232273, 18.705002, 10.674682>,  <19.952183, 18.983047, 10.739796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.232273, 18.705002, 10.674682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219848, -0.006984, 0.975509,
		-0.679227, -0.718865, 0.147929,
		0.700226, -0.695114, -0.162785,
		20.442341, 18.496468, 10.625846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.790260, 18.554043, 11.265596>,  <19.952183, 18.983047, 10.739796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.790260, 18.554043, 11.265596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.163898, 18.458881, 11.159114>,  <20.388081, 18.401785, 11.095224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.163898, 18.458881, 11.159114>,  <19.790260, 18.554043, 11.265596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163898, 18.458881, 11.159114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199775, -0.269680, 0.941999,
		-0.295900, -0.933098, -0.204378,
		0.934095, -0.237908, -0.266208,
		20.444128, 18.387510, 11.079252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998541, 17.898838, 11.642977>,  <19.790260, 18.554043, 11.265596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998541, 17.898838, 11.642977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.318333, 18.116352, 11.540894>,  <20.510208, 18.246861, 11.479644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.318333, 18.116352, 11.540894>,  <19.998541, 17.898838, 11.642977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318333, 18.116352, 11.540894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341516, -0.061959, 0.937831,
		0.494166, -0.836934, -0.235247,
		0.799479, 0.543785, -0.255209,
		20.558176, 18.279488, 11.464331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440357, 17.950230, 12.170816>,  <19.998541, 17.898838, 11.642977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440357, 17.950230, 12.170816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.646877, 18.242172, 11.991596>,  <20.770788, 18.417337, 11.884064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.646877, 18.242172, 11.991596>,  <20.440357, 17.950230, 12.170816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646877, 18.242172, 11.991596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405065, 0.252841, 0.878632,
		0.754559, -0.635126, -0.165098,
		0.516298, 0.729854, -0.448050,
		20.801767, 18.461128, 11.857182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190987, 17.894323, 12.533142>,  <20.440357, 17.950230, 12.170816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190987, 17.894323, 12.533142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.139786, 18.234989, 12.329857>,  <21.109066, 18.439388, 12.207886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.139786, 18.234989, 12.329857>,  <21.190987, 17.894323, 12.533142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139786, 18.234989, 12.329857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354511, 0.517865, 0.778549,
		0.926249, -0.080511, -0.368213,
		-0.128003, 0.851666, -0.508213,
		21.101385, 18.490488, 12.177393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852324, 18.230829, 12.494102>,  <21.190987, 17.894323, 12.533142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852324, 18.230829, 12.494102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.559292, 18.501598, 12.465528>,  <21.383472, 18.664061, 12.448382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.559292, 18.501598, 12.465528>,  <21.852324, 18.230829, 12.494102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559292, 18.501598, 12.465528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492273, 0.599362, 0.631215,
		0.470101, 0.427248, -0.772311,
		-0.732579, 0.676923, -0.071438,
		21.339518, 18.704676, 12.444097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<22.207720, 19.190643, 12.576067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.814232, 19.182884, 12.647526>,  <21.578138, 19.178228, 12.690401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.814232, 19.182884, 12.647526>,  <22.207720, 19.190643, 12.576067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814232, 19.182884, 12.647526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147783, 0.478268, 0.865690,
		-0.102233, 0.877999, -0.467617,
		-0.983722, -0.019397, 0.178648,
		21.519115, 19.177065, 12.701120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058849, 19.844666, 12.741400>,  <22.207720, 19.190643, 12.576067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058849, 19.844666, 12.741400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.747883, 19.646057, 12.895848>,  <21.561302, 19.526892, 12.988517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.747883, 19.646057, 12.895848>,  <22.058849, 19.844666, 12.741400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747883, 19.646057, 12.895848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082979, 0.527550, 0.845462,
		-0.623488, 0.689316, -0.368925,
		-0.777417, -0.496522, 0.386120,
		21.514658, 19.497101, 13.011684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742987, 20.293476, 13.100303>,  <22.058849, 19.844666, 12.741400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742987, 20.293476, 13.100303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.580688, 19.967350, 13.265532>,  <21.483311, 19.771673, 13.364671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.580688, 19.967350, 13.265532>,  <21.742987, 20.293476, 13.100303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.580688, 19.967350, 13.265532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034351, 0.465231, 0.884522,
		-0.913341, 0.344700, -0.216772,
		-0.405744, -0.815317, 0.413074,
		21.458965, 19.722755, 13.389455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.128271, 20.491920, 13.540592>,  <21.742987, 20.293476, 13.100303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.128271, 20.491920, 13.540592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.217949, 20.131725, 13.689649>,  <21.271755, 19.915609, 13.779082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.217949, 20.131725, 13.689649>,  <21.128271, 20.491920, 13.540592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217949, 20.131725, 13.689649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002838, 0.381771, 0.924253,
		-0.974540, -0.208269, 0.083035,
		0.224193, -0.900486, 0.372642,
		21.285208, 19.861580, 13.801441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834637, 20.435684, 14.139042>,  <21.128271, 20.491920, 13.540592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834637, 20.435684, 14.139042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.103836, 20.148689, 14.210919>,  <21.265356, 19.976492, 14.254045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.103836, 20.148689, 14.210919>,  <20.834637, 20.435684, 14.139042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103836, 20.148689, 14.210919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010255, 0.251974, 0.967680,
		-0.739575, -0.649402, 0.176935,
		0.672996, -0.717486, 0.179694,
		21.305735, 19.933443, 14.264828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578636, 20.048857, 14.721214>,  <20.834637, 20.435684, 14.139042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578636, 20.048857, 14.721214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.973225, 19.991039, 14.690267>,  <21.209978, 19.956348, 14.671699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.973225, 19.991039, 14.690267>,  <20.578636, 20.048857, 14.721214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.973225, 19.991039, 14.690267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087327, 0.063861, 0.994131,
		-0.138756, -0.987435, 0.075620,
		0.986469, -0.144546, -0.077368,
		21.269165, 19.947676, 14.667056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.690472, 19.834631, 15.282610>,  <20.578636, 20.048857, 14.721214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.690472, 19.834631, 15.282610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.074833, 19.882675, 15.182820>,  <21.305450, 19.911503, 15.122947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.074833, 19.882675, 15.182820>,  <20.690472, 19.834631, 15.282610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.074833, 19.882675, 15.182820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254213, -0.025647, 0.966808,
		0.109730, -0.992429, -0.055179,
		0.960903, 0.120115, -0.249474,
		21.363104, 19.918709, 15.107978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004782, 19.350973, 15.773434>,  <20.690472, 19.834631, 15.282610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004782, 19.350973, 15.773434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.296967, 19.605301, 15.673707>,  <21.472277, 19.757898, 15.613871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.296967, 19.605301, 15.673707>,  <21.004782, 19.350973, 15.773434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296967, 19.605301, 15.673707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268454, 0.068360, 0.960864,
		0.627980, -0.768804, -0.120754,
		0.730461, 0.635821, -0.249317,
		21.516106, 19.796047, 15.598912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648191, 19.114985, 15.991888>,  <21.004782, 19.350973, 15.773434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648191, 19.114985, 15.991888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.704166, 19.510460, 15.970302>,  <21.737751, 19.747746, 15.957350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.704166, 19.510460, 15.970302>,  <21.648191, 19.114985, 15.991888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704166, 19.510460, 15.970302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347470, 0.002001, 0.937689,
		0.927190, -0.149971, -0.343260,
		0.139939, 0.988688, -0.053966,
		21.746149, 19.807066, 15.954112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.277178, 19.189013, 16.235361>,  <21.648191, 19.114985, 15.991888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.277178, 19.189013, 16.235361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.118397, 19.554989, 16.264530>,  <22.023129, 19.774574, 16.282032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.118397, 19.554989, 16.264530>,  <22.277178, 19.189013, 16.235361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.118397, 19.554989, 16.264530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509334, 0.153489, 0.846770,
		0.763550, 0.373268, -0.526937,
		-0.396951, 0.914938, 0.072921,
		21.999311, 19.829470, 16.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813921, 19.583828, 16.351007>,  <22.277178, 19.189013, 16.235361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813921, 19.583828, 16.351007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.510754, 19.805550, 16.488592>,  <22.328854, 19.938581, 16.571142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.510754, 19.805550, 16.488592>,  <22.813921, 19.583828, 16.351007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.510754, 19.805550, 16.488592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488939, 0.133635, 0.862021,
		0.431856, 0.821517, -0.372305,
		-0.757918, 0.554303, 0.343960,
		22.283379, 19.971840, 16.591780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.162952, 20.145554, 16.613150>,  <22.813921, 19.583828, 16.351007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.162952, 20.145554, 16.613150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.801311, 20.124596, 16.782787>,  <22.584328, 20.112020, 16.884571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.801311, 20.124596, 16.782787>,  <23.162952, 20.145554, 16.613150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801311, 20.124596, 16.782787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397372, 0.261907, 0.879488,
		-0.157156, 0.963670, -0.215970,
		-0.904100, -0.052396, 0.424096,
		22.530081, 20.108877, 16.910017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.167488, 20.693186, 17.049343>,  <23.162952, 20.145554, 16.613150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.167488, 20.693186, 17.049343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.808792, 20.565716, 17.172176>,  <22.593575, 20.489233, 17.245876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.808792, 20.565716, 17.172176>,  <23.167488, 20.693186, 17.049343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.808792, 20.565716, 17.172176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241906, 0.228089, 0.943110,
		-0.370589, 0.920012, -0.127447,
		-0.896742, -0.318676, 0.307084,
		22.539770, 20.470114, 17.264301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815947, 21.243998, 17.429808>,  <23.167488, 20.693186, 17.049343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815947, 21.243998, 17.429808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.651394, 20.902496, 17.557476>,  <22.552662, 20.697596, 17.634077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.651394, 20.902496, 17.557476>,  <22.815947, 21.243998, 17.429808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.651394, 20.902496, 17.557476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106790, 0.302615, 0.947111,
		-0.905186, 0.423708, -0.033318,
		-0.411382, -0.853754, 0.319171,
		22.527979, 20.646370, 17.653227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264463, 21.386366, 17.919880>,  <22.815947, 21.243998, 17.429808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264463, 21.386366, 17.919880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.406464, 21.019192, 17.990725>,  <22.491663, 20.798887, 18.033232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.406464, 21.019192, 17.990725>,  <22.264463, 21.386366, 17.919880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406464, 21.019192, 17.990725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118893, 0.232241, 0.965365,
		-0.927276, -0.321647, 0.191582,
		0.354999, -0.917937, 0.177109,
		22.512964, 20.743811, 18.043858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978184, 21.178202, 18.544743>,  <22.264463, 21.386366, 17.919880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978184, 21.178202, 18.544743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.286690, 20.924149, 18.527967>,  <22.471794, 20.771717, 18.517902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.286690, 20.924149, 18.527967>,  <21.978184, 21.178202, 18.544743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.286690, 20.924149, 18.527967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123352, 0.084500, 0.988759,
		-0.624448, -0.767768, 0.143517,
		0.771265, -0.635131, -0.041940,
		22.518070, 20.733610, 18.515385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.833355, 20.773214, 19.063299>,  <21.978184, 21.178202, 18.544743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.833355, 20.773214, 19.063299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.223007, 20.712967, 18.995909>,  <22.456799, 20.676819, 18.955475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.223007, 20.712967, 18.995909>,  <21.833355, 20.773214, 19.063299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.223007, 20.712967, 18.995909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178581, 0.056197, 0.982319,
		-0.138489, -0.986993, 0.081641,
		0.974130, -0.150620, -0.168476,
		22.515245, 20.667780, 18.945366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.019863, 20.167902, 19.380583>,  <21.833355, 20.773214, 19.063299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.019863, 20.167902, 19.380583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.348274, 20.390682, 19.330431>,  <22.545321, 20.524349, 19.300339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.348274, 20.390682, 19.330431>,  <22.019863, 20.167902, 19.380583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348274, 20.390682, 19.330431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225654, -0.114864, 0.967412,
		0.524398, -0.822565, -0.219984,
		0.821028, 0.556949, -0.125380,
		22.594584, 20.557768, 19.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.477779, 19.775524, 19.791437>,  <22.019863, 20.167902, 19.380583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.477779, 19.775524, 19.791437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.638908, 20.135712, 19.725842>,  <22.735586, 20.351824, 19.686483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.638908, 20.135712, 19.725842>,  <22.477779, 19.775524, 19.791437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.638908, 20.135712, 19.725842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423536, -0.024553, 0.905547,
		0.811388, -0.434230, -0.391271,
		0.402823, 0.900467, -0.163990,
		22.759756, 20.405851, 19.676645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.290859, 19.788059, 20.034977>,  <22.477779, 19.775524, 19.791437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.290859, 19.788059, 20.034977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.162346, 20.166573, 20.020407>,  <23.085238, 20.393681, 20.011665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.162346, 20.166573, 20.020407>,  <23.290859, 19.788059, 20.034977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.162346, 20.166573, 20.020407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303462, 0.139316, 0.942604,
		0.897044, 0.291790, -0.331920,
		-0.321284, 0.946282, -0.036425,
		23.065960, 20.450457, 20.009480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.744429, 20.198917, 20.413706>,  <23.290859, 19.788059, 20.034977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.744429, 20.198917, 20.413706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.399082, 20.400333, 20.400772>,  <23.191874, 20.521183, 20.393013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.399082, 20.400333, 20.400772>,  <23.744429, 20.198917, 20.413706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.399082, 20.400333, 20.400772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060983, 0.167742, 0.983943,
		0.500876, 0.847533, -0.175531,
		-0.863368, 0.503538, -0.032333,
		23.140072, 20.551395, 20.391073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902273, 20.837231, 20.672699>,  <23.744429, 20.198917, 20.413706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902273, 20.837231, 20.672699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.507149, 20.783058, 20.703392>,  <23.270075, 20.750555, 20.721807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.507149, 20.783058, 20.703392>,  <23.902273, 20.837231, 20.672699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.507149, 20.783058, 20.703392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072045, 0.039186, 0.996631,
		-0.137984, 0.990011, -0.028951,
		-0.987811, -0.135433, 0.076732,
		23.210806, 20.742428, 20.726412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.705305, 21.314083, 21.175224>,  <23.902273, 20.837231, 20.672699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.705305, 21.314083, 21.175224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.473335, 20.989834, 21.142794>,  <23.334152, 20.795284, 21.123335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.473335, 20.989834, 21.142794>,  <23.705305, 21.314083, 21.175224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473335, 20.989834, 21.142794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056166, -0.139066, 0.988689,
		-0.812730, 0.568813, 0.126178,
		-0.579926, -0.810625, -0.081076,
		23.299356, 20.746647, 21.118471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.131481, 21.466324, 21.703720>,  <23.705305, 21.314083, 21.175224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.131481, 21.466324, 21.703720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.181274, 21.082859, 21.601372>,  <23.211151, 20.852779, 21.539963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.181274, 21.082859, 21.601372>,  <23.131481, 21.466324, 21.703720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181274, 21.082859, 21.601372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019061, -0.255517, 0.966617,
		-0.992038, -0.125206, -0.013535,
		0.124485, -0.958663, -0.255869,
		23.218620, 20.795259, 21.524611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.430536, 22.065517, 21.229263>,  <23.131481, 21.466324, 21.703720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.430536, 22.065517, 21.229263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.734291, 22.271507, 21.388329>,  <23.916544, 22.395102, 21.483768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.734291, 22.271507, 21.388329>,  <23.430536, 22.065517, 21.229263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734291, 22.271507, 21.388329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383037, 0.140213, -0.913029,
		-0.525943, 0.845661, -0.090778,
		0.759386, 0.514973, 0.397664,
		23.962107, 22.425999, 21.507627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.504198, 22.844093, 20.915583>,  <23.430536, 22.065517, 21.229263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.504198, 22.844093, 20.915583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.844353, 22.656441, 21.010880>,  <24.048445, 22.543850, 21.068058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.844353, 22.656441, 21.010880>,  <23.504198, 22.844093, 20.915583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844353, 22.656441, 21.010880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346280, 0.158088, -0.924715,
		0.396149, 0.868864, 0.296886,
		0.850386, -0.469131, 0.238244,
		24.099468, 22.515701, 21.082354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013556, 23.353207, 20.816805>,  <23.504198, 22.844093, 20.915583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013556, 23.353207, 20.816805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.185875, 22.994450, 20.776815>,  <24.289267, 22.779196, 20.752821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.185875, 22.994450, 20.776815>,  <24.013556, 23.353207, 20.816805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.185875, 22.994450, 20.776815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133479, 0.172890, -0.975855,
		0.892522, 0.407053, 0.194197,
		0.430799, -0.896893, -0.099975,
		24.315115, 22.725382, 20.746822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587774, 23.409561, 20.344179>,  <24.013556, 23.353207, 20.816805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587774, 23.409561, 20.344179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.501678, 23.019249, 20.328560>,  <24.450020, 22.785061, 20.319187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.501678, 23.019249, 20.328560>,  <24.587774, 23.409561, 20.344179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501678, 23.019249, 20.328560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145792, 0.007431, -0.989287,
		0.965617, -0.218629, 0.140662,
		-0.215241, -0.975780, -0.039050,
		24.437105, 22.726515, 20.316845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985151, 23.097630, 19.817709>,  <24.587774, 23.409561, 20.344179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985151, 23.097630, 19.817709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.711662, 22.806534, 19.839325>,  <24.547569, 22.631876, 19.852295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.711662, 22.806534, 19.839325>,  <24.985151, 23.097630, 19.817709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711662, 22.806534, 19.839325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102661, -0.169240, -0.980214,
		0.722487, -0.664644, 0.190423,
		-0.683721, -0.727740, 0.054041,
		24.506546, 22.588211, 19.855537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166899, 22.600967, 19.330410>,  <24.985151, 23.097630, 19.817709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166899, 22.600967, 19.330410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.789978, 22.494110, 19.411106>,  <24.563826, 22.429996, 19.459524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.789978, 22.494110, 19.411106>,  <25.166899, 22.600967, 19.330410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789978, 22.494110, 19.411106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179425, -0.105727, -0.978074,
		0.282616, -0.957839, 0.051694,
		-0.942303, -0.267144, 0.201740,
		24.507288, 22.413967, 19.471628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057570, 22.080257, 18.852259>,  <25.166899, 22.600967, 19.330410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057570, 22.080257, 18.852259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.693092, 22.188229, 18.976753>,  <24.474407, 22.253012, 19.051451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.693092, 22.188229, 18.976753>,  <25.057570, 22.080257, 18.852259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693092, 22.188229, 18.976753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362200, -0.164868, -0.917404,
		-0.196337, -0.948656, 0.248000,
		-0.911188, 0.269946, 0.311233,
		24.419735, 22.269207, 19.070124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658133, 21.544519, 18.592716>,  <25.057570, 22.080257, 18.852259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658133, 21.544519, 18.592716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.411839, 21.852077, 18.661619>,  <24.264063, 22.036612, 18.702961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.411839, 21.852077, 18.661619>,  <24.658133, 21.544519, 18.592716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.411839, 21.852077, 18.661619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330338, -0.053420, -0.942350,
		-0.715365, -0.637141, 0.286887,
		-0.615735, 0.768894, 0.172257,
		24.227118, 22.082747, 18.713297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028013, 21.395533, 18.380825>,  <24.658133, 21.544519, 18.592716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028013, 21.395533, 18.380825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.997894, 21.794395, 18.379856>,  <23.979822, 22.033714, 18.379274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.997894, 21.794395, 18.379856>,  <24.028013, 21.395533, 18.380825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997894, 21.794395, 18.379856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409432, -0.033130, -0.911739,
		-0.909228, -0.067662, 0.410763,
		-0.075298, 0.997158, -0.002420,
		23.975306, 22.093542, 18.379129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.368013, 21.520790, 18.221937>,  <24.028013, 21.395533, 18.380825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.368013, 21.520790, 18.221937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.565483, 21.847530, 18.102577>,  <23.683966, 22.043573, 18.030962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.565483, 21.847530, 18.102577>,  <23.368013, 21.520790, 18.221937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.565483, 21.847530, 18.102577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407727, -0.085674, -0.909076,
		-0.768142, 0.570455, 0.290756,
		0.493676, 0.816849, -0.298399,
		23.713587, 22.092585, 18.013058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.946199, 21.917160, 17.757355>,  <23.368013, 21.520790, 18.221937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.946199, 21.917160, 17.757355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.311012, 22.064075, 17.684368>,  <23.529900, 22.152225, 17.640575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.311012, 22.064075, 17.684368>,  <22.946199, 21.917160, 17.757355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.311012, 22.064075, 17.684368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236950, 0.108768, -0.965414,
		-0.334739, 0.923725, 0.186229,
		0.912033, 0.367288, -0.182467,
		23.584621, 22.174261, 17.629627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745407, 22.300148, 17.294422>,  <22.946199, 21.917160, 17.757355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745407, 22.300148, 17.294422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.137974, 22.263489, 17.226988>,  <23.373514, 22.241493, 17.186527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.137974, 22.263489, 17.226988>,  <22.745407, 22.300148, 17.294422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.137974, 22.263489, 17.226988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155413, 0.135686, -0.978487,
		0.112550, 0.986504, 0.118921,
		0.981417, -0.091647, -0.168587,
		23.432400, 22.235994, 17.176413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819595, 22.714479, 16.787300>,  <22.745407, 22.300148, 17.294422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819595, 22.714479, 16.787300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.152401, 22.492695, 16.780079>,  <23.352085, 22.359625, 16.775745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.152401, 22.492695, 16.780079>,  <22.819595, 22.714479, 16.787300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.152401, 22.492695, 16.780079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000525, 0.033330, -0.999444,
		0.554753, 0.831543, 0.028023,
		0.832015, -0.554460, -0.018053,
		23.402006, 22.326357, 16.774662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.220070, 22.958904, 16.303225>,  <22.819595, 22.714479, 16.787300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.220070, 22.958904, 16.303225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.369232, 22.593830, 16.370096>,  <23.458729, 22.374786, 16.410219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.369232, 22.593830, 16.370096>,  <23.220070, 22.958904, 16.303225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.369232, 22.593830, 16.370096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035949, -0.194250, -0.980293,
		0.927173, 0.359547, -0.105247,
		0.372905, -0.912685, 0.167178,
		23.481104, 22.320024, 16.420250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.823017, 22.932909, 15.904366>,  <23.220070, 22.958904, 16.303225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.823017, 22.932909, 15.904366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.706177, 22.553917, 15.956454>,  <23.636072, 22.326521, 15.987707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.706177, 22.553917, 15.956454>,  <23.823017, 22.932909, 15.904366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.706177, 22.553917, 15.956454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121055, -0.171691, -0.977685,
		0.948695, -0.269821, 0.164849,
		-0.292103, -0.947480, 0.130220,
		23.618546, 22.269672, 15.995521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.141359, 22.618809, 15.311736>,  <23.823017, 22.932909, 15.904366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.141359, 22.618809, 15.311736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.913788, 22.311180, 15.428250>,  <23.777245, 22.126602, 15.498159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.913788, 22.311180, 15.428250>,  <24.141359, 22.618809, 15.311736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.913788, 22.311180, 15.428250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068378, -0.397207, -0.915178,
		0.819540, -0.500753, 0.278569,
		-0.568928, -0.769073, 0.291286,
		23.743109, 22.080458, 15.515636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486439, 21.992477, 15.182026>,  <24.141359, 22.618809, 15.311736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486439, 21.992477, 15.182026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.096912, 21.902931, 15.197852>,  <23.863197, 21.849203, 15.207348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.096912, 21.902931, 15.197852>,  <24.486439, 21.992477, 15.182026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096912, 21.902931, 15.197852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019957, -0.257553, -0.966058,
		0.226457, -0.939974, 0.255277,
		-0.973817, -0.223865, 0.039566,
		23.804768, 21.835772, 15.209722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429974, 21.342989, 14.835413>,  <24.486439, 21.992477, 15.182026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429974, 21.342989, 14.835413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.049049, 21.465015, 14.837882>,  <23.820494, 21.538231, 14.839364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.049049, 21.465015, 14.837882>,  <24.429974, 21.342989, 14.835413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.049049, 21.465015, 14.837882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083202, -0.240158, -0.967162,
		-0.293568, -0.921551, 0.254088,
		-0.952311, 0.305069, 0.006172,
		23.763355, 21.556534, 14.839734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033983, 20.875059, 14.633401>,  <24.429974, 21.342989, 14.835413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033983, 20.875059, 14.633401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.797810, 21.190567, 14.565015>,  <23.656105, 21.379871, 14.523983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.797810, 21.190567, 14.565015>,  <24.033983, 20.875059, 14.633401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.797810, 21.190567, 14.565015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219864, -0.361012, -0.906273,
		-0.776563, -0.497503, 0.386575,
		-0.590432, 0.788772, -0.170966,
		23.620680, 21.427198, 14.513725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.530096, 20.541504, 14.094303>,  <24.033983, 20.875059, 14.633401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.530096, 20.541504, 14.094303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.478012, 20.934875, 14.043851>,  <23.446762, 21.170898, 14.013579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.478012, 20.934875, 14.043851>,  <23.530096, 20.541504, 14.094303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.478012, 20.934875, 14.043851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015655, -0.129238, -0.991490,
		-0.991363, -0.127127, 0.032223,
		-0.130210, 0.983431, -0.126131,
		23.438950, 21.229904, 14.006012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.526894, 17.218227, 10.137689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.506863, 17.614708, 10.186697>,  <20.494844, 17.852596, 10.216102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.506863, 17.614708, 10.186697>,  <20.526894, 17.218227, 10.137689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506863, 17.614708, 10.186697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445391, 0.087636, -0.891037,
		-0.893934, -0.099190, 0.437084,
		-0.050078, 0.991202, 0.122520,
		20.491838, 17.912069, 10.223453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873150, 17.318041, 9.905725>,  <20.526894, 17.218227, 10.137689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873150, 17.318041, 9.905725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.067101, 17.667103, 9.882530>,  <20.183472, 17.876541, 9.868613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.067101, 17.667103, 9.882530>,  <19.873150, 17.318041, 9.905725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067101, 17.667103, 9.882530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372969, 0.146353, -0.916229,
		-0.791067, 0.465887, 0.396438,
		0.484879, 0.872657, -0.057987,
		20.212564, 17.928900, 9.865134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423889, 17.912571, 9.519876>,  <19.873150, 17.318041, 9.905725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423889, 17.912571, 9.519876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.807442, 18.018757, 9.479723>,  <20.037573, 18.082468, 9.455631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.807442, 18.018757, 9.479723>,  <19.423889, 17.912571, 9.519876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.807442, 18.018757, 9.479723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196576, 0.366103, -0.909575,
		-0.204710, 0.891907, 0.403233,
		0.958880, 0.265465, -0.100383,
		20.095106, 18.098396, 9.449608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353668, 18.200041, 8.918591>,  <19.423889, 17.912571, 9.519876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353668, 18.200041, 8.918591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.748383, 18.218838, 8.980622>,  <19.985210, 18.230116, 9.017840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.748383, 18.218838, 8.980622>,  <19.353668, 18.200041, 8.918591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748383, 18.218838, 8.980622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130424, 0.337593, -0.932213,
		-0.096159, 0.940118, 0.327003,
		0.986784, 0.046992, 0.155077,
		20.044418, 18.232935, 9.027145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592300, 18.917315, 8.812325>,  <19.353668, 18.200041, 8.918591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592300, 18.917315, 8.812325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.878853, 18.650921, 8.729121>,  <20.050783, 18.491085, 8.679199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.878853, 18.650921, 8.729121>,  <19.592300, 18.917315, 8.812325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.878853, 18.650921, 8.729121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055298, 0.351389, -0.934595,
		0.695516, 0.658022, 0.288555,
		0.716379, -0.665983, -0.208010,
		20.093767, 18.451126, 8.666718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101351, 19.261024, 8.415886>,  <19.592300, 18.917315, 8.812325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101351, 19.261024, 8.415886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.190418, 18.882462, 8.322308>,  <20.243858, 18.655323, 8.266161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.190418, 18.882462, 8.322308>,  <20.101351, 19.261024, 8.415886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190418, 18.882462, 8.322308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014527, 0.243164, -0.969876,
		0.974786, 0.212561, 0.067893,
		0.222667, -0.946408, -0.233945,
		20.257217, 18.598539, 8.252124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757851, 19.247238, 8.029955>,  <20.101351, 19.261024, 8.415886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757851, 19.247238, 8.029955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.577530, 18.902107, 7.938469>,  <20.469337, 18.695028, 7.883577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.577530, 18.902107, 7.938469>,  <20.757851, 19.247238, 8.029955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.577530, 18.902107, 7.938469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163606, 0.172020, -0.971412,
		0.877503, -0.475333, 0.063617,
		-0.450800, -0.862826, -0.228715,
		20.442289, 18.643259, 7.869854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126606, 18.995184, 7.449915>,  <20.757851, 19.247238, 8.029955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126606, 18.995184, 7.449915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.784328, 18.788509, 7.438444>,  <20.578962, 18.664505, 7.431561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.784328, 18.788509, 7.438444>,  <21.126606, 18.995184, 7.449915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.784328, 18.788509, 7.438444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071440, 0.172838, -0.982356,
		0.512526, -0.838548, -0.184808,
		-0.855695, -0.516686, -0.028678,
		20.527620, 18.633503, 7.429841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.167356, 18.396444, 6.962610>,  <21.126606, 18.995184, 7.449915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.167356, 18.396444, 6.962610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.779133, 18.486588, 6.996621>,  <20.546198, 18.540674, 7.017028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.779133, 18.486588, 6.996621>,  <21.167356, 18.396444, 6.962610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.779133, 18.486588, 6.996621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090300, -0.013170, -0.995828,
		-0.223299, -0.974187, 0.033132,
		-0.970558, 0.225359, 0.085028,
		20.487965, 18.554195, 7.022130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841303, 17.970278, 6.530954>,  <21.167356, 18.396444, 6.962610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841303, 17.970278, 6.530954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.570419, 18.254398, 6.607753>,  <20.407890, 18.424871, 6.653832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.570419, 18.254398, 6.607753>,  <20.841303, 17.970278, 6.530954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.570419, 18.254398, 6.607753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153549, 0.118768, -0.980978,
		-0.719593, -0.693806, 0.028635,
		-0.677207, 0.710301, 0.191998,
		20.367256, 18.467489, 6.665352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415262, 17.968161, 5.926752>,  <20.841303, 17.970278, 6.530954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415262, 17.968161, 5.926752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.286407, 18.304352, 6.101028>,  <20.209095, 18.506065, 6.205594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.286407, 18.304352, 6.101028>,  <20.415262, 17.968161, 5.926752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286407, 18.304352, 6.101028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030516, 0.450766, -0.892120,
		-0.946201, -0.300680, -0.119560,
		-0.322136, 0.840477, 0.435691,
		20.189766, 18.556496, 6.231736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.874037, 18.187334, 5.535489>,  <20.415262, 17.968161, 5.926752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.874037, 18.187334, 5.535489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.983078, 18.512276, 5.741699>,  <20.048502, 18.707241, 5.865425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.983078, 18.512276, 5.741699>,  <19.874037, 18.187334, 5.535489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.983078, 18.512276, 5.741699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116550, 0.559754, -0.820421,
		-0.955042, 0.163563, 0.247270,
		0.272601, 0.812356, 0.515525,
		20.064857, 18.755983, 5.896357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425694, 18.652704, 5.546550>,  <19.874037, 18.187334, 5.535489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425694, 18.652704, 5.546550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.755760, 18.875683, 5.583110>,  <19.953800, 19.009470, 5.605046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.755760, 18.875683, 5.583110>,  <19.425694, 18.652704, 5.546550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755760, 18.875683, 5.583110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135941, 0.353007, -0.925692,
		-0.548287, 0.751426, 0.367070,
		0.825168, 0.557445, 0.091399,
		20.003311, 19.042915, 5.610530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192383, 19.323658, 5.625307>,  <19.425694, 18.652704, 5.546550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192383, 19.323658, 5.625307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.552174, 19.294853, 5.452909>,  <19.768047, 19.277571, 5.349471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.552174, 19.294853, 5.452909>,  <19.192383, 19.323658, 5.625307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552174, 19.294853, 5.452909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369955, 0.399391, -0.838821,
		0.232541, 0.913948, 0.332602,
		0.899477, -0.072012, -0.430994,
		19.822016, 19.273249, 5.323611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573137, 19.061769, 5.973848>,  <19.192383, 19.323658, 5.625307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573137, 19.061769, 5.973848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.175045, 19.042435, 6.007732>,  <17.936190, 19.030834, 6.028063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.175045, 19.042435, 6.007732>,  <18.573137, 19.061769, 5.973848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175045, 19.042435, 6.007732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025402, 0.710120, 0.703623,
		-0.094164, 0.702420, -0.705506,
		-0.995232, -0.048335, 0.084711,
		17.876474, 19.027935, 6.033146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261820, 19.754498, 5.850197>,  <18.573137, 19.061769, 5.973848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261820, 19.754498, 5.850197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.038273, 19.538567, 6.101992>,  <17.904144, 19.409008, 6.253068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.038273, 19.538567, 6.101992>,  <18.261820, 19.754498, 5.850197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038273, 19.538567, 6.101992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095798, 0.796042, 0.597612,
		-0.823705, 0.273682, -0.496596,
		-0.558867, -0.539828, 0.629486,
		17.870613, 19.376617, 6.290837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869276, 20.317312, 6.253482>,  <18.261820, 19.754498, 5.850197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869276, 20.317312, 6.253482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.767563, 19.984676, 6.450985>,  <17.706535, 19.785095, 6.569487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.767563, 19.984676, 6.450985>,  <17.869276, 20.317312, 6.253482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767563, 19.984676, 6.450985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087190, 0.528171, 0.844650,
		-0.963192, 0.171729, -0.206811,
		-0.254283, -0.831591, 0.493757,
		17.691278, 19.735199, 6.599112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255692, 20.463108, 6.679461>,  <17.869276, 20.317312, 6.253482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.255692, 20.463108, 6.679461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.454620, 20.149315, 6.827654>,  <17.573978, 19.961039, 6.916570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.454620, 20.149315, 6.827654>,  <17.255692, 20.463108, 6.679461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454620, 20.149315, 6.827654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084603, 0.381149, 0.920634,
		-0.863430, -0.489197, 0.123185,
		0.497323, -0.784481, 0.370483,
		17.603817, 19.913971, 6.938799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869015, 20.304205, 7.252408>,  <17.255692, 20.463108, 6.679461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869015, 20.304205, 7.252408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.227631, 20.141449, 7.322451>,  <17.442801, 20.043797, 7.364476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.227631, 20.141449, 7.322451>,  <16.869015, 20.304205, 7.252408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227631, 20.141449, 7.322451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004318, 0.387257, 0.921962,
		-0.442947, -0.827329, 0.345434,
		0.896537, -0.406889, 0.175107,
		17.496592, 20.019382, 7.374983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.891743, 19.960894, 7.881856>,  <16.869015, 20.304205, 7.252408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.891743, 19.960894, 7.881856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.286037, 20.016705, 7.844212>,  <17.522614, 20.050192, 7.821625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.286037, 20.016705, 7.844212>,  <16.891743, 19.960894, 7.881856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286037, 20.016705, 7.844212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070323, 0.166562, 0.983520,
		0.152887, -0.976111, 0.154376,
		0.985738, 0.139511, -0.094109,
		17.581758, 20.058563, 7.815978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133480, 19.706858, 8.435544>,  <16.891743, 19.960894, 7.881856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133480, 19.706858, 8.435544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.452305, 19.926220, 8.334398>,  <17.643600, 20.057837, 8.273710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.452305, 19.926220, 8.334398>,  <17.133480, 19.706858, 8.435544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452305, 19.926220, 8.334398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173616, 0.192951, 0.965726,
		0.578400, -0.813647, 0.058582,
		0.797064, 0.548406, -0.252865,
		17.691423, 20.090742, 8.258539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.690636, 19.427622, 8.912011>,  <17.133480, 19.706858, 8.435544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.690636, 19.427622, 8.912011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.769154, 19.800030, 8.788939>,  <17.816265, 20.023474, 8.715095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.769154, 19.800030, 8.788939>,  <17.690636, 19.427622, 8.912011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.769154, 19.800030, 8.788939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191849, 0.271256, 0.943194,
		0.961593, -0.244174, -0.125368,
		0.196297, 0.931021, -0.307682,
		17.828043, 20.079336, 8.696634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088995, 19.711115, 9.415014>,  <17.690636, 19.427622, 8.912011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088995, 19.711115, 9.415014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.988266, 20.057178, 9.241540>,  <17.927830, 20.264816, 9.137455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.988266, 20.057178, 9.241540>,  <18.088995, 19.711115, 9.415014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988266, 20.057178, 9.241540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003433, 0.447327, 0.894364,
		0.967768, 0.226708, -0.109676,
		-0.251821, 0.865160, -0.433687,
		17.912720, 20.316727, 9.111434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522104, 20.147696, 9.658745>,  <18.088995, 19.711115, 9.415014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522104, 20.147696, 9.658745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.224110, 20.392536, 9.552669>,  <18.045313, 20.539440, 9.489023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.224110, 20.392536, 9.552669>,  <18.522104, 20.147696, 9.658745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224110, 20.392536, 9.552669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127831, 0.259178, 0.957333,
		0.654718, 0.747099, -0.114838,
		-0.744986, 0.612103, -0.265191,
		18.000614, 20.576166, 9.473111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677654, 20.741892, 10.068176>,  <18.522104, 20.147696, 9.658745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677654, 20.741892, 10.068176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.301811, 20.813824, 9.951696>,  <18.076305, 20.856983, 9.881808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.301811, 20.813824, 9.951696>,  <18.677654, 20.741892, 10.068176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301811, 20.813824, 9.951696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183419, 0.453748, 0.872049,
		0.288951, 0.872797, -0.393362,
		-0.939609, 0.179829, -0.291199,
		18.019928, 20.867773, 9.864337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607018, 21.463747, 10.244990>,  <18.677654, 20.741892, 10.068176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.607018, 21.463747, 10.244990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.251316, 21.284500, 10.208285>,  <18.037895, 21.176952, 10.186262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.251316, 21.284500, 10.208285>,  <18.607018, 21.463747, 10.244990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251316, 21.284500, 10.208285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275494, 0.364554, 0.889496,
		-0.365145, 0.816268, -0.447634,
		-0.889254, -0.448115, -0.091762,
		17.984539, 21.150066, 10.180757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.082027, 21.971401, 10.386282>,  <18.607018, 21.463747, 10.244990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.082027, 21.971401, 10.386282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.916065, 21.614208, 10.456064>,  <17.816488, 21.399893, 10.497933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.916065, 21.614208, 10.456064>,  <18.082027, 21.971401, 10.386282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916065, 21.614208, 10.456064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514605, 0.388435, 0.764395,
		-0.750356, 0.227377, -0.620698,
		-0.414907, -0.892983, 0.174455,
		17.791594, 21.346313, 10.508401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474529, 22.117624, 10.696361>,  <18.082027, 21.971401, 10.386282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474529, 22.117624, 10.696361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.528217, 21.732487, 10.790096>,  <17.560431, 21.501404, 10.846338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.528217, 21.732487, 10.790096>,  <17.474529, 22.117624, 10.696361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528217, 21.732487, 10.790096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247075, 0.196495, 0.948865,
		-0.959656, -0.185257, -0.211521,
		0.134221, -0.962844, 0.234340,
		17.568483, 21.443634, 10.860398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955072, 22.579594, 10.648061>,  <17.474529, 22.117624, 10.696361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955072, 22.579594, 10.648061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.897320, 22.966263, 10.732626>,  <16.862667, 23.198265, 10.783365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.897320, 22.966263, 10.732626>,  <16.955072, 22.579594, 10.648061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897320, 22.966263, 10.732626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254894, 0.170109, -0.951889,
		-0.956129, -0.191325, 0.221838,
		-0.144383, 0.966674, 0.211413,
		16.854004, 23.256266, 10.796050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249241, 22.890980, 10.357439>,  <16.955072, 22.579594, 10.648061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249241, 22.890980, 10.357439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.538940, 23.166679, 10.365466>,  <16.712759, 23.332100, 10.370282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.538940, 23.166679, 10.365466>,  <16.249241, 22.890980, 10.357439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538940, 23.166679, 10.365466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216269, 0.254692, -0.942529,
		-0.654748, 0.678283, 0.333522,
		0.724247, 0.689249, 0.020067,
		16.756214, 23.373453, 10.371487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089493, 23.183041, 9.770285>,  <16.249241, 22.890980, 10.357439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089493, 23.183041, 9.770285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.423523, 23.368103, 9.889346>,  <16.623941, 23.479141, 9.960783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.423523, 23.368103, 9.889346>,  <16.089493, 23.183041, 9.770285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.423523, 23.368103, 9.889346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115792, 0.381118, -0.917247,
		-0.537813, 0.800435, 0.264690,
		0.835074, 0.462658, 0.297654,
		16.674046, 23.506901, 9.978642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.050631, 23.919519, 9.694239>,  <16.089493, 23.183041, 9.770285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.050631, 23.919519, 9.694239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.435787, 23.813896, 9.671913>,  <16.666882, 23.750523, 9.658518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.435787, 23.813896, 9.671913>,  <16.050631, 23.919519, 9.694239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435787, 23.813896, 9.671913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055815, 0.397150, -0.916055,
		0.264059, 0.878945, 0.397151,
		0.962890, -0.264059, -0.055813,
		16.724655, 23.734678, 9.655169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371403, 24.498924, 9.354573>,  <16.050631, 23.919519, 9.694239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371403, 24.498924, 9.354573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.637993, 24.200985, 9.341832>,  <16.797947, 24.022221, 9.334188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.637993, 24.200985, 9.341832>,  <16.371403, 24.498924, 9.354573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637993, 24.200985, 9.341832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262524, 0.274460, -0.925069,
		0.697778, 0.608172, 0.378460,
		0.666473, -0.744848, -0.031852,
		16.837934, 23.977531, 9.332276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037750, 24.734194, 9.191191>,  <16.371403, 24.498924, 9.354573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037750, 24.734194, 9.191191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.021355, 24.353809, 9.068559>,  <17.011517, 24.125578, 8.994980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.021355, 24.353809, 9.068559>,  <17.037750, 24.734194, 9.191191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021355, 24.353809, 9.068559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231767, 0.289419, -0.928720,
		0.971907, -0.109123, 0.208538,
		-0.040989, -0.950962, -0.306580,
		17.009058, 24.068521, 8.976584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410089, 24.770317, 8.594693>,  <17.037750, 24.734194, 9.191191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410089, 24.770317, 8.594693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245518, 24.408993, 8.546103>,  <17.146774, 24.192198, 8.516948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.245518, 24.408993, 8.546103>,  <17.410089, 24.770317, 8.594693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245518, 24.408993, 8.546103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054280, 0.108760, -0.992585,
		0.909823, -0.414974, 0.004284,
		-0.411431, -0.903309, -0.121477,
		17.122087, 24.138000, 8.509660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846613, 24.467958, 7.988586>,  <17.410089, 24.770317, 8.594693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846613, 24.467958, 7.988586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.503532, 24.263355, 8.009398>,  <17.297684, 24.140593, 8.021886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.503532, 24.263355, 8.009398>,  <17.846613, 24.467958, 7.988586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503532, 24.263355, 8.009398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003421, -0.095517, -0.995422,
		0.514138, -0.853952, 0.080175,
		-0.857700, -0.511510, 0.052030,
		17.246222, 24.109901, 8.025007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915319, 23.874147, 7.526225>,  <17.846613, 24.467958, 7.988586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915319, 23.874147, 7.526225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.517658, 23.898697, 7.561772>,  <17.279062, 23.913425, 7.583101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.517658, 23.898697, 7.561772>,  <17.915319, 23.874147, 7.526225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517658, 23.898697, 7.561772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100258, -0.218471, -0.970680,
		-0.040156, -0.973912, 0.223346,
		-0.994151, 0.061370, 0.088870,
		17.219414, 23.917109, 7.588433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626524, 23.324232, 7.116451>,  <17.915319, 23.874147, 7.526225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626524, 23.324232, 7.116451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.348427, 23.609402, 7.153069>,  <17.181568, 23.780504, 7.175039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.348427, 23.609402, 7.153069>,  <17.626524, 23.324232, 7.116451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348427, 23.609402, 7.153069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334752, -0.208449, -0.918961,
		-0.636068, -0.669543, 0.383575,
		-0.695240, 0.712924, 0.091543,
		17.139854, 23.823278, 7.180532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898188, 23.055862, 7.003572>,  <17.626524, 23.324232, 7.116451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898188, 23.055862, 7.003572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.871910, 23.449375, 6.936813>,  <16.856144, 23.685484, 6.896758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.871910, 23.449375, 6.936813>,  <16.898188, 23.055862, 7.003572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.871910, 23.449375, 6.936813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296807, -0.178953, -0.938020,
		-0.952675, -0.012087, 0.303750,
		-0.065695, 0.983783, -0.166896,
		16.852201, 23.744511, 6.886744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224394, 23.177414, 6.659295>,  <16.898188, 23.055862, 7.003572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224394, 23.177414, 6.659295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.455254, 23.498505, 6.599259>,  <16.593769, 23.691160, 6.563238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.455254, 23.498505, 6.599259>,  <16.224394, 23.177414, 6.659295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.455254, 23.498505, 6.599259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257717, 0.004638, -0.966209,
		-0.774908, 0.596326, 0.209553,
		0.577147, 0.802729, -0.150089,
		16.628397, 23.739323, 6.554233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.312622, 22.857471, 14.567254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519970, 23.184971, 14.468505>,  <17.644379, 23.381470, 14.409256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519970, 23.184971, 14.468505>,  <17.312622, 22.857471, 14.567254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519970, 23.184971, 14.468505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394108, -0.027476, -0.918653,
		-0.758929, 0.573495, 0.308432,
		0.518368, 0.818748, -0.246872,
		17.675480, 23.430595, 14.394444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765230, 23.334295, 14.213234>,  <17.312622, 22.857471, 14.567254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.765230, 23.334295, 14.213234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.134457, 23.446808, 14.108291>,  <17.355991, 23.514315, 14.045325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.134457, 23.446808, 14.108291>,  <16.765230, 23.334295, 14.213234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.134457, 23.446808, 14.108291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277838, 0.015888, -0.960497,
		-0.266002, 0.959494, 0.092817,
		0.923065, 0.281282, -0.262357,
		17.411377, 23.531193, 14.029584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591322, 23.711788, 13.711796>,  <16.765230, 23.334295, 14.213234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591322, 23.711788, 13.711796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983734, 23.668179, 13.647676>,  <17.219181, 23.642014, 13.609203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983734, 23.668179, 13.647676>,  <16.591322, 23.711788, 13.711796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983734, 23.668179, 13.647676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151751, 0.082706, -0.984952,
		0.120641, 0.990593, 0.064592,
		0.981029, -0.109024, -0.160301,
		17.278042, 23.635471, 13.599586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731529, 24.279190, 13.405184>,  <16.591322, 23.711788, 13.711796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731529, 24.279190, 13.405184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004883, 23.999798, 13.320222>,  <17.168894, 23.832163, 13.269245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004883, 23.999798, 13.320222>,  <16.731529, 24.279190, 13.405184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004883, 23.999798, 13.320222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140583, 0.159593, -0.977122,
		0.716397, 0.697608, 0.010869,
		0.683383, -0.698479, -0.212404,
		17.209898, 23.790255, 13.256501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199345, 24.582138, 12.826026>,  <16.731529, 24.279190, 13.405184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199345, 24.582138, 12.826026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232422, 24.183723, 12.839129>,  <17.252268, 23.944675, 12.846992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232422, 24.183723, 12.839129>,  <17.199345, 24.582138, 12.826026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232422, 24.183723, 12.839129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021001, -0.031122, -0.999295,
		0.996354, 0.083324, 0.018344,
		0.082694, -0.996036, 0.032759,
		17.257231, 23.884912, 12.848957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754072, 24.351509, 12.378287>,  <17.199345, 24.582138, 12.826026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754072, 24.351509, 12.378287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526463, 24.024223, 12.411115>,  <17.389896, 23.827852, 12.430811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526463, 24.024223, 12.411115>,  <17.754072, 24.351509, 12.378287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526463, 24.024223, 12.411115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137449, -0.003762, -0.990502,
		0.810754, -0.574898, -0.110322,
		-0.569022, -0.818216, 0.082070,
		17.355755, 23.778759, 12.435736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.958282, 23.912006, 11.874148>,  <17.754072, 24.351509, 12.378287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.958282, 23.912006, 11.874148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601295, 23.744541, 11.941349>,  <17.387104, 23.644062, 11.981669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601295, 23.744541, 11.941349>,  <17.958282, 23.912006, 11.874148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601295, 23.744541, 11.941349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078978, -0.221657, -0.971921,
		0.444145, -0.880677, 0.164756,
		-0.892467, -0.418662, 0.168002,
		17.333555, 23.618942, 11.991750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928568, 23.386135, 11.313985>,  <17.958282, 23.912006, 11.874148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928568, 23.386135, 11.313985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562321, 23.444466, 11.463852>,  <17.342571, 23.479464, 11.553772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562321, 23.444466, 11.463852>,  <17.928568, 23.386135, 11.313985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562321, 23.444466, 11.463852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401710, -0.293747, -0.867376,
		-0.016426, -0.944695, 0.327539,
		-0.915619, 0.145823, 0.374668,
		17.287634, 23.488213, 11.576252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501953, 22.763229, 11.181430>,  <17.928568, 23.386135, 11.313985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501953, 22.763229, 11.181430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242168, 23.066204, 11.208230>,  <17.086298, 23.247990, 11.224310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242168, 23.066204, 11.208230>,  <17.501953, 22.763229, 11.181430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242168, 23.066204, 11.208230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266595, -0.144297, -0.952946,
		-0.712128, -0.636763, 0.295644,
		-0.649462, 0.757437, 0.067000,
		17.047329, 23.293434, 11.228330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144686, 22.160051, 11.346787>,  <17.501953, 22.763229, 11.181430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144686, 22.160051, 11.346787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340252, 21.811127, 11.344447>,  <17.457592, 21.601772, 11.343043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340252, 21.811127, 11.344447>,  <17.144686, 22.160051, 11.346787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340252, 21.811127, 11.344447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042076, 0.016882, 0.998972,
		-0.871317, -0.488658, 0.044957,
		0.488914, -0.872312, -0.005851,
		17.486927, 21.549433, 11.342691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885349, 21.782244, 11.904716>,  <17.144686, 22.160051, 11.346787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885349, 21.782244, 11.904716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235600, 21.597206, 11.849159>,  <17.445749, 21.486183, 11.815825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235600, 21.597206, 11.849159>,  <16.885349, 21.782244, 11.904716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235600, 21.597206, 11.849159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068927, -0.164945, 0.983891,
		-0.478051, -0.871092, -0.112544,
		0.875624, -0.462593, -0.138894,
		17.498287, 21.458429, 11.807491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840715, 21.224726, 12.261282>,  <16.885349, 21.782244, 11.904716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840715, 21.224726, 12.261282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236240, 21.272251, 12.225208>,  <17.473555, 21.300766, 12.203564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236240, 21.272251, 12.225208>,  <16.840715, 21.224726, 12.261282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236240, 21.272251, 12.225208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126463, -0.347131, 0.929251,
		0.079103, -0.930260, -0.358273,
		0.988813, 0.118815, -0.090184,
		17.532885, 21.307896, 12.198153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120152, 20.493196, 12.364450>,  <16.840715, 21.224726, 12.261282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120152, 20.493196, 12.364450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410244, 20.760525, 12.430654>,  <17.584299, 20.920921, 12.470375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410244, 20.760525, 12.430654>,  <17.120152, 20.493196, 12.364450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410244, 20.760525, 12.430654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200885, -0.435322, 0.877576,
		0.658550, -0.603196, -0.449964,
		0.725229, 0.668319, 0.165508,
		17.627813, 20.961020, 12.480306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633482, 20.135521, 12.539801>,  <17.120152, 20.493196, 12.364450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633482, 20.135521, 12.539801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715271, 20.499004, 12.685369>,  <17.764345, 20.717094, 12.772709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715271, 20.499004, 12.685369>,  <17.633482, 20.135521, 12.539801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715271, 20.499004, 12.685369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224556, -0.405404, 0.886128,
		0.952767, -0.099468, -0.286950,
		0.204472, 0.908710, 0.363920,
		17.776613, 20.771618, 12.794544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241041, 19.977425, 12.935327>,  <17.633482, 20.135521, 12.539801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241041, 19.977425, 12.935327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094128, 20.333561, 13.042953>,  <18.005980, 20.547243, 13.107529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094128, 20.333561, 13.042953>,  <18.241041, 19.977425, 12.935327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094128, 20.333561, 13.042953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133677, -0.235751, 0.962576,
		0.920452, 0.389508, -0.032430,
		-0.367286, 0.890340, 0.269066,
		17.983942, 20.600662, 13.123672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697466, 20.438728, 13.216461>,  <18.241041, 19.977425, 12.935327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697466, 20.438728, 13.216461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354572, 20.559166, 13.383550>,  <18.148836, 20.631428, 13.483803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354572, 20.559166, 13.383550>,  <18.697466, 20.438728, 13.216461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.354572, 20.559166, 13.383550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370548, -0.202587, 0.906451,
		0.357550, 0.931827, 0.062095,
		-0.857235, 0.301092, 0.417722,
		18.097403, 20.649494, 13.508866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846540, 20.898996, 13.740819>,  <18.697466, 20.438728, 13.216461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846540, 20.898996, 13.740819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487141, 20.756416, 13.843305>,  <18.271502, 20.670868, 13.904796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487141, 20.756416, 13.843305>,  <18.846540, 20.898996, 13.740819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487141, 20.756416, 13.843305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332366, -0.171110, 0.927499,
		-0.286767, 0.918512, 0.272214,
		-0.898497, -0.356451, 0.256214,
		18.217592, 20.649481, 13.920169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770256, 21.091396, 14.335479>,  <18.846540, 20.898996, 13.740819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.770256, 21.091396, 14.335479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492344, 20.804260, 14.317672>,  <18.325596, 20.631979, 14.306988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492344, 20.804260, 14.317672>,  <18.770256, 21.091396, 14.335479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492344, 20.804260, 14.317672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333793, -0.376660, 0.864123,
		-0.637071, 0.585518, 0.501307,
		-0.694782, -0.717841, -0.044517,
		18.283909, 20.588907, 14.304317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365250, 21.194063, 14.904479>,  <18.770256, 21.091396, 14.335479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365250, 21.194063, 14.904479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258320, 20.817165, 14.823773>,  <18.194162, 20.591026, 14.775350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258320, 20.817165, 14.823773>,  <18.365250, 21.194063, 14.904479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258320, 20.817165, 14.823773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027523, -0.201833, 0.979033,
		-0.963213, 0.267273, 0.028021,
		-0.267324, -0.942247, -0.201764,
		18.178123, 20.534491, 14.763244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903894, 21.062162, 15.506305>,  <18.365250, 21.194063, 14.904479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903894, 21.062162, 15.506305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997757, 20.717319, 15.326657>,  <18.054073, 20.510414, 15.218868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997757, 20.717319, 15.326657>,  <17.903894, 21.062162, 15.506305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997757, 20.717319, 15.326657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142280, -0.426584, 0.893187,
		-0.961610, -0.273491, 0.022560,
		0.234655, -0.862107, -0.449119,
		18.068153, 20.458687, 15.191921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516434, 20.634432, 15.784515>,  <17.903894, 21.062162, 15.506305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516434, 20.634432, 15.784515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804283, 20.419323, 15.608813>,  <17.976992, 20.290257, 15.503392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804283, 20.419323, 15.608813>,  <17.516434, 20.634432, 15.784515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804283, 20.419323, 15.608813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233587, -0.408241, 0.882483,
		-0.653898, -0.737658, -0.168162,
		0.719621, -0.537773, -0.439255,
		18.020170, 20.257992, 15.477036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435843, 20.031178, 16.044159>,  <17.516434, 20.634432, 15.784515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435843, 20.031178, 16.044159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826004, 20.045952, 15.957240>,  <18.060101, 20.054817, 15.905088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826004, 20.045952, 15.957240>,  <17.435843, 20.031178, 16.044159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826004, 20.045952, 15.957240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205708, -0.506645, 0.837254,
		-0.079168, -0.861363, -0.501783,
		0.975406, 0.036937, -0.217299,
		18.118626, 20.057034, 15.892051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673140, 19.357006, 16.362309>,  <17.435843, 20.031178, 16.044159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673140, 19.357006, 16.362309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976772, 19.609314, 16.297911>,  <18.158953, 19.760698, 16.259272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976772, 19.609314, 16.297911>,  <17.673140, 19.357006, 16.362309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.976772, 19.609314, 16.297911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306290, -0.127826, 0.943317,
		0.574439, -0.765368, -0.290230,
		0.759083, 0.630772, -0.160996,
		18.204496, 19.798546, 16.249613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<24.109892, 25.378780, 14.559216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.871826, 25.095375, 14.710893>,  <23.728987, 24.925333, 14.801899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.871826, 25.095375, 14.710893>,  <24.109892, 25.378780, 14.559216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.871826, 25.095375, 14.710893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124611, -0.547528, -0.827457,
		0.793882, -0.445223, 0.414159,
		-0.595166, -0.708512, 0.379193,
		23.693275, 24.882822, 14.824651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.295965, 24.795298, 14.368257>,  <24.109892, 25.378780, 14.559216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.295965, 24.795298, 14.368257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.922363, 24.705635, 14.479531>,  <23.698202, 24.651838, 14.546296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.922363, 24.705635, 14.479531>,  <24.295965, 24.795298, 14.368257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.922363, 24.705635, 14.479531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112994, -0.553348, -0.825250,
		0.338919, -0.802221, 0.491502,
		-0.934005, -0.224156, 0.278187,
		23.642162, 24.638388, 14.562987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.279606, 24.061995, 14.279915>,  <24.295965, 24.795298, 14.368257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.279606, 24.061995, 14.279915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.910072, 24.214478, 14.265988>,  <23.688353, 24.305967, 14.257632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.910072, 24.214478, 14.265988>,  <24.279606, 24.061995, 14.279915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.910072, 24.214478, 14.265988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138808, -0.418371, -0.897607,
		-0.356742, -0.824406, 0.439420,
		-0.923833, 0.381209, -0.034817,
		23.632923, 24.328840, 14.255544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.913013, 23.575003, 13.947945>,  <24.279606, 24.061995, 14.279915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.913013, 23.575003, 13.947945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.683849, 23.901138, 13.914483>,  <23.546350, 24.096819, 13.894406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.683849, 23.901138, 13.914483>,  <23.913013, 23.575003, 13.947945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.683849, 23.901138, 13.914483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257321, -0.275830, -0.926123,
		-0.778179, -0.509057, 0.367829,
		-0.572908, 0.815339, -0.083654,
		23.511976, 24.145741, 13.889387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.300831, 23.333801, 13.571645>,  <23.913013, 23.575003, 13.947945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.300831, 23.333801, 13.571645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.295769, 23.731934, 13.533370>,  <23.292732, 23.970814, 13.510406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.295769, 23.731934, 13.533370>,  <23.300831, 23.333801, 13.571645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.295769, 23.731934, 13.533370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408606, -0.092487, -0.908013,
		-0.912623, 0.027608, 0.407868,
		-0.012654, 0.995331, -0.095687,
		23.291973, 24.030533, 13.504664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.600006, 23.473440, 13.439975>,  <23.300831, 23.333801, 13.571645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.600006, 23.473440, 13.439975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.837563, 23.773392, 13.323377>,  <22.980097, 23.953363, 13.253418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.837563, 23.773392, 13.323377>,  <22.600006, 23.473440, 13.439975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.837563, 23.773392, 13.323377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377643, -0.060091, -0.923999,
		-0.710406, 0.658838, 0.247500,
		0.593893, 0.749881, -0.291495,
		23.015730, 23.998356, 13.235929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200920, 23.840586, 13.016257>,  <22.600006, 23.473440, 13.439975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200920, 23.840586, 13.016257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.568310, 23.967392, 12.921676>,  <22.788744, 24.043476, 12.864927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.568310, 23.967392, 12.921676>,  <22.200920, 23.840586, 13.016257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568310, 23.967392, 12.921676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252363, 0.009462, -0.967586,
		-0.304502, 0.948373, 0.088693,
		0.918472, 0.317015, -0.236453,
		22.843851, 24.062496, 12.850739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125101, 24.235979, 12.533493>,  <22.200920, 23.840586, 13.016257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125101, 24.235979, 12.533493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.515343, 24.163074, 12.484543>,  <22.749489, 24.119331, 12.455173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.515343, 24.163074, 12.484543>,  <22.125101, 24.235979, 12.533493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.515343, 24.163074, 12.484543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122966, 0.008098, -0.992378,
		0.181862, 0.983217, -0.014511,
		0.975605, -0.182260, -0.122375,
		22.808023, 24.108397, 12.447830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437019, 24.826611, 12.090991>,  <22.125101, 24.235979, 12.533493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437019, 24.826611, 12.090991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.631004, 24.476837, 12.085699>,  <22.747396, 24.266973, 12.082524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.631004, 24.476837, 12.085699>,  <22.437019, 24.826611, 12.090991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631004, 24.476837, 12.085699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117685, -0.050264, -0.991778,
		0.866579, 0.482534, -0.127284,
		0.484964, -0.874434, -0.013229,
		22.776493, 24.214506, 12.081730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.942293, 24.909182, 11.560139>,  <22.437019, 24.826611, 12.090991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.942293, 24.909182, 11.560139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.917732, 24.511932, 11.600019>,  <22.902996, 24.273582, 11.623946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.917732, 24.511932, 11.600019>,  <22.942293, 24.909182, 11.560139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.917732, 24.511932, 11.600019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010618, -0.100533, -0.994877,
		0.998057, -0.060029, 0.016717,
		-0.061402, -0.993121, 0.099700,
		22.899311, 24.213997, 11.629929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.471197, 24.603754, 11.162843>,  <22.942293, 24.909182, 11.560139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.471197, 24.603754, 11.162843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.200817, 24.312237, 11.206572>,  <23.038589, 24.137327, 11.232809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.200817, 24.312237, 11.206572>,  <23.471197, 24.603754, 11.162843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.200817, 24.312237, 11.206572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045944, -0.106381, -0.993263,
		0.735514, -0.676419, 0.038425,
		-0.675950, -0.728794, 0.109322,
		22.998032, 24.093599, 11.239368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.696753, 23.887587, 10.917277>,  <23.471197, 24.603754, 11.162843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.696753, 23.887587, 10.917277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.296890, 23.885513, 10.906979>,  <23.056973, 23.884270, 10.900800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.296890, 23.885513, 10.906979>,  <23.696753, 23.887587, 10.917277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.296890, 23.885513, 10.906979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026224, -0.143891, -0.989246,
		0.001424, -0.989580, 0.143977,
		-0.999655, -0.005184, -0.025746,
		22.996994, 23.883959, 10.899255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569262, 23.277292, 10.580311>,  <23.696753, 23.887587, 10.917277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569262, 23.277292, 10.580311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.231659, 23.491280, 10.565042>,  <23.029097, 23.619673, 10.555882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.231659, 23.491280, 10.565042>,  <23.569262, 23.277292, 10.580311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.231659, 23.491280, 10.565042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011302, -0.088893, -0.995977,
		-0.536212, -0.840181, 0.081072,
		-0.844008, 0.534971, -0.038170,
		22.978456, 23.651772, 10.553592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329260, 23.105532, 9.994080>,  <23.569262, 23.277292, 10.580311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329260, 23.105532, 9.994080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.069019, 23.404819, 10.046053>,  <22.912874, 23.584393, 10.077237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.069019, 23.404819, 10.046053>,  <23.329260, 23.105532, 9.994080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.069019, 23.404819, 10.046053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068161, 0.112872, -0.991269,
		-0.756353, -0.653779, -0.022436,
		-0.650603, 0.748220, 0.129933,
		22.873838, 23.629286, 10.085033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.942432, 22.542269, 10.211296>,  <23.329260, 23.105532, 9.994080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.942432, 22.542269, 10.211296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.938931, 22.142422, 10.200830>,  <22.936831, 21.902514, 10.194550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.938931, 22.142422, 10.200830>,  <22.942432, 22.542269, 10.211296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.938931, 22.142422, 10.200830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058724, -0.025607, 0.997946,
		-0.998236, 0.010272, -0.058478,
		-0.008753, -0.999619, -0.026165,
		22.936304, 21.842535, 10.192980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.551008, 22.282366, 10.870457>,  <22.942432, 22.542269, 10.211296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.551008, 22.282366, 10.870457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.744026, 21.960934, 10.731080>,  <22.859837, 21.768074, 10.647454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.744026, 21.960934, 10.731080>,  <22.551008, 22.282366, 10.870457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744026, 21.960934, 10.731080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075519, -0.434513, 0.897494,
		-0.872610, -0.406766, -0.270357,
		0.482543, -0.803580, -0.348442,
		22.888790, 21.719860, 10.626548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.245308, 21.752687, 11.280719>,  <22.551008, 22.282366, 10.870457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.245308, 21.752687, 11.280719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.594063, 21.609177, 11.147399>,  <22.803316, 21.523069, 11.067407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.594063, 21.609177, 11.147399>,  <22.245308, 21.752687, 11.280719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594063, 21.609177, 11.147399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217093, -0.326898, 0.919787,
		-0.438955, -0.874309, -0.207131,
		0.871889, -0.358778, -0.333300,
		22.855629, 21.501543, 11.047409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242422, 21.020987, 11.393044>,  <22.245308, 21.752687, 11.280719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242422, 21.020987, 11.393044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.611504, 21.175129, 11.397407>,  <22.832952, 21.267614, 11.400023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.611504, 21.175129, 11.397407>,  <22.242422, 21.020987, 11.393044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.611504, 21.175129, 11.397407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103150, -0.274042, 0.956170,
		0.371455, -0.881136, -0.292609,
		0.922703, 0.385356, 0.010905,
		22.888315, 21.290735, 11.400678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.627150, 20.562876, 11.819550>,  <22.242422, 21.020987, 11.393044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.627150, 20.562876, 11.819550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.881714, 20.869698, 11.787028>,  <23.034452, 21.053791, 11.767515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.881714, 20.869698, 11.787028>,  <22.627150, 20.562876, 11.819550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.881714, 20.869698, 11.787028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346800, -0.190386, 0.918413,
		0.688995, -0.612682, -0.387178,
		0.636408, 0.767056, -0.081303,
		23.072636, 21.099813, 11.762637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269960, 20.358538, 12.160758>,  <22.627150, 20.562876, 11.819550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269960, 20.358538, 12.160758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.286873, 20.758148, 12.155751>,  <23.297020, 20.997915, 12.152747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.286873, 20.758148, 12.155751>,  <23.269960, 20.358538, 12.160758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.286873, 20.758148, 12.155751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378288, -0.004412, 0.925678,
		0.924722, -0.043872, -0.378106,
		0.042280, 0.999027, -0.012517,
		23.299557, 21.057856, 12.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933929, 20.549576, 12.406894>,  <23.269960, 20.358538, 12.160758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933929, 20.549576, 12.406894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.709160, 20.875206, 12.465581>,  <23.574299, 21.070583, 12.500793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.709160, 20.875206, 12.465581>,  <23.933929, 20.549576, 12.406894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.709160, 20.875206, 12.465581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296045, 0.032299, 0.954628,
		0.772398, 0.579863, -0.259152,
		-0.561924, 0.814074, 0.146718,
		23.540583, 21.119429, 12.509596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287163, 20.942099, 12.875855>,  <23.933929, 20.549576, 12.406894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287163, 20.942099, 12.875855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.925301, 21.111359, 12.896047>,  <23.708183, 21.212914, 12.908161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.925301, 21.111359, 12.896047>,  <24.287163, 20.942099, 12.875855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.925301, 21.111359, 12.896047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098927, 0.093316, 0.990710,
		0.414506, 0.901242, -0.126280,
		-0.904654, 0.423148, 0.050477,
		23.653904, 21.238302, 12.911190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339699, 21.655722, 13.131912>,  <24.287163, 20.942099, 12.875855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339699, 21.655722, 13.131912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.981098, 21.494926, 13.206416>,  <23.765938, 21.398449, 13.251119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.981098, 21.494926, 13.206416>,  <24.339699, 21.655722, 13.131912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.981098, 21.494926, 13.206416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099920, 0.226126, 0.968960,
		-0.431629, 0.887284, -0.162555,
		-0.896500, -0.401988, 0.186260,
		23.712149, 21.374331, 13.262294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.949398, 22.221977, 13.602853>,  <24.339699, 21.655722, 13.131912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.949398, 22.221977, 13.602853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.704773, 21.906067, 13.621819>,  <23.557999, 21.716520, 13.633200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.704773, 21.906067, 13.621819>,  <23.949398, 22.221977, 13.602853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.704773, 21.906067, 13.621819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121116, 0.152672, 0.980827,
		-0.781872, 0.594094, -0.189022,
		-0.611562, -0.789775, 0.047416,
		23.521305, 21.669134, 13.636045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396500, 22.497908, 13.876230>,  <23.949398, 22.221977, 13.602853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396500, 22.497908, 13.876230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.390659, 22.101040, 13.925855>,  <23.387156, 21.862919, 13.955629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.390659, 22.101040, 13.925855>,  <23.396500, 22.497908, 13.876230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390659, 22.101040, 13.925855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270507, 0.123367, 0.954781,
		-0.962607, -0.019618, -0.270189,
		-0.014602, -0.992167, 0.124061,
		23.386278, 21.803391, 13.963073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.764116, 22.335005, 14.239022>,  <23.396500, 22.497908, 13.876230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.764116, 22.335005, 14.239022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.038284, 22.057800, 14.328406>,  <23.202785, 21.891478, 14.382037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.038284, 22.057800, 14.328406>,  <22.764116, 22.335005, 14.239022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.038284, 22.057800, 14.328406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275813, 0.036920, 0.960502,
		-0.673888, -0.719982, -0.165836,
		0.685421, -0.693010, 0.223460,
		23.243910, 21.849897, 14.395445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.515148, 21.917082, 14.808093>,  <22.764116, 22.335005, 14.239022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.515148, 21.917082, 14.808093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.891987, 21.784077, 14.825498>,  <23.118090, 21.704273, 14.835940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.891987, 21.784077, 14.825498>,  <22.515148, 21.917082, 14.808093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.891987, 21.784077, 14.825498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087173, -0.117535, 0.989235,
		-0.323819, -0.935746, -0.139715,
		0.942095, -0.332512, 0.043512,
		23.174616, 21.684322, 14.838552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499569, 21.508314, 15.275020>,  <22.515148, 21.917082, 14.808093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499569, 21.508314, 15.275020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.891743, 21.586952, 15.271052>,  <23.127047, 21.634134, 15.268672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.891743, 21.586952, 15.271052>,  <22.499569, 21.508314, 15.275020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.891743, 21.586952, 15.271052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008576, 0.007673, 0.999934,
		0.196658, -0.980455, 0.005837,
		0.980435, 0.196595, -0.009917,
		23.185873, 21.645931, 15.268077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.398979, 20.735437, 15.289876>,  <22.499569, 21.508314, 15.275020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.398979, 20.735437, 15.289876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.124016, 20.460175, 15.382751>,  <21.959038, 20.295017, 15.438476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.124016, 20.460175, 15.382751>,  <22.398979, 20.735437, 15.289876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.124016, 20.460175, 15.382751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015131, -0.306058, -0.951893,
		0.726113, -0.657853, 0.199974,
		-0.687409, -0.688156, 0.232187,
		21.917793, 20.253727, 15.452407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.594810, 20.138567, 14.873236>,  <22.398979, 20.735437, 15.289876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.594810, 20.138567, 14.873236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.207043, 20.067375, 14.940822>,  <21.974382, 20.024660, 14.981374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.207043, 20.067375, 14.940822>,  <22.594810, 20.138567, 14.873236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207043, 20.067375, 14.940822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104283, -0.324497, -0.940121,
		0.222153, -0.928991, 0.296013,
		-0.969419, -0.177981, 0.168966,
		21.916218, 20.013981, 14.991511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.494366, 19.529530, 14.581770>,  <22.594810, 20.138567, 14.873236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.494366, 19.529530, 14.581770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.117790, 19.662457, 14.604604>,  <21.891846, 19.742212, 14.618304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.117790, 19.662457, 14.604604>,  <22.494366, 19.529530, 14.581770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117790, 19.662457, 14.604604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157880, -0.284854, -0.945480,
		-0.297960, -0.899116, 0.320640,
		-0.941431, 0.332338, 0.057077,
		21.835358, 19.762152, 14.621729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041101, 18.920759, 14.449216>,  <22.494366, 19.529530, 14.581770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041101, 18.920759, 14.449216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.821453, 19.246666, 14.374784>,  <21.689665, 19.442209, 14.330124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.821453, 19.246666, 14.374784>,  <22.041101, 18.920759, 14.449216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.821453, 19.246666, 14.374784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207151, -0.348396, -0.914171,
		-0.809665, -0.463442, 0.360090,
		-0.549119, 0.814765, -0.186081,
		21.656717, 19.491095, 14.318959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512413, 18.693016, 14.227601>,  <22.041101, 18.920759, 14.449216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512413, 18.693016, 14.227601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.440983, 19.063087, 14.093644>,  <21.398125, 19.285131, 14.013270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.440983, 19.063087, 14.093644>,  <21.512413, 18.693016, 14.227601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440983, 19.063087, 14.093644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242037, -0.371208, -0.896450,
		-0.953693, -0.079026, 0.290216,
		-0.178573, 0.925181, -0.334891,
		21.387411, 19.340641, 13.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004919, 18.651270, 13.873217>,  <21.512413, 18.693016, 14.227601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004919, 18.651270, 13.873217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.103889, 19.011879, 13.731208>,  <21.163271, 19.228245, 13.646002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.103889, 19.011879, 13.731208>,  <21.004919, 18.651270, 13.873217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103889, 19.011879, 13.731208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142293, -0.328634, -0.933677,
		-0.958402, 0.281532, 0.046968,
		0.247425, 0.901521, -0.355023,
		21.178118, 19.282335, 13.624701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492508, 18.859861, 13.437407>,  <21.004919, 18.651270, 13.873217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492508, 18.859861, 13.437407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.805340, 19.077579, 13.316019>,  <20.993040, 19.208210, 13.243187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.805340, 19.077579, 13.316019>,  <20.492508, 18.859861, 13.437407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.805340, 19.077579, 13.316019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115761, -0.351604, -0.928964,
		-0.612331, 0.761655, -0.211975,
		0.782081, 0.544294, -0.303468,
		21.039965, 19.240868, 13.224978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229801, 19.246532, 12.861982>,  <20.492508, 18.859861, 13.437407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229801, 19.246532, 12.861982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.626148, 19.195446, 12.844667>,  <20.863956, 19.164795, 12.834278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.626148, 19.195446, 12.844667>,  <20.229801, 19.246532, 12.861982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626148, 19.195446, 12.844667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086450, -0.355239, -0.930769,
		0.103496, 0.926010, -0.363036,
		0.990866, -0.127715, -0.043287,
		20.923409, 19.157131, 12.831681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.509789, 19.701618, 12.291973>,  <20.229801, 19.246532, 12.861982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.509789, 19.701618, 12.291973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.733433, 19.374039, 12.343697>,  <20.867619, 19.177490, 12.374731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.733433, 19.374039, 12.343697>,  <20.509789, 19.701618, 12.291973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733433, 19.374039, 12.343697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007283, -0.151107, -0.988490,
		0.829062, 0.553615, -0.078521,
		0.559109, -0.818948, 0.129309,
		20.901165, 19.128355, 12.382489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.959579, 19.715038, 11.649713>,  <20.509789, 19.701618, 12.291973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.959579, 19.715038, 11.649713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.014858, 19.347435, 11.797403>,  <21.048025, 19.126873, 11.886018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.014858, 19.347435, 11.797403>,  <20.959579, 19.715038, 11.649713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014858, 19.347435, 11.797403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004337, -0.372239, -0.928127,
		0.990396, 0.129864, -0.047456,
		0.138195, -0.919007, 0.369227,
		21.056316, 19.071733, 11.908172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457647, 19.384975, 11.249925>,  <20.959579, 19.715038, 11.649713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457647, 19.384975, 11.249925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.248085, 19.090908, 11.421996>,  <21.122347, 18.914469, 11.525239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.248085, 19.090908, 11.421996>,  <21.457647, 19.384975, 11.249925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248085, 19.090908, 11.421996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030189, -0.520746, -0.853178,
		0.851241, -0.433998, 0.295016,
		-0.523906, -0.735166, 0.430178,
		21.090914, 18.870358, 11.551049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711447, 18.668753, 11.100702>,  <21.457647, 19.384975, 11.249925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711447, 18.668753, 11.100702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.333763, 18.583572, 11.201198>,  <21.107153, 18.532463, 11.261495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.333763, 18.583572, 11.201198>,  <21.711447, 18.668753, 11.100702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.333763, 18.583572, 11.201198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105221, -0.527809, -0.842821,
		0.312087, -0.822234, 0.475955,
		-0.944209, -0.212953, 0.251238,
		21.050501, 18.519686, 11.276569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637911, 18.145781, 10.693587>,  <21.711447, 18.668753, 11.100702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637911, 18.145781, 10.693587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.274521, 18.253365, 10.821548>,  <21.056488, 18.317915, 10.898325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.274521, 18.253365, 10.821548>,  <21.637911, 18.145781, 10.693587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274521, 18.253365, 10.821548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389905, -0.269775, -0.880452,
		-0.150502, -0.924599, 0.349951,
		-0.908473, 0.268958, 0.319904,
		21.001980, 18.334051, 10.917520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.264290, 17.495749, 10.488523>,  <21.637911, 18.145781, 10.693587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.264290, 17.495749, 10.488523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.041939, 17.825825, 10.528644>,  <20.908529, 18.023870, 10.552716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.041939, 17.825825, 10.528644>,  <21.264290, 17.495749, 10.488523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041939, 17.825825, 10.528644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284112, -0.075207, -0.955837,
		-0.781206, -0.559823, 0.276253,
		-0.555875, 0.825192, 0.100301,
		20.875175, 18.073383, 10.558734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.261238, 18.985451, 16.720985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.394943, 19.359192, 16.671589>,  <18.475166, 19.583437, 16.641951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.394943, 19.359192, 16.671589>,  <18.261238, 18.985451, 16.720985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394943, 19.359192, 16.671589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470520, -0.051905, 0.880862,
		0.816627, -0.352543, -0.456982,
		0.334262, 0.934355, -0.123492,
		18.495222, 19.639498, 16.634541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973351, 18.990374, 16.828413>,  <18.261238, 18.985451, 16.720985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973351, 18.990374, 16.828413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.878426, 19.371220, 16.905518>,  <18.821470, 19.599728, 16.951780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.878426, 19.371220, 16.905518>,  <18.973351, 18.990374, 16.828413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878426, 19.371220, 16.905518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567630, -0.025121, 0.822900,
		0.788340, 0.304700, -0.534489,
		-0.237311, 0.952117, 0.192760,
		18.807232, 19.656855, 16.963346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598139, 19.303848, 16.974506>,  <18.973351, 18.990374, 16.828413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.598139, 19.303848, 16.974506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.303177, 19.522442, 17.133297>,  <19.126200, 19.653597, 17.228571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.303177, 19.522442, 17.133297>,  <19.598139, 19.303848, 16.974506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303177, 19.522442, 17.133297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555625, 0.156582, 0.816555,
		0.384074, 0.822702, -0.419104,
		-0.737406, 0.546483, 0.396975,
		19.081955, 19.686386, 17.252390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890858, 19.870831, 17.285839>,  <19.598139, 19.303848, 16.974506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890858, 19.870831, 17.285839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.540680, 19.853249, 17.478365>,  <19.330572, 19.842699, 17.593880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.540680, 19.853249, 17.478365>,  <19.890858, 19.870831, 17.285839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.540680, 19.853249, 17.478365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472728, 0.129434, 0.871651,
		-0.100611, 0.990613, -0.092534,
		-0.875446, -0.043954, 0.481313,
		19.278046, 19.840063, 17.622759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843170, 20.375952, 17.759798>,  <19.890858, 19.870831, 17.285839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843170, 20.375952, 17.759798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.555584, 20.131573, 17.892363>,  <19.383032, 19.984945, 17.971901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.555584, 20.131573, 17.892363>,  <19.843170, 20.375952, 17.759798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555584, 20.131573, 17.892363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188579, 0.287470, 0.939041,
		-0.668976, 0.737634, -0.091468,
		-0.718964, -0.610947, 0.331413,
		19.339895, 19.948288, 17.991787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676979, 20.711931, 18.366716>,  <19.843170, 20.375952, 17.759798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676979, 20.711931, 18.366716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.517845, 20.345856, 18.392521>,  <19.422365, 20.126211, 18.408003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.517845, 20.345856, 18.392521>,  <19.676979, 20.711931, 18.366716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517845, 20.345856, 18.392521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182356, -0.009966, 0.983182,
		-0.899152, 0.402907, 0.170854,
		-0.397834, -0.915187, 0.064511,
		19.398495, 20.071301, 18.411875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.116875, 20.756983, 18.831661>,  <19.676979, 20.711931, 18.366716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.116875, 20.756983, 18.831661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.261028, 20.383907, 18.825821>,  <19.347521, 20.160061, 18.822317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.261028, 20.383907, 18.825821>,  <19.116875, 20.756983, 18.831661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261028, 20.383907, 18.825821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271928, 0.090073, 0.958093,
		-0.892289, -0.349249, 0.286086,
		0.360381, -0.932691, -0.014599,
		19.369143, 20.104099, 18.821442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.778744, 20.389561, 19.355240>,  <19.116875, 20.756983, 18.831661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.778744, 20.389561, 19.355240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.114716, 20.179878, 19.299053>,  <19.316298, 20.054070, 19.265341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.114716, 20.179878, 19.299053>,  <18.778744, 20.389561, 19.355240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114716, 20.179878, 19.299053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175739, 0.017837, 0.984275,
		-0.513456, -0.851405, 0.107105,
		0.839928, -0.524205, -0.140467,
		19.366693, 20.022617, 19.256914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691481, 19.982115, 19.940285>,  <18.778744, 20.389561, 19.355240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691481, 19.982115, 19.940285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.065338, 19.964199, 19.799185>,  <19.289654, 19.953449, 19.714525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.065338, 19.964199, 19.799185>,  <18.691481, 19.982115, 19.940285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065338, 19.964199, 19.799185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354348, 0.034777, 0.934467,
		-0.029587, -0.998391, 0.048375,
		0.934645, -0.044790, -0.352749,
		19.345732, 19.950762, 19.693359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042328, 19.655052, 20.526342>,  <18.691481, 19.982115, 19.940285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042328, 19.655052, 20.526342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.325394, 19.776821, 20.271301>,  <19.495234, 19.849882, 20.118277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.325394, 19.776821, 20.271301>,  <19.042328, 19.655052, 20.526342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325394, 19.776821, 20.271301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600844, 0.215523, 0.769764,
		0.371752, -0.927834, -0.030393,
		0.707663, 0.304423, -0.637605,
		19.537693, 19.868149, 20.080019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713909, 19.329830, 20.732441>,  <19.042328, 19.655052, 20.526342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713909, 19.329830, 20.732441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.806938, 19.649372, 20.510544>,  <19.862755, 19.841097, 20.377405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.806938, 19.649372, 20.510544>,  <19.713909, 19.329830, 20.732441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.806938, 19.649372, 20.510544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627991, 0.312196, 0.712854,
		0.742656, -0.514165, -0.429065,
		0.232572, 0.798855, -0.554745,
		19.876709, 19.889029, 20.344120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.507088, 19.306705, 20.662767>,  <19.713909, 19.329830, 20.732441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.507088, 19.306705, 20.662767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.367874, 19.679798, 20.625072>,  <20.284346, 19.903654, 20.602455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.367874, 19.679798, 20.625072>,  <20.507088, 19.306705, 20.662767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367874, 19.679798, 20.625072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664756, 0.316415, 0.676743,
		0.661038, 0.172886, -0.730164,
		-0.348034, 0.932734, -0.094236,
		20.263464, 19.959618, 20.596802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096882, 19.722612, 20.538527>,  <20.507088, 19.306705, 20.662767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096882, 19.722612, 20.538527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.797981, 19.923859, 20.712187>,  <20.618641, 20.044607, 20.816383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.797981, 19.923859, 20.712187>,  <21.096882, 19.722612, 20.538527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.797981, 19.923859, 20.712187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540850, 0.080838, 0.837225,
		0.386125, 0.860430, -0.332517,
		-0.747254, 0.503116, 0.434150,
		20.573805, 20.074793, 20.842432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296450, 20.374010, 20.655537>,  <21.096882, 19.722612, 20.538527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296450, 20.374010, 20.655537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.037918, 20.277107, 20.944969>,  <20.882799, 20.218966, 21.118629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.037918, 20.277107, 20.944969>,  <21.296450, 20.374010, 20.655537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037918, 20.277107, 20.944969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546664, 0.514578, 0.660582,
		-0.532370, 0.822509, -0.200153,
		-0.646329, -0.242258, 0.723581,
		20.844019, 20.204430, 21.162043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.944925, 20.694141, 20.647394>,  <21.296450, 20.374010, 20.655537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.944925, 20.694141, 20.647394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.336090, 20.756580, 20.702999>,  <22.570789, 20.794044, 20.736362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.336090, 20.756580, 20.702999>,  <21.944925, 20.694141, 20.647394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336090, 20.756580, 20.702999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141306, -0.003642, -0.989959,
		-0.154025, 0.987735, -0.025619,
		0.977911, 0.156098, 0.139012,
		22.629463, 20.803410, 20.744703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.126614, 21.275520, 20.218994>,  <21.944925, 20.694141, 20.647394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.126614, 21.275520, 20.218994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.436905, 21.033550, 20.290895>,  <22.623079, 20.888369, 20.334036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.436905, 21.033550, 20.290895>,  <22.126614, 21.275520, 20.218994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.436905, 21.033550, 20.290895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234628, 0.012041, -0.972011,
		0.585827, 0.796193, 0.151272,
		0.775729, -0.604923, 0.179755,
		22.669624, 20.852074, 20.344822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.671185, 21.656483, 19.966572>,  <22.126614, 21.275520, 20.218994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.671185, 21.656483, 19.966572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.754871, 21.265762, 19.984873>,  <22.805082, 21.031330, 19.995853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.754871, 21.265762, 19.984873>,  <22.671185, 21.656483, 19.966572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.754871, 21.265762, 19.984873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271199, 0.013009, -0.962435,
		0.939511, 0.213763, 0.267628,
		0.209215, -0.976799, 0.045750,
		22.817636, 20.972723, 19.998598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160975, 21.610374, 19.397249>,  <22.671185, 21.656483, 19.966572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160975, 21.610374, 19.397249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.057018, 21.239975, 19.506779>,  <22.994644, 21.017735, 19.572496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.057018, 21.239975, 19.506779>,  <23.160975, 21.610374, 19.397249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057018, 21.239975, 19.506779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023295, -0.289500, -0.956895,
		0.965357, -0.242308, 0.096809,
		-0.259889, -0.926001, 0.273826,
		22.979052, 20.962175, 19.588926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.717422, 21.146442, 19.174932>,  <23.160975, 21.610374, 19.397249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.717422, 21.146442, 19.174932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.366890, 20.957584, 19.213148>,  <23.156570, 20.844271, 19.236076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.366890, 20.957584, 19.213148>,  <23.717422, 21.146442, 19.174932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.366890, 20.957584, 19.213148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044343, -0.276553, -0.959975,
		0.479667, -0.837018, 0.263288,
		-0.876329, -0.472143, 0.095537,
		23.103991, 20.815941, 19.241810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818586, 20.577908, 18.712122>,  <23.717422, 21.146442, 19.174932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818586, 20.577908, 18.712122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.427502, 20.602890, 18.792305>,  <23.192852, 20.617880, 18.840414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.427502, 20.602890, 18.792305>,  <23.818586, 20.577908, 18.712122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.427502, 20.602890, 18.792305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209679, -0.339976, -0.916761,
		0.010894, -0.938358, 0.345493,
		-0.977709, 0.062456, 0.200458,
		23.134190, 20.621628, 18.852442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550316, 20.000187, 18.389166>,  <23.818586, 20.577908, 18.712122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550316, 20.000187, 18.389166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.220592, 20.221844, 18.435543>,  <23.022758, 20.354837, 18.463369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.220592, 20.221844, 18.435543>,  <23.550316, 20.000187, 18.389166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.220592, 20.221844, 18.435543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391113, -0.409327, -0.824307,
		-0.409327, -0.724828, 0.554144,
		0.824307, -0.554144, -0.115941,
		22.973301, 20.388086, 18.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.895433, 19.553970, 18.285107>,  <23.550316, 20.000187, 18.389166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.895433, 19.553970, 18.285107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.780590, 19.928425, 18.203901>,  <22.711683, 20.153097, 18.155178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.780590, 19.928425, 18.203901>,  <22.895433, 19.553970, 18.285107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.780590, 19.928425, 18.203901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396123, -0.308996, -0.864643,
		-0.872156, -0.167828, 0.459541,
		-0.287108, 0.936138, -0.203013,
		22.694458, 20.209267, 18.142998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.263969, 19.452993, 18.065857>,  <22.895433, 19.553970, 18.285107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.263969, 19.452993, 18.065857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.352066, 19.818192, 17.928493>,  <22.404924, 20.037312, 17.846075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.352066, 19.818192, 17.928493>,  <22.263969, 19.452993, 18.065857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352066, 19.818192, 17.928493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425314, -0.226941, -0.876131,
		-0.877838, 0.339018, 0.338329,
		0.220243, 0.912997, -0.343407,
		22.418139, 20.092091, 17.825472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.611591, 19.784576, 17.878996>,  <22.263969, 19.452993, 18.065857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.611591, 19.784576, 17.878996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.893551, 19.982800, 17.676003>,  <22.062727, 20.101734, 17.554207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.893551, 19.982800, 17.676003>,  <21.611591, 19.784576, 17.878996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893551, 19.982800, 17.676003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577880, -0.013650, -0.816008,
		-0.411306, 0.868468, 0.276751,
		0.704899, 0.495558, -0.507484,
		22.105021, 20.131468, 17.523758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328676, 20.324251, 17.521530>,  <21.611591, 19.784576, 17.878996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328676, 20.324251, 17.521530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.671726, 20.253029, 17.328541>,  <21.877556, 20.210297, 17.212748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.671726, 20.253029, 17.328541>,  <21.328676, 20.324251, 17.521530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671726, 20.253029, 17.328541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471692, 0.101466, -0.875906,
		0.204913, 0.978776, 0.003033,
		0.857623, -0.178054, -0.482473,
		21.929012, 20.199614, 17.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189787, 20.654024, 16.872967>,  <21.328676, 20.324251, 17.521530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189787, 20.654024, 16.872967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.514191, 20.428207, 16.811573>,  <21.708834, 20.292717, 16.774736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.514191, 20.428207, 16.811573>,  <21.189787, 20.654024, 16.872967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.514191, 20.428207, 16.811573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146073, 0.058640, -0.987534,
		0.566503, 0.823320, -0.034906,
		0.811010, -0.564540, -0.153485,
		21.757494, 20.258846, 16.765528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.553526, 20.999359, 16.412792>,  <21.189787, 20.654024, 16.872967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.553526, 20.999359, 16.412792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.664536, 20.616760, 16.376801>,  <21.731142, 20.387201, 16.355206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.664536, 20.616760, 16.376801>,  <21.553526, 20.999359, 16.412792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664536, 20.616760, 16.376801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186062, 0.038372, -0.981789,
		0.942529, 0.289211, -0.167318,
		0.277523, -0.956496, -0.089977,
		21.747793, 20.329811, 16.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120909, 21.030653, 15.899082>,  <21.553526, 20.999359, 16.412792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120909, 21.030653, 15.899082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.967659, 20.661419, 15.912534>,  <21.875710, 20.439878, 15.920605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.967659, 20.661419, 15.912534>,  <22.120909, 21.030653, 15.899082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967659, 20.661419, 15.912534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094741, -0.075485, -0.992636,
		0.918825, -0.377118, 0.116374,
		-0.383126, -0.923084, 0.033629,
		21.852722, 20.384493, 15.922623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.778482, 21.260427, 15.885901>,  <22.120909, 21.030653, 15.899082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.778482, 21.260427, 15.885901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.081009, 21.503941, 15.790090>,  <23.262524, 21.650047, 15.732603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.081009, 21.503941, 15.790090>,  <22.778482, 21.260427, 15.885901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.081009, 21.503941, 15.790090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243494, 0.077878, 0.966771,
		0.607206, -0.789507, -0.089334,
		0.756315, 0.608781, -0.239529,
		23.307903, 21.686575, 15.718231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.422878, 20.968330, 16.153376>,  <22.778482, 21.260427, 15.885901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.422878, 20.968330, 16.153376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.490879, 21.358040, 16.094198>,  <23.531679, 21.591866, 16.058693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.490879, 21.358040, 16.094198>,  <23.422878, 20.968330, 16.153376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.490879, 21.358040, 16.094198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410863, 0.066381, 0.909277,
		0.895707, -0.215362, -0.389009,
		0.170001, 0.974276, -0.147942,
		23.541880, 21.650322, 16.049816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.949116, 21.096771, 16.489513>,  <23.422878, 20.968330, 16.153376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.949116, 21.096771, 16.489513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.818092, 21.473949, 16.465660>,  <23.739479, 21.700256, 16.451347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.818092, 21.473949, 16.465660>,  <23.949116, 21.096771, 16.489513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.818092, 21.473949, 16.465660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180804, 0.124506, 0.975607,
		0.927370, 0.308787, -0.211272,
		-0.327559, 0.942947, -0.059633,
		23.719824, 21.756834, 16.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.423283, 21.477459, 16.825480>,  <23.949116, 21.096771, 16.489513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.423283, 21.477459, 16.825480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.110764, 21.726738, 16.811634>,  <23.923252, 21.876305, 16.803326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.110764, 21.726738, 16.811634>,  <24.423283, 21.477459, 16.825480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.110764, 21.726738, 16.811634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179478, 0.277436, 0.943831,
		0.597795, 0.731202, -0.328611,
		-0.781300, 0.623196, -0.034615,
		23.876373, 21.913696, 16.801250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674820, 22.159313, 16.942724>,  <24.423283, 21.477459, 16.825480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674820, 22.159313, 16.942724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.282845, 22.143234, 17.020811>,  <24.047659, 22.133587, 17.067663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.282845, 22.143234, 17.020811>,  <24.674820, 22.159313, 16.942724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282845, 22.143234, 17.020811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165690, 0.380086, 0.909990,
		-0.110777, 0.924077, -0.365800,
		-0.979936, -0.040196, 0.195215,
		23.988863, 22.131176, 17.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540672, 22.851009, 17.241093>,  <24.674820, 22.159313, 16.942724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540672, 22.851009, 17.241093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.221745, 22.635792, 17.350485>,  <24.030388, 22.506662, 17.416121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.221745, 22.635792, 17.350485>,  <24.540672, 22.851009, 17.241093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221745, 22.635792, 17.350485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048596, 0.394415, 0.917647,
		-0.601598, 0.744947, -0.288328,
		-0.797319, -0.538043, 0.273481,
		23.982550, 22.474379, 17.432529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194881, 23.285740, 17.696093>,  <24.540672, 22.851009, 17.241093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194881, 23.285740, 17.696093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.054668, 22.925472, 17.798792>,  <23.970541, 22.709311, 17.860411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.054668, 22.925472, 17.798792>,  <24.194881, 23.285740, 17.696093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.054668, 22.925472, 17.798792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153526, 0.215172, 0.964433,
		-0.923881, 0.377484, 0.062852,
		-0.350534, -0.900670, 0.256747,
		23.949509, 22.655272, 17.875816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827969, 23.792809, 17.411657>,  <24.194881, 23.285740, 17.696093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827969, 23.792809, 17.411657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.622952, 24.108276, 17.547482>,  <23.499941, 24.297556, 17.628977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.622952, 24.108276, 17.547482>,  <23.827969, 23.792809, 17.411657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.622952, 24.108276, 17.547482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042440, 0.418240, -0.907345,
		-0.857612, -0.450643, -0.247837,
		-0.512543, 0.788668, 0.339562,
		23.469189, 24.344877, 17.649351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.181026, 23.758537, 17.071585>,  <23.827969, 23.792809, 17.411657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.181026, 23.758537, 17.071585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.290741, 24.121750, 17.198229>,  <23.356569, 24.339678, 17.274216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.290741, 24.121750, 17.198229>,  <23.181026, 23.758537, 17.071585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.290741, 24.121750, 17.198229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112232, 0.357214, -0.927255,
		-0.955077, 0.218798, 0.199889,
		0.274285, 0.908034, 0.316611,
		23.373026, 24.394159, 17.293213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739042, 24.205662, 16.733831>,  <23.181026, 23.758537, 17.071585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739042, 24.205662, 16.733831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.043682, 24.447586, 16.826931>,  <23.226465, 24.592741, 16.882790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.043682, 24.447586, 16.826931>,  <22.739042, 24.205662, 16.733831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.043682, 24.447586, 16.826931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083501, 0.447741, -0.890256,
		-0.642647, 0.658583, 0.391502,
		0.761599, 0.604811, 0.232747,
		23.272161, 24.629030, 16.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620131, 24.956810, 16.573370>,  <22.739042, 24.205662, 16.733831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620131, 24.956810, 16.573370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.018936, 24.925941, 16.574543>,  <23.258219, 24.907421, 16.575247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.018936, 24.925941, 16.574543>,  <22.620131, 24.956810, 16.573370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018936, 24.925941, 16.574543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022540, 0.254445, -0.966825,
		0.073864, 0.964003, 0.255424,
		0.997014, -0.077171, 0.002935,
		23.318041, 24.902790, 16.575424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.829111, 25.521023, 16.264822>,  <22.620131, 24.956810, 16.573370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.829111, 25.521023, 16.264822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.153427, 25.291481, 16.218668>,  <23.348017, 25.153755, 16.190975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.153427, 25.291481, 16.218668>,  <22.829111, 25.521023, 16.264822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.153427, 25.291481, 16.218668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003471, 0.192407, -0.981309,
		0.585329, 0.796035, 0.154009,
		0.810789, -0.573854, -0.115385,
		23.396664, 25.119326, 16.184053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158823, 25.746469, 15.713836>,  <22.829111, 25.521023, 16.264822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158823, 25.746469, 15.713836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.351288, 25.397194, 15.744878>,  <23.466766, 25.187628, 15.763503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.351288, 25.397194, 15.744878>,  <23.158823, 25.746469, 15.713836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351288, 25.397194, 15.744878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130375, -0.158822, -0.978661,
		0.866883, 0.460777, -0.190261,
		0.481162, -0.873190, 0.077606,
		23.495636, 25.135237, 15.768160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.578339, 25.779476, 15.220181>,  <23.158823, 25.746469, 15.713836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.578339, 25.779476, 15.220181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.545082, 25.386868, 15.289113>,  <23.525127, 25.151302, 15.330473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.545082, 25.386868, 15.289113>,  <23.578339, 25.779476, 15.220181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545082, 25.386868, 15.289113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075709, -0.166209, -0.983180,
		0.993658, -0.094792, -0.060491,
		-0.083143, -0.981524, 0.172331,
		23.520140, 25.092411, 15.340813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.880064, 23.472704, 20.968307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.036617, 23.142391, 20.805874>,  <19.130548, 22.944204, 20.708414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.036617, 23.142391, 20.805874>,  <18.880064, 23.472704, 20.968307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036617, 23.142391, 20.805874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111630, 0.395422, -0.911691,
		0.913432, 0.402152, 0.062579,
		0.391384, -0.825782, -0.406083,
		19.154032, 22.894657, 20.684050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522102, 23.583950, 20.617521>,  <18.880064, 23.472704, 20.968307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522102, 23.583950, 20.617521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.351925, 23.267879, 20.441059>,  <19.249819, 23.078238, 20.335182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.351925, 23.267879, 20.441059>,  <19.522102, 23.583950, 20.617521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351925, 23.267879, 20.441059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084718, 0.520109, -0.849888,
		0.901010, -0.324207, -0.288219,
		-0.425445, -0.790175, -0.441157,
		19.224291, 23.030827, 20.308712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.727962, 23.733433, 19.968624>,  <19.522102, 23.583950, 20.617521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.727962, 23.733433, 19.968624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.518032, 23.396229, 19.921474>,  <19.392073, 23.193907, 19.893185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.518032, 23.396229, 19.921474>,  <19.727962, 23.733433, 19.968624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518032, 23.396229, 19.921474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058068, 0.173613, -0.983100,
		0.849226, -0.509113, -0.140069,
		-0.524827, -0.843008, -0.117874,
		19.360584, 23.143326, 19.886112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984291, 23.406425, 19.439701>,  <19.727962, 23.733433, 19.968624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984291, 23.406425, 19.439701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.616257, 23.250759, 19.421841>,  <19.395435, 23.157360, 19.411123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.616257, 23.250759, 19.421841>,  <19.984291, 23.406425, 19.439701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616257, 23.250759, 19.421841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056558, 0.244781, -0.967927,
		0.387613, -0.888050, -0.247230,
		-0.920085, -0.389165, -0.044654,
		19.340231, 23.134010, 19.408445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873434, 22.869492, 18.873646>,  <19.984291, 23.406425, 19.439701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873434, 22.869492, 18.873646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.502502, 23.002251, 18.942823>,  <19.279943, 23.081905, 18.984329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.502502, 23.002251, 18.942823>,  <19.873434, 22.869492, 18.873646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502502, 23.002251, 18.942823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104760, 0.213428, -0.971326,
		-0.359291, -0.918854, -0.163148,
		-0.927327, 0.331897, 0.172942,
		19.224304, 23.101820, 18.994705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443754, 22.549051, 18.393358>,  <19.873434, 22.869492, 18.873646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443754, 22.549051, 18.393358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.211510, 22.843708, 18.532068>,  <19.072163, 23.020502, 18.615294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.211510, 22.843708, 18.532068>,  <19.443754, 22.549051, 18.393358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211510, 22.843708, 18.532068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393776, 0.118722, -0.911507,
		-0.712623, -0.665782, 0.221140,
		-0.580611, 0.736641, 0.346773,
		19.037327, 23.064701, 18.636101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830301, 22.364304, 18.146585>,  <19.443754, 22.549051, 18.393358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830301, 22.364304, 18.146585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.836357, 22.756428, 18.225338>,  <18.839991, 22.991703, 18.272589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.836357, 22.756428, 18.225338>,  <18.830301, 22.364304, 18.146585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836357, 22.756428, 18.225338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522692, 0.175617, -0.834237,
		-0.852387, -0.090277, 0.515059,
		0.015140, 0.980311, 0.196881,
		18.840899, 23.050522, 18.284403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119276, 22.649139, 18.017473>,  <18.830301, 22.364304, 18.146585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119276, 22.649139, 18.017473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.375252, 22.953842, 17.977064>,  <18.528837, 23.136663, 17.952818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.375252, 22.953842, 17.977064>,  <18.119276, 22.649139, 18.017473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.375252, 22.953842, 17.977064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500117, 0.313065, -0.807387,
		-0.583405, 0.567201, 0.581310,
		0.639939, 0.761757, -0.101023,
		18.567234, 23.182369, 17.946756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.706465, 23.084665, 17.622812>,  <18.119276, 22.649139, 18.017473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.706465, 23.084665, 17.622812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.085415, 23.210476, 17.598965>,  <18.312784, 23.285961, 17.584656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.085415, 23.210476, 17.598965>,  <17.706465, 23.084665, 17.622812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085415, 23.210476, 17.598965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162928, 0.313415, -0.935535,
		-0.275563, 0.896016, 0.348167,
		0.947375, 0.314525, -0.059620,
		18.369627, 23.304834, 17.581079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709810, 23.731440, 17.290983>,  <17.706465, 23.084665, 17.622812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.709810, 23.731440, 17.290983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.092178, 23.625881, 17.239481>,  <18.321598, 23.562546, 17.208580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.092178, 23.625881, 17.239481>,  <17.709810, 23.731440, 17.290983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092178, 23.625881, 17.239481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023806, 0.367393, -0.929761,
		0.292664, 0.891842, 0.344915,
		0.955919, -0.263896, -0.128754,
		18.378954, 23.546713, 17.200855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949602, 24.343372, 16.975992>,  <17.709810, 23.731440, 17.290983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949602, 24.343372, 16.975992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.201977, 24.043037, 16.897854>,  <18.353401, 23.862837, 16.850971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.201977, 24.043037, 16.897854>,  <17.949602, 24.343372, 16.975992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201977, 24.043037, 16.897854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074706, 0.309414, -0.947989,
		0.772229, 0.583527, 0.251312,
		0.630937, -0.750839, -0.195345,
		18.391258, 23.817785, 16.839251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566948, 24.600313, 16.567188>,  <17.949602, 24.343372, 16.975992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566948, 24.600313, 16.567188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.508347, 24.211113, 16.495848>,  <18.473185, 23.977592, 16.453043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.508347, 24.211113, 16.495848>,  <18.566948, 24.600313, 16.567188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508347, 24.211113, 16.495848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043949, 0.173716, -0.983815,
		0.988233, -0.151972, 0.017312,
		-0.146505, -0.972999, -0.178351,
		18.464396, 23.919212, 16.442343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340155, 24.633757, 16.702219>,  <18.566948, 24.600313, 16.567188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340155, 24.633757, 16.702219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.669964, 24.860043, 16.706825>,  <19.867849, 24.995813, 16.709589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.669964, 24.860043, 16.706825>,  <19.340155, 24.633757, 16.702219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.669964, 24.860043, 16.706825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128681, -0.207290, 0.969779,
		0.551005, -0.798122, -0.243712,
		0.824521, 0.565714, 0.011514,
		19.917320, 25.029757, 16.710279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915716, 24.221977, 16.988157>,  <19.340155, 24.633757, 16.702219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.915716, 24.221977, 16.988157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.979282, 24.614670, 17.030016>,  <20.017422, 24.850285, 17.055132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.979282, 24.614670, 17.030016>,  <19.915716, 24.221977, 16.988157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979282, 24.614670, 17.030016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106381, -0.122405, 0.986762,
		0.981545, -0.145677, -0.123889,
		0.158913, 0.981731, 0.104649,
		20.026957, 24.909189, 17.061411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.572048, 24.302313, 17.209831>,  <19.915716, 24.221977, 16.988157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.572048, 24.302313, 17.209831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.359997, 24.620705, 17.326710>,  <20.232765, 24.811739, 17.396837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.359997, 24.620705, 17.326710>,  <20.572048, 24.302313, 17.209831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359997, 24.620705, 17.326710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220170, -0.203560, 0.953985,
		0.818833, 0.570069, -0.067338,
		-0.530131, 0.795980, 0.292194,
		20.200958, 24.859499, 17.414368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022337, 24.581455, 17.801939>,  <20.572048, 24.302313, 17.209831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022337, 24.581455, 17.801939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.688606, 24.795605, 17.854517>,  <20.488369, 24.924093, 17.886065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.688606, 24.795605, 17.854517>,  <21.022337, 24.581455, 17.801939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.688606, 24.795605, 17.854517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236117, 0.131581, 0.962775,
		0.498147, 0.834304, -0.236192,
		-0.834325, 0.535373, 0.131447,
		20.438309, 24.956217, 17.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267202, 25.168608, 18.102009>,  <21.022337, 24.581455, 17.801939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267202, 25.168608, 18.102009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.872955, 25.159664, 18.169008>,  <20.636406, 25.154297, 18.209208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.872955, 25.159664, 18.169008>,  <21.267202, 25.168608, 18.102009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872955, 25.159664, 18.169008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162781, 0.140467, 0.976612,
		-0.045366, 0.989833, -0.134807,
		-0.985619, -0.022361, 0.167499,
		20.577271, 25.152956, 18.219257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.069019, 25.722101, 18.569742>,  <21.267202, 25.168608, 18.102009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.069019, 25.722101, 18.569742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.766762, 25.461960, 18.600838>,  <20.585407, 25.305876, 18.619495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.766762, 25.461960, 18.600838>,  <21.069019, 25.722101, 18.569742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766762, 25.461960, 18.600838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038798, 0.074035, 0.996501,
		-0.653832, 0.756016, -0.030712,
		-0.755644, -0.650353, 0.077739,
		20.540068, 25.266853, 18.624159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.627283, 25.960686, 19.078615>,  <21.069019, 25.722101, 18.569742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.627283, 25.960686, 19.078615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.535339, 25.572605, 19.047960>,  <20.480173, 25.339756, 19.029568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.535339, 25.572605, 19.047960>,  <20.627283, 25.960686, 19.078615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.535339, 25.572605, 19.047960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133691, -0.109476, 0.984958,
		-0.963997, 0.216158, 0.154871,
		-0.229861, -0.970201, -0.076636,
		20.466381, 25.281544, 19.024969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.225237, 25.822607, 19.744709>,  <20.627283, 25.960686, 19.078615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.225237, 25.822607, 19.744709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.302261, 25.452682, 19.613472>,  <20.348476, 25.230728, 19.534729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.302261, 25.452682, 19.613472>,  <20.225237, 25.822607, 19.744709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302261, 25.452682, 19.613472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086777, -0.316993, 0.944450,
		-0.977441, -0.210334, 0.019212,
		0.192560, -0.924811, -0.328094,
		20.360029, 25.175240, 19.515043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.907827, 25.355560, 20.157795>,  <20.225237, 25.822607, 19.744709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.907827, 25.355560, 20.157795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.207165, 25.130619, 20.017090>,  <20.386768, 24.995653, 19.932667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.207165, 25.130619, 20.017090>,  <19.907827, 25.355560, 20.157795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207165, 25.130619, 20.017090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093671, -0.435404, 0.895349,
		-0.656662, -0.702980, -0.273156,
		0.748345, -0.562355, -0.351762,
		20.431669, 24.961912, 19.911562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.869841, 24.744923, 20.520435>,  <19.907827, 25.355560, 20.157795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.869841, 24.744923, 20.520435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.235950, 24.725365, 20.360497>,  <20.455616, 24.713631, 20.264532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.235950, 24.725365, 20.360497>,  <19.869841, 24.744923, 20.520435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.235950, 24.725365, 20.360497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362271, -0.334144, 0.870119,
		-0.176149, -0.941253, -0.288122,
		0.915277, -0.048892, -0.399848,
		20.510534, 24.710697, 20.240541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260750, 24.121439, 20.702757>,  <19.869841, 24.744923, 20.520435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260750, 24.121439, 20.702757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.566265, 24.351055, 20.584705>,  <20.749575, 24.488825, 20.513874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.566265, 24.351055, 20.584705>,  <20.260750, 24.121439, 20.702757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566265, 24.351055, 20.584705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458346, -0.160414, 0.874177,
		0.454470, -0.802960, -0.385632,
		0.763790, 0.574041, -0.295130,
		20.795403, 24.523268, 20.496166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853151, 23.844671, 20.960527>,  <20.260750, 24.121439, 20.702757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853151, 23.844671, 20.960527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.976711, 24.215771, 20.876755>,  <21.050846, 24.438431, 20.826490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.976711, 24.215771, 20.876755>,  <20.853151, 23.844671, 20.960527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976711, 24.215771, 20.876755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582436, -0.010440, 0.812809,
		0.751897, -0.373056, -0.543580,
		0.308898, 0.927750, -0.209431,
		21.069382, 24.494095, 20.813925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.579700, 23.855356, 21.189844>,  <20.853151, 23.844671, 20.960527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.579700, 23.855356, 21.189844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.475601, 24.241364, 21.177151>,  <21.413141, 24.472969, 21.169535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.475601, 24.241364, 21.177151>,  <21.579700, 23.855356, 21.189844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.475601, 24.241364, 21.177151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554484, 0.176282, 0.813310,
		0.790454, 0.194067, -0.580965,
		-0.260250, 0.965020, -0.031736,
		21.397526, 24.530869, 21.167629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214312, 24.186193, 21.199390>,  <21.579700, 23.855356, 21.189844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214312, 24.186193, 21.199390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.943829, 24.451824, 21.326979>,  <21.781538, 24.611202, 21.403532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.943829, 24.451824, 21.326979>,  <22.214312, 24.186193, 21.199390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.943829, 24.451824, 21.326979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473510, 0.060082, 0.878737,
		0.564384, 0.745246, -0.355075,
		-0.676209, 0.664077, 0.318972,
		21.740967, 24.651047, 21.422670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623770, 24.340113, 20.656410>,  <22.214312, 24.186193, 21.199390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623770, 24.340113, 20.656410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.022465, 24.371525, 20.648975>,  <23.261683, 24.390371, 20.644514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.022465, 24.371525, 20.648975>,  <22.623770, 24.340113, 20.656410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.022465, 24.371525, 20.648975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051250, 0.438041, -0.897493,
		-0.062338, 0.895518, 0.440637,
		0.996738, 0.078531, -0.018589,
		23.321486, 24.395084, 20.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.814480, 25.044851, 20.481339>,  <22.623770, 24.340113, 20.656410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.814480, 25.044851, 20.481339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.085842, 24.779636, 20.354755>,  <23.248659, 24.620506, 20.278807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.085842, 24.779636, 20.354755>,  <22.814480, 25.044851, 20.481339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.085842, 24.779636, 20.354755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124305, 0.320937, -0.938908,
		0.724094, 0.676299, 0.135307,
		0.678407, -0.663038, -0.316456,
		23.289364, 24.580725, 20.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.319715, 25.460119, 20.029575>,  <22.814480, 25.044851, 20.481339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.319715, 25.460119, 20.029575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.378277, 25.082058, 19.912783>,  <23.413414, 24.855221, 19.842707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.378277, 25.082058, 19.912783>,  <23.319715, 25.460119, 20.029575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.378277, 25.082058, 19.912783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039703, 0.300540, -0.952943,
		0.988428, 0.127919, 0.081525,
		0.146401, -0.945152, -0.291983,
		23.422197, 24.798512, 19.825188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931097, 25.434078, 19.611717>,  <23.319715, 25.460119, 20.029575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931097, 25.434078, 19.611717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.722359, 25.102009, 19.533241>,  <23.597116, 24.902767, 19.486156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.722359, 25.102009, 19.533241>,  <23.931097, 25.434078, 19.611717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.722359, 25.102009, 19.533241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104474, 0.166058, -0.980566,
		0.846619, -0.532200, 0.000075,
		-0.521845, -0.830174, -0.196188,
		23.565805, 24.852957, 19.474384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313723, 24.991289, 19.118980>,  <23.931097, 25.434078, 19.611717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313723, 24.991289, 19.118980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.951260, 24.837353, 19.048809>,  <23.733782, 24.744991, 19.006706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.951260, 24.837353, 19.048809>,  <24.313723, 24.991289, 19.118980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951260, 24.837353, 19.048809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145792, 0.105131, -0.983713,
		0.397018, -0.916975, -0.039158,
		-0.906157, -0.384843, -0.175427,
		23.679413, 24.721901, 18.996181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416815, 24.578806, 18.567268>,  <24.313723, 24.991289, 19.118980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416815, 24.578806, 18.567268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.022205, 24.644169, 18.570522>,  <23.785439, 24.683386, 18.572475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.022205, 24.644169, 18.570522>,  <24.416815, 24.578806, 18.567268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022205, 24.644169, 18.570522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002997, 0.031672, -0.999494,
		-0.163584, -0.986050, -0.030755,
		-0.986525, 0.163409, 0.008136,
		23.726248, 24.693192, 18.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155043, 24.109276, 18.102186>,  <24.416815, 24.578806, 18.567268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155043, 24.109276, 18.102186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.974770, 24.460598, 18.166014>,  <23.866606, 24.671391, 18.204309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.974770, 24.460598, 18.166014>,  <24.155043, 24.109276, 18.102186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.974770, 24.460598, 18.166014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026405, 0.191790, -0.981081,
		-0.892293, -0.437944, -0.109629,
		-0.450684, 0.878306, 0.159568,
		23.839563, 24.724091, 18.213884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.966129, 23.417843, 18.355215>,  <24.155043, 24.109276, 18.102186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.966129, 23.417843, 18.355215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.978107, 23.018078, 18.361897>,  <23.985294, 22.778219, 18.365906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.978107, 23.018078, 18.361897>,  <23.966129, 23.417843, 18.355215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.978107, 23.018078, 18.361897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163647, 0.021387, 0.986287,
		-0.986064, -0.026800, 0.164191,
		0.029944, -0.999412, 0.016703,
		23.987091, 22.718254, 18.366907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563971, 23.194002, 18.867722>,  <23.966129, 23.417843, 18.355215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563971, 23.194002, 18.867722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.763847, 22.851921, 18.812674>,  <23.883774, 22.646673, 18.779644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.763847, 22.851921, 18.812674>,  <23.563971, 23.194002, 18.867722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.763847, 22.851921, 18.812674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075836, -0.115076, 0.990458,
		-0.862877, -0.505361, 0.007352,
		0.499692, -0.855200, -0.137620,
		23.913755, 22.595362, 18.771387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.314192, 22.832504, 19.384977>,  <23.563971, 23.194002, 18.867722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.314192, 22.832504, 19.384977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.649101, 22.633766, 19.293657>,  <23.850046, 22.514523, 19.238865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.649101, 22.633766, 19.293657>,  <23.314192, 22.832504, 19.384977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.649101, 22.633766, 19.293657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148768, -0.194780, 0.969499,
		-0.526161, -0.845697, -0.089169,
		0.837271, -0.496847, -0.228298,
		23.900282, 22.484713, 19.225168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232412, 22.263281, 19.742920>,  <23.314192, 22.832504, 19.384977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232412, 22.263281, 19.742920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.619915, 22.286137, 19.646387>,  <23.852417, 22.299850, 19.588467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.619915, 22.286137, 19.646387>,  <23.232412, 22.263281, 19.742920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.619915, 22.286137, 19.646387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247915, -0.196848, 0.948572,
		0.006696, -0.978767, -0.204864,
		0.968759, 0.057141, -0.241333,
		23.910543, 22.303278, 19.573988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646923, 21.678270, 20.103895>,  <23.232412, 22.263281, 19.742920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646923, 21.678270, 20.103895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.899738, 21.977943, 20.024645>,  <24.051428, 22.157747, 19.977095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.899738, 21.977943, 20.024645>,  <23.646923, 21.678270, 20.103895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.899738, 21.977943, 20.024645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340926, -0.039223, 0.939272,
		0.695914, -0.661202, -0.280206,
		0.632039, 0.749182, -0.198125,
		24.089350, 22.202698, 19.965208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262093, 21.405212, 20.305063>,  <23.646923, 21.678270, 20.103895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262093, 21.405212, 20.305063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.293861, 21.803864, 20.313353>,  <24.312923, 22.043055, 20.318327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.293861, 21.803864, 20.313353>,  <24.262093, 21.405212, 20.305063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293861, 21.803864, 20.313353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383535, -0.049740, 0.922186,
		0.920105, -0.065294, -0.386192,
		0.079423, 0.996626, 0.020724,
		24.317688, 22.102852, 20.319571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875498, 21.543509, 20.625124>,  <24.262093, 21.405212, 20.305063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875498, 21.543509, 20.625124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.686981, 21.894592, 20.659781>,  <24.573872, 22.105244, 20.680574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.686981, 21.894592, 20.659781>,  <24.875498, 21.543509, 20.625124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686981, 21.894592, 20.659781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024465, -0.111209, 0.993496,
		0.881637, 0.466108, 0.073885,
		-0.471293, 0.877710, 0.086643,
		24.545593, 22.157906, 20.685774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201273, 21.804296, 21.160986>,  <24.875498, 21.543509, 20.625124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201273, 21.804296, 21.160986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.853054, 21.996811, 21.119972>,  <24.644123, 22.112320, 21.095364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.853054, 21.996811, 21.119972>,  <25.201273, 21.804296, 21.160986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853054, 21.996811, 21.119972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106618, 0.018936, 0.994120,
		0.480399, 0.876359, 0.034829,
		-0.870546, 0.481287, -0.102533,
		24.591890, 22.141197, 21.089212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156849, 22.392170, 21.668697>,  <25.201273, 21.804296, 21.160986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156849, 22.392170, 21.668697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798420, 22.247414, 21.565865>,  <24.583363, 22.160561, 21.504166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798420, 22.247414, 21.565865>,  <25.156849, 22.392170, 21.668697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798420, 22.247414, 21.565865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221221, -0.138042, 0.965404,
		-0.384858, 0.921944, 0.043639,
		-0.896073, -0.361889, -0.257080,
		24.529598, 22.138847, 21.488741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.400524, 21.405428, 5.183151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.139706, 21.147533, 5.342726>,  <21.983215, 20.992796, 5.438470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.139706, 21.147533, 5.342726>,  <22.400524, 21.405428, 5.183151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139706, 21.147533, 5.342726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235033, 0.328369, 0.914841,
		-0.720830, 0.690282, -0.062577,
		-0.652046, -0.644737, 0.398937,
		21.944092, 20.954113, 5.462407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.910952, 21.813663, 5.574560>,  <22.400524, 21.405428, 5.183151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.910952, 21.813663, 5.574560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.947197, 21.435764, 5.700568>,  <21.968945, 21.209024, 5.776173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.947197, 21.435764, 5.700568>,  <21.910952, 21.813663, 5.574560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.947197, 21.435764, 5.700568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103403, 0.323538, 0.940548,
		-0.990503, -0.052652, 0.127007,
		0.090613, -0.944749, 0.315021,
		21.974380, 21.152340, 5.795074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637596, 21.823620, 6.259447>,  <21.910952, 21.813663, 5.574560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637596, 21.823620, 6.259447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.788342, 21.453545, 6.277328>,  <21.878790, 21.231499, 6.288057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.788342, 21.453545, 6.277328>,  <21.637596, 21.823620, 6.259447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788342, 21.453545, 6.277328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073261, 0.077882, 0.994267,
		-0.923367, -0.371429, 0.097131,
		0.376864, -0.925189, 0.044703,
		21.901402, 21.175987, 6.290740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182034, 21.426739, 6.651572>,  <21.637596, 21.823620, 6.259447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182034, 21.426739, 6.651572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.550194, 21.272137, 6.675148>,  <21.771090, 21.179377, 6.689294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.550194, 21.272137, 6.675148>,  <21.182034, 21.426739, 6.651572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.550194, 21.272137, 6.675148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019415, 0.195751, 0.980461,
		-0.390490, -0.901275, 0.187674,
		0.920402, -0.386504, 0.058940,
		21.826315, 21.156185, 6.692830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176294, 21.029448, 7.317330>,  <21.182034, 21.426739, 6.651572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176294, 21.029448, 7.317330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.566288, 21.091957, 7.254102>,  <21.800283, 21.129463, 7.216165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.566288, 21.091957, 7.254102>,  <21.176294, 21.029448, 7.317330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.566288, 21.091957, 7.254102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133737, 0.155609, 0.978724,
		0.177552, -0.975378, 0.130815,
		0.974982, 0.156279, -0.158073,
		21.858784, 21.138838, 7.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413347, 20.906916, 7.934336>,  <21.176294, 21.029448, 7.317330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413347, 20.906916, 7.934336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.748547, 21.041512, 7.762506>,  <21.949667, 21.122269, 7.659409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.748547, 21.041512, 7.762506>,  <21.413347, 20.906916, 7.934336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.748547, 21.041512, 7.762506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361579, 0.247180, 0.898979,
		0.408680, -0.908667, 0.085468,
		0.837999, 0.336491, -0.429573,
		21.999947, 21.142460, 7.633635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.902174, 20.615620, 8.303290>,  <21.413347, 20.906916, 7.934336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.902174, 20.615620, 8.303290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.097095, 20.915611, 8.124374>,  <22.214048, 21.095606, 8.017025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.097095, 20.915611, 8.124374>,  <21.902174, 20.615620, 8.303290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097095, 20.915611, 8.124374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480725, 0.197218, 0.854405,
		0.728999, -0.631377, -0.264429,
		0.487302, 0.749979, -0.447291,
		22.243286, 21.140604, 7.990187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640594, 20.551502, 8.334117>,  <21.902174, 20.615620, 8.303290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640594, 20.551502, 8.334117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.589493, 20.942848, 8.269024>,  <22.558832, 21.177656, 8.229968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.589493, 20.942848, 8.269024>,  <22.640594, 20.551502, 8.334117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.589493, 20.942848, 8.269024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395948, 0.200747, 0.896061,
		0.909342, 0.050044, -0.413028,
		-0.127756, 0.978364, -0.162733,
		22.551167, 21.236357, 8.220204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.297493, 20.944347, 8.445712>,  <22.640594, 20.551502, 8.334117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.297493, 20.944347, 8.445712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.001400, 21.204857, 8.512525>,  <22.823744, 21.361162, 8.552612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.001400, 21.204857, 8.512525>,  <23.297493, 20.944347, 8.445712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.001400, 21.204857, 8.512525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476985, 0.333595, 0.813142,
		0.473856, 0.681586, -0.557585,
		-0.740234, 0.651272, 0.167031,
		22.779329, 21.400238, 8.562634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.593433, 21.491442, 8.718838>,  <23.297493, 20.944347, 8.445712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.593433, 21.491442, 8.718838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.206905, 21.551216, 8.802646>,  <22.974989, 21.587080, 8.852930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.206905, 21.551216, 8.802646>,  <23.593433, 21.491442, 8.718838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206905, 21.551216, 8.802646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240312, 0.232646, 0.942404,
		0.092086, 0.961012, -0.260721,
		-0.966318, 0.149437, 0.209519,
		22.917009, 21.596046, 8.865501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.599041, 22.118027, 9.008814>,  <23.593433, 21.491442, 8.718838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.599041, 22.118027, 9.008814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.263668, 21.935047, 9.127321>,  <23.062445, 21.825260, 9.198426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.263668, 21.935047, 9.127321>,  <23.599041, 22.118027, 9.008814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.263668, 21.935047, 9.127321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260509, 0.141107, 0.955104,
		-0.478717, 0.877969, 0.000861,
		-0.838430, -0.457449, 0.296269,
		23.012138, 21.797812, 9.216202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382427, 22.499350, 9.598800>,  <23.599041, 22.118027, 9.008814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382427, 22.499350, 9.598800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.209686, 22.139977, 9.630610>,  <23.106043, 21.924353, 9.649696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.209686, 22.139977, 9.630610>,  <23.382427, 22.499350, 9.598800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.209686, 22.139977, 9.630610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257898, -0.038510, 0.965404,
		-0.864288, 0.437421, 0.248334,
		-0.431851, -0.898432, 0.079526,
		23.080132, 21.870447, 9.654469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.748226, 22.931366, 9.472845>,  <23.382427, 22.499350, 9.598800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.748226, 22.931366, 9.472845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.688717, 23.314060, 9.572862>,  <22.653011, 23.543676, 9.632872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.688717, 23.314060, 9.572862>,  <22.748226, 22.931366, 9.472845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688717, 23.314060, 9.572862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223098, 0.213863, -0.951047,
		-0.963376, -0.197275, 0.181629,
		-0.148774, 0.956737, 0.250042,
		22.644085, 23.601082, 9.647875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079212, 23.141487, 9.233860>,  <22.748226, 22.931366, 9.472845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079212, 23.141487, 9.233860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.298615, 23.473152, 9.276997>,  <22.430256, 23.672152, 9.302878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.298615, 23.473152, 9.276997>,  <22.079212, 23.141487, 9.233860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.298615, 23.473152, 9.276997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316270, 0.325130, -0.891215,
		-0.774025, 0.454730, 0.440575,
		0.548506, 0.829163, 0.107841,
		22.463167, 23.721901, 9.309349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638422, 23.603611, 8.810579>,  <22.079212, 23.141487, 9.233860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638422, 23.603611, 8.810579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.995270, 23.774960, 8.868016>,  <22.209379, 23.877768, 8.902478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.995270, 23.774960, 8.868016>,  <21.638422, 23.603611, 8.810579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995270, 23.774960, 8.868016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050092, 0.409650, -0.910867,
		-0.449010, 0.805411, 0.386915,
		0.892121, 0.428370, 0.143592,
		22.262907, 23.903471, 8.911094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506870, 24.317434, 8.790154>,  <21.638422, 23.603611, 8.810579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506870, 24.317434, 8.790154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.891460, 24.270584, 8.690675>,  <22.122213, 24.242474, 8.630987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.891460, 24.270584, 8.690675>,  <21.506870, 24.317434, 8.790154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891460, 24.270584, 8.690675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172135, 0.448851, -0.876871,
		0.214331, 0.885898, 0.411397,
		0.961474, -0.117124, -0.248697,
		22.179903, 24.235447, 8.616066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505951, 24.795868, 8.322803>,  <21.506870, 24.317434, 8.790154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505951, 24.795868, 8.322803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.816471, 24.554989, 8.248275>,  <22.002783, 24.410461, 8.203558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.816471, 24.554989, 8.248275>,  <21.505951, 24.795868, 8.322803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816471, 24.554989, 8.248275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002100, 0.293103, -0.956078,
		0.630358, 0.742597, 0.226272,
		0.776302, -0.602196, -0.186320,
		22.049362, 24.374331, 8.192379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935844, 25.228539, 7.978096>,  <21.505951, 24.795868, 8.322803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935844, 25.228539, 7.978096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.098370, 24.875137, 7.884863>,  <22.195885, 24.663095, 7.828923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.098370, 24.875137, 7.884863>,  <21.935844, 25.228539, 7.978096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098370, 24.875137, 7.884863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049196, 0.233568, -0.971095,
		0.912408, 0.406036, 0.051437,
		0.406314, -0.883505, -0.233084,
		22.220264, 24.610086, 7.814938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442682, 25.402950, 7.505229>,  <21.935844, 25.228539, 7.978096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442682, 25.402950, 7.505229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.304012, 25.035011, 7.431800>,  <22.220810, 24.814249, 7.387743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.304012, 25.035011, 7.431800>,  <22.442682, 25.402950, 7.505229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304012, 25.035011, 7.431800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107562, 0.233405, -0.966412,
		0.931798, -0.315285, -0.179856,
		-0.346675, -0.919846, -0.183573,
		22.200010, 24.759058, 7.376728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.828184, 25.162106, 6.964618>,  <22.442682, 25.402950, 7.505229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.828184, 25.162106, 6.964618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.476105, 24.973526, 6.942757>,  <22.264856, 24.860378, 6.929640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.476105, 24.973526, 6.942757>,  <22.828184, 25.162106, 6.964618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.476105, 24.973526, 6.942757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106552, 0.308511, -0.945234,
		0.462492, -0.826170, -0.321784,
		-0.880198, -0.471450, -0.054653,
		22.212046, 24.832090, 6.926361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.639107, 25.199793, 6.218670>,  <22.828184, 25.162106, 6.964618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.639107, 25.199793, 6.218670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.292259, 25.053341, 6.353758>,  <22.084150, 24.965469, 6.434810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.292259, 25.053341, 6.353758>,  <22.639107, 25.199793, 6.218670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292259, 25.053341, 6.353758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455972, 0.310564, -0.834050,
		0.200487, -0.877211, -0.436241,
		-0.867119, -0.366129, 0.337720,
		22.032124, 24.943501, 6.455073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.465435, 24.659798, 5.688332>,  <22.639107, 25.199793, 6.218670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.465435, 24.659798, 5.688332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.149986, 24.810059, 5.883047>,  <21.960718, 24.900215, 5.999876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.149986, 24.810059, 5.883047>,  <22.465435, 24.659798, 5.688332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149986, 24.810059, 5.883047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492202, 0.088827, -0.865937,
		-0.368531, -0.922494, 0.114846,
		-0.788621, 0.375652, 0.486788,
		21.913401, 24.922754, 6.029084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.941597, 24.294039, 5.374946>,  <22.465435, 24.659798, 5.688332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.941597, 24.294039, 5.374946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.716064, 24.575214, 5.548368>,  <21.580744, 24.743919, 5.652421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.716064, 24.575214, 5.548368>,  <21.941597, 24.294039, 5.374946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716064, 24.575214, 5.548368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576784, 0.040576, -0.815889,
		-0.591112, -0.710092, 0.382566,
		-0.563833, 0.702939, 0.433554,
		21.546915, 24.786097, 5.678434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235666, 24.152615, 5.214005>,  <21.941597, 24.294039, 5.374946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235666, 24.152615, 5.214005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.274826, 24.540817, 5.302130>,  <21.298323, 24.773739, 5.355004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.274826, 24.540817, 5.302130>,  <21.235666, 24.152615, 5.214005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274826, 24.540817, 5.302130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393017, 0.241083, -0.887365,
		-0.914304, 0.000288, 0.405027,
		0.097901, 0.970504, 0.220310,
		21.304195, 24.831968, 5.368223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596624, 24.415718, 5.169570>,  <21.235666, 24.152615, 5.214005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596624, 24.415718, 5.169570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.815727, 24.750362, 5.166986>,  <20.947189, 24.951149, 5.165436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.815727, 24.750362, 5.166986>,  <20.596624, 24.415718, 5.169570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.815727, 24.750362, 5.166986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461469, 0.295682, -0.836432,
		-0.697858, 0.461144, 0.548033,
		0.547759, 0.836611, -0.006459,
		20.980055, 25.001347, 5.165049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129976, 25.092207, 5.113150>,  <20.596624, 24.415718, 5.169570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129976, 25.092207, 5.113150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.500767, 25.194382, 5.003263>,  <20.723240, 25.255686, 4.937332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.500767, 25.194382, 5.003263>,  <20.129976, 25.092207, 5.113150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.500767, 25.194382, 5.003263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366657, 0.462271, -0.807383,
		-0.079243, 0.849151, 0.522172,
		0.926975, 0.255437, -0.274715,
		20.778860, 25.271013, 4.920849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359310, 25.076107, 5.452470>,  <20.129976, 25.092207, 5.113150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.359310, 25.076107, 5.452470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.194359, 25.437950, 5.495596>,  <19.095388, 25.655056, 5.521472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.194359, 25.437950, 5.495596>,  <19.359310, 25.076107, 5.452470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194359, 25.437950, 5.495596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117052, -0.169979, 0.978471,
		0.903461, 0.390882, 0.175982,
		-0.412380, 0.904610, 0.107816,
		19.070644, 25.709333, 5.527941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.871227, 25.363628, 5.911681>,  <19.359310, 25.076107, 5.452470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.871227, 25.363628, 5.911681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.501205, 25.512367, 5.942683>,  <19.279192, 25.601610, 5.961284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.501205, 25.512367, 5.942683>,  <19.871227, 25.363628, 5.911681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.501205, 25.512367, 5.942683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003442, -0.212245, 0.977210,
		0.379821, 0.903705, 0.197618,
		-0.925054, 0.371845, 0.077505,
		19.223690, 25.623920, 5.965935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942255, 25.926081, 6.373487>,  <19.871227, 25.363628, 5.911681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942255, 25.926081, 6.373487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.564751, 25.794422, 6.386004>,  <19.338247, 25.715427, 6.393515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.564751, 25.794422, 6.386004>,  <19.942255, 25.926081, 6.373487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564751, 25.794422, 6.386004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054307, -0.060962, 0.996662,
		-0.326138, 0.942310, 0.075409,
		-0.943761, -0.329145, 0.031292,
		19.281622, 25.695679, 6.395392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541256, 26.331244, 6.823238>,  <19.942255, 25.926081, 6.373487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541256, 26.331244, 6.823238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.370083, 25.969826, 6.814502>,  <19.267378, 25.752975, 6.809260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.370083, 25.969826, 6.814502>,  <19.541256, 26.331244, 6.823238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370083, 25.969826, 6.814502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107388, 0.026837, 0.993855,
		-0.897408, 0.427649, -0.108514,
		-0.427934, -0.903546, -0.021840,
		19.241703, 25.698761, 6.807950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.932899, 26.344761, 7.240404>,  <19.541256, 26.331244, 6.823238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.932899, 26.344761, 7.240404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.995705, 25.949722, 7.240193>,  <19.033388, 25.712700, 7.240067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.995705, 25.949722, 7.240193>,  <18.932899, 26.344761, 7.240404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995705, 25.949722, 7.240193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063313, -0.010597, 0.997937,
		-0.985565, -0.156657, -0.064192,
		0.157015, -0.987596, -0.000525,
		19.042809, 25.653444, 7.240036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.498371, 26.126743, 7.735816>,  <18.932899, 26.344761, 7.240404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.498371, 26.126743, 7.735816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.736389, 25.808037, 7.693698>,  <18.879200, 25.616814, 7.668427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.736389, 25.808037, 7.693698>,  <18.498371, 26.126743, 7.735816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.736389, 25.808037, 7.693698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025699, -0.112083, 0.993366,
		-0.803282, -0.593803, -0.046218,
		0.595044, -0.796766, -0.105294,
		18.914902, 25.569008, 7.662109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143648, 25.536135, 8.107509>,  <18.498371, 26.126743, 7.735816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143648, 25.536135, 8.107509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.535934, 25.478401, 8.054802>,  <18.771307, 25.443760, 8.023178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.535934, 25.478401, 8.054802>,  <18.143648, 25.536135, 8.107509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535934, 25.478401, 8.054802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117375, -0.104097, 0.987617,
		-0.156266, -0.984038, -0.085148,
		0.980716, -0.144337, -0.131768,
		18.830149, 25.435101, 8.015271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195675, 25.060467, 8.656805>,  <18.143648, 25.536135, 8.107509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195675, 25.060467, 8.656805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.573544, 25.175358, 8.593437>,  <18.800264, 25.244293, 8.555416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.573544, 25.175358, 8.593437>,  <18.195675, 25.060467, 8.656805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573544, 25.175358, 8.593437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207052, -0.147554, 0.967139,
		0.254416, -0.946429, -0.198861,
		0.944670, 0.287230, -0.158420,
		18.856945, 25.261526, 8.545911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670557, 24.600319, 9.068099>,  <18.195675, 25.060467, 8.656805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.670557, 24.600319, 9.068099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.891117, 24.923416, 8.984667>,  <19.023453, 25.117275, 8.934608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.891117, 24.923416, 8.984667>,  <18.670557, 24.600319, 9.068099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891117, 24.923416, 8.984667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367269, -0.010549, 0.930055,
		0.749047, -0.589437, -0.302477,
		0.551400, 0.807745, -0.208580,
		19.056538, 25.165739, 8.922092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382895, 24.441992, 9.454306>,  <18.670557, 24.600319, 9.068099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382895, 24.441992, 9.454306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.392101, 24.832481, 9.368087>,  <19.397625, 25.066774, 9.316356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.392101, 24.832481, 9.368087>,  <19.382895, 24.441992, 9.454306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392101, 24.832481, 9.368087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384861, 0.190336, 0.903136,
		0.922687, -0.103744, -0.371329,
		0.023018, 0.976222, -0.215548,
		19.399006, 25.125347, 9.303422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071249, 24.696608, 9.613705>,  <19.382895, 24.441992, 9.454306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071249, 24.696608, 9.613705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.869946, 25.042175, 9.621394>,  <19.749163, 25.249516, 9.626008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.869946, 25.042175, 9.621394>,  <20.071249, 24.696608, 9.613705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869946, 25.042175, 9.621394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280170, 0.142081, 0.949378,
		0.817456, 0.483170, -0.313548,
		-0.503260, 0.863921, 0.019224,
		19.718967, 25.301352, 9.627161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659405, 25.143593, 9.847372>,  <20.071249, 24.696608, 9.613705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659405, 25.143593, 9.847372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.297260, 25.286438, 9.939275>,  <20.079973, 25.372145, 9.994416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.297260, 25.286438, 9.939275>,  <20.659405, 25.143593, 9.847372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297260, 25.286438, 9.939275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338163, 0.279090, 0.898752,
		0.256833, 0.891392, -0.373440,
		-0.905363, 0.357113, 0.229756,
		20.025652, 25.393572, 10.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813385, 25.776497, 10.222480>,  <20.659405, 25.143593, 9.847372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813385, 25.776497, 10.222480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.429939, 25.698589, 10.305549>,  <20.199873, 25.651844, 10.355390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.429939, 25.698589, 10.305549>,  <20.813385, 25.776497, 10.222480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429939, 25.698589, 10.305549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179964, 0.150712, 0.972059,
		-0.220627, 0.969201, -0.109423,
		-0.958612, -0.194770, 0.207672,
		20.142355, 25.640158, 10.367850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617687, 26.309637, 10.628184>,  <20.813385, 25.776497, 10.222480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617687, 26.309637, 10.628184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.324268, 26.046001, 10.694535>,  <20.148218, 25.887821, 10.734345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.324268, 26.046001, 10.694535>,  <20.617687, 26.309637, 10.628184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324268, 26.046001, 10.694535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081287, 0.157233, 0.984210,
		-0.674762, 0.735446, -0.061762,
		-0.733545, -0.659088, 0.165877,
		20.104204, 25.848274, 10.744298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299891, 26.471569, 11.251251>,  <20.617687, 26.309637, 10.628184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.299891, 26.471569, 11.251251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.177063, 26.091652, 11.227241>,  <20.103367, 25.863703, 11.212834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.177063, 26.091652, 11.227241>,  <20.299891, 26.471569, 11.251251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177063, 26.091652, 11.227241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055416, -0.045123, 0.997443,
		-0.950072, 0.309612, -0.038778,
		-0.307070, -0.949792, -0.060028,
		20.084942, 25.806715, 11.209232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787401, 26.431225, 11.783266>,  <20.299891, 26.471569, 11.251251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787401, 26.431225, 11.783266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.939251, 26.066906, 11.718351>,  <20.030361, 25.848314, 11.679402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.939251, 26.066906, 11.718351>,  <19.787401, 26.431225, 11.783266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939251, 26.066906, 11.718351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045208, -0.156946, 0.986572,
		-0.924036, -0.381862, -0.018405,
		0.379623, -0.910796, -0.162287,
		20.053139, 25.793667, 11.669665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.355240, 26.105412, 12.282927>,  <19.787401, 26.431225, 11.783266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.355240, 26.105412, 12.282927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.654896, 25.846134, 12.228329>,  <19.834690, 25.690567, 12.195570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.654896, 25.846134, 12.228329>,  <19.355240, 26.105412, 12.282927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654896, 25.846134, 12.228329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061030, -0.272720, 0.960156,
		-0.659593, -0.710962, -0.243865,
		0.749141, -0.648195, -0.136494,
		19.879639, 25.651676, 12.187381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142118, 25.484697, 12.550530>,  <19.355240, 26.105412, 12.282927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142118, 25.484697, 12.550530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.541393, 25.464687, 12.563912>,  <19.780958, 25.452681, 12.571941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.541393, 25.464687, 12.563912>,  <19.142118, 25.484697, 12.550530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541393, 25.464687, 12.563912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046943, -0.299386, 0.952977,
		-0.037655, -0.952820, -0.301192,
		0.998188, -0.050023, 0.033454,
		19.840849, 25.449680, 12.573949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193193, 24.938612, 12.913573>,  <19.142118, 25.484697, 12.550530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193193, 24.938612, 12.913573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.545235, 25.128525, 12.914000>,  <19.756460, 25.242472, 12.914255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.545235, 25.128525, 12.914000>,  <19.193193, 24.938612, 12.913573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545235, 25.128525, 12.914000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068319, -0.128862, 0.989306,
		0.469841, -0.870619, -0.145849,
		0.880103, 0.474781, 0.001065,
		19.809265, 25.270960, 12.914319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758467, 24.498611, 13.308328>,  <19.193193, 24.938612, 12.913573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758467, 24.498611, 13.308328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.912891, 24.866993, 13.287160>,  <20.005547, 25.088022, 13.274459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.912891, 24.866993, 13.287160>,  <19.758467, 24.498611, 13.308328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912891, 24.866993, 13.287160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330252, -0.084420, 0.940110,
		0.861331, -0.380417, -0.336738,
		0.386061, 0.920954, -0.052920,
		20.028709, 25.143280, 13.271284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.295097, 24.416430, 13.689178>,  <19.758467, 24.498611, 13.308328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.295097, 24.416430, 13.689178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.267754, 24.815258, 13.675475>,  <20.251347, 25.054556, 13.667253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.267754, 24.815258, 13.675475>,  <20.295097, 24.416430, 13.689178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267754, 24.815258, 13.675475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422843, 0.060058, 0.904211,
		0.903621, 0.047328, -0.425710,
		-0.068361, 0.997072, -0.034257,
		20.247246, 25.114380, 13.665198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933340, 24.598406, 13.954464>,  <20.295097, 24.416430, 13.689178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933340, 24.598406, 13.954464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.648769, 24.878265, 13.980895>,  <20.478027, 25.046181, 13.996754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.648769, 24.878265, 13.980895>,  <20.933340, 24.598406, 13.954464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648769, 24.878265, 13.980895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258147, 0.172720, 0.950541,
		0.653631, 0.693297, -0.303489,
		-0.711426, 0.699648, 0.066077,
		20.435341, 25.088160, 14.000718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296932, 25.143576, 14.310688>,  <20.933340, 24.598406, 13.954464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296932, 25.143576, 14.310688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.902439, 25.207626, 14.327191>,  <20.665743, 25.246056, 14.337093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.902439, 25.207626, 14.327191>,  <21.296932, 25.143576, 14.310688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902439, 25.207626, 14.327191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067067, 0.159293, 0.984951,
		0.151143, 0.974159, -0.167840,
		-0.986234, 0.160125, 0.041258,
		20.606569, 25.255663, 14.339569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.281031, 25.789307, 14.741468>,  <21.296932, 25.143576, 14.310688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.281031, 25.789307, 14.741468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.918140, 25.621094, 14.745412>,  <20.700407, 25.520166, 14.747778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.918140, 25.621094, 14.745412>,  <21.281031, 25.789307, 14.741468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.918140, 25.621094, 14.745412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079574, 0.194587, 0.977652,
		-0.413052, 0.886165, -0.209998,
		-0.907224, -0.420532, 0.009858,
		20.645973, 25.494934, 14.748369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826803, 26.185923, 15.218237>,  <21.281031, 25.789307, 14.741468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826803, 26.185923, 15.218237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.652855, 25.825764, 15.212945>,  <20.548487, 25.609669, 15.209769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.652855, 25.825764, 15.212945>,  <20.826803, 26.185923, 15.218237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.652855, 25.825764, 15.212945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035403, 0.002413, 0.999370,
		-0.899798, 0.435063, -0.032926,
		-0.434869, -0.900397, -0.013231,
		20.522394, 25.555645, 15.208976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084650, 26.231117, 15.508203>,  <20.826803, 26.185923, 15.218237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084650, 26.231117, 15.508203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.174053, 25.843193, 15.547206>,  <20.227695, 25.610437, 15.570608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.174053, 25.843193, 15.547206>,  <20.084650, 26.231117, 15.508203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174053, 25.843193, 15.547206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356498, 0.011769, 0.934222,
		-0.907167, -0.243569, -0.343106,
		0.223509, -0.969812, 0.097508,
		20.241106, 25.552250, 15.576458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494991, 25.893103, 15.792747>,  <20.084650, 26.231117, 15.508203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494991, 25.893103, 15.792747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.799484, 25.648262, 15.878404>,  <19.982180, 25.501358, 15.929797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.799484, 25.648262, 15.878404>,  <19.494991, 25.893103, 15.792747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799484, 25.648262, 15.878404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351447, -0.111894, 0.929497,
		-0.544985, -0.782824, -0.300298,
		0.761234, -0.612100, 0.214140,
		20.027855, 25.464632, 15.942646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.176664, 25.229155, 16.069796>,  <19.494991, 25.893103, 15.792747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.176664, 25.229155, 16.069796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.559559, 25.230236, 16.185511>,  <19.789295, 25.230885, 16.254940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.559559, 25.230236, 16.185511>,  <19.176664, 25.229155, 16.069796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559559, 25.230236, 16.185511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284907, -0.164826, 0.944278,
		0.050234, -0.986319, -0.157008,
		0.957238, 0.002703, 0.289289,
		19.846731, 25.231047, 16.272297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063019, 24.434092, 15.999496>,  <19.176664, 25.229155, 16.069796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063019, 24.434092, 15.999496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.809418, 24.124805, 16.004833>,  <18.657257, 23.939234, 16.008036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.809418, 24.124805, 16.004833>,  <19.063019, 24.434092, 15.999496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809418, 24.124805, 16.004833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065452, 0.036462, -0.997189,
		0.770556, -0.633094, -0.073726,
		-0.634003, -0.773216, 0.013341,
		18.619217, 23.892841, 16.008835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280733, 24.119190, 15.384147>,  <19.063019, 24.434092, 15.999496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280733, 24.119190, 15.384147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.942719, 23.936623, 15.495568>,  <18.739910, 23.827082, 15.562421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.942719, 23.936623, 15.495568>,  <19.280733, 24.119190, 15.384147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942719, 23.936623, 15.495568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158177, -0.284251, -0.945612,
		0.510775, -0.843138, 0.168008,
		-0.845038, -0.456420, 0.278553,
		18.689207, 23.799696, 15.579134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245615, 23.453192, 15.080474>,  <19.280733, 24.119190, 15.384147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245615, 23.453192, 15.080474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.865429, 23.537216, 15.172118>,  <18.637318, 23.587631, 15.227105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.865429, 23.537216, 15.172118>,  <19.245615, 23.453192, 15.080474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865429, 23.537216, 15.172118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295355, -0.380628, -0.876292,
		-0.096869, -0.900554, 0.423816,
		-0.950464, 0.210061, 0.229112,
		18.580290, 23.600235, 15.240851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767653, 22.860126, 14.873867>,  <19.245615, 23.453192, 15.080474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767653, 22.860126, 14.873867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.520775, 23.170757, 14.924459>,  <18.372648, 23.357136, 14.954814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.520775, 23.170757, 14.924459>,  <18.767653, 22.860126, 14.873867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520775, 23.170757, 14.924459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459991, -0.225721, -0.858754,
		-0.638340, -0.588199, 0.496532,
		-0.617196, 0.776577, 0.126480,
		18.335615, 23.403730, 14.962402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078743, 22.685333, 14.683894>,  <18.767653, 22.860126, 14.873867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078743, 22.685333, 14.683894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.048180, 23.083675, 14.664168>,  <18.029842, 23.322681, 14.652333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.048180, 23.083675, 14.664168>,  <18.078743, 22.685333, 14.683894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048180, 23.083675, 14.664168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508477, -0.081461, -0.857213,
		-0.857679, -0.040422, 0.512594,
		-0.076407, 0.995857, -0.049314,
		18.025257, 23.382433, 14.649374>
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
