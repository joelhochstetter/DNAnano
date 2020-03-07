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
	<1.164792, 1.926487, 2.257050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.786270, 2.017136, 2.164833>,  <0.559157, 2.071525, 2.109503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.786270, 2.017136, 2.164833>,  <1.164792, 1.926487, 2.257050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.786270, 2.017136, 2.164833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105301, 0.890334, 0.442964,
		0.305643, 0.394903, -0.866391,
		-0.946305, 0.226621, -0.230541,
		0.502379, 2.085122, 2.095671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.034280, 2.550896, 1.825087>,  <1.164792, 1.926487, 2.257050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.034280, 2.550896, 1.825087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.757729, 2.477318, 2.104561>,  <0.591798, 2.433171, 2.272245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.757729, 2.477318, 2.104561>,  <1.034280, 2.550896, 1.825087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757729, 2.477318, 2.104561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173075, 0.896723, 0.407349,
		-0.701456, 0.402557, -0.588139,
		-0.691379, -0.183945, 0.698684,
		0.550315, 2.422134, 2.314166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.496035, 3.050251, 1.762736>,  <1.034280, 2.550896, 1.825087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.496035, 3.050251, 1.762736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.500656, 2.914566, 2.138992>,  <0.503429, 2.833155, 2.364745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.500656, 2.914566, 2.138992>,  <0.496035, 3.050251, 1.762736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.500656, 2.914566, 2.138992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038705, 0.939845, 0.339400,
		-0.999184, -0.040328, -0.002272,
		0.011552, -0.339211, 0.940639,
		0.504122, 2.812803, 2.421184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.026444, 3.445557, 2.155161>,  <0.496035, 3.050251, 1.762736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.026444, 3.445557, 2.155161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.294567, 3.312012, 2.420257>,  <0.455441, 3.231885, 2.579314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.294567, 3.312012, 2.420257>,  <0.026444, 3.445557, 2.155161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.294567, 3.312012, 2.420257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011379, 0.888350, 0.459026,
		-0.741995, -0.315230, 0.591669,
		0.670308, -0.333863, 0.662739,
		0.495660, 3.211853, 2.619078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.279290, 3.667895, 2.732407>,  <0.026444, 3.445557, 2.155161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.279290, 3.667895, 2.732407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.111744, 3.622871, 2.803577>,  <0.346364, 3.595858, 2.846280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.111744, 3.622871, 2.803577>,  <-0.279290, 3.667895, 2.732407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.111744, 3.622871, 2.803577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027132, 0.905401, 0.423689,
		-0.208785, -0.409364, 0.888161,
		0.977585, -0.112558, 0.177927,
		0.405019, 3.589104, 2.856956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.302531, 3.720410, 3.384224>,  <-0.279290, 3.667895, 2.732407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.302531, 3.720410, 3.384224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069679, 3.806206, 3.265485>,  <0.293005, 3.857683, 3.194242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.069679, 3.806206, 3.265485>,  <-0.302531, 3.720410, 3.384224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.069679, 3.806206, 3.265485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050775, 0.878279, 0.475444,
		0.362692, -0.427340, 0.828151,
		0.930525, 0.214489, -0.296846,
		0.348837, 3.870553, 3.176431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.193881, 4.158817, 3.785309>,  <-0.302531, 3.720410, 3.384224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.193881, 4.158817, 3.785309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.111378, 4.222145, 3.534697>,  <0.294533, 4.260142, 3.384329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.111378, 4.222145, 3.534697>,  <-0.193881, 4.158817, 3.785309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.111378, 4.222145, 3.534697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105861, 0.925801, 0.362886,
		0.637495, -0.343261, 0.689762,
		0.763147, 0.158319, -0.626531,
		0.340322, 4.269641, 3.346737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.405130, 4.598151, 4.106366>,  <-0.193881, 4.158817, 3.785309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.405130, 4.598151, 4.106366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.426819, 4.669411, 3.713362>,  <0.439832, 4.712167, 3.477560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.426819, 4.669411, 3.713362>,  <0.405130, 4.598151, 4.106366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.426819, 4.669411, 3.713362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120406, 0.977943, 0.170677,
		0.991243, 0.109046, 0.074476,
		0.054221, 0.178150, -0.982509,
		0.443085, 4.722856, 3.418610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.405024, 5.928648, 3.241077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102379, 5.946823, 2.980164>,  <0.079208, 5.957728, 2.823616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102379, 5.946823, 2.980164>,  <-0.405024, 5.928648, 3.241077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.102379, 5.946823, 2.980164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384770, -0.837515, 0.387970,
		-0.528668, -0.544522, -0.651157,
		0.756612, 0.045439, -0.652283,
		0.124605, 5.960455, 2.784479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.370915, 5.279317, 2.780784>,  <-0.405024, 5.928648, 3.241077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.370915, 5.279317, 2.780784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.011017, 5.453156, 2.764866>,  <0.204922, 5.557458, 2.755315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.011017, 5.453156, 2.764866>,  <-0.370915, 5.279317, 2.780784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.011017, 5.453156, 2.764866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423577, -0.847690, 0.319382,
		0.105068, -0.304219, -0.946790,
		0.899746, 0.434595, -0.039795,
		0.258907, 5.583534, 2.752927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.077605, 4.927348, 2.266318>,  <-0.370915, 5.279317, 2.780784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.077605, 4.927348, 2.266318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.280884, 5.093956, 2.567846>,  <0.402851, 5.193921, 2.748763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.280884, 5.093956, 2.567846>,  <0.077605, 4.927348, 2.266318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.280884, 5.093956, 2.567846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289642, -0.906947, 0.305866,
		0.811076, 0.062898, -0.581549,
		0.508196, 0.416521, 0.753821,
		0.433343, 5.218913, 2.793993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.756461, 4.977777, 2.204781>,  <0.077605, 4.927348, 2.266318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.756461, 4.977777, 2.204781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.667892, 4.892731, 2.585468>,  <0.614751, 4.841703, 2.813880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.667892, 4.892731, 2.585468>,  <0.756461, 4.977777, 2.204781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.667892, 4.892731, 2.585468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367688, -0.922115, -0.120458,
		0.903204, 0.323263, 0.282353,
		-0.221422, -0.212616, 0.951718,
		0.601466, 4.828946, 2.870984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.312741, 4.615817, 2.501197>,  <0.756461, 4.977777, 2.204781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.312741, 4.615817, 2.501197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.006493, 4.517082, 2.738817>,  <0.822744, 4.457841, 2.881390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.006493, 4.517082, 2.738817>,  <1.312741, 4.615817, 2.501197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.006493, 4.517082, 2.738817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338846, -0.939705, 0.046247,
		0.546817, 0.236699, 0.803097,
		-0.765620, -0.246838, 0.594051,
		0.776807, 4.443031, 2.917033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.617749, 4.136154, 2.864386>,  <1.312741, 4.615817, 2.501197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.617749, 4.136154, 2.864386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.240341, 4.052864, 2.967468>,  <1.013896, 4.002890, 3.029318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.240341, 4.052864, 2.967468>,  <1.617749, 4.136154, 2.864386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.240341, 4.052864, 2.967468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197715, -0.978012, -0.066348,
		0.265854, -0.011649, 0.963943,
		-0.943520, -0.208225, 0.257706,
		0.957285, 3.990396, 3.044780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.646866, 3.403966, 3.126450>,  <1.617749, 4.136154, 2.864386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.646866, 3.403966, 3.126450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.258385, 3.461975, 3.050838>,  <1.025296, 3.496780, 3.005471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.258385, 3.461975, 3.050838>,  <1.646866, 3.403966, 3.126450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.258385, 3.461975, 3.050838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087227, -0.954752, -0.284322,
		-0.221709, -0.259646, 0.939909,
		-0.971203, 0.145022, -0.189029,
		0.967024, 3.505482, 2.994130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.365585, 2.905975, 3.517832>,  <1.646866, 3.403966, 3.126450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.365585, 2.905975, 3.517832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.112488, 2.993271, 3.220643>,  <0.960629, 3.045648, 3.042330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.112488, 2.993271, 3.220643>,  <1.365585, 2.905975, 3.517832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.112488, 2.993271, 3.220643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063926, -0.970911, -0.230751,
		-0.771719, -0.098511, 0.628288,
		-0.632743, 0.218239, -0.742972,
		0.922665, 3.058743, 2.997751>
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
